#!/bin/sh
# tinypool — MUST FIX — GHSA-5gmw-xhrv-c9v3
cd "$(dirname "$0")/../../../Downloads/documentation-main"
# 1.1.1 → 2.1.2
yarn up tinypool@2.1.2
