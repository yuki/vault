import { helper as buildHelper } from '@ember/component/helper';

// YUKI: modified SUPPORTED_AUTH_BACKENDS to remove all other auth methods
const SUPPORTED_AUTH_BACKENDS = [
  {
    type: 'ldap',
    typeDisplay: 'LDAP',
    description: 'LDAP authentication.',
    tokenPath: 'client_token',
    displayNamePath: 'metadata.username',
    formAttributes: ['username', 'password'],
  },
  {
    type: 'token',
    typeDisplay: 'Token',
    description: 'Token authentication.',
    tokenPath: 'id',
    displayNamePath: 'display_name',
    formAttributes: ['token'],
  },
];

export function supportedAuthBackends() {
  return SUPPORTED_AUTH_BACKENDS;
}

export default buildHelper(supportedAuthBackends);
