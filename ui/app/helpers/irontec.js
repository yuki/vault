import { helper as buildHelper } from '@ember/component/helper';

export function irontec(params) {
  console.log(Date());
}

export default buildHelper(irontec);
