<p align="center">
  <a href="https://github.com/NousResearch/hermes-agent">
    <img src="assets/hermes-agent-banner.png" alt="Hermes Agent" width="800">
  </a>
</p>

<p align="center">
  <a href="https://www.nyk.dev/oss/awesome-hermes-agent">nyk.dev/oss</a>
  ·
  <a href="https://github.com/NousResearch/hermes-agent">Hermes Agent</a>
  ·
  <a href="assets/BRAND.md">Brand kit</a>
</p>

# Awesome Hermes Agent

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](LICENSE)
[![Validate](https://github.com/0xNyk/awesome-hermes-agent/actions/workflows/validate.yml/badge.svg)](https://github.com/0xNyk/awesome-hermes-agent/actions/workflows/validate.yml)

> Curated skills, tools, integrations, and resources for [Hermes Agent](https://github.com/NousResearch/hermes-agent), the self-improving agent from [Nous Research](https://nousresearch.com).

Hermes Agent is the open-source agent maintained by Nous Research. Awesome Hermes Agent is
0xNyk's independent open-source directory for the optional skills, plugins, memory
providers, surfaces, and bridges around it. This directory is not an official Nous Research
project.

<p align="center">
  <img src="assets/runtime-map.jpeg" alt="Hermes runtime and optional ecosystem layers" width="800">
</p>

> Ecosystem status (last reviewed: 2026-07-16)
> - Hermes Agent: [v0.18.2 (v2026.7.7.2)](https://github.com/NousResearch/hermes-agent/releases/tag/v2026.7.7.2)
> - Core repo: [NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent)
> - Releases: [Hermes releases](https://github.com/NousResearch/hermes-agent/releases)

---

## Where Do I Start?

Three steps from zero to productive:

1. **Run Hermes:** [Official docs quickstart](https://hermes-agent.nousresearch.com/docs/) (install, CLI, first chat).
2. **Add skills:** [wondelai/skills](https://github.com/wondelai/skills) (broad library) or [litprog-skill](https://github.com/tlehman/litprog-skill) (literate programming).
3. **Add a surface:** [hermes-workspace](https://github.com/outsourc-e/hermes-workspace) (Hermes GUI) or [mission-control](https://github.com/builderz-labs/mission-control) (fleet / dispatch dashboard).

Then use the full list. Every entry has a maturity tag:

<p align="center">
  <img src="assets/start-path.jpeg" alt="Start with a working Hermes conversation before adding ecosystem layers" width="800">
</p>

| Tag | What it means |
|-----|---------------|
| **production** | Stable, documented, actively maintained; safe to build on |
| **beta** | Works but still evolving; expect some rough edges |
| **experimental** | Proof of concept or early-stage; learn before depending on it |

<p align="center">
  <img src="assets/maturity-notes.jpeg" alt="Editorial evidence behind production, beta, and experimental tags" width="800">
</p>

Tags are editorial snapshots based on documentation, setup evidence, maintenance, and
adoption signals. Re-check the linked project before depending on it.

## Check the trust boundary

An ecosystem listing is a discovery aid, not a security endorsement. Before enabling a
community skill, plugin, MCP server, or unattended job, verify who can trigger it, which
tools it receives, where commands execute, what credentials it can read, and how you can
stop it. Prefer the smallest toolset and an isolated backend for untrusted work.

<p align="center">
  <img src="assets/trust-boundary.jpeg" alt="Hermes capability and permission trust-boundary checklist" width="800">
</p>

Use the official [security guide](https://hermes-agent.nousresearch.com/docs/user-guide/security/),
[tools reference](https://hermes-agent.nousresearch.com/docs/user-guide/features/tools/),
and [cron documentation](https://hermes-agent.nousresearch.com/docs/user-guide/features/cron)
for the current controls.

For the operator routine around `/new`, `/resume`, `/compress`, `/branch`, export, and
pruning, use the [Hermes Agent session management guide](https://www.nyk.dev/blog/hermes-agent-session-management-guide?utm_source=github&utm_medium=readme&utm_campaign=guide&utm_content=awesome-hermes-agent).

---

## Contents

- [Where Do I Start?](#where-do-i-start)
- [Check the Trust Boundary](#check-the-trust-boundary)
- [Official Resources](#official-resources)
- [Skills & Plugins](#skills--plugins)
  - [Community Skills](#community-skills)
  - [Plugins](#plugins)
  - [agentskills.io Ecosystem](#agentskillsio-ecosystem)
  - [Skill Registries & Discovery](#skill-registries--discovery)
- [Memory Providers](#memory-providers)
- [Tools & Utilities](#tools--utilities)
  - [Deployment](#deployment)
- [Integrations & Bridges](#integrations--bridges)
- [Detection & Media Forensics](#detection--media-forensics)
- [Multi-Agent & Swarms](#multi-agent--swarms)
- [Domain Applications](#domain-applications)
- [Forks & Derivatives](#forks--derivatives)
- [Guides & Documentation](#guides--documentation)
- [Operational Playbooks](#operational-playbooks)
- [Level-Up Blueprints](#level-up-blueprints)
- [Contributing](#contributing)
- [License](#license)

---

## Official Resources

> Core repositories and resources maintained by Nous Research.

- [Hermes Agent](https://github.com/NousResearch/hermes-agent) by [Nous Research](https://nousresearch.com) - The core project. Self-improving agent with a closed learning loop, skill creation and curation, persistent memory, 20+ messaging platforms, six terminal backends (local, Docker, SSH, Singularity, Modal, and Daytona), cron scheduling, MCP integration, isolated profiles, provider routing, and automatic migration from OpenClaw. 215k+ stars.
- [autonovel](https://github.com/NousResearch/autonovel) by [Nous Research](https://nousresearch.com) - Autonomous novel-writing pipeline built on Hermes. Generates long-form manuscripts (100k+ words) end-to-end using the agent loop.
- [hermes-paperclip-adapter](https://github.com/NousResearch/hermes-paperclip-adapter) by [Nous Research](https://nousresearch.com) - Run Hermes as a managed employee in Paperclip companies. Connects the agent to Paperclip's task management and governance system.
- [hermes-agent-self-evolution](https://github.com/NousResearch/hermes-agent-self-evolution) by [Nous Research](https://nousresearch.com) - Evolutionary self-improvement using DSPy and GEPA (Genetic Evolution of Prompt Architectures). The research pipeline for optimizing Hermes's own prompts and behaviors.
- [Official Documentation](https://hermes-agent.nousresearch.com/docs/) - Comprehensive docs covering quickstart, CLI, configuration, messaging gateway, security, tools, skills, memory, MCP, cron, ACP, API server, and architecture.
- [Release Notes](https://github.com/NousResearch/hermes-agent/releases) - Official changelog with feature highlights, migration notes, and reliability fixes for each Hermes version.
- [tinker-atropos](https://github.com/NousResearch/tinker-atropos) by [Nous Research](https://nousresearch.com) - Standalone Atropos integration with Thinking Machines Tinker API. RL training infrastructure for fine-tuning tool-calling models on real agent trajectories.
- [Skills Hub](https://agentskills.io) - The open standard for agent skills. Compatible across Hermes, Claude Code, Cursor, Codex, and other agents.
- [Discord](https://discord.gg/NousResearch) - The Nous Research community. Bug reports, feature requests, and general discussion.

<br>

## Skills & Plugins

> Skills are procedural memory — reusable capabilities that Hermes creates from experience and improves during use. Plugins extend core functionality.

### Community Skills

- **[beta]** [hermes-plugins](https://github.com/42-evey/hermes-plugins) by [42-evey](https://github.com/42-evey) - Plugin suite: Discord voice bridge with Gemini Live, WhatsApp bridge, goal management, inter-agent bridge, model selection, and cost control. Maintained by a frequent Hermes core contributor.
- **[beta]** [hermes-skill-factory](https://github.com/Romanescu11/hermes-skill-factory) by [Romanescu11](https://github.com/Romanescu11) - Meta-skill that auto-generates reusable skills from your workflows. Point it at a task you repeat and it creates a skill for it.
- **[beta]** [litprog-skill](https://github.com/tlehman/litprog-skill) by [tlehman](https://github.com/tlehman) - Literate programming skill that works across Claude Code, OpenCode, and Hermes. Weaves code and prose into documented, executable notebooks.
- **[experimental]** [Wizards-of-the-Ghosts](https://github.com/Hmbown/Wizards-of-the-Ghosts) by [Hmbown](https://github.com/Hmbown) - Fantasy spell-themed skill pack. Wraps real development operations (refactoring, linting, testing) in a tabletop RPG interface.
- **[experimental]** [super-hermes](https://github.com/Cranot/super-hermes) by [Cranot](https://github.com/Cranot) - Teaches Hermes to write its own analytical prompts. Adds a meta-reasoning layer where the agent generates better prompts for itself before executing tasks.
- **[experimental]** [hermes-life-os](https://github.com/Lethe044/hermes-life-os) by [Lethe044](https://github.com/Lethe044) - Personal OS agent that detects daily patterns and learns your routines over time. Uses Hermes's memory system for lifestyle tracking, not just code.
- **[beta]** [hermes-incident-commander](https://github.com/Lethe044/hermes-incident-commander) by [Lethe044](https://github.com/Lethe044) - Autonomous SRE agent for production incident detection and self-healing. Monitors services, diagnoses failures, and applies fixes. Works well with Hermes's cron scheduling.
- **[beta]** [hermes-dojo](https://github.com/Yonkoo11/hermes-dojo) by [Yonkoo11](https://github.com/Yonkoo11) - Self-improvement system that monitors agent performance, identifies weak skills, and iterates on them automatically.
- **[beta]** [hermes-spotify-skill](https://github.com/Alexeyisme/hermes-spotify-skill) by [Alexeyisme](https://github.com/Alexeyisme) - Spotify playback control for headless Linux and Raspberry Pi 4/5. Search, play, pause, skip, set volume, transfer between Spotify Connect devices. No daemon — Hermes writes spotipy snippets and runs them via `execute_code`. Works with raspotify for Pi-as-speaker. Tested on Raspberry Pi OS Lite Bookworm 64-bit. The only Linux-native Spotify skill in the ecosystem.
- **[experimental]** [hermes-skill-marketplace](https://github.com/Lethe044/hermes-skill-marketplace) by [Lethe044](https://github.com/Lethe044) - Agent that writes, tests, and publishes new skills autonomously. Automates the skill creation and distribution lifecycle.
- **[experimental]** [personal-api](https://github.com/beiyuii/personal-api-skill) by [beiyuii](https://github.com/beiyuii) - Turn your Obsidian vault into an identity layer any AI agent can read in under 30 seconds
- **[beta]** [hermes-nextcloud](https://github.com/adnw-vinc/hermes-nextcloud) by [adnw-vinc](https://github.com/adnw-vinc) - Self-hosted Nextcloud bridge — manage files (WebDAV), notes (Nextcloud Notes API), calendar/tasks (CalDAV), and contacts (CardDAV) from Hermes. App Password auth, configurable timezone, guided setup. Fills the self-hosted-cloud gap for Hermes users running their own infrastructure.
- **[beta]** [oh-my-hermes](https://github.com/witt3rd/oh-my-hermes) by [witt3rd](https://github.com/witt3rd) - Multi-agent orchestration skills for Hermes inspired by `oh-my-claudecode` and rebuilt on Hermes primitives. Suite covers deep-research, deep-interview, `ralplan` (Planner → Architect → Critic consensus), `ralph` (verified execute → verify → iterate), `triage`, and `autopilot`, plus driver skills encoding the dispatcher's playbook. Composes end-to-end: research → interview → consensus plan → verified execution.
- **[beta]** [blacktea](https://github.com/nmrtn/blacktea) by [nmrtn](https://github.com/nmrtn) - Spending controls for agents that pay online via x402. Holds over-limit payments for human approval in the chat, enforces a JSON policy, and audits every spend. Ships as an MCP server (pay, approve_payment, reject_payment, audit_query) plus an SDK and CLI.
- **[beta]** [hermes-skill-kit](https://github.com/duruonanni/hermes-skill-kit) by [duruonanni](https://github.com/duruonanni) - Three community-vetted skills: **feishu-document-api** (programmatic Feishu/Lark document creation), **feishu-response-format** (Feishu response formatting with 3 table schemes, Card JSON 2.0, Markdown compatibility, 53 tests), and **hermes-memory-maintenance** (MEMORY.md/USER.md audit and drift recovery). Codex-audited.
- **[beta]** [PolyBrain](https://github.com/mosesman831/PolyBrain) by [mosesman831](https://github.com/mosesman831) - Multi-agent, multi-model orchestration skill that decomposes an objective into a JSON task plan, runs research and build subtasks in parallel, then synthesizes and verifies a final answer. Each role can use a different LLM/provider. Enforces strict citations and drops uncited claims.
- **[experimental]** [tech-debt-management-skill](https://github.com/Vincent-crypto-coder/tech-debt-management-skill) by [Vincent-crypto-coder](https://github.com/Vincent-crypto-coder) - Systematic technical debt management for Python projects. Automates scanning (pylint, radon, safety, bandit, flake8), prioritizes debt with a 4-dimension matrix, and generates executable refactoring plans with verification scripts.
- **[beta]** [pingpong](https://github.com/0xAaronx0/pingpong) by [0xAaronx0](https://github.com/0xAaronx0) - Spontaneous local leisure meetups: agent posts a pseudonymous, coarse-geo offer to a shared board; nearby agents match locally and negotiate place/time with double-opt-in before contact.
- **[beta]** [hermes-skills](https://github.com/RobinBeraud/hermes-skills) by [RobinBeraud](https://github.com/RobinBeraud) - Growing skills library covering finance (FMP stock/crypto data), web (Firecrawl scrape/search), WhatsApp (WBizTool contacts), and marketing/SEO. Each skill follows standard SKILL.md format.
- **[beta]** [hermes-skills (liuyunnb666)](https://github.com/liuyunnb666/hermes-skills) by [liuyunnb666](https://github.com/liuyunnb666) - Seven curated skills for Hermes: debugging, parallel dev, TDD, and UI workflows.
- **[production]** [hermes-skills (winterliu6)](https://github.com/winterliu6/hermes-skills) by [winterliu6](https://github.com/winterliu6) - Chinese-focused skills pack: **content-studio** (小红书/抖音/公众号), **security-newsletter** (weekly cybersecurity awareness emails), and **tech-ops-bot** (企业微信/飞书 IT ops with fault classification and web dashboard). Production use at Yaolai Cinema IT.
- **[beta]** [hurmoz](https://github.com/Moshe-ship/hurmoz) by [Moshe-ship](https://github.com/Moshe-ship) - Arabic-first skills pack — 63 skills across Islamic tools (prayer times, zakat, Quran), dialect-aware NLP, content, and travel. Install: `hermes skills tap add Moshe-ship/hurmoz`.
- **[experimental]** [humanizer-ru](https://github.com/ilyautov/humanizer-ru) by [ilyautov](https://github.com/ilyautov) - Removes AI-writing tells from Russian text (bureaucratese, calques, ChatGPT/Claude fingerprints). 52 patterns, deterministic offline scanner. SKILL.md-compatible. MIT.
- **[experimental]** [hinge-projects](https://github.com/tsol/hinge-projects) by [tsol](https://github.com/tsol) - Starts Vite projects, a Hinge editing overlay, Cloudflare tunnels, and Telegram control for phone-based development with Hermes. Early project; review the install script before running it.
- **[beta]** [stock-analysis](https://github.com/AdvancingTitans/stock-analysis) by [AdvancingTitans](https://github.com/AdvancingTitans) - Python CLI and portable skill for A-share, Hong Kong, US stock, fund, and portfolio research. Produces Markdown reports and machine-readable evidence packs; research only, with no trading execution.
- **[experimental]** [nika-agents](https://github.com/supernovae-st/nika-agents) by [SuperNovae Studio](https://github.com/supernovae-st) - Delegates repeatable work from Hermes to Nika workflows with static checks, cost caps, permits, and hash-chained execution traces. The integration skill is MIT; the Nika repository is AGPL-3.0.
- **[beta]** [LinkedIn Skills](https://github.com/sergebulaev/linkedin-skills) by [Serge Bulaev](https://github.com/sergebulaev) - Ten portable skills for drafting, reviewing, and planning LinkedIn content. MIT licensed and compatible with agentskills.io hosts, including Hermes.
- **[experimental]** [routerbase-agent-skills](https://github.com/zenlee123/routerbase-agent-skills) by [zenlee123](https://github.com/zenlee123) - Skills for RouterBase model routing and media generation. Requires RouterBase credentials; MIT licensed and still at its initial public revision.
- **[experimental]** [skill-evolution](https://github.com/okdk7788/skill-evolution) by [okdk7788](https://github.com/okdk7788) - GEPA-style measured evolution for learned agent skills, adapted from Hermes self-improvement ideas for Claude Code. MIT licensed, but still at its initial public revision.
- **[beta]** [emulo](https://github.com/ohad6k/emulo) by [ohad6k](https://github.com/ohad6k) - Mines local Claude Code, Codex, and Copilot session logs into a portable user profile that Hermes can load as a skill. Runs locally and is MIT licensed.
- **[experimental]** [code-assembly-skill](https://github.com/baoyu0/code-assembly-skill) by [baoyu0](https://github.com/baoyu0) - Search-first software assembly method for finding and composing existing tools before writing new code. Portable across Hermes, Claude Code, and Codex.
- **[experimental]** [hermes-do-task-skill](https://github.com/baoyu0/hermes-do-task-skill) by [baoyu0](https://github.com/baoyu0) - One-command workflow that plans a task, delegates execution, verifies the result, and writes a handoff. Early project with no published release.
- **[beta]** [hermes-telegram-checklist](https://github.com/johnsje183/hermes-telegram-checklist) by [johnsje183](https://github.com/johnsje183) - Native Telegram To-Do lists (real interactive checkboxes with a progress counter) in chats and forum topics — create, read, append, toggle with a write allowlist and offline plan validation. Uses a Telethon user session (MTProto) because the Bot API can't post checklists into groups; treat the session account accordingly. MIT, CI across Python 3.9–3.13.
- **[beta]** [hermes-tour-assistant](https://github.com/MaikD77/hermes-tour-assistant) by [MaikD77](https://github.com/MaikD77) - Three-in-one outdoor skill suite: **Outdoor Tour Assistant** (GPX route monitoring with weather, deviation alerts, and silent-by-default cron), **City Walk Guide** (personal OSM/Wikipedia walking tour with source-backed stories and optional voice), and **Live Location Nearby** (water, food, repair, and shelter via OSM/Overpass). MIT, Python 3.11+, 85%+ test coverage.
- **[beta]** [weread-notes-export-skill](https://github.com/dongwei6688/weread-notes-export-skill) by [dongwei6688](https://github.com/dongwei6688) - WeChat Reading (微信读书) notes export: chapter-tree Markdown for highlights and comments, incremental sync for daily cron, safe filenames, same-title/different-author separation. Pure Python stdlib; needs a WeRead API key.
- **[beta]** [policy-search-china-skill](https://github.com/dongwei6688/policy-search-china-skill) by [dongwei6688](https://github.com/dongwei6688) - Search Chinese government policy documents across 16 ministries and extract verbatim citations with source links for reports and planning. Ships a large local policy cache plus scripted search chains; dual-space layout keeps user data separate from system updates. MIT.
- **[beta]** [true402-token-safety](https://github.com/true402/hermes-skills) by [true402](https://github.com/true402) - Pre-trade Base (8453) ERC-20 safety gate: gas-free on-chain buy→sell simulation that proves whether a token can be *sold*, plus liquidity and ownership/mint/proxy checks, returning `avoid` / `caution` / `ok`. Free daily checks need no wallet; heavier use pays per call over x402 with a hard $0.10 client-side cap. MIT-0 skill wrapping `@true402.dev/rugcheck`.
- **[beta]** [twitr-skills](https://github.com/lnvestor/twitr-skills) by [lnvestor](https://github.com/lnvestor) - Five X/Twitter agent skills: live reads and search, bulk dataset exports, real-time account/keyword monitors (HMAC-signed webhooks), publishing via a connected account, and an unattended presence routine for Hermes cron. Pay-per-call in USDC (x402 on Base/Solana, MPP on Tempo) — no API key or signup; treat publish/presence skills as high-privilege. MIT.
- **[experimental]** [loremaster](https://github.com/loremaster-ai/loremaster) by [loremaster-ai](https://github.com/loremaster-ai) - AI scrum-master and PM skill pack extracted from a production multi-project deployment. Sprint ceremonies with planning poker, backlog proposals with verifiable done criteria, plan-conflict detection, and a per-project wiki vault with a knowledge graph. Every external write (Jira, wiki commits) goes through per-item human approval. MIT.
- **[experimental]** [hermes-backup-recovery](https://github.com/JimmyHuang2002/hermes-backup-recovery) by [JimmyHuang2002](https://github.com/JimmyHuang2002) - Keeps a long-running Hermes recoverable: age-encrypted backups of everything under `$HERMES_HOME` (memory, skills, config, chat history) with verification, restore drills, and a health check. Four short bash scripts plus a SKILL.md — no lock-in, archives are plain `tar.gz`. MIT.
- **[experimental]** [obsidian-auto-context](https://github.com/SkillForge-Labs/obsidian-auto-context) by [SkillForge Labs](https://github.com/SkillForge-Labs) - Captures each session's findings, decisions, and action items into an Obsidian vault as tagged, wiki-linked Markdown with daily-note rollups. Secrets are redacted before anything touches disk. MIT.
- **[experimental]** [appnz-agent-skills](https://github.com/lee101/appnz-agent-skills) by [lee101](https://github.com/lee101) - Portable deploy skill for [app.nz](https://app.nz): static sites, server apps, scale-to-zero Cog models, and bounded coding-agent jobs, with target/cost checks, health checks, and rollback evidence built into the workflow. Skill is MIT; deployments require an app.nz account and may consume paid credits.
- **[experimental]** [url-manager](https://github.com/Piccolo123/url-manager) by [Piccolo123](https://github.com/Piccolo123) - Agent-first URL collection and knowledge management: agents save, categorize, tag, search, and share web links, with collaborative shared categories and magic-link delivery back to the user. MIT client fronting a hosted backend (ai.ocean94.com) — an account is auto-created on first use and collected links are stored there; SKILL.md requires informing the user before first use.
- **[beta]** [OMH (oh-my-hermes by rlaope)](https://github.com/rlaope/oh-my-hermes) by [rlaope](https://github.com/rlaope) - Wrapper orchestration layer installed next to Hermes — one `omh setup` installs 80+ generated workflow skills plus a deterministic chat router that turns free-form Korean/English chat into the right prepared workflow, clarifying instead of guessing when confidence is low. Coding work is delegated to an explicitly selected executor (Codex, Claude Code, or the Hermes runtime) with a strict prepared-vs-observed evidence boundary. A 156-case bilingual routing corpus and ~1,500 unit tests gate every change in CI. Pure Python, zero runtime dependencies, never patches Hermes; docs in four languages. Distinct project from [witt3rd's oh-my-hermes](https://github.com/witt3rd/oh-my-hermes) above. MIT.
- **[beta]** [roadmap-tutor](https://github.com/instax-dutta/roadmap-tutor) by [instax-dutta](https://github.com/instax-dutta) - Turns any of the 91 official roadmap.sh roadmaps into a resumable, one-topic-at-a-time curriculum with progress tracking across sessions. Topology-sorted learning path from reactflow graphs, stdlib-only Python, runs on Raspberry Pi 4 with 2GB RAM. Commands: start, next, done, skip, status, outline, search, goto, switch, prefetch, reset. Weekly CI verifies lossless parse across all 91 live roadmaps. MIT.
- **[experimental]** [hermes-startup](https://github.com/33hodl/hermes-startup) by [33hodl](https://github.com/33hodl) - First-dollar onboarding skill: walks a new operator from a working Hermes install to one genuine paid outcome, rather than to a demo.
- **[beta]** [alter](https://github.com/alter-persona/alter) by [alter-persona](https://github.com/alter-persona) - Builds a digital persona from your own writing, so an agent can draft in your voice instead of a generic one. Apache-2.0.
- **[beta]** [shopify-app-review-brief](https://github.com/alfredtech2026/shopify-app-review-brief) by [alfredtech2026](https://github.com/alfredtech2026) - Privacy-first Shopify app review triage: source-checked worksheets an operator can audit rather than a black-box score.
- **[experimental]** [schedulala-agent](https://github.com/schedulala/schedulala-agent) by [schedulala](https://github.com/schedulala) - Schedules and publishes social posts to 12 platforms from an agent. Holds credentials for every platform it posts to, so scope its tokens deliberately.

### agentskills.io Ecosystem

> Skills built on the [agentskills.io](https://agentskills.io) open standard — compatible across Hermes and other agent platforms.

- **[production]** [wondelai/skills](https://github.com/wondelai/skills) by [wondelai](https://github.com/wondelai) - Cross-platform agent skills for Claude Code and agentskills.io-compatible platforms.
- **[production]** [youtube-skills](https://github.com/ZeroPointRepo/youtube-skills) by [therohitdas](https://github.com/therohitdas) - Adds YouTube **search**, channel browsing, playlist extraction, and reliable transcripts on top of Hermes's built-in `youtube-content`. Built-in transcript fetch silently fails on VPS because YouTube blocks cloud IP ranges; this routes through TranscriptAPI's backend (15M+ transcripts/month) to stay unblocked. 12 sub-skills covering search → fetch → bulk extraction. Auto-invokes for creator lookups, topic research, and tutorials. The fix for "my Hermes can't watch YouTube on a $5 VPS."
- **[production]** [Anthropic-Cybersecurity-Skills](https://github.com/mukul975/Anthropic-Cybersecurity-Skills) by [mukul975](https://github.com/mukul975) - 753+ structured cybersecurity skills mapped to MITRE ATT&CK. 25k+ stars.
- **[production]** [chainlink-agent-skills](https://github.com/smartcontractkit/chainlink-agent-skills) by [Chainlink](https://github.com/smartcontractkit) - Official Chainlink agent skills on the agentskills.io spec. Oracle network data, CCIP, and smart contract interaction.
- **[production]** [black-forest-labs/skills](https://github.com/black-forest-labs/skills) by [Black Forest Labs](https://github.com/black-forest-labs) - Official FLUX model skills for image generation. First-party skills from the FLUX creators.
- **[production]** [pydantic-ai-skills](https://github.com/DougTrajano/pydantic-ai-skills) by [DougTrajano](https://github.com/DougTrajano) - Pydantic AI with agentskills.io support. Adds type-safe schema validation to agent skill inputs and outputs.
- **[beta]** [execplan-skill](https://github.com/tiann/execplan-skill) by [tiann](https://github.com/tiann) - Manages complex, long-running task execution with proper lifecycle handling — progress tracking, checkpoints, and failure recovery.
- **[beta]** [maestro](https://github.com/ReinaMacCredy/maestro) by [ReinaMacCredy](https://github.com/ReinaMacCredy) - Skill orchestration with Conductor planning and Beads tracking. Structures multi-step skill execution into observable pipelines.
- **[beta]** [bmad-module-skill-forge](https://github.com/armelhbobdad/bmad-module-skill-forge) by [armelhbobdad](https://github.com/armelhbobdad) - Transforms repos and docs into agentskills.io-compliant skills. Input a codebase, output installable skills.
- **[beta]** [Agentic-MCP-Skill](https://github.com/cablate/Agentic-MCP-Skill) by [cablate](https://github.com/cablate) - MCP client with agentskills.io validation. Bridges MCP tool servers with the skills standard.
- **[experimental]** [ripley-xmr-gateway](https://github.com/KYC-rip/ripley-xmr-gateway) by [KYC-rip](https://github.com/KYC-rip) - Monero (XMR) blockchain gateway for agents. Enables private cryptocurrency transactions from agent workflows.
- **[beta]** [skillsdotnet](https://github.com/PederHP/skillsdotnet) by [PederHP](https://github.com/PederHP) - C# implementation of agentskills.io with MCP integration. .NET alternative to the Python/TypeScript SDKs.
- **[beta]** [colony-skill](https://github.com/TheColonyCC/colony-skill) by [TheColonyCC](https://github.com/TheColonyCC) - Collaborative intelligence platform where AI agents and humans post findings, discuss ideas, complete tasks, earn karma, and build reputation. Community hub at [thecolony.cc](https://thecolony.cc).
- **[beta]** [AgentCash](https://github.com/Merit-Systems/agentcash-skills) by [Merit-Systems](https://github.com/Merit-Systems) - Skill giving agents access to 300+ premium APIs and a wallet balance to pay for them through x402 or MPP. A fresh Hermes install with only AgentCash is actually powerful — from web scraping to image generation to email sending, all through one skill with free USDC for trying out.
- **[beta]** [x-twitter-scraper](https://github.com/Xquik-dev/x-twitter-scraper) by [Xquik-dev](https://github.com/Xquik-dev) - Typed X (Twitter) access via 43 narrow SKILL.md folders covering reads (search, timelines, mentions, trends, articles, bookmarks, for-you), writes (post, DM, follow, profile updates), bulk extraction (followers, communities, lists, spaces), AI composition (write-tweets, write-threads, optimize, going-viral), giveaways, monitors, and webhooks. No browser automation, no scraping — typed JSON in/out through the Xquik API. Fills the X gap for Hermes social workflows.
- **[production]** [drawio-skill](https://github.com/Agents365-ai/drawio-skill) by [Agents365-ai](https://github.com/Agents365-ai) - Generates draw.io diagrams from natural language and exports to PNG/SVG/PDF. SKILL.md format, works across Claude Code, OpenClaw, Hermes, Codex. Useful when an agent needs to communicate architecture or process visually without a separate design step. 5.8k+ stars.
- **[production]** [open-design](https://github.com/nexu-io/open-design) by [nexu-io](https://github.com/nexu-io) - Local-first, open-source alternative to Anthropic's Claude Design. 31 composable skills (web/mobile/decks/dashboards/documents) over 129 design systems (Linear, Stripe, Vercel, Notion, Apple, …) with image (gpt-image-2), video (Seedance 2.0, HyperFrames), and audio generation. Auto-detects 15 coding-agent CLIs from PATH and integrates with Hermes via ACP/JSON-RPC. BYOK proxy, sandboxed previews, can import Claude Design exports. 78k+ stars.
- **[beta]** [authsome](https://github.com/agentrhq/authsome) by [agentrhq](https://github.com/agentrhq) - Local OAuth2 and API credential broker for agents. Log in once via browser PKCE or device code, credentials live in a local encrypted vault, and a local proxy injects them at request time so raw keys never enter the agent's environment. 45 providers preconfigured (14 OAuth2, 31 API credentials) including GitHub, Google, OpenAI, Linear, Slack, Notion, Resend, and Stripe. Skill installs into Hermes with `hermes skills install agentrhq/authsome/skills/authsome`. MIT.
- **[production]** [outreachmagic](https://github.com/outreachmagic/outreachmagic) by [Outreach Magic](https://github.com/outreachmagic) - GTM pipeline agent that syncs Smartlead, Instantly, HeyReach, PlusVibe, EmailBison, Prosp, and Calendly into a local SQLite database your agent can query.
- **[production]** [abvx-agent-skills](https://github.com/markoblogo/abvx-agent-skills) by [markoblogo](https://github.com/markoblogo) - Auditable cross-platform coding-agent skillpack for smaller diffs, evidence-led debugging, token control, browser verification, and reviewable `SKILL.md` workflows with static security audit.
- **[production]** [dev-gtm-claude-skills](https://github.com/Infrasity-Labs/dev-gtm-claude-skills) by [Infrasity-Labs](https://github.com/Infrasity-Labs) - Cross-platform agent skills for SEO, GEO (Generative Engine Optimization), AI discoverability, and developer marketing.
- **[production]** [remoet](https://github.com/remoet-labs/agent-skills) by [remoet-labs](https://github.com/remoet-labs) - Job-search and career-discovery skill. Searches tech companies by actual tech stack, stars shortlisted companies, pulls jobs from that curated list, and reads/writes the developer profile. Backed by remote MCP with free tier.
- **[beta]** [zooidfund](https://github.com/Ales375/zooidfund-skill) by [Ales375](https://github.com/Ales375) - Lets an agent discover, evaluate, and donate USDC on Base to humanitarian crowdfunding campaigns at [zooid.fund](https://zooid.fund). Public campaign browsing, peer-signal review, and direct wallet-to-creator transfers.
- **[production]** [longbridge](https://github.com/longbridge/skills/tree/main/skills/longbridge) by [Longbridge Securities](https://github.com/longbridge) - Live financial market skill for US, HK, A-share, and Singapore markets. Real-time quotes, fundamentals, options chain, portfolio positions, institutional data, and news/SEC filings. Requires Longbridge account. 125+ companion skills.
- **[production]** [hermes-mine-bean](https://github.com/damo-nu11/minebean-skills/tree/main/hermes-mine-bean) by [MineBean](https://github.com/damo-nu11) - Autonomous $BEAN mining skill for the MineBean 5×5 grid protocol on Base. Supports zero-cost `--no-agent` cron mode for unattended automation.
- **[beta]** [invinoveritas](https://github.com/babyblueviper1/invinoveritas) by [babyblueviper1](https://github.com/babyblueviper1) - Portable agentskills.io skill + MCP recipe for pay-per-call tools over Bitcoin Lightning / USDC (x402). Governance `review` gate before irreversible actions, markets intelligence, sandboxed code execution, and agent-to-agent payments.
- **[beta]** [arelay-skills](https://github.com/mmmikael/arelay-skills) by [mmmikael](https://github.com/mmmikael) - Deliver reports, Markdown, HTML, images, and PDFs via [Agent Relay](https://arelay.app) with optional end-to-end encryption. Works with hosted or self-hosted instances. MIT.
- **[beta]** [tiny.place](https://github.com/tinyhumansai/tiny.place) by [TinyHumans](https://github.com/tinyhumansai) - Agent-to-agent social network shipped as a portable skill: claim an @handle identity, get discovered in an open directory, message peers over Signal-protocol end-to-end encryption, and transact in USDC/SOL via x402. One SKILL.md runs on Hermes, OpenClaw, and any agentskills.io-compatible harness. GPL-3.0.
- **[beta]** [plasma-wiki](https://github.com/plasma-ai/wiki) by [plasma-ai](https://github.com/plasma-ai) - Portable skill and Python CLI for hierarchical Markdown knowledge bases — create, index, search, read, and lint via `wiki map`, `wiki search`, and `wiki read`. Keeps project knowledge in Git-tracked plain Markdown with deterministic index maintenance, no hosted memory service or vector DB required. Apache-2.0.

### Plugins

- **[beta]** [plur](https://github.com/plur-ai/plur) by [plur-ai](https://github.com/plur-ai) - Shared memory layer for AI agents with open engram format (YAML). Useful for persistent learning patterns in Hermes workflows.
- **[experimental]** [hermes-payguard](https://github.com/nativ3ai/hermes-payguard) by [nativ3ai](https://github.com/nativ3ai) - Safe USDC and x402 payment plugin. Lets Hermes send and receive payments with configurable spending limits and approval flows.
- **[beta]** [hermes-web-search-plus](https://github.com/robbyczgw-cla/hermes-web-search-plus) by [robbyczgw-cla](https://github.com/robbyczgw-cla) - Multi-provider web search with intelligent routing across Serper, Tavily, Exa, and more. Replaces the built-in search with better result quality and source diversity.
- **[beta]** [hermes-weather-plugin](https://github.com/FahrenheitResearch/hermes-weather-plugin) by [FahrenheitResearch](https://github.com/FahrenheitResearch) - Professional-grade weather plugin with NWS model imagery, NEXRAD radar, and meteorological calculations.
- **[experimental]** [hermes-wxtrain-plugin](https://github.com/FahrenheitResearch/hermes-wxtrain-plugin) by [FahrenheitResearch](https://github.com/FahrenheitResearch) - ML pipeline plugin for building training datasets from HRRR/GFS/ERA5 weather models. Companion to the weather plugin for building weather ML pipelines.
- **[experimental]** [hermes-plugin-chrome-profiles](https://github.com/anpicasso/hermes-plugin-chrome-profiles) by [anpicasso](https://github.com/anpicasso) - Switch browser tools between Chrome profiles via CDP. Useful for multi-account testing or browsing with different saved sessions.
- **[experimental]** [hermes-cloudflare](https://github.com/raulvidis/hermes-cloudflare) by [raulvidis](https://github.com/raulvidis) - Cloudflare browser rendering plugin. Headless browsing through Cloudflare's infrastructure instead of local browser automation.
- **[beta]** [evey-bridge-plugin](https://github.com/42-evey/evey-bridge-plugin) by [42-evey](https://github.com/42-evey) - Claude Code plugin for bridging with Evey (hermes-agent). Lets Claude Code and Hermes share context and hand off tasks between each other.
- **[beta]** [agent-analytics-hermes-plugin](https://github.com/Agent-Analytics/agent-analytics-hermes-plugin) by [Agent-Analytics](https://github.com/Agent-Analytics) - Native Signals dashboard tab for Hermes with read-only multi-project analytics, explicit timeframe, and theme-aware UI.
- **[beta]** [hermes-curator-evolver](https://github.com/pingchesu/hermes-curator-evolver) by [pingchesu](https://github.com/pingchesu) - Evidence-driven companion to v0.12's built-in Curator. Observes tool/skill/session events into local SQLite, backfills existing `~/.hermes/sessions/*.json` history, generates reports and dry-run proposals, supports optional Qwen embedding + bge reranking for candidate ordering, and runs a guarded daily autorun loop that only appends low-risk evidence-backed notes (with backups and rollback manifests). Inspired by SkillClaw but adapted to Hermes-native plugin hooks with explicit model opt-ins and pinned-skill safety.
- **[beta]** [rtk-hermes](https://github.com/ogallotti/rtk-hermes) by [ogallotti](https://github.com/ogallotti) - Plugin that intercepts shell commands via `pre_tool_call` and rewrites output through [RTK](https://github.com/rtk-ai/rtk), compressing terminal output before it reaches the LLM context window. 60-90% token reduction on shell commands, 96.6% efficiency across 11M+ tokens processed. Zero config — auto-loads on gateway boot. Real benchmarks: `cargo test` 90-99%, `git log --stat` 87%, `ls -la` 78%.
- **[beta]** [eagle-eye](https://github.com/willingning-coder/eagle-eye) by [willingning-coder](https://github.com/willingning-coder) - 5-layer intelligent skill routing engine. Narrows 50+ installed skills to top-5 candidates before each API call via Hard Triggers → FTS5 BM25 → Synonyms → Embeddings → RRF Fusion. Uses `pre_llm_call` hook; confidence gate allows "no match" as a valid result.
- **[beta]** [cronalytics](https://github.com/8bit64k/cronalytics) by [8bit64k](https://github.com/8bit64k) - Cron cost and usage analytics. Hooks `on_session_end`, stores analytics in local SQLite, surfaces via dashboard tab, CLI, and agent skill for cron health diagnostics. Multi-language (en, zh, zh-TW, es).
- **[experimental]** [hermes-drive-index](https://github.com/gregoryhorn/hermes-drive-index) by [gregoryhorn](https://github.com/gregoryhorn) - Private local Google Drive full-text search index. Crawls selected folders into SQLite FTS5 and exposes `drive_index_search`, `drive_index_status`, and `drive_index_update` tools. Apache-2.0.
- **[beta]** [hermes-feishu-zh](https://github.com/OLDBAI213/hermes-feishu-zh) by [OLDBAI213](https://github.com/OLDBAI213) - Community extension for Chinese Feishu display — replaces English UI labels, stabilizes Markdown via `post` format, and optionally adds `lark-cli-toolbox` with 12 Feishu tools. One-click install with backup/rollback.
- **[beta]** [hermes-snow-search](https://github.com/mlinquan/hermes-snow-search) by [mlinquan](https://github.com/mlinquan) - Global memory retrieval layer — cross-session SQLite FTS5 search (~0.1s) across full message history, memory, and facts, with CJK/English auto-routing (trigram vs unicode61 tokenizers) and cross-device queries against a shared state.db. Also on [PyPI](https://pypi.org/project/hermes-snow-search/).
- **[beta]** [hermes-bus-plugin](https://github.com/mlinquan/hermes-bus-plugin) by [mlinquan](https://github.com/mlinquan) - Message bus integration plugin. Auto-starts bus daemon, registers session as endpoint, injects external messages via `pre_llm_call`. Provides `bus_send`, `bus_status`, and `bus_info` tools for cross-process agent coordination.
- **[beta]** [hermes-motif](https://github.com/Saurav0989/hermes-motif) by [Saurav0989](https://github.com/Saurav0989) - Post-tool-call plugin that mines live execution traces for repeated sub-sequences and proposes them as evidence-backed micro-skills. n-gram extraction, arg abstraction, deduplication against existing skills.
- **[beta]** [hermes-eval](https://github.com/Saurav0989/hermes-eval) by [Saurav0989](https://github.com/Saurav0989) - Skill regression testing and trajectory quality scoring. Catch skill drift before it propagates. Exports quality-filtered trajectories in Atropos RL format.
- **[beta]** [hermes-live-discord-agent-plugin](https://github.com/Capslockb/hermes-live-discord-agent-plugin) by [Capslockb](https://github.com/Capslockb) - Full-duplex Discord voice bridge to Gemini Multimodal Live — 40+ function tools, vision, per-user memory, mid-conversation delegation, and transcripts. Pure NumPy codec plumbing with hard-clear barge-in.
- **[beta]** [hermes-dynamic-workflows](https://github.com/lingjiuu/hermes-dynamic-workflows) by [lingjiuu](https://github.com/lingjiuu) - Claude Code-style dynamic workflows for Hermes. Model writes sandboxed workflow scripts orchestrating subagents with `agent`, `parallel`, and `pipeline` — up to 1000 subagents, persisted/resumable runs, live dashboard.
- **[beta]** [custom-dangerous-patterns](https://github.com/scross01/hermes-custom-dangerous-patterns-plugin) by [scross01](https://github.com/scross01) - Add custom terminal command patterns requiring session approval before execution. Extends the standard approve-once/session/always/deny flow with `hermes custom-dangerous-patterns` CLI management.
- **[beta]** [hermes-ops-kit](https://github.com/redoracle/hermes-ops-kit) by [redoracle](https://github.com/redoracle) - Operational and security plugin: credential management, provider health checks, route diagnostics, MCP security auditing, key rotation, and usage/cost observability.
- **[beta]** [agentplane-hermes-plugin](https://github.com/basilisk-labs/agentplane-hermes-plugin) by [Basilisk Labs](https://github.com/basilisk-labs) - External worker-lane plugin letting Hermes Kanban assignees matching `agentplane-*` spawn AgentPlane supervision instead of a Hermes profile.
- **[beta]** [khwarizmi-hermes-plugin](https://github.com/Moshe-ship/khwarizmi-hermes-plugin) by [Moshe-ship](https://github.com/Moshe-ship) - Pre-LLM reliability preflight via `pre_llm_call`/`pre_tool_call`: restores implicit references, fails loud on contradictions, and gates tool calls against a constraint-driven allowlist. Part of the [Mizan](https://github.com/Moshe-ship/mizan) stack.
- **[beta]** [paperclip-hermes-file-access-manager](https://github.com/marospekarik/paperclip-hermes-file-access-manager) by [marospekarik](https://github.com/marospekarik) / Ordillect - Kernel-enforced filesystem sandbox for Hermes profiles via Docker bind mounts (not app-level checks): denied paths are unmounted, read-only mounts refuse writes even as root, with inheritance, sensitive-path masking, and Paperclip UI apply. MIT.
- **[beta]** [hermes-usage-hook](https://github.com/chenwei791129/hermes-usage-hook) by [chenwei791129](https://github.com/chenwei791129) - Appends the provider's own rate-limit windows under every reply (Codex 5h/weekly, MiniMax). Reads Codex OAuth credentials read-only; optional Codex weekly auto-reset is **off by default** (consumes non-refundable reset credits when enabled) with a privacy-minimised JSONL audit. Prefer `hermes plugins install chenwei791129/hermes-usage-hook/plugin` over the remote `uv run` installer. MIT.
- **[beta]** [hermes-yandex-mail](https://github.com/akinfold/hermes-yandex-mail) by [akinfold](https://github.com/akinfold) - Yandex Mail over IMAP (no third-party proxy): list/search/read/flag/move/delete with app-password auth. Read-and-organise only (no SMTP send); `BODY.PEEK` so reads do not mark seen; `YANDEX_MAIL_ACTIONS` / `YANDEX_MAIL_FOLDERS` allowlists drop disallowed tools entirely. High-privilege mailbox access — scope the allowlist tightly. MIT, on PyPI.
- **[beta]** [hermes-yandex-disk](https://github.com/akinfold/hermes-yandex-disk) by [akinfold](https://github.com/akinfold) - Yandex Disk REST API v1 plugin: browse, read, download, write/upload, copy/move, share, and trash. Direct to `cloud-api.yandex.net`; action and path allowlists control what the agent may touch. High-privilege cloud storage — start read-only. MIT, on PyPI.
- **[beta]** [hermes-yandex-calendar](https://github.com/akinfold/hermes-yandex-calendar) by [akinfold](https://github.com/akinfold) - Yandex Calendar over CalDAV: list calendars/events, create/update, RSVP, move, delete. Preserves unmodeled iCalendar properties; `YANDEX_CALENDAR_ACTIONS` / `YANDEX_CALENDAR_CALENDARS` allowlists; untrusted server XML via defusedxml. High-privilege calendar write — prefer read-first. MIT, on PyPI.
- **[beta]** [hermes-yandex-search-api](https://github.com/akinfold/hermes-yandex-search-api) by [akinfold](https://github.com/akinfold) - Yandex Search API plugin: routes Hermes `web_search` to Yandex and adds a citation-backed generative search tool. Requires a paid Yandex Cloud API key + folder id. MIT, on PyPI.
- **[beta]** [hermes-plugin-slash-prompts](https://github.com/buihongduc132/hermes-plugin-slash-prompts) by [buihongduc132](https://github.com/buihongduc132) - Loads existing CLI-agent prompt files (OpenCode, Claude Code, Codex, Gemini CLI) as Hermes slash commands. Auto-discovers six standard prompt directories, reads YAML-frontmatter/TOML/raw formats, and unifies the different argument-interpolation syntaxes (`$ARGUMENTS`, `$1`–`$9`, `{{args}}`) in one handler. MIT.
- **[experimental]** [cron-status-alert](https://github.com/pnascimento9596/cron-status-alert) by [Paulo Nascimento](https://github.com/pnascimento9596) - Discord alert plugin for overdue Hermes cron jobs and failed deliveries, with recovery notifications and a `/cron-status` command. New and unadopted; MIT licensed.
- **[experimental]** [hermes-gate](https://github.com/observer-protocol/hermes-gate) by [Observer Protocol](https://github.com/observer-protocol) - Checks agent spending against signed delegation mandates before wallet actions. The current Hermes binding is bypassable by an agent that avoids the gate, and the repository does not declare a license.
- **[experimental]** [hermes-delegation-gate](https://github.com/kenpritchard/hermes-delegation-gate) by [Ken Pritchard](https://github.com/kenpritchard) - Adds human approval before `delegate_task` can spawn subagents, with a block mode for unattended runs. Requires a recent Hermes plugin-hook implementation; MIT licensed.
- **[experimental]** [Extracto](https://github.com/rclarke87/Extracto) by [Rutger Clarke](https://github.com/rclarke87) - Self-hosted web extraction plugin using local Trafilatura first and Jina Reader as a fallback for JavaScript-heavy pages. No API key is required; early first release.
- **[beta]** [RoBrain](https://github.com/adelinamart/robrain) by [adelinamart](https://github.com/adelinamart) - Self-hosted decision memory plugin that records rejected alternatives and resurfaces their reasons when an agent revisits them. Uses Postgres and can run with a local model; Apache-2.0.
- **[experimental]** [hermes-agent-abacus-ai](https://github.com/ZoniBoy00/hermes-agent-abacus-ai) by [ZoniBoy00](https://github.com/ZoniBoy00) - Image-generation plugin for Abacus.AI models. Requires an Abacus.AI API key; MIT licensed and still at its initial public revision.
- **[experimental]** [agentiker plugin suite](https://github.com/IVRZ-da/agentiker-code-intel) by [agentiker](https://github.com/IVRZ-da) - Three Hermes plugins for AST-aware code intelligence, repository scouting, and plan-following. The linked code-intel plugin is MIT licensed; each plugin installs separately.
- **[experimental]** [hermes-doppler](https://github.com/inLeague/hermes-doppler) by [inLeague](https://github.com/inLeague) - Doppler Secrets Manager plugin with per-profile secret isolation for multi-profile gateway deployments. Root config injects into `os.environ`; per-profile overlays stay scoped to the profile mechanism, with merge/overwrite modes. Fills the gap for teams on Doppler rather than the natively supported Bitwarden/1Password. MIT.
- **[beta]** [ClawRouter-Hermes](https://github.com/BlockRunAI/ClawRouter-Hermes) by [BlockRunAI](https://github.com/BlockRunAI) - Adds [ClawRouter](https://github.com/BlockRunAI/ClawRouter) as a native model provider: 55+ LLMs from 9 providers through one local proxy, paid per-call in USDC via x402 instead of per-provider API keys, with a model picker, routing profiles, and usage stats. Thin Python adapter over the canonical TypeScript proxy; on PyPI. It manages a real wallet (BIP-39, Base + Solana) and recommends a pipe-to-shell installer — review before running and fund only what you'd spend. MIT.
- **[beta]** [hermes-hookdeck](https://github.com/hookdeck/hermes-hookdeck) by [Hookdeck](https://github.com/hookdeck) - Plugin that puts Hookdeck's Event Gateway in front of Hermes for webhook reliability — traffic bursts get queued, events are deduplicated and survive restarts, failed runs get redelivered, in-flight events are recovered at boot/crash. Signature verification for 140+ provider schemes. No public port/URL required. MIT.
- **[beta]** [Hermes Live Voice](https://github.com/bielcarpi/hermes-live-voice) by [bielcarpi](https://github.com/bielcarpi) - Continuous, interruptible voice for new or saved Hermes chats. Keeps conversation responsive while durable Hermes runs execute in background, exposes bounded live progress, reports completion after reconnecting. Apple Silicon can run tested local HF speech-to-speech stack; Gemini Live and OpenAI Realtime also supported. v0.9.2, 733 tests, Docker/packed-install smokes, CodeQL and dependency review.
- **[beta]** [TackMark](https://github.com/freehul/tackmark) by [freehul](https://github.com/freehul) - Visual annotation plugin for Hermes Desktop: load a local page in preview iframe, click elements to drop annotations, send structured feedback (CSS selector + coordinates + note) to AI session — the AI fixes exact element. Cross-origin-safe via fetch + srcdoc injection, smart popover with viewport clamping, URL memory with self-healing fallback. MIT.
- **[experimental]** [agent-heartbeat](https://github.com/Love-AronaPlana/hermes-agent-heartbeat) by [Love-AronaPlana](https://github.com/Love-AronaPlana) - Persistent heartbeat plugin that periodically wakes agent in same gateway session, preserving full conversation context. Configurable interval, `/heartbeat` slash command, active time window with UTC offset, idle auto-pause, `[SILENT]` support, hot-reload config. 17 unit tests. MIT.
- **[production]** [DashClaw](https://github.com/ucsandman/DashClaw) by [ucsandman](https://github.com/ucsandman) - Approval and policy layer for agents: intercepts risky actions before they run and blocks or escalates them by rule. MIT.
- **[beta]** [cronwatch](https://github.com/nicokickcpython/cronwatch) by [nicokickcpython](https://github.com/nicokickcpython) - Cron health hook that alerts on any scheduled job failure, without standing up a second cron to watch the first.
- **[experimental]** [hermes-gondola-provider](https://github.com/Gondola-Market/hermes-gondola-provider) by [Gondola Market](https://github.com/Gondola-Market) - Gondola as a native model provider: a USDC-settled model marketplace wired in through the provider interface.
- **[beta]** [Hermes AI Usage Monitor](https://github.com/masterlf/hermes-ai-usage) by [masterlf](https://github.com/masterlf) - Read-only provider quota and per-profile token telemetry for Hermes Desktop and Web Dashboard. Does not read prompt or response content. Apache-2.0.

### Skill Registries & Discovery

- **[beta]** [hermeshub](https://github.com/amanning3390/hermeshub) by [amanning3390](https://github.com/amanning3390) - Browse, share, and install community skills for Hermes. Community hub for skill discovery, still early but growing.
- **[production]** [skilldock.io](https://github.com/chigwell/skilldock.io) by [chigwell](https://github.com/chigwell) - Registry of reusable AI skills compatible with OpenClaw, Claude Code, and Hermes. Established cross-platform skills marketplace with an active catalog.
- **[production]** [Global Chat](https://global-chat.io) by [pumanitro](https://github.com/pumanitro) - Cross-protocol agent discovery across MCP, A2A, and agents.txt. Searchable directory of 18K+ MCP servers and agents with a free agents.txt validator and MCP server for programmatic access.
- **[beta]** [BundleDex](https://bundledex.net) by [McClawdDigital](https://github.com/McClawdDigital) - Directory of OKF (Open Knowledge Format) knowledge bundles for agents, with MCP tools, `llms.txt`, and Hermes-oriented skills for search and submit ([bundledex-agent-skills](https://github.com/McClawdDigital/bundledex-agent-skills)). MIT skills; directory is hosted.
- **[production]** [CreatorSkills](https://creatorskills.co) by [CreatorSkills](https://github.com/calebvbi) - Curated marketplace of 30+ downloadable AI skills for content creators — YouTube scripting, sponsorship analysis, content repurposing, and audience growth. Uses the open SKILL.md format; skills install into Hermes, Claude Code, ChatGPT, and 20+ compatible platforms.
- **[production]** [TypeUI for Hermes](https://www.typeui.sh/docs/guides/hermes) by [Bergside](https://github.com/bergside/typeui) - Registry of design skills that give Hermes better context when building user interfaces. Component and style guidance sourced from an established design-system vendor. 1.4k+ stars.
- **[beta]** [Hexis](https://github.com/Bevel-Software/Hexis) by [Bevel Software](https://github.com/Bevel-Software) - Git-backed platform for managing shared Agent Skills, tool definitions, and internal context. Resources stay in a Git repository and are made available to MCP clients through a remote OAuth connection with role-based access. Not a public skill marketplace — gives teams a reviewable place for their own SKILL.md folders, tools, and context. Apache-2.0.

<br>

## Memory Providers

> Persistent memory backends for Hermes Agent. Every install picks one — [official docs](https://hermes-agent.nousresearch.com/docs/user-guide/features/memory-providers) cover the config. Managed via `hermes plugins`.

- **[production]** [hindsight](https://github.com/vectorize-io/hindsight) by [Vectorize](https://github.com/vectorize-io) - Long-term memory layer for agents with retain/recall/reflect workflows. Integrates with Hermes via plugin or MCP and supports semantic, graph, and temporal retrieval.
- **[beta]** [LWC](https://github.com/JanYork/llm-wiki-cli) by [JanYork](https://github.com/JanYork) - Agent-driven proactive project-memory CLI. Maintains persistent, source-grounded knowledge across sessions using SQLite-backed Wiki with FTS5 retrieval, atomic changesets, optional document and code graphs, and bounded MCP exploration. Native Hermes integration via canonical `using-lwc` skill, unified read-only `lwc serve --mcp` endpoint, and `pre_llm_call` lifecycle hook. Apache-2.0.
- **[beta]** [Lians](https://github.com/Lians-ai/Lians) by [Lians-ai](https://github.com/Lians-ai) - Open-source memory for AI agents available through MCP. Runs locally with SQLite and no API key. Provides current and point-in-time recall, conflict history, memory lineage, feedback, reconstruction, and verifiable retrieval receipts. Bitemporal facts (what was known and when it was true), explicit correction history, and tamper-evident receipts. Python, TypeScript, Go, Java, C SDKs. Apache-2.0.
- **[beta]** [Open Index](https://github.com/DrDroidLab/open-index) by [DrDroidLab](https://github.com/DrDroidLab) - Structured context layer for domain-specialized agents with typed knowledge graphs, hybrid search, read/write MCP access, and a portable setup skill for Hermes. Unlike conversation-memory backends, models domain knowledge with typed schemas, entities, and relationships. Supports local SQLite and shared OpenSearch deployments. MIT.
- **[beta]** [honcho-self-hosted](https://github.com/elkimek/honcho-self-hosted) by [elkimek](https://github.com/elkimek) - Self-hosted Honcho memory backend setup for Hermes. Useful when you need stronger cross-session memory behavior with local control.
- **[beta]** [yantrikdb-hermes-plugin](https://github.com/yantrikos/yantrikdb-hermes-plugin) by [yantrikos](https://github.com/yantrikos) - Hermes-native memory provider for [YantrikDB](https://github.com/yantrikos/yantrikdb-server). Embedded by default like SQLite (`pip install yantrikdb`, no server or GPU), with an optional HTTP backend for clusters. Self-maintaining: `conflicts()` surfaces contradictions instead of overwriting silently, and every `recall()` result carries a `why_retrieved` reason list. Requires `yantrikdb>=0.10.0`.
- **[beta]** [flowstate-qmd](https://github.com/amanning3390/flowstate-qmd) by [amanning3390](https://github.com/amanning3390) - Anticipatory memory for AI agents with RAG and vector search. Pre-fetches relevant context before queries hit the agent.
- **[beta]** [Mnemosyne](https://github.com/AxDSan/Mnemosyne) by [AxDSan](https://github.com/AxDSan) - Local-first, sub-millisecond memory system built specifically for Hermes. SQLite + sqlite-vec hybrid search (50% vector / 30% FTS5 / 20% importance), BEAM tiered architecture (working / episodic / scratchpad), and a temporal knowledge graph (TripleStore) with time-aware fact invalidation. Native plugin (`hermes memory setup`, `hermes mnemosyne stats`), zero external dependencies, full docs at [docs.mnemosyne.site](https://docs.mnemosyne.site).
- **[production]** [mem0](https://github.com/mem0ai/mem0) by [mem0ai](https://github.com/mem0ai) - Universal memory layer for AI agents. Multi-level memory (user, session, agent) with official Hermes integration.
- **[beta]** [honcho](https://github.com/plastic-labs/honcho) by [plastic-labs](https://github.com/plastic-labs) - Stateful memory library with asynchronous user-modeling reasoning. Builds richer user representations over time.
- **[production]** [supermemory](https://github.com/supermemoryai/supermemory) by [supermemoryai](https://github.com/supermemoryai) - Cloud and self-hosted memory layer. Single API for storing and querying agent memory.
- **[beta]** [hermes-lcm](https://github.com/stephenschoettler/hermes-lcm) by [stephenschoettler](https://github.com/stephenschoettler) - Lossless Context Management for Hermes — keeps session context from degrading in long runs.
- **[beta]** [ClawMem](https://github.com/yoloshii/ClawMem) by [yoloshii](https://github.com/yoloshii) - On-device memory layer for agents. Local-first with no external API dependencies.
- **[beta]** [gbrain](https://github.com/garrytan/gbrain) by [garrytan](https://github.com/garrytan) - Opinionated brain layer for Hermes. Structured personal memory with categorization and retrieval.
- **[beta]** [keepnotes](https://github.com/keepnotes-ai/keep) by [keepnotes-ai](https://github.com/keepnotes-ai) - Reflective memory layer. Stores and resurfaces notes at contextually relevant moments.
- **[beta]** [Brainstack](https://github.com/yepyhun/Brainstack) by [yepyhun](https://github.com/yepyhun) - Memory kernel stack for agents. Layered memory architecture with priority-based recall.
- **[beta]** [autocontext](https://github.com/greyhaven-ai/autocontext) by [greyhaven-ai](https://github.com/greyhaven-ai) - Recursive self-improving context harness. Automatically curates and compresses context to keep it relevant.
- **[beta]** [sourcevault-code-tools](https://github.com/sourcevault-ai/sourcevault-code-tools) by [sourcevault-ai](https://github.com/sourcevault-ai) - Private local code memory: semantic code search, exact file reads, and grounded repo Q&A with citations, all on-machine via a local SourceVault server. MIT.
- **[beta]** [hexus](https://github.com/codenamekt/hexus) by [codenamekt](https://github.com/codenamekt) - Postgres memory plugin and standalone MCP server. Local BERT (MiniLM-L6-v2) embeddings keep the memory hot path free of LLM and remote HTTP calls, with pgvector search, multi-agent storage, per-minion themes, and an async write queue. BSD-3-Clause.
- **[beta]** [hermes-penfield](https://github.com/penfieldlabs/hermes-penfield) by [penfieldlabs](https://github.com/penfieldlabs) - Memory provider for the Penfield knowledge graph — 16 tools, OAuth 2.1 device flow, stdlib-only, and the full MemoryProvider ABC (prefetch, pre-compress, system prompt block). Plugin is MIT, but it fronts the paid Penfield cloud service (no free tier).
- **[experimental]** [Tree Ring Memory](https://github.com/TerminallyLazy/tree-ring-memory-skill) by [TerminallyLazy](https://github.com/TerminallyLazy) - Skill-level memory hygiene for local files: recall, capture, audit, consolidation, and intentional forgetting. Listed here as an approach rather than a drop-in Hermes memory provider.
- **[beta]** [causal-memory](https://github.com/JingxuanC/causal-memory/tree/main/hermes-plugin) by [JingxuanC](https://github.com/JingxuanC) - Memory provider with a causal core: flat facts plus typed decision→outcome edges (caused / enabled / prevented) on a per-profile local SQLite store. Wired hooks for system-prompt causal directory, budgeted prefetch recall, and non-blocking write-behind; the store lives outside the context window, so memory survives Hermes compaction. Rust core, Apache-2.0.

<br>

## Tools & Utilities

> Applications, CLIs, and utilities built on top of or alongside Hermes Agent.

- **[production]** [hermes-workspace](https://github.com/outsourc-e/hermes-workspace) by [outsourc-e](https://github.com/outsourc-e) - Web-based workspace with chat, terminal, memory browser, skills manager, and inspector. The most complete GUI for Hermes. Built during the Nous Hackathon 2026.
- **[beta]** [hermes-desktop](https://github.com/dodo-reach/hermes-desktop) by [dodo-reach](https://github.com/dodo-reach) - Native macOS workspace for Hermes built around a direct, host-first SSH connection model, with a real embedded terminal, session browsing, canonical file editing, skills browsing, and usage metrics without extra gateway or daemon layers.
- **[production]** [mission-control](https://github.com/builderz-labs/mission-control) by [builderz-labs](https://github.com/builderz-labs) - Open-source dashboard for AI agent orchestration. Manage agent fleets, dispatch tasks, track costs, and coordinate multi-agent workflows. Self-hosted, SQLite-powered. 5.7k+ stars.
- **[experimental]** [hermes-neurovision](https://github.com/Tranquil-Flow/hermes-neurovision) by [Tranquil-Flow](https://github.com/Tranquil-Flow) - Terminal neurovisualizer with 42 animated themes. Decorative terminal overlays for agent activity.
- **[beta]** [lintlang](https://github.com/hermes-labs-ai/lintlang) by [Hermes Labs](https://github.com/hermes-labs-ai) - Deterministic local static analysis for authored natural-language agent instructions.
- **[beta]** [nix-hermes-agent](https://github.com/0xrsydn/nix-hermes-agent) by [0xrsydn](https://github.com/0xrsydn) - Nix package and NixOS module for Hermes. Fully reproducible deployments via Nix flakes.
- **[beta]** [openclaw-to-hermes](https://github.com/0xNyk/openclaw-to-hermes) by [0xNyk](https://github.com/0xNyk) - Community migration tool from OpenClaw to Hermes. Built when the native `hermes-migrate` had critical bugs. For Hermes v0.3.0+, prefer the native `hermes claw migrate` command — it now covers the full migration path.
- **[experimental]** [vessel-browser](https://github.com/unmodeled-tyler/vessel-browser) by [unmodeled-tyler](https://github.com/unmodeled-tyler) - AI-native Linux browser with MCP control and autonomous browsing. Full browser built for agent use, not a headless wrapper.
- **[production]** [camofox-browser](https://github.com/jo-inc/camofox-browser) by [jo-inc](https://github.com/jo-inc) - Stealth headless browser server with REST API — bypasses Cloudflare, bot detection, and anti-scraping. Drop-in Puppeteer/Playwright replacement that powers Hermes's own browser automation. 7.7k+ stars, MIT, used in production environments. The right backend if your VPS-hosted Hermes keeps getting blocked.
- **[beta]** [hermes-ui](https://github.com/pyrate-llama/hermes-ui) by [pyrate-llama](https://github.com/pyrate-llama) - Single-file glassmorphic web UI with SSE streaming, tool call visualization, activity panel, image analysis (Gemini Vision), session management, PDF export, skill browser, memory viewer, and mobile support. Python proxy server (stdlib only) on port 3333, no build step required.
- **[beta]** [hermes-webui](https://github.com/sanchomuzax/hermes-webui) by [sanchomuzax](https://github.com/sanchomuzax) - Lightweight process monitoring and configuration dashboard. Simpler alternative to hermes-workspace, focused on ops.
- **[production]** [Hermes Studio](https://github.com/EKKOLearnAI/hermes-studio) by [EKKOLearnAI](https://github.com/EKKOLearnAI) - Vue 3 + TypeScript dashboard for Hermes with Backend-for-Frontend separation. Real-time streaming chat across multiple backends (local/Docker/SSH/Singularity), unified config for 8 messaging channels, token/cost analytics with 30-day trends, cron job scheduling, multi-profile gateway management, multi-agent group chat with @mention routing, and a WebSocket-backed embedded terminal. 9.1k+ stars.
- **[beta]** [evey-setup](https://github.com/42-evey/evey-setup) by [42-evey](https://github.com/42-evey) - One-command setup for the full hermes-agent stack with free models and 29 plugins. Opinionated defaults that cover most use cases.
- **[beta]** [llmtrim](https://github.com/fkiene/llmtrim) by [fkiene](https://github.com/fkiene) - Local proxy in front of the model Hermes calls; compresses resent tool schemas, history, and MCP tool output before each request is sent. Quality-gated, so it never increases your bill. Also an MCP server, CLI, and library (Rust, Python, Ruby, Swift, Kotlin, JS/WASM). MPL-2.0. Same spirit as [rtk-hermes](https://github.com/ogallotti/rtk-hermes), but a transport-layer proxy rather than a native `pre_tool_call` plugin.
- **[production]** [SkillClaw](https://github.com/AMAP-ML/SkillClaw) by [AMAP-ML](https://github.com/AMAP-ML) - Open-source companion that auto-evolves, deduplicates, and improves your skill library from real session data. Adds a post-task evolution loop on top of Hermes's built-in skill creation. Native Hermes integration via `~/.hermes/skills`, safety flows (`skillclaw doctor hermes` / `skillclaw restore hermes`). Works across multiple devices and isolated skill silos. 705 stars, MIT licensed, active through 2026-04-17.
- **[beta]** [agenttrace](https://github.com/luoyuctl/agenttrace) by [luoyuctl](https://github.com/luoyuctl) - Local-first TUI/CLI for post-run agent session audits — cost/token spikes, tool failures, retry loops, latency gaps, health scores, anomalies, session-to-session diffs. No upload, no cloud, MIT. Companion SKILL.md (`agenttrace-session-audit`) packages the audit as an installable skill any host can run.
- **[beta]** [agentburn](https://github.com/Socialpranker/agentburn) by [Socialpranker](https://github.com/Socialpranker) - Local read-only profiler for where an always-on agent burns money. Splits spend by source (cron, gateways, subagents, CLI), isolates the overnight window, walks message logs for re-read loops and retry patterns, and prints paste-ready config fixes without editing anything. `doctor` flags the agent's own accounting gaps and demotes totals to explicit lower bounds. Reads Hermes, OpenClaw and Claude Code; the Hermes adapter is built against the documented schema but hasn't been verified on a live install. Python stdlib only, `uvx agentburn`, MIT.
- **[beta]** [kesha-voice-kit](https://github.com/drakulavich/kesha-voice-kit) by [drakulavich](https://github.com/drakulavich) - Local-first CLI voice backend. STT in 25 languages and TTS via Hermes command providers with no API keys. Plugs into `HERMES_LOCAL_STT_COMMAND` and `tts.providers.<name>.type: command`.
- **[production]** [xiaoma-hermes-zh-cn](https://github.com/fresh-claw/hermes-zh-cn) by [fresh-claw](https://github.com/fresh-claw) - Chinese localization and onboarding package. One-command installer applies zh-CN UI text patches, gateway prompts, and pairing messages for Hermes 0.14.x/0.13.x.
- **[beta]** [Atlas Cloud](https://www.atlascloud.ai) by [Atlas Cloud](https://www.atlascloud.ai) - OpenAI-compatible API gateway for running Hermes workflows against multiple model families — useful for comparing skill behavior across providers without reworking integrations.
- **[beta]** [hermes-bus](https://github.com/mlinquan/hermes-bus) by [mlinquan](https://github.com/mlinquan) - Generic Unix socket message bus transport — 4-byte framing, endpoint registration, heartbeat keep-alive, auto-reconnect. Pairs with hermes-bus-plugin and hermes-notify.
- **[beta]** [hermes-notify](https://github.com/mlinquan/hermes-notify) by [mlinquan](https://github.com/mlinquan) - Config-driven notification router — YAML rule matching by message type, context injection, audio playback, and tmux notification sender.
- **[beta]** [arabic-agent-eval](https://github.com/Moshe-ship/arabic-agent-eval) by [Moshe-ship](https://github.com/Moshe-ship) - Dialect-split Arabic function-calling benchmark (51 items, 5 dialects) with public [leaderboard](https://huggingface.co/spaces/Mosescreates/arabic-agent-eval-leaderboard).
- **[experimental]** [hermes-plugin-guard](https://github.com/mauricemohr88-debug/hermes-plugin-guard) by [mauricemohr88-debug](https://github.com/mauricemohr88-debug) - Local static scanner for Hermes plugins before you enable them — reviews manifests, Python capabilities, dependency declarations, likely committed secrets, and repo hygiene without ever importing or executing target code. Text, JSON, SARIF, or GitHub-annotation reports plus a reusable composite action for CI. A review aid, not a sandbox. MIT, tagged releases.
- **[beta]** [skillcraft](https://github.com/cloudroad-io/skillcraft) by [cloudroad-io](https://github.com/cloudroad-io) - Linter + sync CLI for agent-config files (`SKILL.md`, `CLAUDE.md`, `AGENTS.md`, `.cursor/rules`, `.claude/rules`, copilot-instructions). Pluggable rules, one `AGENTS.md` canonical source with drift checks, SARIF for CI. Vendor-neutral — works with Hermes and any agent that reads these files. Python, `pip install skillcraft`, MIT.
- **[experimental]** [codex-stt-bridge](https://github.com/ai-babai/codex-stt-bridge) by [ai-babai](https://github.com/ai-babai) - STT CLI that reuses a local Codex/ChatGPT OAuth session (file credential store) so Hermes can transcribe voice messages without an OpenAI Platform key or local Whisper. Uses an undocumented Codex Desktop transcription endpoint — experimental and may break; fails closed if auth is missing or too open. MIT.
- **[beta]** [agent-qa](https://github.com/vostride/agent-qa) by [vostride](https://github.com/vostride) - Self-improving QA agent: a test harness with memory, so repeated failures inform the next run instead of restarting cold.
- **[beta]** [ai-usage-monitor](https://github.com/TurkeyGuoba/ai-usage-monitor) by [TurkeyGuoba](https://github.com/TurkeyGuoba) - Local, read-only usage monitor: cache-hit rate, tokens, and cost per provider. Reads only; sends nothing anywhere. MIT.
- **[beta]** [agent-trust-kit](https://github.com/mauricemohr88-debug/agent-trust-kit) by [mauricemohr88-debug](https://github.com/mauricemohr88-debug) - Bounded agent handoffs: explicit file packets and evidence receipts, so what crossed a handoff boundary is auditable after the fact.
- **[beta]** [SandBase CLI](https://github.com/sandbaseai/cli) by [sandbaseai](https://github.com/sandbaseai) - Agent-first CLI and MCP bridge across 2,000+ models. Apache-2.0.

### Deployment

- **[beta]** [hermes-agent-docker](https://github.com/xmbshwll/hermes-agent-docker) by [xmbshwll](https://github.com/xmbshwll) - Minimal Docker sandbox image for Hermes. Pull, run, done.
- **[beta]** [hermes-agent-template](https://github.com/Crustocean/hermes-agent-template) by [Crustocean](https://github.com/Crustocean) - Production-ready Docker image for cloud Hermes deployments on Crustocean. Infrastructure wiring pre-configured.
- **[experimental]** [hermes-autonomous-server](https://github.com/JackTheGit/hermes-autonomous-server) by [JackTheGit](https://github.com/JackTheGit) - Headless Hermes deployment with systemd and cron on Linux servers. Runs unattended.
- **[beta]** [Nora](https://github.com/solomon2773/nora) by [solomon2773](https://github.com/solomon2773) - Self-hosted control plane for Hermes and OpenClaw fleets on Docker or Kubernetes. Includes lifecycle controls, logs, terminal and file access, RBAC, encrypted provider secrets, monitoring, REST, CLI, and MCP interfaces. Apache-2.0.
- **[beta]** [Hermes-OTG](https://github.com/MilkyWay008/Hermes-OTG) by [MilkyWay008](https://github.com/MilkyWay008) - Hermes on a USB stick — a rescue companion for recovering a broken host install without rebuilding the machine.

<br>

## Integrations & Bridges

> Connect Hermes to other platforms, devices, and services.

- **[beta]** [hermes-android](https://github.com/raulvidis/hermes-android) by [raulvidis](https://github.com/raulvidis) - Android device bridge with a full Python toolset. Lets Hermes interact with and control Android devices.
- **[beta]** [hermes-miniverse](https://github.com/teknium1/hermes-miniverse) by [teknium1](https://github.com/teknium1) - Bridge to Miniverse pixel worlds. By a Nous Research co-founder.
- **[production]** [screenpipe](https://github.com/screenpipe/screenpipe) by [screenpipe](https://github.com/screenpipe) - Local-first screen and audio capture that gives Hermes long-term memory of what you've seen, said, and heard. Connects over MCP (`npx -y screenpipe-mcp`, stdio or HTTP) with tools for search, activity summaries, and meeting detection. Fully on-device.
- **[beta]** [1claw-hermes](https://github.com/1clawAI/1claw-hermes) by [1clawAI](https://github.com/1clawAI) - TypeScript integration bringing [1Claw](https://1claw.xyz) to Hermes — MCP-based secret fetching from an HSM-backed vault, a [Shroud](https://docs.1claw.xyz/docs/guides/shroud) TEE LLM-proxy sidecar that redacts secrets/PII and blocks prompt injection before prompts reach the model provider, per-subagent identities, and the Intents API for keyless on-chain signing. Hermes agents get just-in-time, scoped, revocable credentials without keys ever touching the agent context.
- **[beta]** [reina](https://github.com/Crustocean/reina) by [Crustocean](https://github.com/Crustocean) - Autonomous AI agent for the Crustocean platform. Deep integration of Hermes into Crustocean's product.
- **[experimental]** [hermes-blockchain-oracle](https://github.com/gizdusum/hermes-blockchain-oracle) by [gizdusum](https://github.com/gizdusum) - Solana blockchain intelligence MCP server. Provides on-chain analytics and wallet data to Hermes via MCP.
- **[experimental]** [hermes-council](https://github.com/Ridwannurudeen/hermes-council) by [Ridwannurudeen](https://github.com/Ridwannurudeen) - Adversarial multi-perspective council MCP server. Multiple AI viewpoints debate before the agent commits to a decision.
- **[production]** [Not Human Search](https://github.com/unitedideas/nothumansearch-mcp) by [unitedideas](https://github.com/unitedideas) - MCP server for discovering other MCP servers. Indexes 8,600+ agent-friendly sites with agentic scoring, category filters, and live JSON-RPC verification. Wire it into Hermes via MCP to let the agent find and evaluate new tools to integrate on its own. Live at [nothumansearch.ai](https://nothumansearch.ai).
- **[experimental]** [NemoHermes](https://github.com/Hmbown/NemoHermes) by [Hmbown](https://github.com/Hmbown) - NVIDIA capability registry and Spark-aware routing layer. Routes compute-heavy tasks to available GPU infrastructure.
- **[beta]** [microsoft-workspace-skill](https://github.com/Andrew-Girgis/microsoft-workspace-skill) by [Andrew-Girgis](https://github.com/Andrew-Girgis) - Full Outlook/Hotmail/Microsoft 365 integration via Microsoft Graph API. Email, calendar, contacts, user profile, and free/busy scheduling. OAuth2 with auto-refresh. Includes preview-before-send pattern that prevents shell `$` variable mangling — a real pain point when agents compose emails with dollar amounts.
- **[beta]** [agent-android](https://github.com/aivanelabs/ai-rpa/tree/main/skills/agent-android) by [AIVane Labs](https://github.com/aivanelabs) - LAN-first Android control for Hermes over WiFi — no USB, ADB, or root required once the AIVane service is running. Supports health checks, app listing/launching, UI tree inspection, taps, text input, swipes, navigation, screenshots, and inspect→act→smoke flows. Explicit safety boundaries: only connects to user-provided device URLs.
- **[beta]** [clawsocial-hermes-plugin](https://github.com/mrpeter2025/clawsocial-hermes-plugin) by [mrpeter2025](https://github.com/mrpeter2025) - Social discovery network plugin — helps users find and connect with people sharing their interests through their Hermes agent. Features semantic interest matching, real-time WebSocket messaging, shareable profile cards, local and web inbox, and 4 notification modes. All actions require explicit user request. Bilingual (English + Chinese), compatible with OpenClaw version.
- **[beta]** [mistral-mcp](https://github.com/Swih/mistral-mcp) by [Swih](https://github.com/Swih) - MCP server (stdio + Streamable HTTP) wrapping the full Mistral AI surface — chat, embeddings, vision, OCR, Voxtral audio (transcribe/speak), Codestral FIM, agents, moderation, classification, files, batch. 22 tools, 2 live resources, listed on the Official MCP Registry. Lets a Hermes user keep their primary reasoning model and route OCR / audio / FIM / classification to Mistral's specialized endpoints (free Experiment tier offers 1B tokens/month).
- **[beta]** [Hermes Console](https://github.com/dannyshmueli/obsidian-hermes-console) by [dannyshmueli](https://github.com/dannyshmueli) - Obsidian integration for Hermes Agent. Runs Hermes in a tabbed terminal inside Obsidian and bridges selected-note/cursor context through a local companion plugin, with background status alerts when agent runs finish.
- **[production]** [onequery-cli](https://github.com/wordbricks/skills/tree/main/skills/onequery-cli) by [Wordbricks](https://github.com/wordbricks) - Governed read-only SQL access for agents. Routes through centralized credentials, source capability checks, query validation, row limits, and audit logs instead of direct database credentials. Apache-2.0.
- **[beta]** [agentchat-hermes](https://github.com/agentchatme/agentchat-hermes) by [agentchatme](https://github.com/agentchatme) - Connects Hermes to [AgentChat](https://agentchat.me) peer-to-peer agent messaging. WebSocket daemon with leader-lock singleton, 38 typed tools, and SOUL.md identity anchoring. Silence is a first-class outcome.
- **[beta]** [AgentChat Universal Skill](https://www.agentchat.me/hermes-skill.md) by [agentchatme](https://github.com/agentchatme) - Self-contained Markdown skill for autonomous AgentChat onboarding via `curl` and Hermes's `cronjob` tool — no human intervention needed.
- **[beta]** [wasl](https://github.com/Moshe-ship/wasl) by [Moshe-ship](https://github.com/Moshe-ship) - Arabic MCP server — 30 tools (prayer times, Quran, Hijri dates, Arabic NLP). `pip install wasl-mcp`.
- **[experimental]** [agy-cli bridge](https://github.com/ypnpt6ysmw-bit/agy-cli) by [ypnpt6ysmw-bit](https://github.com/ypnpt6ysmw-bit) - Integrates Google Antigravity CLI and Antigravity Pro subscription credentials with Hermes via macOS Keychain OAuth — no AI Studio API keys needed.
- **[production]** [Spraay x402 Gateway](https://gateway.spraay.app) - Batch-pay recipients in a single on-chain transaction across 13+ chains. 151 paid primitives via x402 micropayment protocol. Available as a Hermes skill or [MCP server](https://smithery.ai/servers/Plagtech/Spraay-x402-mcp).
- **[production]** [MeiGen-AI-Design-MCP](https://github.com/jau123/MeiGen-AI-Design-MCP) by [jau123](https://github.com/jau123) - Stdio MCP server for AI image + video generation across 9 leading models (GPT Image 2, Nanobanana 2, Seedream 5.0, Midjourney V8.1, Flux 2 Klein, Seedance 2.0, Happyhorse 1.0, Veo 3.1) plus local ComfyUI. Three backend modes: MeiGen cloud, any OpenAI-compatible API (BYOK), or fully offline ComfyUI. README ships a tested Hermes `mcp_servers` YAML with the timeout overrides needed for video gen workflows. SSRF-hardened, R2 uploads auto-expire after 24h. 1.5k+ stars.
- **[beta]** [hermes-tag](https://github.com/DanielLi202/hermes-tag) by [DanielLi202](https://github.com/DanielLi202) - Context-selection layer for Feishu/Lark and Slack groups: @-mention the agent and it replies in-thread from bounded per-chat memory plus selected evidence — replies only when mentioned, no full-history RAG, no ambient auto-answer. Admin audit and lifecycle controls with an `enabled_chats` allowlist. MIT, bilingual docs with real demo recordings.
- **[beta]** [consensus-mcp-hermes](https://github.com/ahmdngi/consensus-mcp-hermes) by [ahmdngi](https://github.com/ahmdngi) - Setup guide connecting 200M+ peer-reviewed research papers to Hermes via the [Consensus](https://consensus.app) MCP server — OAuth walkthrough for headless environments, mcp-remote bridge config, and the full search tool parameter reference.
- **[beta]** [Publora MCP Server](https://github.com/publora/mcp-server) by [Publora](https://github.com/publora) - Official remote MCP server for scheduling and publishing social posts to 10+ networks (LinkedIn, X, Instagram, Threads, TikTok, YouTube, Bluesky, Mastodon, and more) in plain language. Hosted at `mcp.publora.com` — `hermes mcp add publora --url https://mcp.publora.com` plus a Publora API key (paid service). Closes the gap between drafting social content and actually posting it. MIT.
- **[beta]** [Agent37 Gateway](https://github.com/agent37-platform/gateway) by [Agent37](https://github.com/agent37-platform) - Responses-style HTTP/SSE API in front of a local Hermes worker (JSONL over stdio) or an OpenClaw backend — one stable request shape and reconnectable stream replay whatever agent is behind it, plus an OpenAI-compatible `/v1/models`. Ships a Bruno collection for poking it without writing code. MIT.
- **[beta]** [hermes-connector](https://github.com/CorsenAI/hermes-connector) by [CorsenAI](https://github.com/CorsenAI) - Chrome extension giving Hermes exact sessions and user-selected tabs, local-first, instead of a blanket browser grant.
- **[beta]** [hermes-proxy](https://github.com/TurkeyGuoba/hermes-proxy) by [TurkeyGuoba](https://github.com/TurkeyGuoba) - Independent mihomo proxy management for Hermes, kept out of the agent's own network path. MIT.

<br>

## Detection & Media Forensics

> Skills for verifying whether incoming media is real or AI-generated — essential for agents that ingest user-submitted audio, images, video, or text.

- **[beta]** [resemble-ai/detect-skill](https://github.com/resemble-ai/detect-skill) by [resemble-ai](https://github.com/resemble-ai) - Deepfake detection and media safety for agents. Detects AI-generated audio, images, video, and text; traces audio source (ElevenLabs, Resemble, etc.); applies invisible watermarks for provenance tracking; verifies speaker identity (Beta). Powered by [Resemble AI](https://resemble.ai). Core principle: never declare media real or fake without a completed detection result.

<br>

## Multi-Agent & Swarms

> Frameworks and tools for running multiple Hermes agents, or Hermes alongside other agents.

- **[experimental]** [Ankh.md](https://github.com/Abruptive/Ankh.md) by [Abruptive](https://github.com/Abruptive) - TAW Agent x Hermes multi-agent swarm framework. Coordinates multiple agents with shared goals and distributed task execution.
- **[experimental]** [gladiator](https://github.com/runtimenoteslabs/gladiator) by [runtimenoteslabs](https://github.com/runtimenoteslabs) - Two autonomous AI companies compete for GitHub stars. Hackathon project exploring autonomous agent competition dynamics.
- **[beta]** [bigiron](https://github.com/supermodeltools/bigiron) by [supermodeltools](https://github.com/supermodeltools) - AI-native SDLC with Hermes and Supermodel code graph. Full software development lifecycle driven by coordinated agents.
- **[beta]** [opencode-hermes-multiagent](https://github.com/1ilkhamov/opencode-hermes-multiagent) by [1ilkhamov](https://github.com/1ilkhamov) - 17 specialized agents for OpenCode AI. Each agent has a defined role and they communicate through structured interfaces.
- **[beta]** [MisakaNet](https://github.com/Ikalus1988/MisakaNet) by [Ikalus1988](https://github.com/Ikalus1988) - Git-based distributed swarm memory. When one agent solves a problem, every node learns via shared markdown lessons synced through GitHub Issues. 104+ lessons, 21+ registered nodes. Zero infrastructure beyond GitHub.
- **[experimental]** [hermes-conductor](https://github.com/forcewake/hermes-conductor) by [forcewake](https://github.com/forcewake) - Kanban-orchestrated multi-harness coding swarm for Hermes. Orchestrator routes and verifies; workers complete a card only with auditable evidence. MIT.

<br>

## Domain Applications

> Purpose-built applications using Hermes for specific domains.

- **[experimental]** [hermes-embodied](https://github.com/bryercowan/hermes-embodied) by [bryercowan](https://github.com/bryercowan) - Self-improving robotics via VLA model fine-tuning. Applies the Hermes learning loop to physical robot control. Nous Hackathon project.
- **[beta]** [hermescraft](https://github.com/bigph00t/hermescraft) by [bigph00t](https://github.com/bigph00t) - Embodied AI companion for Minecraft with persistent memory. Tracks inventory, learns building preferences, and retains context across sessions.
- **[experimental]** [Hermes-mars-rover](https://github.com/Snehal707/Hermes-mars-rover) by [Snehal707](https://github.com/Snehal707) - Mars rover simulator with ROS2 and Gazebo. Uses Hermes's skill creation loop to improve navigation over time.
- **[beta]** [anihermes](https://github.com/rodmarkun/anihermes) by [rodmarkun](https://github.com/rodmarkun) - Local anime server and tracker with natural language interface. Browse, track, and get recommendations via conversation.
- **[beta]** [job-scout-agent](https://github.com/Christabel337/job-scout-agent) by [Christabel337](https://github.com/Christabel337) - Autonomous job hunting agent. Searches listings, tracks applications, and manages the job search pipeline.
- **[beta]** [hermes-ai-infrastructure-monitoring-toolkit](https://github.com/JackTheGit/hermes-ai-infrastructure-monitoring-toolkit) by [JackTheGit](https://github.com/JackTheGit) - Infrastructure monitoring, cost forecasting, and alerting via Telegram. Uses cron scheduling for continuous checks.
- **[experimental]** [hermes-genesis](https://github.com/Ridwannurudeen/hermes-genesis) by [Ridwannurudeen](https://github.com/Ridwannurudeen) - Autonomous living world engine with procedural generation. Creates and maintains virtual worlds that grow in complexity over time.
- **[experimental]** [hermes-legal](https://github.com/Lethe044/hermes-legal) by [Lethe044](https://github.com/Lethe044) - Contract risk analysis with English and Turkish support. Identifies risky clauses and summarizes legal obligations.
- **[beta]** [hermes-startup-architect](https://github.com/dlkakbs/hermes-startup-architect) by [dlkakbs](https://github.com/dlkakbs) - Generates investor-ready kits from startup ideas — market analysis, pitch deck, and financial projections.
- **[beta]** [mercury](https://github.com/hxsteric/mercury) by [hxsteric](https://github.com/hxsteric) - Multi-chain blockchain cash flow analyzer with WebGL dashboard. On-chain forensics and flow visualization.
- **[beta]** [mycodo-hermes-skill](https://github.com/setasoma/mycodo-hermes-skill) by [setasoma](https://github.com/setasoma) - Phase-aware IoT decision engine for autonomous mushroom cultivation on Raspberry Pi. Reads sensors via Mycodo/InfluxDB, detects growth phases, and fires relay commands with safety guards. Tested through a complete Lion's Mane fruiting cycle.
- **[production]** [snapmaker-u1-toolkit](https://github.com/bbolinger/snapmaker-u1-toolkit) by [bbolinger](https://github.com/bbolinger) - Safety-staged headless slicing for the Snapmaker U1 multi-tool 3D printer over Moonraker/Klipper LAN. 10-step staged operator flow with camera-gated print starts — the gate caught a wrong-extruder G-code before any heat command in live testing. Ships a bundled Hermes skill installable via `hermes skills install bbolinger/snapmaker-u1-toolkit/skills/3d-printer-slicing-automation`. MIT.
- **[experimental]** [Currents News API Skills](https://github.com/currentslab/news-api-skills) by [Currents](https://github.com/currentslab) - Installable news search and reading skills with server-side credentials, parameter validation, caching, and rate-limit guidance. Requires a Currents API key; MIT licensed.
- **[beta]** [Internet Court](https://github.com/internet-court/internet-court-skill) by [Internet Court](https://github.com/internet-court) - MIT-licensed portable skill for delegated permissions, x402 payments, escrow, revocation, and dispute workflows in agent-to-agent commerce.
- **[beta]** [openInvest](https://github.com/longsizhuo/openInvest) by [longsizhuo](https://github.com/longsizhuo) - Self-hosted investment research application that runs an LLM committee and exposes agentskills.io and MCP interfaces. MIT licensed; research output is not financial advice.
- **[beta]** [erpclaw](https://github.com/avansaber/erpclaw) by [avansaber](https://github.com/avansaber) - Self-hosted ERP core with accounting, inventory, sales, purchasing, HR, payroll, and an agent action layer. GPL-3.0 and compatible with Hermes through its skill interface.

<br>

## Forks & Derivatives

> Notable forks and derivative projects that take Hermes in new directions.

- **[beta]** [hermes-agent-camel](https://github.com/nativ3ai/hermes-agent-camel) by [nativ3ai](https://github.com/nativ3ai) - Hermes with integrated CaMeL trust boundaries. Adds formal trust verification to the agent loop for safety-critical deployments.
- **[experimental]** [orahermes-agent](https://github.com/jasperan/orahermes-agent) by [jasperan](https://github.com/jasperan) - Oracle AI Agent Harness — OCI GenAI and Oracle 26ai integration. Enterprise on-ramp for Oracle environments.
- **[experimental]** [Hermes Alpha](https://github.com/kaminocorp/hermes-alpha) by [Kamino](https://github.com/kaminocorp) - Cloud-deployed security-research experiment built from stock Hermes plus a `SOUL.md`. An Overseer agent on Fly.io creates disposable Hunter agents for bug-bounty work and records lessons in Elephantasm. The project calls itself an experiment in progress; its last code push was March 16, 2026, and it has no releases.
- **[experimental]** [hermes-skill-distillation](https://github.com/beardthelion/hermes-skill-distillation) by [beardthelion](https://github.com/beardthelion) - Generates agentic training trajectories from real-world tasks. Hackathon project for producing fine-tuning data at scale.

<br>

## Guides & Documentation

> Tutorials, documentation, and learning resources.

- **[beta]** [hermes-agent-docs](https://github.com/mudrii/hermes-agent-docs) by [mudrii](https://github.com/mudrii) - Comprehensive community documentation for Hermes Agent. Covers v0.2.0 in detail, useful supplement to the official docs for deployment patterns.
- **[production]** [hermes-wsl-ubuntu](https://github.com/metantonio/hermes-wsl-ubuntu) by [metantonio](https://github.com/metantonio) - Step-by-step WSL2 Ubuntu setup instructions for running Hermes on Windows.
- **[beta]** [HermesWiki](https://github.com/martymcenroe/HermesWiki) by [martymcenroe](https://github.com/martymcenroe) - Community-maintained wiki with practical patterns and deployment advice for building autonomous agents with Hermes.
- **[experimental]** [hermes-always-on](https://github.com/JimmyHuang2002/hermes-always-on) by [JimmyHuang2002](https://github.com/JimmyHuang2002) - Vendor-neutral guide to running Hermes 24/7 on dedicated hardware (Raspberry Pi, mini PC, any always-on Linux box): systemd supervision, surviving power loss, encrypted scheduled backups, restore drills, health checks, and security basics. Maintained by the MangoTart team but requires nothing from them. Pairs with [hermes-backup-recovery](https://github.com/JimmyHuang2002/hermes-backup-recovery).

---

## Operational Playbooks

> Practical workflow patterns that repeatedly help Hermes teams in production.

- **Nightly self-evolution + guardrail evaluation** — Run [hermes-agent-self-evolution](https://github.com/NousResearch/hermes-agent-self-evolution) on a schedule, then run a second verification cron to score quality and block optimization-loop gaming.
- **Memory pressure handling with Honcho/Hindsight** — If you are repeating context or losing long-term recall, review [Honcho Memory docs](https://hermes-agent.nousresearch.com/docs/user-guide/features/honcho), and evaluate [hindsight](https://github.com/vectorize-io/hindsight) or self-hosted memory backends.
- **Tune session timeout/expiry early** — Use [configuration docs](https://hermes-agent.nousresearch.com/docs/user-guide/configuration/) to adjust session retention for slower-moving threads so context is kept when needed.
- **OpenClaw side-by-side migration** — Keep both systems running during migration using [openclaw-to-hermes](https://github.com/0xNyk/openclaw-to-hermes) and native Hermes migration paths, then cut over once cron and routing behavior match.
- **Curate USER.md and MEMORY.md intentionally** — Treat profile memory as high-signal infrastructure. Keep entries concise, durable, and preference-focused instead of dumping raw notes.

---

## Level-Up Blueprints

> Opinionated bundles for teams that want to get more out of Hermes quickly without assembling the stack from scratch.

- **Memory stack that actually compounds** — Start with built-in Hermes memory, then add [honcho-self-hosted](https://github.com/elkimek/honcho-self-hosted) when you want stronger cross-session user modeling, [hindsight](https://github.com/vectorize-io/hindsight) when you need retain/recall/reflect workflows across large histories, and [plur](https://github.com/plur-ai/plur) when you want portable shared memory artifacts in an open engram format. If you also want proactive recall, pair it with [flowstate-qmd](https://github.com/amanning3390/flowstate-qmd).
- **Self-improvement without self-delusion** — Pair [hermes-agent-self-evolution](https://github.com/NousResearch/hermes-agent-self-evolution) with scheduled regression checks, [lintlang](https://github.com/roli-lpci/lintlang) for prompt/config linting, and a second evaluation pass that blocks bad prompt mutations. The trick is not “evolve faster”; it’s “evolve without quietly getting weird.”
- **Operator cockpit for real work** — Use [hermes-workspace](https://github.com/outsourc-e/hermes-workspace) for the richest daily UI, [mission-control](https://github.com/builderz-labs/mission-control) when you need multi-agent fleet visibility and cost tracking, and [hermes-webui](https://github.com/sanchomuzax/hermes-webui) if you want a lighter ops surface.
- **Multi-agent execution layer** — Combine Hermes core delegation with zouroboros-swarm-executors for local Claude Code/Hermes handoff, and [opencode-hermes-multiagent](https://github.com/1ilkhamov/opencode-hermes-multiagent) or [bigiron](https://github.com/supermodeltools/bigiron) when you need specialized agent roles.
- **Migration + deployment hardening** — If you are moving from OpenClaw, keep [openclaw-to-hermes](https://github.com/0xNyk/openclaw-to-hermes) in the toolkit even if you prefer the native migration path. For repeatable deploys, look at [nix-hermes-agent](https://github.com/0xrsydn/nix-hermes-agent), [hermes-agent-docker](https://github.com/xmbshwll/hermes-agent-docker), and [evey-setup](https://github.com/42-evey/evey-setup) depending on how opinionated you want the stack to be.
- **Paperclip-managed autonomous ops** — For teams that want Hermes operating inside a governed company workflow, combine [hermes-paperclip-adapter](https://github.com/NousResearch/hermes-paperclip-adapter) with Hermes cron jobs and one of the operator dashboards above. That gives you task governance, approvals, and actual operational continuity instead of a clever demo that forgets what it was doing.

---

## Contributing

[Recommend a new resource here!](https://github.com/0xNyk/awesome-hermes-agent/issues/new)

Before submitting, please ensure:

1. The resource is directly related to the Hermes Agent ecosystem or the [agentskills.io](https://agentskills.io) standard
2. The resource has a clear README and is reasonably maintained
3. You've checked the list to avoid duplicates

For suggestions about the repository itself, please [open an issue](https://github.com/0xNyk/awesome-hermes-agent/issues/new).

Please read [CONTRIBUTING.md](CONTRIBUTING.md) before submitting.


---

<div align="center">

**Need agent infrastructure, trading systems, or Solana applications built for your team?**

[Builderz](https://builderz.dev) ships production AI systems — 32+ products across 15 countries.

[Get in touch](https://builderz.dev) | [Sponsor OSS maintenance](https://github.com/sponsors/0xNyk) | [Nyk](https://nyk.dev) | [@nykdotdev](https://x.com/nykdotdev)

</div>

## License

[![CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

This list is licensed under [Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/). You are free to share and adapt this material for any purpose, provided you give appropriate attribution.

All resources included in this list have their own license terms.

---

## From this repo to a working agent OS

Quiet commercial paths from [nyk.dev](https://www.nyk.dev) — same operator, fixed scope:

- Free checklist: https://www.nyk.dev/resources/agent-os-checklist?utm_source=github&utm_medium=readme&utm_campaign=oss_proof&utm_content=awesome-hermes-agent
- Self-serve Production Agent OS Kit (€149 founding): https://www.nyk.dev/go/agent-os-kit?utm_source=github&utm_medium=readme&utm_campaign=oss_proof&utm_content=awesome-hermes-agent
- Hands-on packages: https://www.nyk.dev/consulting?utm_source=github&utm_medium=readme&utm_campaign=oss_proof&utm_content=awesome-hermes-agent#agent-os
