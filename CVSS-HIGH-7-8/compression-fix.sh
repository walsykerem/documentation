#!/bin/sh
# compression — HIGH — GHSA-vc2v-76pw-4v95
cd "$(dirname "$0")/.." || exit 1
patch -N -p1 <<'YARNLOCK_PATCH_EOF'
--- a/yarn.lock
+++ b/yarn.lock
@@ -7382,17 +7382,18 @@
   linkType: hard
 
 "compression@npm:^1.7.4":
-  version: 1.8.1
-  resolution: "compression@npm:1.8.1"
+  version: 1.8.2
+  resolution: "compression@npm:1.8.2"
   dependencies:
     bytes: "npm:3.1.2"
     compressible: "npm:~2.0.18"
     debug: "npm:2.6.9"
+    destroy: "npm:1.2.0"
     negotiator: "npm:~0.6.4"
     on-headers: "npm:~1.1.0"
     safe-buffer: "npm:5.2.1"
     vary: "npm:~1.1.2"
-  checksum: 10c0/85114b0b91c16594dc8c671cd9b05ef5e465066a60e5a4ed8b4551661303559a896ed17bb72c4234c04064e078f6ca86a34b8690349499a43f6fc4b844475da4
+  checksum: 10c0/f95be7122323fdffcaadc807f42da38b5227eeac7d9997c1c4314abd7ca4a4de2daa3d5bd4e142706bef4d34fa0f64cd265c6f074b221143e18da1215c0a07ab
   languageName: node
   linkType: hard
 
YARNLOCK_PATCH_EOF
