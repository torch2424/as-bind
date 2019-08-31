import * as loader from 'assemblyscript/lib/loader';
import asbindCall from './call';
import packageJson from '../package.json';

const asbind = {
  // General asbind version
  version: packageJson.version,

  // Required Loader APIs
  instantiate: loader.instantiate,
  instantiateBuffer: loader.instantiateBuffer,
  instantiateStreaming: loader.instantiateStreaming,
  demangle: loader.demangle,

  // Our APIs
  call: asbindCall,
};

export default asbind;
