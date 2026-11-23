MUST FIX — minimatch 3.1.2, 5.1.6, 9.0.5 — CVSS 8.7 HIGH

- **Package:** minimatch
- **Versions:** 3.1.2, 5.1.6, 9.0.5
- **CVSS:** 8.7 (HIGH)
- **Priority:** MUST FIX
- **Location:** yarn.lock:13375, yarn.lock:13384, yarn.lock:13393
- **GHSA:** GHSA-23c5-xmqv-rm74, GHSA-3ppc-4f35-3m26, GHSA-7r86-cg39-jmmj, GHSA-g3hv-75wg-m249
- **Description:** minimatch has a ReDoS via repeated wildcards with non-matching literal in pattern
- **Fix:**
  - 3.1.2 → Upgrade minimatch to 3.1.4 or later.
  - 5.1.6 → Upgrade minimatch to 5.1.8 or later.
  - 9.0.5 → Upgrade minimatch to 11.0.1 or later.
