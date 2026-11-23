#!/bin/sh
# brace-expansion — HIGH — GHSA-3jxr-9vmj-r5cp
cd "$(dirname "$0")/.." || exit 1
patch -N -p1 <<'YARNLOCK_PATCH_EOF'
--- a/yarn.lock
+++ b/yarn.lock
@@ -6737,39 +6737,30 @@
   linkType: hard
 
 "brace-expansion@npm:^1.1.7":
-  version: 1.1.12
-  resolution: "brace-expansion@npm:1.1.12"
+  version: 1.1.21
+  resolution: "brace-expansion@npm:1.1.21"
   dependencies:
     balanced-match: "npm:^1.0.0"
     concat-map: "npm:0.0.1"
-  checksum: 10c0/975fecac2bb7758c062c20d0b3b6288c7cc895219ee25f0a64a9de662dbac981ff0b6e89909c3897c1f84fa353113a721923afdec5f8b2350255b097f12b1f73
+  checksum: 10c0/8f0a68a720f9cb28c2ecaea5cdaf15fafd686d6b6e4e722a81c9d4bd2f68c1fd0619731cac05875d842221eaf4d97d564d329a12eb3c4c22137502fb3c65be8b
   languageName: node
   linkType: hard
 
 "brace-expansion@npm:^2.0.1":
-  version: 2.0.2
-  resolution: "brace-expansion@npm:2.0.2"
+  version: 2.1.7
+  resolution: "brace-expansion@npm:2.1.7"
   dependencies:
     balanced-match: "npm:^1.0.0"
-  checksum: 10c0/6d117a4c793488af86b83172deb6af143e94c17bc53b0b3cec259733923b4ca84679d506ac261f4ba3c7ed37c46018e2ff442f9ce453af8643ecd64f4a54e6cf
-  languageName: node
-  linkType: hard
-
-"brace-expansion@npm:^5.0.2":
-  version: 5.0.3
-  resolution: "brace-expansion@npm:5.0.3"
+  checksum: 10c0/17ee4194c85b05cde0a7b7c068eeef664440c027116ef42c3d35c13ebabdc9fd3eaf05c5c8a06dd0ca20ae012d652561d8ac2a699daa5cbee1f0510e5134ab4d
+  languageName: node
+  linkType: hard
+
+"brace-expansion@npm:^5.0.2, brace-expansion@npm:^5.0.5":
+  version: 5.0.12
+  resolution: "brace-expansion@npm:5.0.12"
   dependencies:
     balanced-match: "npm:^4.0.2"
-  checksum: 10c0/e474d300e581ec56851b3863ff1cf18573170c6d06deb199ccbd03b2119c36975f6ce2abc7b770f5bebddc1ab022661a9fea9b4d56f33315d7bef54d8793869e
-  languageName: node
-  linkType: hard
-
-"brace-expansion@npm:^5.0.5":
-  version: 5.0.5
-  resolution: "brace-expansion@npm:5.0.5"
-  dependencies:
-    balanced-match: "npm:^4.0.2"
-  checksum: 10c0/4d238e14ed4f5cc9c07285550a41cef23121ca08ba99fa9eb5b55b580dcb6bf868b8210aa10526bdc9f8dc97f33ca2a7259039c4cc131a93042beddb424c48e3
+  checksum: 10c0/a40ac64d3bdb5bb222456514d3633c1f627f03b844f509c69e70f98b78be0ce85e21b44bbfecdd0ddd4cc0855ca4242b41ea96ddccf88c7c3c7a84405474bb3a
   languageName: node
   linkType: hard
 
YARNLOCK_PATCH_EOF
