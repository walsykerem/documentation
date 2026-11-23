#!/bin/sh
# glob — HIGH — GHSA-5j98-mcp5-4vw2
cd "$(dirname "$0")/.." || exit 1
python3 - <<'PYEOF'
p = 'yarn.lock'
s = open(p, encoding='utf-8').read()
if '"brace-expansion@npm:^5.0.12":' not in s:
    block = (
        '"brace-expansion@npm:^5.0.12":\n'
        '  version: 5.1.0\n'
        '  resolution: "brace-expansion@npm:5.1.0"\n'
        '  dependencies:\n'
        '    balanced-match: "npm:^4.0.2"\n'
        '  checksum: 10c0/e45471e38321aa12dd38c4e76ffd065efe1056b053ce6035922742351aa836666a71deca248d0bb875d3d135ca0f77588101370a629b56803e8b6495acc4f251\n'
        '  languageName: node\n'
        '  linkType: hard\n'
        '\n'
    )
    lines = s.splitlines(keepends=True)
    for i, line in enumerate(lines):
        if line.startswith('"brace-expansion@npm:^5.0.2'):
            lines.insert(i, block)
            break
    else:
        raise SystemExit('brace-expansion anchor not found')
    open(p, 'w', encoding='utf-8').write(''.join(lines))
PYEOF
patch -N -p1 <<'YARNLOCK_PATCH_EOF'
--- a/yarn.lock
+++ b/yarn.lock
@@ -3252,26 +3252,19 @@
   languageName: node
   linkType: hard
 
-"@isaacs/cliui@npm:^8.0.2":
-  version: 8.0.2
-  resolution: "@isaacs/cliui@npm:8.0.2"
-  dependencies:
-    string-width: "npm:^5.1.2"
-    string-width-cjs: "npm:string-width@^4.2.0"
-    strip-ansi: "npm:^7.0.1"
-    strip-ansi-cjs: "npm:strip-ansi@^6.0.1"
-    wrap-ansi: "npm:^8.1.0"
-    wrap-ansi-cjs: "npm:wrap-ansi@^7.0.0"
-  checksum: 10c0/b1bf42535d49f11dc137f18d5e4e63a28c5569de438a221c369483731e9dac9fb797af554e8bf02b6192d1e5eba6e6402cf93900c3d0ac86391d00d04876789e
-  languageName: node
-  linkType: hard
-
 "@isaacs/fs-minipass@npm:^4.0.0":
   version: 4.0.1
   resolution: "@isaacs/fs-minipass@npm:4.0.1"
   dependencies:
     minipass: "npm:^7.0.4"
   checksum: 10c0/c25b6dc1598790d5b55c0947a9b7d111cfa92594db5296c3b907e2f533c033666f692a3939eadac17b1c7c40d362d0b0635dc874cbfe3e70db7c2b07cc97a5d2
+  languageName: node
+  linkType: hard
+
+"@isaacs/nonrecursive-glob-match@npm:^1.1.0":
+  version: 1.1.0
+  resolution: "@isaacs/nonrecursive-glob-match@npm:1.1.0"
+  checksum: 10c0/89f8535f3d8147649360de992f58fba2b0e97b687e18cdc16c5b34a6c52afff4f474d05c5a0b6411708614f368cf19c41b037d3a1c6c6821e02aee967d888e98
   languageName: node
   linkType: hard
 
@@ -3920,13 +3913,6 @@
   version: 4.0.0
   resolution: "@npmcli/redact@npm:4.0.0"
   checksum: 10c0/a1e9ba9c70a6b40e175bda2c3dd8cfdaf096e6b7f7a132c855c083c8dfe545c3237cd56702e2e6627a580b1d63373599d49a1192c4078a85bf47bbde824df31c
