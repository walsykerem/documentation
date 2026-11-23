#!/bin/sh
# fast-uri — HIGH — GHSA-4c8g-83qw-93j6
cd "$(dirname "$0")/.." || exit 1
patch -N -p1 <<'YARNLOCK_PATCH_EOF'
--- a/yarn.lock
+++ b/yarn.lock
@@ -9451,9 +9451,9 @@
   linkType: hard
 
 "fast-uri@npm:^3.0.1":
-  version: 3.1.0
-  resolution: "fast-uri@npm:3.1.0"
-  checksum: 10c0/44364adca566f70f40d1e9b772c923138d47efeac2ae9732a872baafd77061f26b097ba2f68f0892885ad177becd065520412b8ffeec34b16c99433c5b9e2de7
+  version: 3.1.9
+  resolution: "fast-uri@npm:3.1.9"
+  checksum: 10c0/052757540d8c0bbc16bb124a45b8f5cb5d0932f9b89f019221ee41cdb3cafc1db44b2e809d6b888b87922af3e5560a863124454e9d9193e1fc955887357b5add
   languageName: node
   linkType: hard
 
YARNLOCK_PATCH_EOF
