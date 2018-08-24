import Ember from 'ember';
import DS from 'ember-data';
import lazyCapabilities, { apiPath } from 'vault/macros/lazy-capabilities';
import { fragment } from 'ember-data-model-fragments/attributes';
import { engines } from 'vault/helpers/mountable-secret-engines';

import fieldToAttrs, { expandAttributeMeta } from 'vault/utils/field-to-attrs';

const { attr } = DS;
const { computed } = Ember;
const ENGINES = engines();

//identity will be managed separately and the inclusion
//of the system backend is an implementation detail
const LIST_EXCLUDED_BACKENDS = ['system', 'identity'];

export default DS.Model.extend({
  path: attr('string', {
    defaultValue: ENGINES[0].value,
  }),
  accessor: attr('string'),
  name: attr('string'),
  type: attr('string', {
    label: 'Secret engine type',
    defaultValue: ENGINES[0].value,
    possibleValues: ENGINES,
  }),
  description: attr('string', {
    editType: 'textarea',
  }),
  config: fragment('mount-config', { defaultValue: {} }),
  options: fragment('mount-options', { defaultValue: {} }),
  local: attr('boolean', {
    helpText:
      'When replication is enabled, a local mount will not be replicated across clusters. This can only be specified at mount time.',
  }),
  sealWrap: attr('boolean', {
    helpText:
      'When enabled - if a seal supporting seal wrapping is specified in the configuration, all critical security parameters (CSPs) in this backend will be seal wrapped. (For K/V mounts, all values will be seal wrapped.) This can only be specified at mount time.',
  }),

  modelTypeForKV: computed('engineType', 'options.version', function() {
    let type = this.get('engineType');
    let version = this.get('options.version');
    let modelType = 'secret';
    if ((type === 'kv' || type === 'generic') && version === 2) {
      modelType = 'secret-v2';
    }
    return modelType;
  }),

  formFields: computed('engineType', function() {
    let type = this.get('engineType');
    let fields = [
      'type',
      'path',
      'description',
      'accessor',
      'local',
      'sealWrap',
      'config.{defaultLeaseTtl,maxLeaseTtl,auditNonHmacRequestKeys,auditNonHmacResponseKeys,passthroughRequestHeaders}',
    ];
    if (type === 'kv' || type === 'generic') {
      fields.push('options.{version}');
    }
    return fields;
  }),

  formFieldGroups: computed('engineType', function() {
    let type = this.get('engineType');
    let defaultGroup = { default: ['type', 'path'] };
    if (type === 'kv' || type === 'generic') {
      defaultGroup.default.push('options.{version}');
    }
    return [
      defaultGroup,
      {
        'Method Options': [
          'description',
          'config.listingVisibility',
          'local',
          'sealWrap',
          'config.{defaultLeaseTtl,maxLeaseTtl,auditNonHmacRequestKeys,auditNonHmacResponseKeys,passthroughRequestHeaders}',
        ],
      },
    ];
  }),

  attrs: computed('formFields', function() {
    return expandAttributeMeta(this, this.get('formFields'));
  }),

  fieldGroups: computed('formFieldGroups', function() {
    return fieldToAttrs(this, this.get('formFieldGroups'));
  }),

  // namespaces introduced types with a `ns_` prefix for built-in engines
  // so we need to strip that to normalize the type
  engineType: computed('type', function() {
    return (this.get('type') || '').replace(/^ns_/, '');
  }),

  shouldIncludeInList: computed('engineType', function() {
    return !LIST_EXCLUDED_BACKENDS.includes(this.get('engineType'));
  }),

  localDisplay: Ember.computed('local', function() {
    return this.get('local') ? 'local' : 'replicated';
  }),

  // ssh specific ones
  privateKey: attr('string'),
  publicKey: attr('string'),
  generateSigningKey: attr('boolean', {
    defaultValue: true,
  }),

  saveCA(options) {
    if (this.get('type') !== 'ssh') {
      return;
    }
    if (options.isDelete) {
      this.setProperties({
        privateKey: null,
        publicKey: null,
        generateSigningKey: false,
      });
    }
    return this.save({
      adapterOptions: {
        options: options,
        apiPath: 'config/ca',
        attrsToSend: ['privateKey', 'publicKey', 'generateSigningKey'],
      },
    });
  },

  saveZeroAddressConfig() {
    return this.save({
      adapterOptions: {
        adapterMethod: 'saveZeroAddressConfig',
      },
    });
  },

  zeroAddressPath: lazyCapabilities(apiPath`${'id'}/config/zeroaddress`, 'id'),
  canEditZeroAddress: computed.alias('zeroAddressPath.canUpdate'),

  // aws backend attrs
  lease: attr('string'),
  leaseMax: attr('string'),
});
