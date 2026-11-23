#!/bin/sh
# browserslist — HIGH — GHSA-73wf-gq98-2v4g
cd "$(dirname "$0")/.." || exit 1
patch -N -p1 <<'YARNLOCK_PATCH_EOF'
--- a/yarn.lock
+++ b/yarn.lock
@@ -6595,12 +6595,12 @@
   languageName: node
   linkType: hard
 
-"baseline-browser-mapping@npm:^2.10.12":
-  version: 2.10.42
-  resolution: "baseline-browser-mapping@npm:2.10.42"
+"baseline-browser-mapping@npm:^2.10.44":
+  version: 2.11.39
+  resolution: "baseline-browser-mapping@npm:2.11.39"
   bin:
     baseline-browser-mapping: dist/cli.cjs
-  checksum: 10c0/4a9f54818d17d8dbee69096563b2cd5e2175f66752c479f1c10d31e072c1c2b7241a9bdaee78d5236178c581ca2735e75fbb0d0877d6492958eed9f6e46e03f3
+  checksum: 10c0/e5f58a4636d90e449aefc7d845310999c5427c337e828d55f629a8be8fcde253d37f294754a89263f08430d54cfb4f8f55792b58dc290394ddaa2869b551517f
   languageName: node
   linkType: hard
 
@@ -6782,32 +6782,18 @@
   languageName: node
   linkType: hard
 
-"browserslist@npm:^4.0.0, browserslist@npm:^4.23.0, browserslist@npm:^4.24.0, browserslist@npm:^4.24.4, browserslist@npm:^4.25.1, browserslist@npm:^4.25.3":
-  version: 4.25.4
-  resolution: "browserslist@npm:4.25.4"
-  dependencies:
-    caniuse-lite: "npm:^1.0.30001737"
-    electron-to-chromium: "npm:^1.5.211"
-    node-releases: "npm:^2.0.19"
-    update-browserslist-db: "npm:^1.1.3"
-  bin:
-    browserslist: cli.js
-  checksum: 10c0/2b105948990dc2fc0bc2536b4889aadfa15d637e1d857a121611a704cdf539a68f575a391f6bf8b7ff19db36cee1b7834565571f35a7ea691051d2e7fb4f2eb1
-  languageName: node
-  linkType: hard
-
-"browserslist@npm:^4.24.2":
-  version: 4.28.2
-  resolution: "browserslist@npm:4.28.2"
-  dependencies:
-    baseline-browser-mapping: "npm:^2.10.12"
-    caniuse-lite: "npm:^1.0.30001782"
-    electron-to-chromium: "npm:^1.5.328"
-    node-releases: "npm:^2.0.36"
+"browserslist@npm:^4.0.0, browserslist@npm:^4.23.0, browserslist@npm:^4.24.0, browserslist@npm:^4.24.2, browserslist@npm:^4.24.4, browserslist@npm:^4.25.1, browserslist@npm:^4.25.3":
+  version: 4.28.7
+  resolution: "browserslist@npm:4.28.7"
+  dependencies:
+    baseline-browser-mapping: "npm:^2.10.44"
+    caniuse-lite: "npm:^1.0.30001806"
+    electron-to-chromium: "npm:^1.5.393"
+    node-releases: "npm:^2.0.51"
     update-browserslist-db: "npm:^1.2.3"
   bin:
     browserslist: cli.js
-  checksum: 10c0/c0228b6330f785b7fa59d2d360124ec6d9322f96ed9f3ee1f873e33ecc9503a6f0ffc3b71191a28c4ff6e930b753b30043da1c33844a9548f3018d491f09ce60
+  checksum: 10c0/dc41922a9ff0d81e5492498bdab2d932e3a3222f4277814ba38ee64f4e51f26e5244a7cce0777b4cac3ceff6eb196f5cadbb2a832620973a7f9c39611f6bc78e
   languageName: node
   linkType: hard
 
@@ -7007,10 +6993,17 @@
   languageName: node
   linkType: hard
 
-"caniuse-lite@npm:^1.0.0, caniuse-lite@npm:^1.0.30001702, caniuse-lite@npm:^1.0.30001737, caniuse-lite@npm:^1.0.30001782":
+"caniuse-lite@npm:^1.0.0, caniuse-lite@npm:^1.0.30001702":
   version: 1.0.30001803
   resolution: "caniuse-lite@npm:1.0.30001803"
   checksum: 10c0/71586e9c84633cf766b208448eb76f860ec6e3befffc626d1f004e1902da063a7ab96cc94d1f4b36c0324e12997b3325a726de3287edfec91d0df495627a1d43
