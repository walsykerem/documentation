#!/bin/sh
# minimatch — MUST FIX — GHSA-23c5-xmqv-rm74
cd "$(dirname "$0")/.." || exit 1
patch -p1 <<'PATCH' || exit 1
--- a/yarn.lock
+++ b/yarn.lock
@@ -3275,6 +3275,13 @@
   languageName: node
   linkType: hard
 
+"@isaacs/nonrecursive-glob-match@npm:^1.0.1":
+  version: 1.1.0
+  resolution: "@isaacs/nonrecursive-glob-match@npm:1.1.0"
+  checksum: 10c0/89f8535f3d8147649360de992f58fba2b0e97b687e18cdc16c5b34a6c52afff4f474d05c5a0b6411708614f368cf19c41b037d3a1c6c6821e02aee967d888e98
+  languageName: node
+  linkType: hard
+
 "@jest/schemas@npm:^29.6.3":
   version: 29.6.3
   resolution: "@jest/schemas@npm:29.6.3"
@@ -6752,6 +6759,15 @@
   dependencies:
     balanced-match: "npm:^1.0.0"
   checksum: 10c0/6d117a4c793488af86b83172deb6af143e94c17bc53b0b3cec259733923b4ca84679d506ac261f4ba3c7ed37c46018e2ff442f9ce453af8643ecd64f4a54e6cf
+  languageName: node
+  linkType: hard
+
+"brace-expansion@npm:^5.0.12":
+  version: 5.1.0
+  resolution: "brace-expansion@npm:5.1.0"
+  dependencies:
+    balanced-match: "npm:^4.0.2"
+  checksum: 10c0/e45471e38321aa12dd38c4e76ffd065efe1056b053ce6035922742351aa836666a71deca248d0bb875d3d135ca0f77588101370a629b56803e8b6495acc4f251
   languageName: node
   linkType: hard
 
@@ -13372,29 +13388,30 @@
   linkType: hard
 
 "minimatch@npm:^3.1.1":
-  version: 3.1.2
-  resolution: "minimatch@npm:3.1.2"
+  version: 3.1.4
+  resolution: "minimatch@npm:3.1.4"
   dependencies:
     brace-expansion: "npm:^1.1.7"
-  checksum: 10c0/0262810a8fc2e72cca45d6fd86bd349eee435eb95ac6aa45c9ea2180e7ee875ef44c32b55b5973ceabe95ea12682f6e3725cbb63d7a2d1da3ae1163c8b210311
+  checksum: 10c0/868aab7e5f52570107eb283f021383be111cfeee0817a615f2a9ffe61fdc8fb86d535b9bf169fb8882261e7cb9da22b4d7b6f8b3402037f63558bab173f82212
   languageName: node
   linkType: hard
 
 "minimatch@npm:^5.1.0":
-  version: 5.1.6
-  resolution: "minimatch@npm:5.1.6"
+  version: 5.1.8
+  resolution: "minimatch@npm:5.1.8"
   dependencies:
     brace-expansion: "npm:^2.0.1"
-  checksum: 10c0/3defdfd230914f22a8da203747c42ee3c405c39d4d37ffda284dac5e45b7e1f6c49aa8be606509002898e73091ff2a3bbfc59c2c6c71d4660609f63aa92f98e3
+  checksum: 10c0/2df2d2e8e4cce248fbfb2d0869b6a27afa85e77e7da1f593ad1b80612667968a1e915c1820ecc0edbc63aa851c710a749a043d4efc590d23aabf61e38983209c
   languageName: node
   linkType: hard
 
 "minimatch@npm:^9.0.4":
-  version: 9.0.5
-  resolution: "minimatch@npm:9.0.5"
-  dependencies:
-    brace-expansion: "npm:^2.0.1"
-  checksum: 10c0/de96cf5e35bdf0eab3e2c853522f98ffbe9a36c37797778d2665231ec1f20a9447a7e567cb640901f89e4daaa95ae5d70c65a9e8aa2bb0019b6facbc3c0575ed
+  version: 11.0.1
+  resolution: "minimatch@npm:11.0.1"
+  dependencies:
+    "@isaacs/nonrecursive-glob-match": "npm:^1.0.1"
+    brace-expansion: "npm:^5.0.12"
+  checksum: 10c0/a3e744fec30c3bfd9cf32e998dbb5d1276f3a83f467f84bc62bc75e1b978e3c319953575286a45d85217c3dc693d565f0f93d3a365e5f33de00658482b63b5f4
   languageName: node
   linkType: hard
 
PATCH
