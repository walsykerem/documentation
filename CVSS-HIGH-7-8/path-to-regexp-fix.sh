#!/bin/sh
# path-to-regexp — HIGH — GHSA-37ch-88jc-xwx2
cd "$(dirname "$0")/.." || exit 1
python3 - <<'PY'
from pathlib import Path

def replace_once(text, old, new, label):
    n = text.count(old)
    assert n == 1, f"{label}: expected 1 match, found {n}"
    return text.replace(old, new, 1)

old_1 = '"path-to-regexp@npm:0.1.12":\n  version: 0.1.12\n  resolution: "path-to-regexp@npm:0.1.12"\n  checksum: 10c0/1c6ff10ca169b773f3bba943bbc6a07182e332464704572962d277b900aeee81ac6aa5d060ff9e01149636c30b1f63af6e69dd7786ba6e0ddb39d4dee1f0645b\n  languageName: node\n  linkType: hard\n'
new_1 = '"path-to-regexp@npm:0.1.13":\n  version: 0.1.13\n  resolution: "path-to-regexp@npm:0.1.13"\n  checksum: 10c0/1cae3921739c154a8926e136185a10c916f79a249b9072a5001b266d96e193860ca03867e8e8cc808b786862d750f427ed93686bc259355442c3407a62deab1a\n  languageName: node\n  linkType: hard\n'
old_2 = '    path-to-regexp: "npm:0.1.12"\n'
new_2 = '    path-to-regexp: "npm:0.1.13"\n'

lock = Path("yarn.lock")
text = lock.read_text()
text = replace_once(text, old_1, new_1, 'path-to-regexp lock block')
text = replace_once(text, old_2, new_2, 'express path-to-regexp descriptor')
lock.write_text(text)
PY
