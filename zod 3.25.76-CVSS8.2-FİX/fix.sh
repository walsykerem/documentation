#!/bin/sh
# zod — MUST FIX — GHSA-mrhx-c7xc-m3w5
cd "$(dirname "$0")/.." || exit 1
# 3.25.76 → 4.6.6
yarn up zod@4.6.6
