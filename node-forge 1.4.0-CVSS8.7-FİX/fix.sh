#!/bin/sh
# node-forge — MUST FIX — GHSA-5x38-2vff-x55p
cd "$(dirname "$0")/../../../Downloads/documentation-main"
# 1.4.0 → 1.4.3
yarn up node-forge@1.4.3
