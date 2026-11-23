#!/bin/sh
# svgo — MUST FIX — GHSA-2p49-hgcm-8545
cd "$(dirname "$0")/../../../Downloads/documentation-main"
# 3.3.3 → 3.3.5
yarn up svgo@3.3.5
