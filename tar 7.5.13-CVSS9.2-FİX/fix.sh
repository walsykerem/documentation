#!/bin/sh
# tar — MUST FIX — GHSA-23hp-3jrh-7fpw
cd "$(dirname "$0")/../../../Downloads/documentation-main"
# 7.5.13 → 7.5.21
yarn up tar@7.5.21
