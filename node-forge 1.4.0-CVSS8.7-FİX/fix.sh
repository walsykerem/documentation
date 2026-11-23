#!/bin/sh
# node-forge — MUST FIX — GHSA-5x38-2vff-x55p
cd "$(dirname "$0")/.." || exit 1
patch -p1 <<'PATCH' || exit 1
--- a/yarn.lock
+++ b/yarn.lock
@@ -13643,9 +13643,9 @@
   linkType: hard
 
 "node-forge@npm:^1":
-  version: 1.4.0
-  resolution: "node-forge@npm:1.4.0"
-  checksum: 10c0/67330a5f1f95257a4c8a93b7d555abe87b5f15e350123aa396c97a21a8ca94f9c6549008eb2c73668a91e0d7e3a905785acbd8f8bd0751c29401292011f8f8e1
+  version: 1.4.3
+  resolution: "node-forge@npm:1.4.3"
+  checksum: 10c0/02202bf144dfb6f9662c21a2fdbc6251cb1e8b6dd7e4016d2bb8c996fb61a46383f7426503e06e3f15014d1b8a3215c32ee5cf22e5023ecd8e6d88b6a41dada0
   languageName: node
   linkType: hard
 
PATCH
