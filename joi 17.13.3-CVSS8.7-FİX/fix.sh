#!/bin/sh
# joi — MUST FIX — GHSA-4528-x5fx-h6hg
cd "$(dirname "$0")/../../../Downloads/documentation-main"
# 17.13.3 → 17.13.9
yarn up joi@17.13.9
