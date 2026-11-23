#!/bin/sh
# source-map-js — MUST FIX — GHSA-68fv-2mgg-jv7q
cd "$(dirname "$0")/../../../Downloads/documentation-main"
# 1.2.1 → 1.2.2
yarn up source-map-js@1.2.2
