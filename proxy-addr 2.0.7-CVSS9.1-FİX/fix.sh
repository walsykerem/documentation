#!/bin/sh
# proxy-addr — MUST FIX — GHSA-jqcg-44mw-7w3h
cd "$(dirname "$0")/.." || exit 1
python3 - <<'PY'
from pathlib import Path

p = Path("yarn.lock")
s = p.read_text()
old = '''"proxy-addr@npm:~2.0.7":
  version: 2.0.7
  resolution: "proxy-addr@npm:2.0.7"
  dependencies:
    forwarded: "npm:0.2.0"
    ipaddr.js: "npm:1.9.1"
  checksum: 10c0/c3eed999781a35f7fd935f398b6d8920b6fb00bbc14287bc6de78128ccc1a02c89b95b56742bf7cf0362cc333c61d138532049c7dedc7a328ef13343eff81210
  languageName: node
  linkType: hard

'''
new = '''"proxy-addr@npm:~2.0.7":
  version: 2.0.8
  resolution: "proxy-addr@npm:2.0.8"
  dependencies:
    forwarded: "npm:0.2.0"
    ipaddr.js: "npm:1.9.1"
  checksum: 10c0/58398f36e5b1f72b1011ca21844c0c41a9a3b6f2f0d101bcdb19abb3f3dd9626b27a96e53da777ded901eb67faed0304a4bc1d435b235e436f66f8e5e1fe1f5e
  languageName: node
  linkType: hard

'''
if old not in s:
    raise SystemExit("proxy-addr 2.0.7 block not found in yarn.lock")
p.write_text(s.replace(old, new, 1))
PY
