#!/usr/bin/env bash

set -e

_DIR=$(dirname $(realpath "$0"))

cd $_DIR

rustwasmc build --target deno

rm pkg/.gitignore
rm -rf pkg/*.so

