#!/bin/sh
# serialize-javascript — MUST FIX — GHSA-5c6j-r48x-rmvq
cd "$(dirname "$0")/.." || exit 1
python3 - <<'PY'
from pathlib import Path

p = Path("yarn.lock")
s = p.read_text()
replacements = [
    ('''    serialize-javascript: "npm:^6.0.0"''', '''    serialize-javascript: "npm:^7.1.3"'''),
    ('''    serialize-javascript: "npm:^6.0.1"''', '''    serialize-javascript: "npm:^7.1.3"'''),
    ('''    serialize-javascript: "npm:^6.0.2"''', '''    serialize-javascript: "npm:^7.1.3"'''),
    ('''"randombytes@npm:^2.1.0":
  version: 2.1.0
  resolution: "randombytes@npm:2.1.0"
  dependencies:
    safe-buffer: "npm:^5.1.0"
  checksum: 10c0/50395efda7a8c94f5dffab564f9ff89736064d32addf0cc7e8bf5e4166f09f8ded7a0849ca6c2d2a59478f7d90f78f20d8048bca3cdf8be09d8e8a10790388f3
  languageName: node
  linkType: hard

''', ''),
    ('''"safe-buffer@npm:5.2.1, safe-buffer@npm:>=5.1.0, safe-buffer@npm:^5.1.0, safe-buffer@npm:~5.2.0":''', '''"safe-buffer@npm:5.2.1, safe-buffer@npm:>=5.1.0, safe-buffer@npm:~5.2.0":'''),
    ('''"serialize-javascript@npm:^6.0.0, serialize-javascript@npm:^6.0.1, serialize-javascript@npm:^6.0.2":
  version: 6.0.2
  resolution: "serialize-javascript@npm:6.0.2"
  dependencies:
    randombytes: "npm:^2.1.0"
  checksum: 10c0/2dd09ef4b65a1289ba24a788b1423a035581bef60817bea1f01eda8e3bda623f86357665fe7ac1b50f6d4f583f97db9615b3f07b2a2e8cbcb75033965f771dd2
  languageName: node
  linkType: hard

''', '''"serialize-javascript@npm:^7.1.3":
  version: 7.1.3
  resolution: "serialize-javascript@npm:7.1.3"
  checksum: 10c0/5c2d4cbaa8c35d0a9f64498e9d14410f8e590eff7f2394d8e9e99f81558c0a9191dd65eaa4900ace7a3d6b8de8b8c2ff0d7a6963b68281515f2e9fccc78c4514
  languageName: node
  linkType: hard

'''),
]
for old, new in replacements:
    if old not in s:
        raise SystemExit("serialize-javascript 6.0.2 lock fragment not found: " + old.splitlines()[0])
    s = s.replace(old, new, 1)
p.write_text(s)
PY
