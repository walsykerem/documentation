#!/bin/sh
# js-cookie — HIGH — GHSA-qjx8-664m-686j
cd "$(dirname "$0")/.." || exit 1
python3 - <<'PY'
from pathlib import Path

def replace_once(text, old, new, label):
    n = text.count(old)
    assert n == 1, f"{label}: expected 1 match, found {n}"
    return text.replace(old, new, 1)

old_1 = '"js-cookie@npm:^3.0.1":\n  version: 3.0.5\n  resolution: "js-cookie@npm:3.0.5"\n  checksum: 10c0/04a0e560407b4489daac3a63e231d35f4e86f78bff9d792011391b49c59f721b513411cd75714c418049c8dc9750b20fcddad1ca5a2ca616c3aca4874cce5b3a\n  languageName: node\n  linkType: hard\n'
new_1 = '"js-cookie@npm:^3.0.1":\n  version: 3.0.7\n  resolution: "js-cookie@npm:3.0.7"\n  checksum: 10c0/c921c43014e98bb94a1765663a1a10d693048d61444e374c1ecf459eba92320381f9c406e724df9aa44e819c4b606e6a7240f2abe2d5c54ad1e73a3002b191c2\n  languageName: node\n  linkType: hard\n'

lock = Path("yarn.lock")
text = lock.read_text()
text = replace_once(text, old_1, new_1, 'js-cookie lock block')
lock.write_text(text)
PY
