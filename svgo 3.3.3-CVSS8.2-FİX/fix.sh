#!/bin/sh
# svgo — MUST FIX — GHSA-2p49-hgcm-8545
cd "$(dirname "$0")/.." || exit 1
python3 - <<'PY'
from pathlib import Path

p = Path("yarn.lock")
s = p.read_text()
old = '''"svgo@npm:^3.0.2, svgo@npm:^3.2.0":
  version: 3.3.3
  resolution: "svgo@npm:3.3.3"
  dependencies:
    commander: "npm:^7.2.0"
    css-select: "npm:^5.1.0"
    css-tree: "npm:^2.3.1"
    css-what: "npm:^6.1.0"
    csso: "npm:^5.0.5"
    picocolors: "npm:^1.0.0"
    sax: "npm:^1.5.0"
  bin:
    svgo: ./bin/svgo
  checksum: 10c0/06568c6b0430f96748c557f0b17dc7de79b19fa16d13d7523527ede0ec727fc6d8e6a10e13ff106dc4372d2e6063a1dca7c455c495efb1b83857480425f9b965
  languageName: node
  linkType: hard

'''
new = '''"svgo@npm:^3.0.2, svgo@npm:^3.2.0":
  version: 3.3.5
  resolution: "svgo@npm:3.3.5"
  dependencies:
    commander: "npm:^7.2.0"
    css-select: "npm:^5.1.0"
    css-tree: "npm:^2.3.1"
    css-what: "npm:^6.1.0"
    csso: "npm:^5.0.5"
    picocolors: "npm:^1.0.0"
    sax: "npm:^1.5.0"
  bin:
    svgo: ./bin/svgo
  checksum: 10c0/c4772b2f5ff164323e37d866d28f05163b78a61c44b3412db724a37175c7cf75261a362df22607c2e4afcc40b96aad77d07e8af1970fb92e5802ee6c76ea2ea4
  languageName: node
  linkType: hard

'''
if old not in s:
    raise SystemExit("svgo 3.3.3 block not found in yarn.lock")
p.write_text(s.replace(old, new, 1))
PY
