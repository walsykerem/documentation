#!/bin/sh
# serialize-javascript — MUST FIX — GHSA-5c6j-r48x-rmvq
cd "$(dirname "$0")/../../../Downloads/documentation-main"
# 6.0.2 → 7.1.3
yarn up serialize-javascript@7.1.3
