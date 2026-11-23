#!/bin/sh
# path-to-regexp — HIGH — GHSA-37ch-88jc-xwx2
cd "$(dirname "$0")/.." || exit 1
# 0.1.12 → 0.1.13
yarn up path-to-regexp@0.1.13
