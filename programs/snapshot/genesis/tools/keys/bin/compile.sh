#!/bin/bash

str=`cat package.json`;
version="$(node -pe "JSON.parse(\`$str\`)['version']")"
file="BBC-Genesis-Keys-Utility-${version}"
rm -fr ./build
mkdir ./build
electron-packager . $file --out=build
