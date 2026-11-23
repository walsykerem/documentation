#!/bin/sh
# zod — MUST FIX — GHSA-mrhx-c7xc-m3w5
cd "$(dirname "$0")/.." || exit 1
# 3.25.76 → 4.6.6 (major bump; update direct dependency)
patch -p1 -f <<'PATCH' || exit 1
--- a/package.json
+++ b/package.json
@@ -81,7 +81,7 @@
     "url": "^0.11.0",
     "uuid": "^10.0.0",
     "webpack": "^5.76.0",
-    "zod": "^3.23.8"
+    "zod": "4.6.6"
   },
   "devDependencies": {
     "@axe-core/playwright": "^4",
--- a/yarn.lock
+++ b/yarn.lock
@@ -8745,7 +8745,7 @@
     url: "npm:^0.11.0"
     uuid: "npm:^10.0.0"
     webpack: "npm:^5.76.0"
-    zod: "npm:^3.23.8"
+    zod: "npm:4.6.6"
   languageName: unknown
   linkType: soft
 
@@ -18647,10 +18647,10 @@
   languageName: node
   linkType: hard
 
-"zod@npm:^3.23.8":
-  version: 3.25.76
-  resolution: "zod@npm:3.25.76"
-  checksum: 10c0/5718ec35e3c40b600316c5b4c5e4976f7fee68151bc8f8d90ec18a469be9571f072e1bbaace10f1e85cf8892ea12d90821b200e980ab46916a6166a4260a983c
+"zod@npm:4.6.6":
+  version: 4.6.6
+  resolution: "zod@npm:4.6.6"
+  checksum: 10c0/447a3113bb743c54ab839213ff95e9e8c197cc1206f65270c18aac35aa70c47a5c8cab753be911b574df9a8a9801ea74ed6be776575232cae0084e51dab3e970
   languageName: node
   linkType: hard
PATCH