-  languageName: node
-  linkType: hard
-
-"@pkgjs/parseargs@npm:^0.11.0":
-  version: 0.11.0
-  resolution: "@pkgjs/parseargs@npm:0.11.0"
-  checksum: 10c0/5bd7576bb1b38a47a7fc7b51ac9f38748e772beebc56200450c4a817d712232b8f1d3ef70532c80840243c657d491cf6a6be1e3a214cff907645819fdc34aadd
   languageName: node
   linkType: hard
 
@@ -7658,7 +7653,7 @@
   languageName: node
   linkType: hard
 
-"cross-spawn@npm:^7.0.3, cross-spawn@npm:^7.0.6":
+"cross-spawn@npm:^7.0.3":
   version: 7.0.6
   resolution: "cross-spawn@npm:7.0.6"
   dependencies:
@@ -9621,16 +9616,6 @@
   languageName: node
   linkType: hard
 
-"foreground-child@npm:^3.1.0":
-  version: 3.3.1
-  resolution: "foreground-child@npm:3.3.1"
-  dependencies:
-    cross-spawn: "npm:^7.0.6"
-    signal-exit: "npm:^4.0.1"
-  checksum: 10c0/8986e4af2430896e65bc2788d6679067294d6aee9545daefc84923a0a4b399ad9c7a3ea7bd8c0b2b80fdf4a92de4c69df3f628233ff3224260e9c1541a9e9ed3
-  languageName: node
-  linkType: hard
-
 "form-data-encoder@npm:^2.1.2":
   version: 2.1.4
   resolution: "form-data-encoder@npm:2.1.4"
@@ -9848,18 +9833,13 @@
   linkType: hard
 
 "glob@npm:^10.3.10":
-  version: 10.4.5
-  resolution: "glob@npm:10.4.5"
-  dependencies:
-    foreground-child: "npm:^3.1.0"
-    jackspeak: "npm:^3.1.2"
-    minimatch: "npm:^9.0.4"
-    minipass: "npm:^7.1.2"
-    package-json-from-dist: "npm:^1.0.0"
-    path-scurry: "npm:^1.11.1"
-  bin:
-    glob: dist/esm/bin.mjs
-  checksum: 10c0/19a9759ea77b8e3ca0a43c2f07ecddc2ad46216b786bb8f993c445aee80d345925a21e5280c7b7c6c59e860a0154b84e4b2b60321fea92cd3c56b4a7489f160e
+  version: 14.0.2
+  resolution: "glob@npm:14.0.2"
+  dependencies:
+    minimatch: "npm:^11.0.0"
+    minipass: "npm:^7.1.3"
+    path-scurry: "npm:^3.0.0"
+  checksum: 10c0/30e6d02930d281d1879048ac4631648491aa5e60d84fe4195b048f88545f341766a3e2ab05d0a9d59457bd8905720925d20a0491654feeb7fc68568177e8d8e4
   languageName: node
   linkType: hard
 
@@ -11216,19 +11196,6 @@
   version: 3.0.1
   resolution: "isobject@npm:3.0.1"
   checksum: 10c0/03344f5064a82f099a0cd1a8a407f4c0d20b7b8485e8e816c39f249e9416b06c322e8dec5b842b6bb8a06de0af9cb48e7bc1b5352f0fadc2f0abac033db3d4db
-  languageName: node
-  linkType: hard
-
-"jackspeak@npm:^3.1.2":
-  version: 3.4.3
-  resolution: "jackspeak@npm:3.4.3"
-  dependencies:
-    "@isaacs/cliui": "npm:^8.0.2"
-    "@pkgjs/parseargs": "npm:^0.11.0"
-  dependenciesMeta:
-    "@pkgjs/parseargs":
-      optional: true
-  checksum: 10c0/6acc10d139eaefdbe04d2f679e6191b3abf073f111edf10b1de5302c97ec93fffeb2fdd8681ed17f16268aa9dd4f8c588ed9d1d3bffbbfa6e8bf897cbb3149b9
   languageName: node
   linkType: hard
 
@@ -11979,13 +11946,6 @@
   languageName: node
   linkType: hard
 
