package transit

import (
	"context"
	"errors"
	"fmt"
	"strings"

	"github.com/hashicorp/vault/helper/keysutil"
	"github.com/hashicorp/vault/logical"
	"github.com/hashicorp/vault/logical/framework"
)

func Factory(ctx context.Context, conf *logical.BackendConfig) (logical.Backend, error) {
	b := Backend(conf)
	if err := b.Setup(ctx, conf); err != nil {
		return nil, err
	}
	b.initializeCache(ctx, conf.StorageView)
	return b, nil
}

func Backend(conf *logical.BackendConfig) *backend {
	var b backend
	b.Backend = &framework.Backend{
		PathsSpecial: &logical.Paths{
			SealWrapStorage: []string{
				"archive/",
				"policy/",
			},
		},

		Paths: []*framework.Path{
			// Rotate/Config needs to come before Keys
			// as the handler is greedy
			b.pathConfig(),
			b.pathRotate(),
			b.pathRewrap(),
			b.pathKeys(),
			b.pathListKeys(),
			b.pathExportKeys(),
			b.pathEncrypt(),
			b.pathDecrypt(),
			b.pathDatakey(),
			b.pathRandom(),
			b.pathHash(),
			b.pathHMAC(),
			b.pathSign(),
			b.pathVerify(),
			b.pathBackup(),
			b.pathRestore(),
			b.pathTrim(),
			b.pathCacheConfig(),
		},

		Secrets:     []*framework.Secret{},
		Invalidate:  b.invalidate,
		BackendType: logical.TypeLogical,
	}

	b.lm = keysutil.NewLockManager(conf.System.CachingDisabled())

	return &b
}

type backend struct {
	*framework.Backend
	lm *keysutil.LockManager
}

// initializeCache initializes a transit's cache
func (b *backend) initializeCache(ctx context.Context, s logical.Storage) error {
	// check storage
	fmt.Println("-- REACHED INITIALIZE CACHE --")
	entry, error := s.Get(ctx, "config/cache-type")
	fmt.Printf("entry:%v", entry)
	fmt.Printf("error:%v", error)
	if entry == nil {
		// if nothing is in storage, default to a syncmap
		b.lm.ConvertCacheToSyncmap()
		return nil
	}
	// otherwise use stored values
	var storedCacheType configCacheType
	if err := entry.DecodeJSON(&storedCacheType); err != nil {
		return err
	}
	fmt.Printf("storedCacheType:%v", storedCacheType)
	switch storedCacheType.cacheType {
	case keysutil.SyncMap:
		b.lm.ConvertCacheToSyncmap()
		return nil
	case keysutil.LRU:
		return b.lm.ConvertCacheToLRU(storedCacheType.size)
	default:
		return errors.New("The stored cache-type is not recognized")
	}
}

func (b *backend) invalidate(_ context.Context, key string) {
	if b.Logger().IsDebug() {
		b.Logger().Debug("invalidating key", "key", key)
	}
	switch {
	case strings.HasPrefix(key, "policy/"):
		name := strings.TrimPrefix(key, "policy/")
		b.lm.InvalidatePolicy(name)
	}
}
