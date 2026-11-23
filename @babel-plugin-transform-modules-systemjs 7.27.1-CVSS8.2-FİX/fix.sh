#!/bin/sh
# @babel/plugin-transform-modules-systemjs — MUST FIX — GHSA-fv7c-fp4j-7gwp
cd "$(dirname "$0")/.." || exit 1
# 7.27.1 → 7.29.4 (plus newly required Babel helpers)
patch -N -p1 <<'PATCH' || exit 1
--- a/yarn.lock
+++ b/yarn.lock
@@ -267,6 +267,17 @@
   languageName: node
   linkType: hard
 
+"@babel/code-frame@npm:^7.29.7":
+  version: 7.29.7
+  resolution: "@babel/code-frame@npm:7.29.7"
+  dependencies:
+    "@babel/helper-validator-identifier": "npm:^7.29.7"
+    js-tokens: "npm:^4.0.0"
+    picocolors: "npm:^1.1.1"
+  checksum: 10c0/169fc2080169a40c1760155eaaaf739bcb882df0bec76a83adbda5493645bc17270a3434b8848c494b1933e96fe1d147370001e3cda09a39f43ae30f08ef2069
+  languageName: node
+  linkType: hard
+
 "@babel/compat-data@npm:^7.27.2, @babel/compat-data@npm:^7.27.7, @babel/compat-data@npm:^7.28.0":
   version: 7.28.4
   resolution: "@babel/compat-data@npm:7.28.4"
@@ -307,6 +318,19 @@
     "@jridgewell/trace-mapping": "npm:^0.3.28"
     jsesc: "npm:^3.0.2"
   checksum: 10c0/0ff58bcf04f8803dcc29479b547b43b9b0b828ec1ee0668e92d79f9e90f388c28589056637c5ff2fd7bcf8d153c990d29c448d449d852bf9d1bc64753ca462bc
+  languageName: node
+  linkType: hard
+
+"@babel/generator@npm:^7.29.15":
+  version: 7.29.15
+  resolution: "@babel/generator@npm:7.29.15"
+  dependencies:
+    "@babel/parser": "npm:^7.29.15"
+    "@babel/types": "npm:^7.29.15"
+    "@jridgewell/gen-mapping": "npm:^0.3.12"
+    "@jridgewell/trace-mapping": "npm:^0.3.28"
+    jsesc: "npm:^3.0.2"
+  checksum: 10c0/97f9cad815732c86d285e266dba400c302af1a8951e0a8ffff48aff8d22e15d3422bd81d3280d4efb81660330acd0e6b9e6195d64902fd94a33723a99ec8929e
   languageName: node
   linkType: hard
 
@@ -384,6 +408,13 @@
   languageName: node
   linkType: hard
 
+"@babel/helper-globals@npm:^7.29.7":
+  version: 7.29.7
+  resolution: "@babel/helper-globals@npm:7.29.7"
+  checksum: 10c0/f38417c40b1129a1b2b519ca961b9040c8827d1444fd74068702286b91b77089431dc76b6b9d5c1496e5da2a4f3ad329c6946e688ba3fa0d1d0b3d2b4f34f36a
+  languageName: node
+  linkType: hard
+
 "@babel/helper-member-expression-to-functions@npm:^7.27.1":
   version: 7.27.1
   resolution: "@babel/helper-member-expression-to-functions@npm:7.27.1"
@@ -404,6 +435,16 @@
   languageName: node
   linkType: hard
 
+"@babel/helper-module-imports@npm:^7.29.7":
+  version: 7.29.7
+  resolution: "@babel/helper-module-imports@npm:7.29.7"
+  dependencies:
+    "@babel/traverse": "npm:^7.29.7"
+    "@babel/types": "npm:^7.29.7"
+  checksum: 10c0/6adf60d97356027413342a092f818d9678c4f5caff716a33e3284b5ae14e47a9e88059d421dde4ee4894691260039a12602c0e7becadc175602194b40dfa345d
+  languageName: node
+  linkType: hard
+
 "@babel/helper-module-transforms@npm:^7.27.1, @babel/helper-module-transforms@npm:^7.28.3":
   version: 7.28.3
   resolution: "@babel/helper-module-transforms@npm:7.28.3"
@@ -417,6 +458,19 @@
   languageName: node
   linkType: hard
 