+  languageName: node
+  linkType: hard
+
+"caniuse-lite@npm:^1.0.30001806":
+  version: 1.0.30001827
+  resolution: "caniuse-lite@npm:1.0.30001827"
+  checksum: 10c0/219e1b503b2a462f862700c90ec13df61ece2f09b1c1a23cbda0e0c46eb5376dddadc13d9512fa7ada4bc17cc64192387c2709ce6c5c5442baf3cd2bf918a9ac
   languageName: node
   linkType: hard
 
@@ -8930,17 +8923,10 @@
   languageName: node
   linkType: hard
 
-"electron-to-chromium@npm:^1.5.211":
-  version: 1.5.215
-  resolution: "electron-to-chromium@npm:1.5.215"
-  checksum: 10c0/3a45976d1193e57284533096b3bbec218a5d4d85af4f7c133522aae35b14bbf22734f48ccc3f0e43a451441ebc375fa2f4350390fd729dcedb97543692133e39
-  languageName: node
-  linkType: hard
-
-"electron-to-chromium@npm:^1.5.328":
-  version: 1.5.334
-  resolution: "electron-to-chromium@npm:1.5.334"
-  checksum: 10c0/4fa700f920d6f6a52f1a777f9cbbaf95ed7247fd6d89d9ff5d26255779c2c0297be5162e56e8e9a7ec40ff42d656d5e1b06ee6e7cf60dd8baec2e0d8f0f1bc77
+"electron-to-chromium@npm:^1.5.393":
+  version: 1.5.493
+  resolution: "electron-to-chromium@npm:1.5.493"
+  checksum: 10c0/83c68df1c95bc08b95b9621b082caa926b127024e35334abd860fff1963aaa161b351b195377e0e3a82ef1ac06a51dd23cbcea89424150a39fa9b7de34bedbdf
   languageName: node
   linkType: hard
 
@@ -13669,17 +13655,10 @@
   languageName: node
   linkType: hard
 
-"node-releases@npm:^2.0.19":
-  version: 2.0.20
-  resolution: "node-releases@npm:2.0.20"
-  checksum: 10c0/24c5b1f5aa16d042c47a651ca2e022ca27320f95e4d2b76b9e543cc470eadd01032646383212ec373f1a3dd15cccce83d77c318ee99585366dbd25db4366abd8
-  languageName: node
-  linkType: hard
-
-"node-releases@npm:^2.0.36":
-  version: 2.0.37
-  resolution: "node-releases@npm:2.0.37"
-  checksum: 10c0/306df89190b3225d0cb001260de52f0befd225a782ec85311ce97b0aa3b2e22f5e4e4c00395c6dc9bc9ef440c64723f6205fe1e27d32b8dd1d140891fbadf901
+"node-releases@npm:^2.0.51":
+  version: 2.0.65
+  resolution: "node-releases@npm:2.0.65"
+  checksum: 10c0/80a1f49172b1ac7abee612e4ff4fd707763478a8ea0ffb38f428a925622b6bfe320a1103b30d76ae37df3a2544ada7a63c74ca578b19cc332298960bf4c826c4
   languageName: node
   linkType: hard
 
@@ -17860,20 +17839,6 @@
   languageName: node
   linkType: hard
 
-"update-browserslist-db@npm:^1.1.3":
-  version: 1.1.3
-  resolution: "update-browserslist-db@npm:1.1.3"
-  dependencies:
-    escalade: "npm:^3.2.0"
-    picocolors: "npm:^1.1.1"
-  peerDependencies:
-    browserslist: ">= 4.21.0"
-  bin:
-    update-browserslist-db: cli.js
-  checksum: 10c0/682e8ecbf9de474a626f6462aa85927936cdd256fe584c6df2508b0df9f7362c44c957e9970df55dfe44d3623807d26316ea2c7d26b80bb76a16c56c37233c32
-  languageName: node
-  linkType: hard
-
 "update-browserslist-db@npm:^1.2.3":
   version: 1.2.3
   resolution: "update-browserslist-db@npm:1.2.3"
YARNLOCK_PATCH_EOF
