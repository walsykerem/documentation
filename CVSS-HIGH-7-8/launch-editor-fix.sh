#!/bin/sh
# launch-editor — HIGH — GHSA-587h-7wmj-h5pm
cd "$(dirname "$0")/.." || exit 1
# 2.11.1 → 2.14.2
yarn up launch-editor@2.14.2
