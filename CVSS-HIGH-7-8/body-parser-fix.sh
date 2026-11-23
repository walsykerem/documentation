#!/bin/sh
# body-parser — HIGH — GHSA-27r3-jxmh-p828
cd "$(dirname "$0")/.." || exit 1
patch -N -p1 <<'YARNLOCK_PATCH_EOF'
--- a/yarn.lock
+++ b/yarn.lock
@@ -6668,22 +6668,22 @@
   linkType: hard
 
 "body-parser@npm:1.20.3":
-  version: 1.20.3
-  resolution: "body-parser@npm:1.20.3"
-  dependencies:
-    bytes: "npm:3.1.2"
+  version: 1.20.9
+  resolution: "body-parser@npm:1.20.9"
+  dependencies:
+    bytes: "npm:~3.1.2"
     content-type: "npm:~1.0.5"
     debug: "npm:2.6.9"
     depd: "npm:2.0.0"
-    destroy: "npm:1.2.0"
-    http-errors: "npm:2.0.0"
-    iconv-lite: "npm:0.4.24"
-    on-finished: "npm:2.4.1"
-    qs: "npm:6.13.0"
-    raw-body: "npm:2.5.2"
+    destroy: "npm:~1.2.0"
+    http-errors: "npm:~2.0.1"
+    iconv-lite: "npm:~0.4.24"
+    on-finished: "npm:~2.4.1"
+    qs: "npm:~6.16.0"
+    raw-body: "npm:~2.5.3"
     type-is: "npm:~1.6.18"
-    unpipe: "npm:1.0.0"
-  checksum: 10c0/0a9a93b7518f222885498dcecaad528cf010dd109b071bf471c93def4bfe30958b83e03496eb9c1ad4896db543d999bb62be1a3087294162a88cfa1b42c16310
+    unpipe: "npm:~1.0.0"
+  checksum: 10c0/685d3208335377a3dfc6d7bc8b2af6d40d38b9a72e25bab4d9f7aff19d059729d5b1b3a9f5561274f460020bb9166c211d5302abe0b45452665420ca5e16013b
   languageName: node
   linkType: hard
 
@@ -6865,7 +6865,7 @@
   languageName: node
   linkType: hard
 
-"bytes@npm:3.1.2":
+"bytes@npm:3.1.2, bytes@npm:~3.1.2":
   version: 3.1.2
   resolution: "bytes@npm:3.1.2"
   checksum: 10c0/76d1c43cbd602794ad8ad2ae94095cddeb1de78c5dddaa7005c51af10b0176c69971a6d88e805a90c2b6550d76636e43c40d8427a808b8645ede885de4a0358e
@@ -8542,7 +8542,7 @@
   languageName: node
   linkType: hard
 
-"depd@npm:2.0.0":
+"depd@npm:2.0.0, depd@npm:~2.0.0":
   version: 2.0.0
   resolution: "depd@npm:2.0.0"
   checksum: 10c0/58bd06ec20e19529b06f7ad07ddab60e504d9e0faca4bd23079fac2d279c3594334d736508dc350e06e510aba5e22e4594483b3a6562ce7c17dd797f4cc4ad2c
@@ -8563,7 +8563,7 @@
   languageName: node
   linkType: hard
 
-"destroy@npm:1.2.0":
+"destroy@npm:1.2.0, destroy@npm:~1.2.0":
   version: 1.2.0
   resolution: "destroy@npm:1.2.0"
   checksum: 10c0/bd7633942f57418f5a3b80d5cb53898127bcf53e24cdf5d5f4396be471417671f0fee48a4ebe9a1e9defbde2a31280011af58a57e090ff822f589b443ed4e643
@@ -10629,6 +10629,19 @@
   languageName: node
   linkType: hard
 
+"http-errors@npm:~2.0.1":
+  version: 2.0.1
+  resolution: "http-errors@npm:2.0.1"
+  dependencies:
+    depd: "npm:~2.0.0"
+    inherits: "npm:~2.0.4"
+    setprototypeof: "npm:~1.2.0"
+    statuses: "npm:~2.0.2"
+    toidentifier: "npm:~1.0.1"
+  checksum: 10c0/fb38906cef4f5c83952d97661fe14dc156cb59fe54812a42cd448fa57b5c5dfcb38a40a916957737bd6b87aab257c0648d63eb5b6a9ca9f548e105b6072712d4
+  languageName: node
+  linkType: hard
+
 "http-parser-js@npm:>=0.5.1":
   version: 0.5.10
   resolution: "http-parser-js@npm:0.5.10"
@@ -10709,15 +10722,6 @@
   languageName: node
   linkType: hard
 
-"iconv-lite@npm:0.4.24":
-  version: 0.4.24
-  resolution: "iconv-lite@npm:0.4.24"
-  dependencies:
-    safer-buffer: "npm:>= 2.1.2 < 3"
-  checksum: 10c0/c6886a24cc00f2a059767440ec1bc00d334a89f250db8e0f7feb4961c8727118457e27c495ba94d082e51d3baca378726cd110aaf7ded8b9bbfd6a44760cf1d4
-  languageName: node
-  linkType: hard
-
 "iconv-lite@npm:0.6":
   version: 0.6.3
   resolution: "iconv-lite@npm:0.6.3"
