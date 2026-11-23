#!/bin/sh
# ip-address — HIGH — GHSA-mwp4-54f8-5fhr
cd "$(dirname "$0")/.." || exit 1
python3 - <<'PY'
from pathlib import Path

def replace_once(text, old, new, label):
    n = text.count(old)
    assert n == 1, f"{label}: expected 1 match, found {n}"
    return text.replace(old, new, 1)

old_1 = '"ip-address@npm:^10.0.1":\n  version: 10.1.0\n  resolution: "ip-address@npm:10.1.0"\n  checksum: 10c0/0103516cfa93f6433b3bd7333fa876eb21263912329bfa47010af5e16934eeeff86f3d2ae700a3744a137839ddfad62b900c7a445607884a49b5d1e32a3d7566\n  languageName: node\n  linkType: hard\n'
new_1 = '"ip-address@npm:^10.0.1":\n  version: 10.7.4\n  resolution: "ip-address@npm:10.7.4"\n  checksum: 10c0/22401f5723acd96a8b261ff5b098857bee86a700f8f4f7e7afcf3645a5ddb74b961296577b03c53acbd3235c6424aab11087ff1da9dbce11a55e05af9dde5bbb\n  languageName: node\n  linkType: hard\n'

lock = Path("yarn.lock")
text = lock.read_text()
text = replace_once(text, old_1, new_1, 'ip-address lock block')
lock.write_text(text)
PY
