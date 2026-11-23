#!/bin/sh
# shell-quote — MUST FIX — GHSA-w7jw-789q-3m8p
cd "$(dirname "$0")/.." || exit 1
python3 - <<'PY'
from pathlib import Path

p = Path("yarn.lock")
s = p.read_text()
old = '''"shell-quote@npm:^1.8.3":
  version: 1.8.3
  resolution: "shell-quote@npm:1.8.3"
  checksum: 10c0/bee87c34e1e986cfb4c30846b8e6327d18874f10b535699866f368ade11ea4ee45433d97bf5eada22c4320c27df79c3a6a7eb1bf3ecfc47f2c997d9e5e2672fd
  languageName: node
  linkType: hard

'''
new = '''"shell-quote@npm:^1.8.3":
  version: 1.9.0
  resolution: "shell-quote@npm:1.9.0"
  checksum: 10c0/a39960107eb086b02394cfceb3c732bd3bf567b568719ff47101448fc3f1bf4a59ecfdd8960ff7ea564d749ef8bda70f2c82a768f22d8c7aeeabf2b64f53b7e8
  languageName: node
  linkType: hard

'''
if old not in s:
    raise SystemExit("shell-quote 1.8.3 block not found in yarn.lock")
p.write_text(s.replace(old, new, 1))
PY