+"@babel/helper-module-transforms@npm:^7.28.6":
+  version: 7.29.14
+  resolution: "@babel/helper-module-transforms@npm:7.29.14"
+  dependencies:
+    "@babel/helper-module-imports": "npm:^7.29.7"
+    "@babel/helper-validator-identifier": "npm:^7.29.7"
+    "@babel/traverse": "npm:^7.29.14"
+  peerDependencies:
+    "@babel/core": ^7.0.0
+  checksum: 10c0/5ca8b9c36d5b9656196c758df1dc10148086b232f3df43d932a66d84f46faf93da7096667903c1f652539759789dc1ef5fbff0569baeabb110dce27faa988250
+  languageName: node
+  linkType: hard
+
 "@babel/helper-optimise-call-expression@npm:^7.27.1":
   version: 7.27.1
   resolution: "@babel/helper-optimise-call-expression@npm:7.27.1"
@@ -433,6 +487,13 @@
   languageName: node
   linkType: hard
 
+"@babel/helper-plugin-utils@npm:^7.28.6":
+  version: 7.29.7
+  resolution: "@babel/helper-plugin-utils@npm:7.29.7"
+  checksum: 10c0/380477a06133274a2759f9355929cb60a95e8b8fee624a1ae1fa349e1d1645b89daca456f72833f6d1062bffa12ee4271c5bf0cc5a61c0166cdc24c7591e2408
+  languageName: node
+  linkType: hard
+
 "@babel/helper-remap-async-to-generator@npm:^7.27.1":
   version: 7.27.1
   resolution: "@babel/helper-remap-async-to-generator@npm:7.27.1"
@@ -476,10 +537,24 @@
   languageName: node
   linkType: hard
 
+"@babel/helper-string-parser@npm:^7.29.15":
+  version: 7.29.15
+  resolution: "@babel/helper-string-parser@npm:7.29.15"
+  checksum: 10c0/8d130fb596ef470c646f2f98fb50ada5a653ea9fd583dba0884f15327b8022c749e839e0c4e4ee9c670d258e10b997e23b7224ca57cc08dca5e808d4fe5d7048
+  languageName: node
+  linkType: hard
+
 "@babel/helper-validator-identifier@npm:^7.27.1":
   version: 7.27.1
   resolution: "@babel/helper-validator-identifier@npm:7.27.1"
   checksum: 10c0/c558f11c4871d526498e49d07a84752d1800bf72ac0d3dad100309a2eaba24efbf56ea59af5137ff15e3a00280ebe588560534b0e894a4750f8b1411d8f78b84
+  languageName: node
+  linkType: hard
+
+"@babel/helper-validator-identifier@npm:^7.28.5, @babel/helper-validator-identifier@npm:^7.29.7":
+  version: 7.29.7
+  resolution: "@babel/helper-validator-identifier@npm:7.29.7"
+  checksum: 10c0/4795354e7ae0dcafa72de1cd04ec51252dc1498517170beaf019e03effc5b7bf13c6b21a3949a77e07b8125be7f106ed1131350d8ebd4566ae874094a726d62b
   languageName: node
   linkType: hard
 
@@ -522,6 +597,17 @@
   languageName: node
   linkType: hard
 
+"@babel/parser@npm:^7.29.15, @babel/parser@npm:^7.29.7":
+  version: 7.29.15
+  resolution: "@babel/parser@npm:7.29.15"
+  dependencies:
+    "@babel/types": "npm:^7.29.15"
+  bin:
+    parser: ./bin/babel-parser.js
+  checksum: 10c0/5fca335e83d30af8e2dd632c3630526cf410ea6b6567c2f7a5e44e13deba39caf7146ba35f9d6abea34d6d4e869eb32e00dc37fa5213d288ff987cff360db6a6
+  languageName: node
+  linkType: hard
+
 "@babel/plugin-bugfix-firefox-class-in-computed-class-key@npm:^7.27.1":
   version: 7.27.1
   resolution: "@babel/plugin-bugfix-firefox-class-in-computed-class-key@npm:7.27.1"
@@ -954,16 +1040,16 @@
   linkType: hard
 
 "@babel/plugin-transform-modules-systemjs@npm:^7.27.1":
-  version: 7.27.1
-  resolution: "@babel/plugin-transform-modules-systemjs@npm:7.27.1"
+  version: 7.29.4
+  resolution: "@babel/plugin-transform-modules-systemjs@npm:7.29.4"
   dependencies:
