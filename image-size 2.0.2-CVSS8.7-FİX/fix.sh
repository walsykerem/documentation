#!/bin/sh
# image-size — MUST FIX — GHSA-5p2g-fcmc-qvqq
cd "$(dirname "$0")/.." || exit 1
# 2.0.2 → 2.0.3
patch -N -p1 <<'PATCH' || exit 1
--- a/yarn.lock
+++ b/yarn.lock
@@ -10767,11 +10767,11 @@
   linkType: hard
 
 "image-size@npm:^2.0.2":
-  version: 2.0.2
-  resolution: "image-size@npm:2.0.2"
+  version: 2.0.3
+  resolution: "image-size@npm:2.0.3"
   bin:
     image-size: bin/image-size.js
-  checksum: 10c0/f09dd0f7cf8511cd20e4f756bdb5a7cb6d2240de3323f41bde266bed8373392a293892bf12e907e2995f52833fd88dd27cf6b1a52ab93968afc716cb78cd7b79
+  checksum: 10c0/bfd1cc9b45c68e329411877e5f2a176a1cad77cff8d28357930bb4c23c94bbadc9c7e59a2ee1c7d05c76aa164f58f63ff249c24480a958245442888420ff6bb2
   languageName: node
   linkType: hard
 
PATCH
