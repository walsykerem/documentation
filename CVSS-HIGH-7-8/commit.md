HIGH 7-8 — CVSS 7.x dependency issues

16 issues collected. One fix.sh per package below.

body-parser 1.20.3 — CVSS 7.5 HIGH

- **Package:** body-parser
- **Versions:** 1.20.3
- **CVSS:** 7.5 (HIGH)
- **Location:** yarn.lock:6671
- **GHSA:** GHSA-27r3-jxmh-p828, GHSA-v422-hmwv-36x6
- **Description:** body-parser vulnerable to Denial of Service via trailing bytes after a compressed request body
- **Fix:** Upgrade body-parser to 1.20.9 or later.

brace-expansion 1.1.12, 2.0.2, 5.0.3, 5.0.5 — CVSS 7.7 HIGH

- **Package:** brace-expansion
- **Versions:** 1.1.12, 2.0.2, 5.0.3, 5.0.5
- **CVSS:** 7.7 (HIGH)
- **Location:** yarn.lock:6740, yarn.lock:6750, yarn.lock:6759, yarn.lock:6768
- **GHSA:** GHSA-3jxr-9vmj-r5cp, GHSA-6j4f-fj2g-mc7p, GHSA-mh99-v99m-4gvg, GHSA-qhr7-859c-m2p7, GHSA-rgw5-rvv9-x895, GHSA-f886-m6hf-6m8v, GHSA-q2hr-2g5m-vwhr, GHSA-jxxr-4gwj-5jf2
- **Description:** brace-expansion: DoS via exponential-time expansion of consecutive non-expanding {} groups
- **Fix:**
  - 1.1.12 → Upgrade brace-expansion to 1.1.21 or later.
  - 2.0.2 → Upgrade brace-expansion to 2.1.7 or later.
  - 5.0.3 → Upgrade brace-expansion to 5.0.12 or later.
  - 5.0.5 → Upgrade brace-expansion to 5.0.12 or later.

browserslist 4.25.4, 4.28.2 — CVSS 7.5 HIGH

- **Package:** browserslist
- **Versions:** 4.25.4, 4.28.2
- **CVSS:** 7.5 (HIGH)
- **Location:** yarn.lock:6786, yarn.lock:6800
- **GHSA:** GHSA-73wf-gq98-2v4g, GHSA-c83g-rgw3-j3cx
- **Description:** Browserslist: Unbounded memory growth (no cache eviction) via distinct query results, leading to eventual OOM
- **Fix:** Upgrade browserslist to 4.28.7 or later.

compression 1.8.1 — CVSS 7.5 HIGH

- **Package:** compression
- **Versions:** 1.8.1
- **CVSS:** 7.5 (HIGH)
- **Location:** yarn.lock:7385
- **GHSA:** GHSA-vc2v-76pw-4v95
- **Description:** compression vulnerable to Denial of Service via memory leak on premature response close
- **Fix:** Upgrade compression to 1.8.2 or later.

fast-uri 3.1.0 — CVSS 7.5 HIGH

- **Package:** fast-uri
- **Versions:** 3.1.0
- **CVSS:** 7.5 (HIGH)
- **Location:** yarn.lock:9454
- **GHSA:** GHSA-4c8g-83qw-93j6, GHSA-7p8r-x3mc-p8w7, GHSA-f65p-4m7j-42xc, GHSA-jqff-g426-hqxp, GHSA-q3j6-qgpj-74h6, GHSA-qw65-cvwx-89v3, GHSA-v2hh-gcrm-f6hx, GHSA-v39h-62p7-jpjc, GHSA-hrr3-gc8f-f4qj, GHSA-w74x-v6f9-j3xg, GHSA-333x-w4r6-6crp, GHSA-xhq7-xmqj-769h
- **Description:** fast-uri vulnerable to host confusion via percent-encoded authority delimiters
- **Fix:** Upgrade fast-uri to 3.1.9 or later.

glob 10.4.5 — CVSS 7.5 HIGH

- **Package:** glob
- **Versions:** 10.4.5
- **CVSS:** 7.5 (HIGH)
- **Location:** yarn.lock:9851
- **GHSA:** GHSA-5j98-mcp5-4vw2, GHSA-3g3m-2fjr-6pw4
- **Description:** glob CLI: Command injection via -c/--cmd executes matches with shell:true
- **Fix:** Upgrade glob to 14.0.2 or later.

ip-address 10.1.0 — CVSS 7.7 HIGH

- **Package:** ip-address
- **Versions:** 10.1.0
- **CVSS:** 7.7 (HIGH)
- **Location:** yarn.lock:10899
- **GHSA:** GHSA-mwp4-54f8-5fhr, GHSA-h3mg-xc3c-68pw, GHSA-j6r3-76f7-8jcv, GHSA-rpw4-54j3-4h4q, GHSA-rxp7-6hxx-x8q5, GHSA-v2v4-37r5-5v8g
- **Description:** ip-address: Address4 decodes leading-zero octets as decimal while resolvers decode them as octal, allowing SSRF and trust-boundary bypass
- **Fix:** Upgrade ip-address to 10.7.4 or later.

js-cookie 3.0.5 — CVSS 7.5 HIGH