-    "@babel/helper-module-transforms": "npm:^7.27.1"
-    "@babel/helper-plugin-utils": "npm:^7.27.1"
-    "@babel/helper-validator-identifier": "npm:^7.27.1"
-    "@babel/traverse": "npm:^7.27.1"
+    "@babel/helper-module-transforms": "npm:^7.28.6"
+    "@babel/helper-plugin-utils": "npm:^7.28.6"
+    "@babel/helper-validator-identifier": "npm:^7.28.5"
+    "@babel/traverse": "npm:^7.29.0"
   peerDependencies:
     "@babel/core": ^7.0.0-0
-  checksum: 10c0/f16fca62d144d9cbf558e7b5f83e13bb6d0f21fdeff3024b0cecd42ffdec0b4151461da42bd0963512783ece31aafa5ffe03446b4869220ddd095b24d414e2b5
+  checksum: 10c0/1da94f89ef8ba1aa1501136a80eb4c010c6a19f5550e10db84677b3ccb7a4934c8098f2b5134def87cf513bf05747ffa523d33722a1ea5a5c8ef956e9136c4c2
   languageName: node
   linkType: hard
 
@@ -1488,6 +1574,17 @@
     "@babel/parser": "npm:^7.27.2"
     "@babel/types": "npm:^7.27.1"
   checksum: 10c0/ed9e9022651e463cc5f2cc21942f0e74544f1754d231add6348ff1b472985a3b3502041c0be62dc99ed2d12cfae0c51394bf827452b98a2f8769c03b87aadc81
+  languageName: node
+  linkType: hard
+
+"@babel/template@npm:^7.29.7":
+  version: 7.29.7
+  resolution: "@babel/template@npm:7.29.7"
+  dependencies:
+    "@babel/code-frame": "npm:^7.29.7"
+    "@babel/parser": "npm:^7.29.7"
+    "@babel/types": "npm:^7.29.7"
+  checksum: 10c0/8bb7f900dcab0e9e1c5ffbc33ca10e0d26b7b2e2ca804becb73ee771b9c4ed6e2908a4ae4a14c08560febb45d2b6b9a173955e42ad404d05f8b04840a14d9c58
   languageName: node
   linkType: hard
 
@@ -1503,6 +1600,21 @@
     "@babel/types": "npm:^7.28.4"
     debug: "npm:^4.3.1"
   checksum: 10c0/ee678fdd49c9f54a32e07e8455242390d43ce44887cea6567b233fe13907b89240c377e7633478a32c6cf1be0e17c2f7f3b0c59f0666e39c5074cc47b968489c
+  languageName: node
+  linkType: hard
+
+"@babel/traverse@npm:^7.29.0, @babel/traverse@npm:^7.29.14, @babel/traverse@npm:^7.29.7":
+  version: 7.29.15
+  resolution: "@babel/traverse@npm:7.29.15"
+  dependencies:
+    "@babel/code-frame": "npm:^7.29.7"
+    "@babel/generator": "npm:^7.29.15"
+    "@babel/helper-globals": "npm:^7.29.7"
+    "@babel/parser": "npm:^7.29.15"
+    "@babel/template": "npm:^7.29.7"
+    "@babel/types": "npm:^7.29.15"
+    debug: "npm:^4.3.1"
+  checksum: 10c0/e598deea5d59ee93ffea8ce3de13e2288d07b3d6f059caba63abc6c4e09ebb52c0ad862b68370733a70d810c4c8e93deb81ecd5a5246fe5ccea249d5545156ec
   languageName: node
   linkType: hard
 
@@ -1516,6 +1628,16 @@
   languageName: node
   linkType: hard
 
+"@babel/types@npm:^7.29.15, @babel/types@npm:^7.29.7":
+  version: 7.29.15
+  resolution: "@babel/types@npm:7.29.15"
+  dependencies:
+    "@babel/helper-string-parser": "npm:^7.29.15"
+    "@babel/helper-validator-identifier": "npm:^7.29.7"
+  checksum: 10c0/2a153a44daccd3f93f33b64f57f9614a160ba1e53ef3c35c305ad687678a537e59b17f0a501901df8618304b905f3268ba39d96ffb78b0b5790e96dc2a9b5833
+  languageName: node
+  linkType: hard
+
 "@braintree/sanitize-url@npm:^6.0.1":
   version: 6.0.4
   resolution: "@braintree/sanitize-url@npm:6.0.4"
PATCH
