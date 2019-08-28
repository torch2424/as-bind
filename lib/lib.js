import asbindCall from './call';
import packageJson from '../package.json';

const asbind = {
  version: packageJson.version,
  call: asbindCall
};

export default asbind;