-"lru-cache@npm:^10.2.0":
-  version: 10.4.3
-  resolution: "lru-cache@npm:10.4.3"
-  checksum: 10c0/ebd04fbca961e6c1d6c0af3799adcc966a1babe798f685bb84e6599266599cd95d94630b10262f5424539bc4640107e8a33aa28585374abf561d30d16f4b39fb
-  languageName: node
-  linkType: hard
-
 "lru-cache@npm:^11.0.0, lru-cache@npm:^11.1.0, lru-cache@npm:^11.2.1":
   version: 11.3.0
   resolution: "lru-cache@npm:11.3.0"
@@ -13371,6 +13331,16 @@
   languageName: node
   linkType: hard
 
+"minimatch@npm:^11.0.0":
+  version: 11.0.9
+  resolution: "minimatch@npm:11.0.9"
+  dependencies:
+    "@isaacs/nonrecursive-glob-match": "npm:^1.1.0"
+    brace-expansion: "npm:^5.0.12"
+  checksum: 10c0/17c8b5caebaa8c1ecc1c6d58028d192f0e94ebe03976bb9f348920c107cde3185614f74543fe40dfc79ecf0bd74158b816633fc9a8f66da32c0d5327ecbb91e9
+  languageName: node
+  linkType: hard
+
 "minimatch@npm:^3.1.1":
   version: 3.1.2
   resolution: "minimatch@npm:3.1.2"
@@ -13386,15 +13356,6 @@
   dependencies:
     brace-expansion: "npm:^2.0.1"
   checksum: 10c0/3defdfd230914f22a8da203747c42ee3c405c39d4d37ffda284dac5e45b7e1f6c49aa8be606509002898e73091ff2a3bbfc59c2c6c71d4660609f63aa92f98e3
-  languageName: node
-  linkType: hard
-
-"minimatch@npm:^9.0.4":
-  version: 9.0.5
-  resolution: "minimatch@npm:9.0.5"
-  dependencies:
-    brace-expansion: "npm:^2.0.1"
-  checksum: 10c0/de96cf5e35bdf0eab3e2c853522f98ffbe9a36c37797778d2665231ec1f20a9447a7e567cb640901f89e4daaa95ae5d70c65a9e8aa2bb0019b6facbc3c0575ed
   languageName: node
   linkType: hard
 
@@ -13465,17 +13426,17 @@
   languageName: node
   linkType: hard
 
-"minipass@npm:^5.0.0 || ^6.0.2 || ^7.0.0, minipass@npm:^7.1.2":
-  version: 7.1.2
-  resolution: "minipass@npm:7.1.2"
-  checksum: 10c0/b0fd20bb9fb56e5fa9a8bfac539e8915ae07430a619e4b86ff71f5fc757ef3924b23b2c4230393af1eda647ed3d75739e4e0acb250a6b1eb277cf7f8fe449557
-  languageName: node
-  linkType: hard
-
 "minipass@npm:^7.0.2, minipass@npm:^7.0.3, minipass@npm:^7.0.4, minipass@npm:^7.1.3":
   version: 7.1.3
   resolution: "minipass@npm:7.1.3"
   checksum: 10c0/539da88daca16533211ea5a9ee98dc62ff5742f531f54640dd34429e621955e91cc280a91a776026264b7f9f6735947629f920944e9c1558369e8bf22eb33fbb
+  languageName: node
+  linkType: hard
+
+"minipass@npm:^7.1.2":
+  version: 7.1.2
+  resolution: "minipass@npm:7.1.2"
+  checksum: 10c0/b0fd20bb9fb56e5fa9a8bfac539e8915ae07430a619e4b86ff71f5fc757ef3924b23b2c4230393af1eda647ed3d75739e4e0acb250a6b1eb277cf7f8fe449557
   languageName: node
   linkType: hard
 
@@ -13945,13 +13906,6 @@
   languageName: node
   linkType: hard
 
