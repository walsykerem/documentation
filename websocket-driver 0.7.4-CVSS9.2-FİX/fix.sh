#!/bin/sh
# websocket-driver — MUST FIX — GHSA-xv26-6w52-cph6
cd "$(dirname "$0")/.." || exit 1
# 0.7.4 → 0.7.5
yarn up websocket-driver@0.7.5
