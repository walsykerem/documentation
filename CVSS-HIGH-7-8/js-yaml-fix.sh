#!/bin/sh
# js-yaml — HIGH — GHSA-2883-xcg3-v3hh
cd "$(dirname "$0")/.." || exit 1
python3 - <<'PY'
from pathlib import Path

def replace_once(text, old, new, label):
    n = text.count(old)
    assert n == 1, f"{label}: expected 1 match, found {n}"
    return text.replace(old, new, 1)

old_1 = '"js-yaml@npm:^3.13.1":\n  version: 3.14.1\n  resolution: "js-yaml@npm:3.14.1"\n  dependencies:\n    argparse: "npm:^1.0.7"\n    esprima: "npm:^4.0.0"\n  bin:\n    js-yaml: bin/js-yaml.js\n  checksum: 10c0/6746baaaeac312c4db8e75fa22331d9a04cccb7792d126ed8ce6a0bbcfef0cedaddd0c5098fade53db067c09fe00aa1c957674b4765610a8b06a5a189e46433b\n  languageName: node\n  linkType: hard\n'
new_1 = '"js-yaml@npm:^3.13.1":\n  version: 3.15.2\n  resolution: "js-yaml@npm:3.15.2"\n  dependencies:\n    argparse: "npm:^1.0.7"\n    esprima: "npm:^4.0.0"\n  bin:\n    js-yaml: bin/js-yaml.js\n  checksum: 10c0/e341df211dece9d4b784849647ad7568b5b6a58a9ee58ead750482316d83276387343649fe4b71522705dc6c76acf97718588f23dc19443833ef3e75033af967\n  languageName: node\n  linkType: hard\n'
old_2 = '"js-yaml@npm:^4.1.0":\n  version: 4.1.0\n  resolution: "js-yaml@npm:4.1.0"\n  dependencies:\n    argparse: "npm:^2.0.1"\n  bin:\n    js-yaml: bin/js-yaml.js\n  checksum: 10c0/184a24b4eaacfce40ad9074c64fd42ac83cf74d8c8cd137718d456ced75051229e5061b8633c3366b8aada17945a7a356b337828c19da92b51ae62126575018f\n  languageName: node\n  linkType: hard\n'
new_2 = '"js-yaml@npm:^4.1.0":\n  version: 4.3.2\n  resolution: "js-yaml@npm:4.3.2"\n  dependencies:\n    argparse: "npm:^2.0.1"\n  bin:\n    js-yaml: bin/js-yaml.js\n  checksum: 10c0/dedd34c2e8fef1d504687f1bc94ed0ee1311a1f78770fa2800352c6d59c635ccf555009d74e9afe529ae62199da2b1ccef30e53dc84dcd8d2d8187c22574bc97\n  languageName: node\n  linkType: hard\n'

lock = Path("yarn.lock")
text = lock.read_text()
text = replace_once(text, old_1, new_1, 'js-yaml 3.x lock block')
text = replace_once(text, old_2, new_2, 'js-yaml 4.x lock block')
lock.write_text(text)
PY
