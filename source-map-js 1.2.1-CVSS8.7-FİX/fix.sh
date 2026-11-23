#!/bin/sh
# source-map-js — MUST FIX — GHSA-68fv-2mgg-jv7q
cd "$(dirname "$0")/.." || exit 1
python3 - <<'PY'
from pathlib import Path

p = Path("yarn.lock")
s = p.read_text()
old = '''"source-map-js@npm:^1.0.1, source-map-js@npm:^1.0.2, source-map-js@npm:^1.2.1":
  version: 1.2.1
  resolution: "source-map-js@npm:1.2.1"
  checksum: 10c0/7bda1fc4c197e3c6ff17de1b8b2c20e60af81b63a52cb32ec5a5d67a20a7d42651e2cb34ebe93833c5a2a084377e17455854fee3e21e7925c64a51b6a52b0faf
  languageName: node
  linkType: hard

"source-map-js@npm:^1.2.2":
  version: 1.2.2
  resolution: "source-map-js@npm:1.2.2"
  checksum: 10c0/d5d6dec62266834f83dd4f8a2606a196fb1a006ca5d53b0ef80ee513b7eba2f4e2ae241f4bc129ae7e9b80dea24f6e3d92b446b7e6e96be7653cab8888168a94
  languageName: node
  linkType: hard

'''
new = '''"source-map-js@npm:^1.0.1, source-map-js@npm:^1.0.2, source-map-js@npm:^1.2.1, source-map-js@npm:^1.2.2":
  version: 1.2.2
  resolution: "source-map-js@npm:1.2.2"
  checksum: 10c0/d5d6dec62266834f83dd4f8a2606a196fb1a006ca5d53b0ef80ee513b7eba2f4e2ae241f4bc129ae7e9b80dea24f6e3d92b446b7e6e96be7653cab8888168a94
  languageName: node
  linkType: hard

'''
if old not in s:
    raise SystemExit("source-map-js 1.2.1 blocks not found in yarn.lock")
p.write_text(s.replace(old, new, 1))
PY
