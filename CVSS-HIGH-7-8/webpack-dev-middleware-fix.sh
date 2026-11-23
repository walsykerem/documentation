#!/bin/sh
# webpack-dev-middleware — HIGH — GHSA-g84c-rxfj-3j2c
cd "$(dirname "$0")/.." || exit 1
# 7.4.5 → 7.4.6
patch -N -p1 <<'PATCH' || exit 1
--- a/yarn.lock
+++ b/yarn.lock
@@ -18262,8 +18262,8 @@
   linkType: hard
 
 "webpack-dev-middleware@npm:^7.4.2":
-  version: 7.4.5
-  resolution: "webpack-dev-middleware@npm:7.4.5"
+  version: 7.4.6
+  resolution: "webpack-dev-middleware@npm:7.4.6"
   dependencies:
     colorette: "npm:^2.0.10"
     memfs: "npm:^4.43.1"
@@ -18276,7 +18276,7 @@
   peerDependenciesMeta:
     webpack:
       optional: true
-  checksum: 10c0/e72fa7de3b1589c0c518976358f946d9ec97699a3eb90bfd40718f4be3e9d5d13dc80f748c5c16662efbf1400cedbb523c79f56a778e6e8ffbdf1bd93be547eb
+  checksum: 10c0/3d6cfaa36a1d7059f112c1c585b85fd041aad358f142cd913ff009c0954891704cc14f64febccbd2552add4cf119848c824a2ee37de6dbca65cc80e3aa3df28a
   languageName: node
   linkType: hard
 
PATCH
