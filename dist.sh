#!/usr/bin/env bash

set -e

_DIR=$(dirname $(realpath "$0"))

cd $_DIR

docker run \
  -v $_DIR:/pkg \
  --rm rmwl/deno-rust \
  bash -c 'source ~/.bashrc && /pkg/release.sh'

git add -u
git commit -mdist || echo "no changes"
