#!/bin/sh

set -eu
export ELECTRON_VER="20.0.2"
export BUILD_DIR="./build/Release"
export npm_config_wcjs_runtime=electron
export npm_config_wcjs_runtime_version=$ELECTRON_VER
npm_config_wcjs_arch=${npm_config_wcjs_arch:-}
if [[ -z "${npm_config_wcjs_arch}" ]]; then
  export npm_config_wcjs_arch="$(arch | sed -e "s/i386/x64/")"
fi
node rebuild.js
