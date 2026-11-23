#!/bin/sh
# postcss — HIGH — GHSA-6g55-p6wh-862q
cd "$(dirname "$0")/.." || exit 1
python3 - <<'PY'
from pathlib import Path

def replace_once(text, old, new, label):
    n = text.count(old)
    assert n == 1, f"{label}: expected 1 match, found {n}"
    return text.replace(old, new, 1)

old_1 = '"postcss@npm:8.4.31":\n  version: 8.4.31\n  resolution: "postcss@npm:8.4.31"\n  dependencies:\n    nanoid: "npm:^3.3.6"\n    picocolors: "npm:^1.0.0"\n    source-map-js: "npm:^1.0.2"\n  checksum: 10c0/748b82e6e5fc34034dcf2ae88ea3d11fd09f69b6c50ecdd3b4a875cfc7cdca435c958b211e2cb52355422ab6fccb7d8f2f2923161d7a1b281029e4a913d59acf\n  languageName: node\n  linkType: hard\n\n"postcss@npm:^8.0.9, postcss@npm:^8.4.21, postcss@npm:^8.4.24, postcss@npm:^8.4.33, postcss@npm:^8.5.4":\n  version: 8.5.6\n  resolution: "postcss@npm:8.5.6"\n  dependencies:\n    nanoid: "npm:^3.3.11"\n    picocolors: "npm:^1.1.1"\n    source-map-js: "npm:^1.2.1"\n  checksum: 10c0/5127cc7c91ed7a133a1b7318012d8bfa112da9ef092dddf369ae699a1f10ebbd89b1b9f25f3228795b84585c72aabd5ced5fc11f2ba467eedf7b081a66fad024\n  languageName: node\n  linkType: hard\n'
new_1 = '"postcss@npm:8.5.23, postcss@npm:^8.0.9, postcss@npm:^8.4.21, postcss@npm:^8.4.24, postcss@npm:^8.4.33, postcss@npm:^8.5.4":\n  version: 8.5.23\n  resolution: "postcss@npm:8.5.23"\n  dependencies:\n    nanoid: "npm:^3.3.16"\n    picocolors: "npm:^1.1.1"\n    source-map-js: "npm:^1.2.1"\n  checksum: 10c0/ed714e635b330bb42666ecdd0c0b4f30224ded15b0b0052d6bc2b92832f2cf17d1c1141359453f96f0a84f8fbf4c405a74df187f559163b8f31131b2535455aa\n  languageName: node\n  linkType: hard\n'
old_2 = '"nanoid@npm:^3.3.11, nanoid@npm:^3.3.6":\n  version: 3.3.11\n  resolution: "nanoid@npm:3.3.11"\n  bin:\n    nanoid: bin/nanoid.cjs\n  checksum: 10c0/40e7f70b3d15f725ca072dfc4f74e81fcf1fbb02e491cf58ac0c79093adc9b0a73b152bcde57df4b79cd097e13023d7504acb38404a4da7bc1cd8e887b82fe0b\n  languageName: node\n  linkType: hard\n\n"nanoid@npm:^3.3.20":\n  version: 3.3.20\n  resolution: "nanoid@npm:3.3.20"\n  bin:\n    nanoid: bin/nanoid.cjs\n  checksum: 10c0/856e8bf3bddb959d65997bd94908be030dbc5e6ed88fb3af2a638e51d1938f4d4f454c7c7231aba340775224f88b8cfd3ce1693c70471bfd05f5b6a2227c0c1e\n  languageName: node\n  linkType: hard\n'
new_2 = '"nanoid@npm:^3.3.16, nanoid@npm:^3.3.20":\n  version: 3.3.20\n  resolution: "nanoid@npm:3.3.20"\n  bin:\n    nanoid: bin/nanoid.cjs\n  checksum: 10c0/856e8bf3bddb959d65997bd94908be030dbc5e6ed88fb3af2a638e51d1938f4d4f454c7c7231aba340775224f88b8cfd3ce1693c70471bfd05f5b6a2227c0c1e\n  languageName: node\n  linkType: hard\n\n"nanoid@npm:^3.3.6":\n  version: 3.3.11\n  resolution: "nanoid@npm:3.3.11"\n  bin:\n    nanoid: bin/nanoid.cjs\n  checksum: 10c0/40e7f70b3d15f725ca072dfc4f74e81fcf1fbb02e491cf58ac0c79093adc9b0a73b152bcde57df4b79cd097e13023d7504acb38404a4da7bc1cd8e887b82fe0b\n  languageName: node\n  linkType: hard\n'
old_3 = '"source-map-js@npm:^1.0.1, source-map-js@npm:^1.0.2, source-map-js@npm:^1.2.1":\n  version: 1.2.1\n  resolution: "source-map-js@npm:1.2.1"\n  checksum: 10c0/7bda1fc4c197e3c6ff17de1b8b2c20e60af81b63a52cb32ec5a5d67a20a7d42651e2cb34ebe93833c5a2a084377e17455854fee3e21e7925c64a51b6a52b0faf\n  languageName: node\n  linkType: hard\n'
new_3 = '"source-map-js@npm:^1.0.1, source-map-js@npm:^1.2.1":\n  version: 1.2.1\n  resolution: "source-map-js@npm:1.2.1"\n  checksum: 10c0/7bda1fc4c197e3c6ff17de1b8b2c20e60af81b63a52cb32ec5a5d67a20a7d42651e2cb34ebe93833c5a2a084377e17455854fee3e21e7925c64a51b6a52b0faf\n  languageName: node\n  linkType: hard\n'
old_4 = '    postcss: "npm:8.4.31"\n'
new_4 = '    postcss: "npm:8.5.23"\n'

lock = Path("yarn.lock")
text = lock.read_text()
text = replace_once(text, old_1, new_1, 'postcss vulnerable blocks -> 8.5.23')
text = replace_once(text, old_2, new_2, 'nanoid descriptors')
text = replace_once(text, old_3, new_3, 'source-map-js descriptor cleanup')
text = replace_once(text, old_4, new_4, 'workspace postcss descriptor')
lock.write_text(text)

pkg = Path("package.json")
ptext = pkg.read_text()
ptext = replace_once(ptext, '\"postcss\": \"8.4.31\"', '\"postcss\": \"8.5.23\"', "package.json postcss pin")
pkg.write_text(ptext)
PY
