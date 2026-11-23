#!/bin/sh
# nanoid — MUST FIX — GHSA-28wg-ghj8-5hjv
cd "$(dirname "$0")/.." || exit 1
patch -p1 <<'PATCH' || exit 1
--- a/yarn.lock
+++ b/yarn.lock
@@ -13575,11 +13575,11 @@
   linkType: hard
 
 "nanoid@npm:^3.3.11, nanoid@npm:^3.3.6":
-  version: 3.3.11
-  resolution: "nanoid@npm:3.3.11"
+  version: 3.3.18
+  resolution: "nanoid@npm:3.3.18"
   bin:
     nanoid: bin/nanoid.cjs
-  checksum: 10c0/40e7f70b3d15f725ca072dfc4f74e81fcf1fbb02e491cf58ac0c79093adc9b0a73b152bcde57df4b79cd097e13023d7504acb38404a4da7bc1cd8e887b82fe0b
+  checksum: 10c0/b994b4e396730f8be2520923284e2040d61eaee55cc6d4935ef6d38d34bafdc46133eda4d3faea5073bda545aa6079d82b886caeac5c731cf9ac18bcc1301425
   languageName: node
   linkType: hard
 
PATCH
