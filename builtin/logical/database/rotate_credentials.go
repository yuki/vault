package database

import (
	"context"
	"fmt"
	"time"

	"github.com/hashicorp/vault/helper/queue"
	"github.com/hashicorp/vault/logical"
)

// rotateCredentials sets a new password for a static account
// This will loop until either:
// - The queue of passwords needing rotation is completely empty.
// - It encounters the first password not yet needing rotation.
func (b *databaseBackend) rotateCredentials(ctx context.Context, s logical.Storage) error {
	for {
		item, err := b.credRotationQueue.PopItem()
		if err != nil {
			if err == queue.ErrEmpty {
				return nil
			}
			return err
		}

		role, err := b.Role(ctx, s, item.Key)
		if err != nil {
			b.logger.Warn(fmt.Sprintf("unable load role (%s)", item.Key), "error", err)
			continue
		}
		if role == nil {
			b.logger.Warn(fmt.Sprintf("role (%s) not found", item.Key), "error", err)
			continue
		}

		if time.Now().Unix() > item.Priority {
			// We've found our first item not in need of rotation

			// lvr is the roles' last vault rotation
			lvr, err := b.createUpdateStaticAccount(ctx, s, item.Key, role, false)
			if err != nil {
				b.logger.Warn("unable rotate credentials in periodic function", "error", err)
				// add the item to the re-queue slice
				newItem := queue.Item{
					Key:      item.Key,
					Priority: item.Priority + 10,
				}
				if err := b.credRotationQueue.PushItem(&newItem); err != nil {
					b.logger.Warn("unable to push item on to queue", "error", err)
				}
				// go to next item
				continue
			}

			nextRotation := lvr.Add(role.StaticAccount.RotationPeriod)
			newItem := queue.Item{
				Key:      item.Key,
				Priority: nextRotation.Unix(),
			}
			if err := b.credRotationQueue.PushItem(&newItem); err != nil {
				b.logger.Warn("unable to push item on to queue", "error", err)
			}
		} else {
			// highest priority item does not need rotation, so we push it back on
			// the queue and break the loop
			b.credRotationQueue.PushItem(item)
			break
		}
	}
	return nil
}
