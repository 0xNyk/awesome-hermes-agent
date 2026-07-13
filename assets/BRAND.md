# Brand kit — awesome-hermes-agent

**As-of:** 2026-07-14  
**Owner:** 0xNyk  
**Hub:** https://www.nyk.dev/oss/awesome-hermes-agent

## Role

Curated **ecosystem map** for Hermes Agent — not the Hermes product itself. Visual language matches nyk OSS face: void base, lime accent, mono labels, blueprint diagrams.

## Assets

| File | Size | Use |
|---|---|---|
| `github-social.svg` | 1280×640 | GitHub social preview / OG |
| `logo-mark.svg` | 256×256 | Avatar-style mark, badges |
| `system-blueprint.svg` | 1200×640 | README / docs diagram |

## Export for GitHub

GitHub social preview wants PNG. From this folder:

```bash
# if rsvg-convert or sharp available
npx --yes sharp-cli -i github-social.svg -o github-social.png --width 1280
# Settings → Social preview → upload github-social.png
```

## Rules

- Accent: `#C5F23F` on `#0a0a0a` / `#111`
- No purple SaaS gradients, no stock mascot art
- List is the product — brand sells **curation + map**, not a chatbot