-"package-json-from-dist@npm:^1.0.0":
-  version: 1.0.1
-  resolution: "package-json-from-dist@npm:1.0.1"
-  checksum: 10c0/62ba2785eb655fec084a257af34dbe24292ab74516d6aecef97ef72d4897310bc6898f6c85b5cd22770eaa1ce60d55a0230e150fb6a966e3ecd6c511e23d164b
-  languageName: node
-  linkType: hard
-
 "package-json@npm:^8.1.0":
   version: 8.1.1
   resolution: "package-json@npm:8.1.1"
@@ -14116,16 +14070,6 @@
   languageName: node
   linkType: hard
 
-"path-scurry@npm:^1.11.1":
-  version: 1.11.1
-  resolution: "path-scurry@npm:1.11.1"
-  dependencies:
-    lru-cache: "npm:^10.2.0"
-    minipass: "npm:^5.0.0 || ^6.0.2 || ^7.0.0"
-  checksum: 10c0/32a13711a2a505616ae1cc1b5076801e453e7aae6ac40ab55b388bb91b9d0547a52f5aaceff710ea400205f18691120d4431e520afbe4266b836fadede15872d
-  languageName: node
-  linkType: hard
-
 "path-scurry@npm:^2.0.2":
   version: 2.0.2
   resolution: "path-scurry@npm:2.0.2"
@@ -14133,6 +14077,16 @@
     lru-cache: "npm:^11.0.0"
     minipass: "npm:^7.1.2"
   checksum: 10c0/b35ad37cf6557a87fd057121ce2be7695380c9138d93e87ae928609da259ea0a170fac6f3ef1eb3ece8a068e8b7f2f3adf5bb2374cf4d4a57fe484954fcc9482
+  languageName: node
+  linkType: hard
+
+"path-scurry@npm:^3.0.0":
+  version: 3.0.0
+  resolution: "path-scurry@npm:3.0.0"
+  dependencies:
+    lru-cache: "npm:^11.0.0"
+    minipass: "npm:^7.1.2"
+  checksum: 10c0/3256223b51952732bc5460f574143d7d9904cd6d68fac3072906162c90e9f27fdf6f3fe812287e65a876f92d73c12a58368b28749ed07a58bdb04dc76f60a938
   languageName: node
   linkType: hard
 
@@ -16862,7 +16816,7 @@
   languageName: node
   linkType: hard
 
-"string-width-cjs@npm:string-width@^4.2.0, string-width@npm:^4.1.0, string-width@npm:^4.2.0, string-width@npm:^4.2.3":
+"string-width@npm:^4.1.0, string-width@npm:^4.2.0, string-width@npm:^4.2.3":
   version: 4.2.3
   resolution: "string-width@npm:4.2.3"
   dependencies:
@@ -16923,7 +16877,7 @@
   languageName: node
   linkType: hard
 
-"strip-ansi-cjs@npm:strip-ansi@^6.0.1, strip-ansi@npm:^6.0.0, strip-ansi@npm:^6.0.1":
+"strip-ansi@npm:^6.0.1":
   version: 6.0.1
   resolution: "strip-ansi@npm:6.0.1"
   dependencies:
@@ -18479,17 +18433,6 @@
   languageName: node
   linkType: hard
 
-"wrap-ansi-cjs@npm:wrap-ansi@^7.0.0":
-  version: 7.0.0
-  resolution: "wrap-ansi@npm:7.0.0"
-  dependencies:
-    ansi-styles: "npm:^4.0.0"
-    string-width: "npm:^4.1.0"
-    strip-ansi: "npm:^6.0.0"
-  checksum: 10c0/d15fc12c11e4cbc4044a552129ebc75ee3f57aa9c1958373a4db0292d72282f54373b536103987a4a7594db1ef6a4f10acf92978f79b98c49306a4b58c77d4da
-  languageName: node
-  linkType: hard
-
 "wrap-ansi@npm:^8.0.1, wrap-ansi@npm:^8.1.0":
   version: 8.1.0
   resolution: "wrap-ansi@npm:8.1.0"
YARNLOCK_PATCH_EOF
