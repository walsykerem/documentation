#!/bin/sh
# nanoid — MUST FIX — GHSA-28wg-ghj8-5hjv
cd "$(dirname "$0")/.." || exit 1
# 3.3.11 → 3.3.18
yarn up nanoid@3.3.18
