#!/bin/sh
# tar — MUST FIX — GHSA-23hp-3jrh-7fpw
cd "$(dirname "$0")/.." || exit 1
# 7.5.13 → 7.5.21
patch -p1 -f <<'PATCH' || exit 1
--- a/yarn.lock
+++ b/yarn.lock
@@ -17253,15 +17253,15 @@
   linkType: hard
 
 "tar@npm:^7.5.4":
-  version: 7.5.13
-  resolution: "tar@npm:7.5.13"
+  version: 7.5.21
+  resolution: "tar@npm:7.5.21"
   dependencies:
     "@isaacs/fs-minipass": "npm:^4.0.0"
     chownr: "npm:^3.0.0"
     minipass: "npm:^7.1.2"
     minizlib: "npm:^3.1.0"
     yallist: "npm:^5.0.0"
-  checksum: 10c0/5c65b8084799bde7a791593a1c1a45d3d6ee98182e3700b24c247b7b8f8654df4191642abbdb07ff25043d45dcff35620827c3997b88ae6c12040f64bed5076b
+  checksum: 10c0/bce0e51692356078e6f6a909d5c93f5b4c099c097ffea19b1b1bf10385539a429baba26bca59aabbace68c4519d16f2f1c07afe7eaab55876a449a032480fabc
   languageName: node
   linkType: hard
PATCH