@@ -10733,6 +10737,15 @@
   dependencies:
     safer-buffer: "npm:>= 2.1.2 < 3.0.0"
   checksum: 10c0/3c228920f3bd307f56bf8363706a776f4a060eb042f131cd23855ceca962951b264d0997ab38a1ad340e1c5df8499ed26e1f4f0db6b2a2ad9befaff22f14b722
+  languageName: node
+  linkType: hard
+
+"iconv-lite@npm:~0.4.24":
+  version: 0.4.24
+  resolution: "iconv-lite@npm:0.4.24"
+  dependencies:
+    safer-buffer: "npm:>= 2.1.2 < 3"
+  checksum: 10c0/c6886a24cc00f2a059767440ec1bc00d334a89f250db8e0f7feb4961c8727118457e27c495ba94d082e51d3baca378726cd110aaf7ded8b9bbfd6a44760cf1d4
   languageName: node
   linkType: hard
 
@@ -10830,7 +10843,7 @@
   languageName: node
   linkType: hard
 
-"inherits@npm:2, inherits@npm:2.0.4, inherits@npm:^2.0.1, inherits@npm:^2.0.3, inherits@npm:^2.0.4, inherits@npm:~2.0.0, inherits@npm:~2.0.3":
+"inherits@npm:2, inherits@npm:2.0.4, inherits@npm:^2.0.1, inherits@npm:^2.0.3, inherits@npm:^2.0.4, inherits@npm:~2.0.0, inherits@npm:~2.0.3, inherits@npm:~2.0.4":
   version: 2.0.4
   resolution: "inherits@npm:2.0.4"
   checksum: 10c0/4e531f648b29039fb7426fb94075e6545faa1eb9fe83c29f0b6d9e7263aceb4289d2d4557db0d428188eeb449cc7c5e77b0a0b2c4e248ff2a65933a0dee49ef2
@@ -13773,6 +13786,13 @@
   languageName: node
   linkType: hard
 
+"object-inspect@npm:^1.13.4":
+  version: 1.14.0
+  resolution: "object-inspect@npm:1.14.0"
+  checksum: 10c0/15b78267566dc96ac8407b20f404879203383f76ade0a08a6684476c08ea7f58ba26c746b5aaac63d4e634534d778586f4bda767ce139b166e7dc4794518a3c5
+  languageName: node
+  linkType: hard
+
 "object-keys@npm:^1.1.1":
   version: 1.1.1
   resolution: "object-keys@npm:1.1.1"
@@ -13807,6 +13827,15 @@
   dependencies:
     ee-first: "npm:1.1.1"
   checksum: 10c0/46fb11b9063782f2d9968863d9cbba33d77aa13c17f895f56129c274318b86500b22af3a160fe9995aa41317efcd22941b6eba747f718ced08d9a73afdb087b4
+  languageName: node
+  linkType: hard
+
+"on-finished@npm:~2.4.1":
+  version: 2.4.2
+  resolution: "on-finished@npm:2.4.2"
+  dependencies:
+    ee-first: "npm:1.1.1"
+  checksum: 10c0/e2cdfcadbdca1421fd62c452b728f62c9dd67f73009b98e58d3340dcfad0367f3c98f18081dc58a54f36b6a13c503aadba72c4ddb6ad13ac0c372f956e9943f4
   languageName: node
   linkType: hard
 
@@ -15399,6 +15428,16 @@
   languageName: node
   linkType: hard
 
+"qs@npm:~6.16.0":
+  version: 6.16.2
+  resolution: "qs@npm:6.16.2"
+  dependencies:
+    es-define-property: "npm:^1.0.1"
+    side-channel: "npm:^1.1.1"
+  checksum: 10c0/945e933f943e419bcd0ca54eeacff7d7bb5a098de886249425cbba3b5ed1be10e177b84b97d7d2c4099e90afa09bb3489112672b89dfa56edc0b5bcb829c456b
+  languageName: node
+  linkType: hard
+
 "quansync@npm:^0.2.11":
   version: 0.2.11
   resolution: "quansync@npm:0.2.11"
@@ -15443,15 +15482,15 @@
   languageName: node
   linkType: hard
 
-"raw-body@npm:2.5.2":
-  version: 2.5.2
-  resolution: "raw-body@npm:2.5.2"
-  dependencies:
-    bytes: "npm:3.1.2"
-    http-errors: "npm:2.0.0"
-    iconv-lite: "npm:0.4.24"
-    unpipe: "npm:1.0.0"
-  checksum: 10c0/b201c4b66049369a60e766318caff5cb3cc5a900efd89bdac431463822d976ad0670912c931fdbdcf5543207daf6f6833bca57aa116e1661d2ea91e12ca692c4
+"raw-body@npm:~2.5.3":
+  version: 2.5.3
+  resolution: "raw-body@npm:2.5.3"
+  dependencies:
+    bytes: "npm:~3.1.2"
+    http-errors: "npm:~2.0.1"
+    iconv-lite: "npm:~0.4.24"
+    unpipe: "npm:~1.0.0"
+  checksum: 10c0/449844344fc90547fb994383a494b83300e4f22199f146a79f68d78a199a8f2a923ea9fd29c3be979bfd50291a3884733619ffc15ba02a32e703b612f8d3f74a
   languageName: node
   linkType: hard
 
