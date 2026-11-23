#!/bin/sh
# lodash-es — MUST FIX — GHSA-r5fr-rjxr-66jc
cd "$(dirname "$0")/.." || exit 1
# 4.17.21 → 4.18.0
yarn up lodash-es@4.18.0
# 4.17.23 → 4.18.1
yarn up lodash-es@4.18.1
