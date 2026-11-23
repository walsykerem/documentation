#!/bin/sh
# ws — HIGH — GHSA-96hv-2xvq-fx4p
cd "$(dirname "$0")/.." || exit 1
# 7.5.10 → 7.5.11; 8.18.3 → 8.21.0
patch -N -p1 <<'PATCH' || exit 1
--- a/yarn.lock
+++ b/yarn.lock
@@ -18531,8 +18531,8 @@
   linkType: hard
 
 "ws@npm:^7.3.1":
-  version: 7.5.10
-  resolution: "ws@npm:7.5.10"
+  version: 7.5.11
+  resolution: "ws@npm:7.5.11"
   peerDependencies:
     bufferutil: ^4.0.1
     utf-8-validate: ^5.0.2
@@ -18541,13 +18541,13 @@
       optional: true
     utf-8-validate:
       optional: true
-  checksum: 10c0/bd7d5f4aaf04fae7960c23dcb6c6375d525e00f795dd20b9385902bd008c40a94d3db3ce97d878acc7573df852056ca546328b27b39f47609f80fb22a0a9b61d
+  checksum: 10c0/7972670b676fb1ccba73b0899ca3c2e04e8c2075629c2614cced7f556536f96a672bbf4619fc5a06c8b8720bb839a47ca88c69c95dc14c9c61a99fbecba1c866
   languageName: node
   linkType: hard
 
 "ws@npm:^8.18.0":
-  version: 8.18.3
-  resolution: "ws@npm:8.18.3"
+  version: 8.21.0
+  resolution: "ws@npm:8.21.0"
   peerDependencies:
     bufferutil: ^4.0.1
     utf-8-validate: ">=5.0.2"
@@ -18556,7 +18556,7 @@
       optional: true
     utf-8-validate:
       optional: true
-  checksum: 10c0/eac918213de265ef7cb3d4ca348b891a51a520d839aa51cdb8ca93d4fa7ff9f6ccb339ccee89e4075324097f0a55157c89fa3f7147bde9d8d7e90335dc087b53
+  checksum: 10c0/ef4a243476283fc49bc7550966c4af4aa0eef56273837211e700de3b664e08604a760cdddcb5ba43c049140e74ccfec5b0ee0bb439e08c2adf9138902fdde5f9
   languageName: node
   linkType: hard
 
PATCH
