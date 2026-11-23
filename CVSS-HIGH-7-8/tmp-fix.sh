#!/bin/sh
# tmp — HIGH — GHSA-ph9p-34f9-6g65
cd "$(dirname "$0")/.." || exit 1
# 0.2.5 → 0.2.6
patch -N -p1 <<'PATCH' || exit 1
--- a/yarn.lock
+++ b/yarn.lock
@@ -17374,9 +17374,9 @@
   linkType: hard
 
 "tmp@npm:^0.2.0":
-  version: 0.2.5
-  resolution: "tmp@npm:0.2.5"
-  checksum: 10c0/cee5bb7d674bb4ba3ab3f3841c2ca7e46daeb2109eec395c1ec7329a91d52fcb21032b79ac25161a37b2565c4858fefab927af9735926a113ef7bac9091a6e0e
+  version: 0.2.6
+  resolution: "tmp@npm:0.2.6"
+  checksum: 10c0/fa5b9bfbe60f70904aba5c96b4970e9158d99867891302d10320fe35eee1e45f42946fded4cf5c8514baa087bebee44419029b7deb227da05a68b5205a12d8ab
   languageName: node
   linkType: hard
 
PATCH
