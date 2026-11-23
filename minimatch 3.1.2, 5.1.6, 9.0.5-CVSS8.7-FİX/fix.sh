#!/bin/sh
# minimatch — MUST FIX — GHSA-23c5-xmqv-rm74
cd "$(dirname "$0")/../../../Downloads/documentation-main"
# 3.1.2 → 3.1.4
yarn up minimatch@3.1.4
# 5.1.6 → 5.1.8
yarn up minimatch@5.1.8
# 9.0.5 → 11.0.1
yarn up minimatch@11.0.1
