import * as blake3 from '../pkg/blake3.js';
import * as hex from "https://deno.land/std/encoding/hex.ts";
import {encode} from "https://deno.land/x/utf8/mod.js"


for(var i of ["hi", "test"]){
  console.log(`${i}`, hex.encodeToString(blake3.hash(encode(i))));
}
