#!/bin/sh
# proxy-addr — MUST FIX — GHSA-jqcg-44mw-7w3h
cd "$(dirname "$0")/../../../Downloads/documentation-main"
# 2.0.7 → 2.0.8
yarn up proxy-addr@2.0.8