@@ -16502,7 +16541,7 @@
   languageName: node
   linkType: hard
 
-"setprototypeof@npm:1.2.0":
+"setprototypeof@npm:1.2.0, setprototypeof@npm:~1.2.0":
   version: 1.2.0
   resolution: "setprototypeof@npm:1.2.0"
   checksum: 10c0/68733173026766fa0d9ecaeb07f0483f4c2dc70ca376b3b7c40b7cda909f94b0918f6c5ad5ce27a9160bdfb475efaa9d5e705a11d8eaae18f9835d20976028bc
@@ -16555,6 +16594,16 @@
     es-errors: "npm:^1.3.0"
     object-inspect: "npm:^1.13.3"
   checksum: 10c0/644f4ac893456c9490ff388bf78aea9d333d5e5bfc64cfb84be8f04bf31ddc111a8d4b83b85d7e7e8a7b845bc185a9ad02c052d20e086983cf59f0be517d9b3d
+  languageName: node
+  linkType: hard
+
+"side-channel-list@npm:^1.0.1":
+  version: 1.0.1
+  resolution: "side-channel-list@npm:1.0.1"
+  dependencies:
+    es-errors: "npm:^1.3.0"
+    object-inspect: "npm:^1.13.4"
+  checksum: 10c0/d346c787fd2f9f1c2fdea14f00e8250118db0e7596d85a6cb9faa75f105d31a73a8f7a341c93d7df2a2429098c3d37a77bd3be9e88c37094b8c01807bc77c7a2
   languageName: node
   linkType: hard
 
@@ -16593,6 +16642,19 @@
     side-channel-map: "npm:^1.0.1"
     side-channel-weakmap: "npm:^1.0.2"
   checksum: 10c0/cb20dad41eb032e6c24c0982e1e5a24963a28aa6122b4f05b3f3d6bf8ae7fd5474ef382c8f54a6a3ab86e0cac4d41a23bd64ede3970e5bfb50326ba02a7996e6
+  languageName: node
+  linkType: hard
+
+"side-channel@npm:^1.1.1":
+  version: 1.1.1
+  resolution: "side-channel@npm:1.1.1"
+  dependencies:
+    es-errors: "npm:^1.3.0"
+    object-inspect: "npm:^1.13.4"
+    side-channel-list: "npm:^1.0.1"
+    side-channel-map: "npm:^1.0.1"
+    side-channel-weakmap: "npm:^1.0.2"
+  checksum: 10c0/dc0ab81d67f61bda9247d053ce93f41c3fd8ad2bdcb9cf9d8d2f8540d488f26d87a5e99ebfc07eea49ec025867b2452b705442d974b1478f0395e69f6bfb3270
   languageName: node
   linkType: hard
 
@@ -16852,6 +16914,13 @@
   version: 1.5.0
   resolution: "statuses@npm:1.5.0"
   checksum: 10c0/e433900956357b3efd79b1c547da4d291799ac836960c016d10a98f6a810b1b5c0dcc13b5a7aa609a58239b5190e1ea176ad9221c2157d2fd1c747393e6b2940
+  languageName: node
+  linkType: hard
+
+"statuses@npm:~2.0.2":
+  version: 2.0.2
+  resolution: "statuses@npm:2.0.2"
+  checksum: 10c0/a9947d98ad60d01f6b26727570f3bcceb6c8fa789da64fe6889908fe2e294d57503b14bf2b5af7605c2d36647259e856635cd4c49eab41667658ec9d0080ec3f
   languageName: node
   linkType: hard
 
@@ -17389,7 +17458,7 @@
   languageName: node
   linkType: hard
 
-"toidentifier@npm:1.0.1":
+"toidentifier@npm:1.0.1, toidentifier@npm:~1.0.1":
   version: 1.0.1
   resolution: "toidentifier@npm:1.0.1"
   checksum: 10c0/93937279934bd66cc3270016dd8d0afec14fb7c94a05c72dc57321f8bd1fa97e5bea6d1f7c89e728d077ca31ea125b78320a616a6c6cd0e6b9cb94cb864381c1
@@ -17835,7 +17904,7 @@
   languageName: node
   linkType: hard
 
-"unpipe@npm:1.0.0, unpipe@npm:~1.0.0":
+"unpipe@npm:~1.0.0":
   version: 1.0.0
   resolution: "unpipe@npm:1.0.0"
   checksum: 10c0/193400255bd48968e5c5383730344fbb4fa114cdedfab26e329e50dd2d81b134244bb8a72c6ac1b10ab0281a58b363d06405632c9d49ca9dfd5e90cbd7d0f32c
YARNLOCK_PATCH_EOF
