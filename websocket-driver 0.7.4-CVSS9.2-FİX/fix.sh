#!/bin/sh
# websocket-driver — MUST FIX — GHSA-xv26-6w52-cph6
cd "$(dirname "$0")/.." || exit 1
# 0.7.4 → 0.7.5
patch -p1 -f <<'PATCH' || exit 1
--- a/yarn.lock
+++ b/yarn.lock
@@ -18413,13 +18413,13 @@
   languageName: node
   linkType: hard
 
 "websocket-driver@npm:>=0.5.1, websocket-driver@npm:^0.7.4":
-  version: 0.7.4
-  resolution: "websocket-driver@npm:0.7.4"
+  version: 0.7.5
+  resolution: "websocket-driver@npm:0.7.5"
   dependencies:
     http-parser-js: "npm:>=0.5.1"
     safe-buffer: "npm:>=5.1.0"
     websocket-extensions: "npm:>=0.1.1"
-  checksum: 10c0/5f09547912b27bdc57bac17b7b6527d8993aa4ac8a2d10588bb74aebaf785fdcf64fea034aae0c359b7adff2044dd66f3d03866e4685571f81b13e548f9021f1
+  checksum: 10c0/843a3c9f529ce07f2721829f70f62986247525ab22625e857b69da13dc90967bacfe57b85e196801b565cd797e309ddd5b06fa8435732e34e8a8ab6201d7abed
   languageName: node
   linkType: hard
PATCH
