#!/bin/sh
# launch-editor — HIGH — GHSA-587h-7wmj-h5pm
cd "$(dirname "$0")/.." || exit 1
python3 - <<'PY'
from pathlib import Path

def replace_once(text, old, new, label):
    n = text.count(old)
    assert n == 1, f"{label}: expected 1 match, found {n}"
    return text.replace(old, new, 1)

old_1 = '"launch-editor@npm:^2.6.1":\n  version: 2.11.1\n  resolution: "launch-editor@npm:2.11.1"\n  dependencies:\n    picocolors: "npm:^1.1.1"\n    shell-quote: "npm:^1.8.3"\n  checksum: 10c0/b1aad04eef3a675aa35e82498bedaaeb790b9a02834a9cff79987dd7c6f5d92fd8f79ff7a8a4cd61681e0d462069de30d0bc65b41a936a7e3d700a4fdac1090e\n  languageName: node\n  linkType: hard\n'
new_1 = '"launch-editor@npm:^2.6.1":\n  version: 2.14.2\n  resolution: "launch-editor@npm:2.14.2"\n  dependencies:\n    picocolors: "npm:^1.1.1"\n    shell-quote: "npm:^1.10.0"\n  checksum: 10c0/cf66c75534170142269bfc1749df8a4b5178ad644d358aa08d4feda9ecb1ba7a26191a76ea2cecea95c59235c142486b928b58eaf0cd77377d21e42ed5c3e100\n  languageName: node\n  linkType: hard\n'
old_2 = '"shell-quote@npm:^1.8.3":\n  version: 1.8.3\n  resolution: "shell-quote@npm:1.8.3"\n  checksum: 10c0/bee87c34e1e986cfb4c30846b8e6327d18874f10b535699866f368ade11ea4ee45433d97bf5eada22c4320c27df79c3a6a7eb1bf3ecfc47f2c997d9e5e2672fd\n  languageName: node\n  linkType: hard\n'
new_2 = '"shell-quote@npm:^1.10.0":\n  version: 1.12.0\n  resolution: "shell-quote@npm:1.12.0"\n  checksum: 10c0/1605a4ed6a758bf13de7cb8197a4184d8015f7a4dbdcd6cd4a717d5b30b3ae7666300cc4ae7f3155cf80ace9739e9e82061ee5aa1a648f53f5fab31a220816d0\n  languageName: node\n  linkType: hard\n'

lock = Path("yarn.lock")
text = lock.read_text()
text = replace_once(text, old_1, new_1, 'launch-editor lock block')
text = replace_once(text, old_2, new_2, 'shell-quote ^1.10.0 descriptor')
lock.write_text(text)
PY
