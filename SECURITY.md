# Security Policy

## Supported versions

This repository is a **curated list of links** (markdown). It does not ship executable agent code.

| Component | Support |
|---|---|
| README / list content | Latest `main` only |
| Linked third-party projects | Their own security policies |

## Reporting a vulnerability

If you find a security issue **in this list** (malicious link, credential leak in a PR, social engineering):

1. Open a private report via [GitHub Security Advisories](https://github.com/0xNyk/awesome-hermes-agent/security/advisories/new) if available, or email the maintainer from the profile.
2. Do **not** open a public issue for live malware URLs or leaked secrets.

For vulnerabilities **inside Hermes Agent or a linked project**, report to that project's maintainers (e.g. [NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent)).

## Maintainer practice

- Prefer links to official repos and docs.
- Maturity tags (`production` / `beta` / `experimental`) are quality signals, not security audits.
- PRs that add install scripts or remote code execution paths will be rejected — this list stays link-only.
