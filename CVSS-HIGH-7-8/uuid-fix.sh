#!/bin/sh
# uuid — HIGH — GHSA-w5hq-g745-h8pq
cd "$(dirname "$0")/.." || exit 1
# 8.3.2 / 10.0.0 / 11.1.0 → 11.1.1
patch -N -p1 <<'PATCH' || exit 1
--- a/yarn.lock
+++ b/yarn.lock
@@ -17974,30 +17974,12 @@
   languageName: node
   linkType: hard
 
-"uuid@npm:^10.0.0":
-  version: 10.0.0
-  resolution: "uuid@npm:10.0.0"
-  bin:
-    uuid: dist/bin/uuid
-  checksum: 10c0/eab18c27fe4ab9fb9709a5d5f40119b45f2ec8314f8d4cf12ce27e4c6f4ffa4a6321dc7db6c515068fa373c075b49691ba969f0010bf37f44c37ca40cd6bf7fe
-  languageName: node
-  linkType: hard
-
-"uuid@npm:^11.1.0":
-  version: 11.1.0
-  resolution: "uuid@npm:11.1.0"
+"uuid@npm:^10.0.0, uuid@npm:^11.1.0, uuid@npm:^8.3.0, uuid@npm:^8.3.2":
+  version: 11.1.1
+  resolution: "uuid@npm:11.1.1"
   bin:
     uuid: dist/esm/bin/uuid
-  checksum: 10c0/34aa51b9874ae398c2b799c88a127701408cd581ee89ec3baa53509dd8728cbb25826f2a038f9465f8b7be446f0fbf11558862965b18d21c993684297628d4d3
-  languageName: node
-  linkType: hard
-
-"uuid@npm:^8.3.0, uuid@npm:^8.3.2":
-  version: 8.3.2
-  resolution: "uuid@npm:8.3.2"
-  bin:
-    uuid: dist/bin/uuid
-  checksum: 10c0/bcbb807a917d374a49f475fae2e87fdca7da5e5530820ef53f65ba1d12131bd81a92ecf259cc7ce317cbe0f289e7d79fdfebcef9bfa3087c8c8a2fa304c9be54
+  checksum: 10c0/9e3af58eba872ece5a5e76f4773a94fc78a0ef2c2444c38dbe6b42f41dadf76c01850fd783604f27986f6195e6286aef064d45987d401b2a33127b98ddf7c0c5
   languageName: node
   linkType: hard
 
PATCH
