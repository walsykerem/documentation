#!/bin/sh
# tinypool — MUST FIX — GHSA-5gmw-xhrv-c9v3
cd "$(dirname "$0")/.." || exit 1
# 1.1.1 → 2.1.2 (major bump; pin via resolutions)
patch -p1 -f <<'PATCH' || exit 1
--- a/package.json
+++ b/package.json
@@ -130,5 +130,8 @@
   "engines": {
     "node": ">=20.0"
   },
-  "packageManager": "yarn@4.12.0"
+  "packageManager": "yarn@4.12.0",
+  "resolutions": {
+    "tinypool": "2.1.2"
+  }
 }
--- a/yarn.lock
+++ b/yarn.lock
@@ -17366,10 +17366,10 @@
   languageName: node
   linkType: hard
 
-"tinypool@npm:^1.0.2":
-  version: 1.1.1
-  resolution: "tinypool@npm:1.1.1"
-  checksum: 10c0/bf26727d01443061b04fa863f571016950888ea994ba0cd8cba3a1c51e2458d84574341ab8dbc3664f1c3ab20885c8cf9ff1cc4b18201f04c2cde7d317fff69b
+"tinypool@npm:2.1.2":
+  version: 2.1.2
+  resolution: "tinypool@npm:2.1.2"
+  checksum: 10c0/4d8c0cf2d9710eff4aa9cb4318fecaac09d847f1d7dce3eb314d36bea35ed23f754315592a3c00c1d0aa21d9eb4a1f69e84c69feb8517b4cd769e1e0a7ee308e
   languageName: node
   linkType: hard
PATCH
