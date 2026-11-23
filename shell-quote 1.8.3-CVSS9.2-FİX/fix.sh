#!/bin/sh
# shell-quote — MUST FIX — GHSA-w7jw-789q-3m8p
cd "$(dirname "$0")/.." || exit 1
# 1.8.3 → 1.9.0
yarn up shell-quote@1.9.0
