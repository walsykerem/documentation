#!/bin/sh
# lodash-es — MUST FIX — GHSA-r5fr-rjxr-66jc
cd "$(dirname "$0")/.." || exit 1
patch -p1 <<'PATCH' || exit 1
--- a/yarn.lock
+++ b/yarn.lock
@@ -11813,16 +11813,16 @@
   linkType: hard
 
 "lodash-es@npm:4.17.21, lodash-es@npm:^4.17.21":
-  version: 4.17.21
-  resolution: "lodash-es@npm:4.17.21"
-  checksum: 10c0/fb407355f7e6cd523a9383e76e6b455321f0f153a6c9625e21a8827d10c54c2a2341bd2ae8d034358b60e07325e1330c14c224ff582d04612a46a4f0479ff2f2
+  version: 4.18.0
+  resolution: "lodash-es@npm:4.18.0"
+  checksum: 10c0/038988597b445bbe0a9b9574cc1d05c2e6ddf47d3292067dfc53d6d0e334068ff9ca760a8adbc1102dd4f456066f943f2a061b1deffa6abbdc5bb5ea9da0d4d1
   languageName: node
   linkType: hard
 
 "lodash-es@npm:4.17.23":
-  version: 4.17.23
-  resolution: "lodash-es@npm:4.17.23"
-  checksum: 10c0/3150fb6660c14c7a6b5f23bd11597d884b140c0e862a17fdb415aaa5ef7741523182904a6b7929f04e5f60a11edb5a79499eb448734381c99ffb3c4734beeddd
+  version: 4.18.1
+  resolution: "lodash-es@npm:4.18.1"
+  checksum: 10c0/35d4dcf87ef07f8d090f409447575800108057e360b445f590d0d25d09e3d1e33a163d2fc100d4d072b0f901d5e2fc533cd7c4bfd8eeb38a06abec693823c8b8
   languageName: node
   linkType: hard
 
PATCH
