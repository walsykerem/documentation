#!/bin/sh
# joi — MUST FIX — GHSA-4528-x5fx-h6hg
cd "$(dirname "$0")/.." || exit 1
patch -p1 <<'PATCH' || exit 1
--- a/yarn.lock
+++ b/yarn.lock
@@ -11279,15 +11279,15 @@
   linkType: hard
 
 "joi@npm:^17.9.2":
-  version: 17.13.3
-  resolution: "joi@npm:17.13.3"
+  version: 17.13.9
+  resolution: "joi@npm:17.13.9"
   dependencies:
     "@hapi/hoek": "npm:^9.3.0"
     "@hapi/topo": "npm:^5.1.0"
     "@sideway/address": "npm:^4.1.5"
     "@sideway/formula": "npm:^3.0.1"
     "@sideway/pinpoint": "npm:^2.0.0"
-  checksum: 10c0/9262aef1da3f1bec5b03caf50c46368899fe03b8ff26cbe3d53af4584dd1049079fc97230bbf1500b6149db7cc765b9ee45f0deb24bb6fc3fa06229d7148c17f
+  checksum: 10c0/7a52549e8e9d99853d6166b647d102e58197720869aa5339f9b9c1704e471a70918645944a8aa6a9998955dc0a521ffd1580fdb3e9e502b1e2bb88793dd0e50c
   languageName: node
   linkType: hard
 
PATCH