- **Package:** js-cookie
- **Versions:** 3.0.5
- **CVSS:** 7.5 (HIGH)
- **Location:** yarn.lock:11295
- **GHSA:** GHSA-qjx8-664m-686j
- **Description:** JavaScript Cookie: Per-instance prototype hijack in assign() enables cookie-attribute injection
- **Fix:** Upgrade js-cookie to 3.0.7 or later.

js-yaml 3.14.1, 4.1.0 — CVSS 7.5 HIGH

- **Package:** js-yaml
- **Versions:** 3.14.1, 4.1.0
- **CVSS:** 7.5 (HIGH)
- **Location:** yarn.lock:11309, yarn.lock:11321
- **GHSA:** GHSA-2883-xcg3-v3hh, GHSA-52cp-r559-cp3m, GHSA-5p4m-2wfm-xmqj, GHSA-h67p-54hq-rp68, GHSA-mh29-5h37-fv8m
- **Description:** JS-YAML: Quadratic CPU consumption in !!omap resolution (3.x and 4.x) — CVE-2026-59870 fix not backported
- **Fix:**
  - 3.14.1 → Upgrade js-yaml to 3.15.2 or later.
  - 4.1.0 → Upgrade js-yaml to 4.3.2 or later.

launch-editor 2.11.1 — CVSS 7.5 HIGH

- **Package:** launch-editor
- **Versions:** 2.11.1
- **CVSS:** 7.5 (HIGH)
- **Location:** yarn.lock:11567
- **GHSA:** GHSA-587h-7wmj-h5pm, GHSA-698v-4r3x-3vcv, GHSA-r825-w8mm-5pxw, GHSA-v6wh-96g9-6wx3
- **Description:** launch-editor: `fs.existsSync()` existence check can be bypassed on Windows
- **Fix:** Upgrade launch-editor to 2.14.2 or later.

path-to-regexp 0.1.12 — CVSS 7.5 HIGH

- **Package:** path-to-regexp
- **Versions:** 0.1.12
- **CVSS:** 7.5 (HIGH)
- **Location:** yarn.lock:14140
- **GHSA:** GHSA-37ch-88jc-xwx2
- **Description:** path-to-regexp vulnerable to Regular Expression Denial of Service via multiple route parameters
- **Fix:** Upgrade path-to-regexp to 0.1.13 or later.

postcss 8.4.31, 8.5.6 — CVSS 7.5 HIGH

- **Package:** postcss
- **Versions:** 8.4.31, 8.5.6
- **CVSS:** 7.5 (HIGH)
- **Location:** yarn.lock:15186, yarn.lock:15197
- **GHSA:** GHSA-6g55-p6wh-862q, GHSA-r28c-9q8g-f849, GHSA-fxqj-rqcc-2cmp, GHSA-qx2v-qp2m-jg93
- **Description:** PostCSS: Path Traversal in Previous Source Map Auto-Loading (sourceMappingURL) leads to Arbitrary .map File Disclosure
- **Fix:** Upgrade postcss to 8.5.23 or later.

tmp 0.2.5 — CVSS 7.7 HIGH

- **Package:** tmp
- **Versions:** 0.2.5
- **CVSS:** 7.7 (HIGH)
- **Location:** yarn.lock:17377
- **GHSA:** GHSA-ph9p-34f9-6g65
- **Description:** tmp has Path Traversal via unsanitized prefix/postfix that enables directory escape
- **Fix:** Upgrade tmp to 0.2.6 or later.

uuid 8.3.2, 10.0.0, 11.1.0 — CVSS 7.5 HIGH

- **Package:** uuid
- **Versions:** 8.3.2, 10.0.0, 11.1.0
- **CVSS:** 7.5 (HIGH)
- **Location:** yarn.lock:17996, yarn.lock:17978, yarn.lock:17987
- **GHSA:** GHSA-w5hq-g745-h8pq
- **Description:** uuid: Missing buffer bounds check in v3/v5/v6 when buf is provided
- **Fix:** Upgrade uuid to 11.1.1 or later.

webpack-dev-middleware 7.4.5 — CVSS 7.4 HIGH

- **Package:** webpack-dev-middleware
- **Versions:** 7.4.5
- **CVSS:** 7.4 (HIGH)
- **Location:** yarn.lock:18265
- **GHSA:** GHSA-g84c-rxfj-3j2c
- **Description:** webpack-dev-middleware vulnerable to Path Traversal via non-slash-terminated publicPath
- **Fix:** Upgrade webpack-dev-middleware to 7.4.6 or later.

ws 7.5.10, 8.18.3 — CVSS 7.5 HIGH

- **Package:** ws
- **Versions:** 7.5.10, 8.18.3
- **CVSS:** 7.5 (HIGH)
- **Location:** yarn.lock:18534, yarn.lock:18549
- **GHSA:** GHSA-96hv-2xvq-fx4p, GHSA-58qx-3vcg-4xpx
- **Description:** ws: Memory exhaustion DoS from tiny fragments and data chunks
- **Fix:**
  - 7.5.10 → Upgrade ws to 7.5.11 or later.
  - 8.18.3 → Upgrade ws to 8.21.0 or later.
