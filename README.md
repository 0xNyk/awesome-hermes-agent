<p align="center">
  <picture>
    <img src="https://raw.githubusercontent.com/NousResearch/hermes-agent/main/assets/banner.png" alt="Awesome Hermes Agent" width="600">
  </picture>
</p>

# Awesome Hermes Agent

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A curated list of skills, tools, integrations, and resources for enhancing your [Hermes Agent](https://github.com/NousResearch/hermes-agent) workflow — the self-improving AI agent built by [Nous Research](https://nousresearch.com).

Hermes Agent is the only agent with a built-in learning loop — it creates skills from experience, improves them during use, and as of v0.12.0 maintains its own skill library through an autonomous Curator that grades, consolidates, and prunes on a 7-day cycle. It searches its own past conversations and builds a deepening model of who you are across sessions. Run it on a $5 VPS, a GPU cluster, or serverless infrastructure (seven terminal backends including Vercel Sandbox, Daytona, and Modal). Talk to it from any of 18 built-in messaging platforms — Telegram, Discord, Slack, WhatsApp, Signal, Feishu/Lark, WeCom, QQBot, Yuanbao, and more — plus Microsoft Teams via plugin.

This list tracks the growing ecosystem around it.

> Ecosystem status (last reviewed: 2026-06-24)
> - Hermes Agent: [v0.17.0 (v2026.6.19)](https://github.com/NousResearch/hermes-agent/releases/tag/v2026.6.19)
> - Core repo: [NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent) (200k+ stars)
> - Latest release notes: [Hermes releases](https://github.com/NousResearch/hermes-agent/releases)

---

## Where Do I Start?

New to Hermes? Don't try to install everything at once. Here's the three-step path from zero to productive:

1. **Get running** — Follow the [Official Docs quickstart](https://hermes-agent.nousresearch.com/docs/). It covers installation, CLI, configuration, and your first conversation.
2. **Add your first skills** — Install [wondelai/skills](https://github.com/wondelai/skills) (380+ stars, actively maintained) — a cross-platform skills library that works with Hermes and other agents. Or try [litprog-skill](https://github.com/tlehman/litprog-skill) (75+ stars) for literate programming across Claude Code, OpenCode, and Hermes.
3. **Get a GUI** — Set up [hermes-workspace](https://github.com/outsourc-e/hermes-workspace) (500+ stars) for a Hermes-native workspace with chat, terminal, and skills manager. Or use [mission-control](https://github.com/builderz-labs/mission-control) (3.7k+ stars) for a broader agent orchestration dashboard with fleet management, task dispatch, and cost tracking.

Once you're comfortable, explore the full list below. Every resource is tagged with a maturity level so you know what you're getting into:

| Tag | What it means |
|-----|---------------|
| **production** | Stable, documented, actively maintained — safe to build on |
| **beta** | Works but still evolving — expect some rough edges |
| **experimental** | Proof of concept or early-stage — learn from it, don't depend on it |

---

## Contents

- [Where Do I Start?](#where-do-i-start)
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

- [Hermes Agent](https://github.com/NousResearch/hermes-agent) by [Nous Research](https://nousresearch.com) - The core project. Self-improving and self-maintaining AI agent with a closed learning loop, the autonomous `hermes curator` that grades and consolidates the skill library on a cron cycle (v0.12+), 18-platform messaging gateway (Telegram, Discord, Slack, WhatsApp, Signal, Feishu/Lark, WeCom, QQBot, Yuanbao, …) plus Microsoft Teams via plugin, seven terminal backends (local, Docker, SSH, Singularity, Modal, Daytona, Vercel Sandbox), cron scheduling, MCP integration, profiles (multi-instance), pluggable transports (Anthropic, ChatCompletions, Responses API, Bedrock), and fallback providers. 200k+ stars. Includes automatic migration from OpenClaw.
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
- **[beta]** [acca-tracker](https://github.com/svenmedina07-ship-it/skills/tree/main/acca-tracker) by [Banozz](https://github.com/svenmedina07-ship-it) - Track multi-sport accumulator betting slips (football, basketball, tennis) via live score monitoring. Auto-detects sport per leg, 30+ bet types, scripts/scores.sh helper with TheSportsDB + ESPN fallback (NBA, WNBA, NCAA). 15-minute cron reports with per-leg status and acca health.
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
- **[beta]** [solana-rug](https://github.com/rugpullnet/solana-rug) by [rugpullnet](https://github.com/rugpullnet) - On-chain rug-pull detection for Solana tokens and wallets. 13-factor safety analysis using public Solana RPCs and DexScreener. Works as a Hermes skill or standalone CLI. No API keys required.
- **[beta]** [pingpong](https://github.com/0xAaronx0/pingpong) by [0xAaronx0](https://github.com/0xAaronx0) - Spontaneous local leisure meetups: agent posts a pseudonymous, coarse-geo offer to a shared board; nearby agents match locally and negotiate place/time with double-opt-in before contact.
- **[beta]** [hermes-skills](https://github.com/RobinBeraud/hermes-skills) by [RobinBeraud](https://github.com/RobinBeraud) - Growing skills library covering finance (FMP stock/crypto data), web (Firecrawl scrape/search), WhatsApp (WBizTool contacts), and marketing/SEO. Each skill follows standard SKILL.md format.
- **[beta]** [hermes-skills (liuyunnb666)](https://github.com/liuyunnb666/hermes-skills) by [liuyunnb666](https://github.com/liuyunnb666) - Seven curated skills for Hermes: debugging, parallel dev, TDD, and UI workflows.
- **[production]** [hermes-skills (winterliu6)](https://github.com/winterliu6/hermes-skills) by [winterliu6](https://github.com/winterliu6) - Chinese-focused skills pack: **content-studio** (小红书/抖音/公众号), **security-newsletter** (weekly cybersecurity awareness emails), and **tech-ops-bot** (企业微信/飞书 IT ops with fault classification and web dashboard). Production use at Yaolai Cinema IT.
- **[beta]** [hurmoz](https://github.com/Moshe-ship/hurmoz) by [Moshe-ship](https://github.com/Moshe-ship) - Arabic-first skills pack — 63 skills across Islamic tools (prayer times, zakat, Quran), dialect-aware NLP, content, and travel. Install: `hermes skills tap add Moshe-ship/hurmoz`.
- **[experimental]** [humanizer-ru](https://github.com/ilyautov/humanizer-ru) by [ilyautov](https://github.com/ilyautov) - Removes AI-writing tells from Russian text (bureaucratese, calques, ChatGPT/Claude fingerprints). 52 patterns, deterministic offline scanner. SKILL.md-compatible. MIT.
- **[beta]** [skill-packs](https://github.com/shunfeng8421/skill-packs) by [shunfeng8421](https://github.com/shunfeng8421) - Premium deployable skill packs for crypto monitoring — cross-exchange arb scanner, DeFi security scanner, and cross-chain tracker. Self-adaptive thresholds, zero paid API dependencies, runs on a $5 VPS.

### agentskills.io Ecosystem

> Skills built on the [agentskills.io](https://agentskills.io) open standard — compatible across Hermes and other agent platforms.

- **[production]** [wondelai/skills](https://github.com/wondelai/skills) by [wondelai](https://github.com/wondelai) - Cross-platform agent skills for Claude Code and agentskills.io-compatible platforms.
- **[production]** [youtube-skills](https://github.com/ZeroPointRepo/youtube-skills) by [therohitdas](https://github.com/therohitdas) - Adds YouTube **search**, channel browsing, playlist extraction, and reliable transcripts on top of Hermes's built-in `youtube-content`. Built-in transcript fetch silently fails on VPS because YouTube blocks cloud IP ranges; this routes through TranscriptAPI's backend (15M+ transcripts/month) to stay unblocked. 12 sub-skills covering search → fetch → bulk extraction. Auto-invokes for creator lookups, topic research, and tutorials. The fix for "my Hermes can't watch YouTube on a $5 VPS."
- **[production]** [Anthropic-Cybersecurity-Skills](https://github.com/mukul975/Anthropic-Cybersecurity-Skills) by [mukul975](https://github.com/mukul975) - 753+ structured cybersecurity skills mapped to MITRE ATT&CK. The most comprehensive security skills collection available. 4k+ stars.
- **[production]** [chainlink-agent-skills](https://github.com/smartcontractkit/chainlink-agent-skills) by [Chainlink](https://github.com/smartcontractkit) - Official Chainlink agent skills on the agentskills.io spec. Oracle network data, CCIP, and smart contract interaction.
- **[production]** [black-forest-labs/skills](https://github.com/black-forest-labs/skills) by [Black Forest Labs](https://github.com/black-forest-labs) - Official FLUX model skills for image generation. First-party skills from the FLUX creators.
- **[production]** [pydantic-ai-skills](https://github.com/DougTrajano/pydantic-ai-skills) by [DougTrajano](https://github.com/DougTrajano) - Pydantic AI with agentskills.io support. Adds type-safe schema validation to agent skill inputs and outputs.
- **[beta]** [cognify-skills](https://github.com/Yarmoluk/cognify-skills) by [Yarmoluk](https://github.com/Yarmoluk) - 19 business operations skills covering CRM, invoicing, and project management.
- **[beta]** [execplan-skill](https://github.com/tiann/execplan-skill) by [tiann](https://github.com/tiann) - Manages complex, long-running task execution with proper lifecycle handling — progress tracking, checkpoints, and failure recovery.
- **[beta]** [maestro](https://github.com/ReinaMacCredy/maestro) by [ReinaMacCredy](https://github.com/ReinaMacCredy) - Skill orchestration with Conductor planning and Beads tracking. Structures multi-step skill execution into observable pipelines.
- **[beta]** [bmad-module-skill-forge](https://github.com/armelhbobdad/bmad-module-skill-forge) by [armelhbobdad](https://github.com/armelhbobdad) - Transforms repos and docs into agentskills.io-compliant skills. Input a codebase, output installable skills.
- **[beta]** [Agentic-MCP-Skill](https://github.com/cablate/Agentic-MCP-Skill) by [cablate](https://github.com/cablate) - MCP client with agentskills.io validation. Bridges MCP tool servers with the skills standard.
- **[experimental]** [ripley-xmr-gateway](https://github.com/KYC-rip/ripley-xmr-gateway) by [KYC-rip](https://github.com/KYC-rip) - Monero (XMR) blockchain gateway for agents. Enables private cryptocurrency transactions from agent workflows.
- **[beta]** [skillsdotnet](https://github.com/PederHP/skillsdotnet) by [PederHP](https://github.com/PederHP) - C# implementation of agentskills.io with MCP integration. .NET alternative to the Python/TypeScript SDKs.
- **[beta]** [colony-skill](https://github.com/TheColonyCC/colony-skill) by [TheColonyCC](https://github.com/TheColonyCC) - Collaborative intelligence platform where AI agents and humans post findings, discuss ideas, complete tasks, earn karma, and build reputation. Community hub at [thecolony.cc](https://thecolony.cc).
- **[beta]** [AgentCash](https://github.com/Merit-Systems/agentcash-skills) by [Merit-Systems](https://github.com/Merit-Systems) - Skill giving agents access to 300+ premium APIs and a wallet balance to pay for them through x402 or MPP. A fresh Hermes install with only AgentCash is actually powerful — from web scraping to image generation to email sending, all through one skill with free USDC for trying out.
- **[beta]** [x-twitter-scraper](https://github.com/Xquik-dev/x-twitter-scraper) by [Xquik-dev](https://github.com/Xquik-dev) - Typed X (Twitter) access via 43 narrow SKILL.md folders covering reads (search, timelines, mentions, trends, articles, bookmarks, for-you), writes (post, DM, follow, profile updates), bulk extraction (followers, communities, lists, spaces), AI composition (write-tweets, write-threads, optimize, going-viral), giveaways, monitors, and webhooks. No browser automation, no scraping — typed JSON in/out through the Xquik API. Fills the X gap for Hermes social workflows.
- **[production]** [drawio-skill](https://github.com/Agents365-ai/drawio-skill) by [Agents365-ai](https://github.com/Agents365-ai) - Generates draw.io diagrams from natural language and exports to PNG/SVG/PDF. SKILL.md format, works across Claude Code, OpenClaw, Hermes, Codex. Useful when an agent needs to communicate architecture or process visually without a separate design step. 1.1k+ stars.
- **[production]** [open-design](https://github.com/nexu-io/open-design) by [nexu-io](https://github.com/nexu-io) - Local-first, open-source alternative to Anthropic's Claude Design. 31 composable skills (web/mobile/decks/dashboards/documents) over 129 design systems (Linear, Stripe, Vercel, Notion, Apple, …) with image (gpt-image-2), video (Seedance 2.0, HyperFrames), and audio generation. Auto-detects 15 coding-agent CLIs from PATH and integrates with Hermes via ACP/JSON-RPC. BYOK proxy, sandboxed previews, can import Claude Design exports. 28k+ stars.
- **[beta]** [master-skill](https://github.com/voidborne-d/master-skill) by [voidborne-d](https://github.com/voidborne-d) - Distills an entire industry into a portable skill folder via a 5-phase research-synthesis pipeline (mental models, decision rules, tool stacks, workflows, terminology, antipatterns, decay-aware limits). Same artifact installs into Hermes (`python3 tools/install.py install --host hermes`), Claude Code, OpenClaw, and Codex. 9 industries shipped at v1.4. Orthogonal to skill-factory: produces the cognitive OS *before* user-loop starts.
- **[beta]** [authsome](https://github.com/agentrhq/authsome) by [agentrhq](https://github.com/agentrhq) - Local OAuth2 and API-key credential broker for agents. Log in once via browser PKCE or device code, credentials live in a local encrypted vault, and a local proxy injects them at request time so raw keys never enter the agent's environment. 45 providers preconfigured (14 OAuth2, 31 API key) including GitHub, Google, OpenAI, Linear, Slack, Notion, Resend, and Stripe. Skill installs into Hermes with `hermes skills install agentrhq/authsome/skills/authsome`. MIT.
- **[production]** [outreachmagic](https://github.com/outreachmagic/outreachmagic) by [Outreach Magic](https://github.com/outreachmagic) - GTM pipeline agent that syncs Smartlead, Instantly, HeyReach, PlusVibe, EmailBison, Prosp, and Calendly into a local SQLite database your agent can query.
- **[production]** [abvx-agent-skills](https://github.com/markoblogo/abvx-agent-skills) by [markoblogo](https://github.com/markoblogo) - Auditable cross-platform coding-agent skillpack for smaller diffs, evidence-led debugging, token control, browser verification, and reviewable `SKILL.md` workflows with static security audit.
- **[production]** [dev-gtm-claude-skills](https://github.com/Infrasity-Labs/dev-gtm-claude-skills) by [Infrasity-Labs](https://github.com/Infrasity-Labs) - Cross-platform agent skills for SEO, GEO (Generative Engine Optimization), AI discoverability, and developer marketing.
- **[production]** [remoet](https://github.com/remoet-labs/agent-skills) by [remoet-labs](https://github.com/remoet-labs) - Job-search and career-discovery skill. Searches tech companies by actual tech stack, stars shortlisted companies, pulls jobs from that curated list, and reads/writes the developer profile. Backed by remote MCP with free tier.
- **[beta]** [zooidfund](https://github.com/Ales375/zooidfund-skill) by [Ales375](https://github.com/Ales375) - Lets an agent discover, evaluate, and donate USDC on Base to humanitarian crowdfunding campaigns at [zooid.fund](https://zooid.fund). Public campaign browsing, peer-signal review, and direct wallet-to-creator transfers.
- **[production]** [longbridge](https://github.com/longbridge/skills/tree/main/skills/longbridge) by [Longbridge Securities](https://github.com/longbridge) - Live financial market skill for US, HK, A-share, and Singapore markets. Real-time quotes, fundamentals, options chain, portfolio positions, institutional data, and news/SEC filings. Requires Longbridge account. 125+ companion skills.
- **[production]** [hermes-edu-skills](https://github.com/shinewaytech/hermes-edu-skills) by [Shineway Tech](https://github.com/shinewaytech) - 170 production-grade agent skills for Chinese K–12 education — textbook sync, exam prep, photo Q&A, lesson planning, and career skills. Install: `npx hermes-edu-skills install hermes`.
- **[production]** [hermes-mine-bean](https://github.com/damo-nu11/minebean-skills/tree/main/hermes-mine-bean) by [MineBean](https://github.com/damo-nu11) - Autonomous $BEAN mining skill for the MineBean 5×5 grid protocol on Base. Supports zero-cost `--no-agent` cron mode for unattended automation.
- **[beta]** [invinoveritas](https://github.com/babyblueviper1/invinoveritas) by [babyblueviper1](https://github.com/babyblueviper1) - Portable agentskills.io skill + MCP recipe for pay-per-call tools over Bitcoin Lightning / USDC (x402). Governance `review` gate before irreversible actions, markets intelligence, sandboxed code execution, and agent-to-agent payments.
- **[beta]** [arelay-skills](https://github.com/mmmikael/arelay-skills) by [mmmikael](https://github.com/mmmikael) - Deliver reports, Markdown, HTML, images, and PDFs via [Agent Relay](https://arelay.app) with optional end-to-end encryption. Works with hosted or self-hosted instances. MIT.

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
- **[beta]** [hermes-snow-search](https://github.com/mlinquan/hermes-snow-search) by [mlinquan](https://github.com/mlinquan) - In-memory parallel search across sessions, holographic facts, and built-in memory. Sub-millisecond latency vs hundreds of ms serial. Also on [PyPI](https://pypi.org/project/hermes-snow-search/).
- **[beta]** [hermes-bus-plugin](https://github.com/mlinquan/hermes-bus-plugin) by [mlinquan](https://github.com/mlinquan) - Message bus integration plugin. Auto-starts bus daemon, registers session as endpoint, injects external messages via `pre_llm_call`. Provides `bus_send`, `bus_status`, and `bus_info` tools for cross-process agent coordination.
- **[beta]** [hermes-motif](https://github.com/Saurav0989/hermes-motif) by [Saurav0989](https://github.com/Saurav0989) - Post-tool-call plugin that mines live execution traces for repeated sub-sequences and proposes them as evidence-backed micro-skills. n-gram extraction, arg abstraction, deduplication against existing skills.
- **[beta]** [hermes-eval](https://github.com/Saurav0989/hermes-eval) by [Saurav0989](https://github.com/Saurav0989) - Skill regression testing and trajectory quality scoring. Catch skill drift before it propagates. Exports quality-filtered trajectories in Atropos RL format.
- **[beta]** [hermes-live-discord-agent-plugin](https://github.com/Capslockb/hermes-live-discord-agent-plugin) by [Capslockb](https://github.com/Capslockb) - Full-duplex Discord voice bridge to Gemini Multimodal Live — 40+ function tools, vision, per-user memory, mid-conversation delegation, and transcripts. Pure NumPy codec plumbing with hard-clear barge-in.
- **[beta]** [hermes-dynamic-workflows](https://github.com/lingjiuu/hermes-dynamic-workflows) by [lingjiuu](https://github.com/lingjiuu) - Claude Code-style dynamic workflows for Hermes. Model writes sandboxed workflow scripts orchestrating subagents with `agent`, `parallel`, and `pipeline` — up to 1000 subagents, persisted/resumable runs, live dashboard.
- **[beta]** [custom-dangerous-patterns](https://github.com/scross01/hermes-custom-dangerous-patterns-plugin) by [scross01](https://github.com/scross01) - Add custom terminal command patterns requiring session approval before execution. Extends the standard approve-once/session/always/deny flow with `hermes custom-dangerous-patterns` CLI management.
- **[beta]** [hermes-ops-kit](https://github.com/redoracle/hermes-ops-kit) by [redoracle](https://github.com/redoracle) - Operational and security plugin: credential management, provider health checks, route diagnostics, MCP security auditing, key rotation, and usage/cost observability.
- **[beta]** [agentplane-hermes-plugin](https://github.com/basilisk-labs/agentplane-hermes-plugin) by [Basilisk Labs](https://github.com/basilisk-labs) - External worker-lane plugin letting Hermes Kanban assignees matching `agentplane-*` spawn AgentPlane supervision instead of a Hermes profile.
- **[beta]** [khwarizmi-hermes-plugin](https://github.com/Moshe-ship/khwarizmi-hermes-plugin) by [Moshe-ship](https://github.com/Moshe-ship) - Pre-LLM reliability preflight via `pre_llm_call`/`pre_tool_call`: restores implicit references, fails loud on contradictions, and gates tool calls against a constraint-driven allowlist. Part of the [Mizan](https://github.com/Moshe-ship/mizan) stack.

### Skill Registries & Discovery

- **[beta]** [hermeshub](https://github.com/amanning3390/hermeshub) by [amanning3390](https://github.com/amanning3390) - Browse, share, and install community skills for Hermes. Community hub for skill discovery, still early but growing.
- **[production]** [skilldock.io](https://github.com/chigwell/skilldock.io) by [chigwell](https://github.com/chigwell) - Registry of reusable AI skills compatible with OpenClaw, Claude Code, and Hermes. Established cross-platform skills marketplace with an active catalog.
- **[production]** [Global Chat](https://global-chat.io) by [pumanitro](https://github.com/pumanitro) - Cross-protocol agent discovery across MCP, A2A, and agents.txt. Searchable directory of 18K+ MCP servers and agents with a free agents.txt validator and MCP server for programmatic access.
- **[production]** [CreatorSkills](https://creatorskills.co) by [CreatorSkills](https://github.com/calebvbi) - Curated marketplace of 30+ downloadable AI skills for content creators — YouTube scripting, sponsorship analysis, content repurposing, and audience growth. Uses the open SKILL.md format; skills install into Hermes, Claude Code, ChatGPT, and 20+ compatible platforms.

<br>

## Memory Providers

> Persistent memory backends for Hermes Agent. Every install picks one — [official docs](https://hermes-agent.nousresearch.com/docs/user-guide/features/memory-providers) cover the config. Managed via `hermes plugins`.

- **[production]** [hindsight](https://github.com/vectorize-io/hindsight) by [Vectorize](https://github.com/vectorize-io) - Long-term memory layer for agents with retain/recall/reflect workflows. Integrates with Hermes via plugin or MCP and supports semantic, graph, and temporal retrieval.
- **[beta]** [honcho-self-hosted](https://github.com/elkimek/honcho-self-hosted) by [elkimek](https://github.com/elkimek) - Self-hosted Honcho memory backend setup for Hermes. Useful when you need stronger cross-session memory behavior with local control.
- **[beta]** [yantrikdb-hermes-plugin](https://github.com/yantrikos/yantrikdb-hermes-plugin) by [yantrikos](https://github.com/yantrikos) - Hermes-native memory provider for [YantrikDB](https://github.com/yantrikos/yantrikdb-server). Self-maintaining memory: `think()` canonicalizes duplicates, `conflicts()` surfaces contradictions instead of overwriting silently, and every `recall()` result carries a `why_retrieved` reason list so ranking is explainable. Drop-in install into `plugins/memory/`, talks HTTP to a user-run Rust backend.
- **[beta]** [flowstate-qmd](https://github.com/amanning3390/flowstate-qmd) by [amanning3390](https://github.com/amanning3390) - Anticipatory memory for AI agents with RAG and vector search. Pre-fetches relevant context before queries hit the agent.
- **[beta]** [mnemo-hermes](https://github.com/eleion-ai/mnemo-hermes) by [hernanqwz](https://github.com/hernanqwz) / [Eleion AI](https://github.com/eleion-ai) - Semantic memory plugin adding pgvector vector search to Hermes's built-in FTS5 memory. 5 tools (`mnemo_remember`, `mnemo_recall`, `mnemo_learn`, `mnemo_predict`, `mnemo_profile`) + `on_session_start` hook for auto-context loading. Runs entirely local via Ollama, no API keys needed. MIT licensed.
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
- **[beta]** [sourcevault-code-tools](https://github.com/Ocasio-Perez/sourcevault-code-tools) by [Ocasio-Perez](https://github.com/Ocasio-Perez) - Private local code memory: semantic code search, exact file reads, and grounded repo Q&A with citations, all on-machine via a local SourceVault server. MIT.

<br>

## Tools & Utilities

> Applications, CLIs, and utilities built on top of or alongside Hermes Agent.

- **[production]** [hermes-workspace](https://github.com/outsourc-e/hermes-workspace) by [outsourc-e](https://github.com/outsourc-e) - Web-based workspace with chat, terminal, memory browser, skills manager, and inspector. The most complete GUI for Hermes. Built during the Nous Hackathon 2026.
- **[beta]** [hermes-desktop](https://github.com/dodo-reach/hermes-desktop) by [dodo-reach](https://github.com/dodo-reach) - Native macOS workspace for Hermes built around a direct, host-first SSH connection model, with a real embedded terminal, session browsing, canonical file editing, skills browsing, and usage metrics without extra gateway or daemon layers.
- **[production]** [mission-control](https://github.com/builderz-labs/mission-control) by [builderz-labs](https://github.com/builderz-labs) - Open-source dashboard for AI agent orchestration. Manage agent fleets, dispatch tasks, track costs, and coordinate multi-agent workflows. Self-hosted, SQLite-powered. 3.7k+ stars.
- **[experimental]** [hermes-neurovision](https://github.com/Tranquil-Flow/hermes-neurovision) by [Tranquil-Flow](https://github.com/Tranquil-Flow) - Terminal neurovisualizer with 42 animated themes. Decorative terminal overlays for agent activity.
- **[beta]** [lintlang](https://github.com/roli-lpci/lintlang) by [roli-lpci](https://github.com/roli-lpci) - Static linter for AI agent configs and prompts with HERM v1.1 scoring. Catches config mistakes that silently degrade agent behavior.
- **[beta]** [nix-hermes-agent](https://github.com/0xrsydn/nix-hermes-agent) by [0xrsydn](https://github.com/0xrsydn) - Nix package and NixOS module for Hermes. Fully reproducible deployments via Nix flakes.
- **[beta]** [openclaw-to-hermes](https://github.com/0xNyk/openclaw-to-hermes) by [0xNyk](https://github.com/0xNyk) - Community migration tool from OpenClaw to Hermes. Built when the native `hermes-migrate` had critical bugs. For Hermes v0.3.0+, prefer the native `hermes claw migrate` command — it now covers the full migration path.
- **[experimental]** [vessel-browser](https://github.com/unmodeled-tyler/vessel-browser) by [unmodeled-tyler](https://github.com/unmodeled-tyler) - AI-native Linux browser with MCP control and autonomous browsing. Full browser built for agent use, not a headless wrapper.
- **[production]** [camofox-browser](https://github.com/jo-inc/camofox-browser) by [jo-inc](https://github.com/jo-inc) - Stealth headless browser server with REST API — bypasses Cloudflare, bot detection, and anti-scraping. Drop-in Puppeteer/Playwright replacement that powers Hermes's own browser automation. 4k+ stars, MIT, used in production by [askjo.ai](https://askjo.ai). The right backend if your VPS-hosted Hermes keeps getting blocked.
- **[beta]** [portable-hermes-agent](https://github.com/rookiemann/portable-hermes-agent) by [rookiemann](https://github.com/rookiemann) - Windows desktop app bundling 100 tools, GUI, local models, ComfyUI, and workflows in a single portable package.
- **[beta]** [hermes-ui](https://github.com/pyrate-llama/hermes-ui) by [pyrate-llama](https://github.com/pyrate-llama) - Single-file glassmorphic web UI with SSE streaming, tool call visualization, activity panel, image analysis (Gemini Vision), session management, PDF export, skill browser, memory viewer, and mobile support. Python proxy server (stdlib only) on port 3333, no build step required.
- **[beta]** [hermes-webui](https://github.com/sanchomuzax/hermes-webui) by [sanchomuzax](https://github.com/sanchomuzax) - Lightweight process monitoring and configuration dashboard. Simpler alternative to hermes-workspace, focused on ops.
- **[production]** [hermes-web-ui](https://github.com/EKKOLearnAI/hermes-web-ui) by [EKKOLearnAI](https://github.com/EKKOLearnAI) - Vue 3 + TypeScript dashboard for Hermes with Backend-for-Frontend separation. Real-time streaming chat across multiple backends (local/Docker/SSH/Singularity), unified config for 8 messaging channels, token/cost analytics with 30-day trends, cron job scheduling, multi-profile gateway management, multi-agent group chat with @mention routing, and a WebSocket-backed embedded terminal. The most analytics-and-ops-heavy Hermes dashboard in the ecosystem. 3.6k+ stars.
- **[beta]** [evey-setup](https://github.com/42-evey/evey-setup) by [42-evey](https://github.com/42-evey) - One-command setup for the full hermes-agent stack with free models and 29 plugins. Opinionated defaults that cover most use cases.
- **[beta]** [llmtrim](https://github.com/fkiene/llmtrim) by [fkiene](https://github.com/fkiene) - Local proxy in front of the model Hermes calls; compresses resent tool schemas, history, and MCP tool output before each request is sent. Quality-gated, so it never increases your bill. Also an MCP server, CLI, and library (Rust, Python, Ruby, Swift, Kotlin, JS/WASM). MPL-2.0. Same spirit as [rtk-hermes](https://github.com/ogallotti/rtk-hermes), but a transport-layer proxy rather than a native `pre_tool_call` plugin.
- **[production]** [SkillClaw](https://github.com/AMAP-ML/SkillClaw) by [AMAP-ML](https://github.com/AMAP-ML) - Open-source companion that auto-evolves, deduplicates, and improves your skill library from real session data. Adds a post-task evolution loop on top of Hermes's built-in skill creation. Native Hermes integration via `~/.hermes/skills`, safety flows (`skillclaw doctor hermes` / `skillclaw restore hermes`). Works across multiple devices and isolated skill silos. 705 stars, MIT licensed, active through 2026-04-17.
- **[production]** [Clarvia](https://github.com/clarvia-project/scanner) by [clarvia-project](https://github.com/clarvia-project) - AEO (Agent Experience Optimization) scoring for MCP tools. Analyzes 15,400+ indexed MCP servers for agent-friendliness. REST API + MCP server so agents can evaluate tools from within their own loops. Use `GET /v1/score?url=` to score any MCP server or `GET /v1/search?q=` to find agent-ready tools by topic.
- **[beta]** [agenttrace](https://github.com/luoyuctl/agenttrace) by [luoyuctl](https://github.com/luoyuctl) - Local-first TUI/CLI for post-run agent session audits — cost/token spikes, tool failures, retry loops, latency gaps, health scores, anomalies, session-to-session diffs. No upload, no cloud, MIT. Companion SKILL.md (`agenttrace-session-audit`) packages the audit as an installable skill any host can run.
- **[beta]** [agentburn](https://github.com/Socialpranker/agentburn) by [Socialpranker](https://github.com/Socialpranker) - Local read-only profiler showing where a Hermes instance burns money. Splits spend by source (cron, gateways, subagents, CLI), walks message logs for re-read loops and retry patterns, and proposes paste-ready config fixes. Python stdlib only, `uvx agentburn`, MIT.
- **[beta]** [kesha-voice-kit](https://github.com/drakulavich/kesha-voice-kit) by [drakulavich](https://github.com/drakulavich) - Local-first CLI voice backend. STT in 25 languages and TTS via Hermes command providers with no API keys. Plugs into `HERMES_LOCAL_STT_COMMAND` and `tts.providers.<name>.type: command`.
- **[production]** [xiaoma-hermes-zh-cn](https://github.com/fresh-claw/hermes-zh-cn) by [fresh-claw](https://github.com/fresh-claw) - Chinese localization and onboarding package. One-command installer applies zh-CN UI text patches, gateway prompts, and pairing messages for Hermes 0.14.x/0.13.x.
- **[beta]** [Atlas Cloud](https://www.atlascloud.ai) by [Atlas Cloud](https://www.atlascloud.ai) - OpenAI-compatible API gateway for running Hermes workflows against multiple model families — useful for comparing skill behavior across providers without reworking integrations.
- **[beta]** [hermes-bus](https://github.com/mlinquan/hermes-bus) by [mlinquan](https://github.com/mlinquan) - Generic Unix socket message bus transport — 4-byte framing, endpoint registration, heartbeat keep-alive, auto-reconnect. Pairs with hermes-bus-plugin and hermes-notify.
- **[beta]** [hermes-notify](https://github.com/mlinquan/hermes-notify) by [mlinquan](https://github.com/mlinquan) - Config-driven notification router — YAML rule matching by message type, context injection, audio playback, and tmux notification sender.
- **[beta]** [arabic-agent-eval](https://github.com/Moshe-ship/arabic-agent-eval) by [Moshe-ship](https://github.com/Moshe-ship) - Dialect-split Arabic function-calling benchmark (51 items, 5 dialects) with public [leaderboard](https://huggingface.co/spaces/Mosescreates/arabic-agent-eval-leaderboard).

### Deployment

- **[beta]** [hermes-agent-docker](https://github.com/xmbshwll/hermes-agent-docker) by [xmbshwll](https://github.com/xmbshwll) - Minimal Docker sandbox image for Hermes. Pull, run, done.
- **[beta]** [hermes-agent-template](https://github.com/Crustocean/hermes-agent-template) by [Crustocean](https://github.com/Crustocean) - Production-ready Docker image for cloud Hermes deployments on Crustocean. Infrastructure wiring pre-configured.
- **[experimental]** [portainer-stack-hermes](https://github.com/ellickjohnson/portainer-stack-hermes) by [ellickjohnson](https://github.com/ellickjohnson) - Docker Compose + Portainer + ttyd web terminal. Deploy Hermes and access it from any browser.
- **[experimental]** [hermes-autonomous-server](https://github.com/JackTheGit/hermes-autonomous-server) by [JackTheGit](https://github.com/JackTheGit) - Headless Hermes deployment with systemd and cron on Linux servers. Runs unattended.

<br>

## Integrations & Bridges

> Connect Hermes to other platforms, devices, and services.

- **[beta]** [hermes-android](https://github.com/raulvidis/hermes-android) by [raulvidis](https://github.com/raulvidis) - Android device bridge with a full Python toolset. Lets Hermes interact with and control Android devices.
- **[beta]** [hermes-miniverse](https://github.com/teknium1/hermes-miniverse) by [teknium1](https://github.com/teknium1) - Bridge to Miniverse pixel worlds. By a Nous Research co-founder.
- **[production]** [screenpipe](https://github.com/screenpipe/screenpipe) by [screenpipe](https://github.com/screenpipe) - Local-first screen and audio capture that gives Hermes long-term memory of what you've seen, said, and heard. Connects over MCP (`npx -y screenpipe-mcp`, stdio or HTTP) with tools for search, activity summaries, and meeting detection. Fully on-device.
- **[beta]** [1claw-hermes](https://github.com/1clawAI/1claw-hermes) by [1clawAI](https://github.com/1clawAI) - TypeScript integration bringing [1Claw](https://1claw.xyz) to Hermes — MCP-based secret fetching from an HSM-backed vault, a [Shroud](https://docs.1claw.xyz/docs/guides/shroud) TEE LLM-proxy sidecar that redacts secrets/PII and blocks prompt injection before prompts reach the model provider, per-subagent identities, and the Intents API for keyless on-chain signing. Hermes agents get just-in-time, scoped, revocable credentials without keys ever touching the agent context.
- **[experimental]** [zouroboros-swarm-executors](https://github.com/marlandoj/zouroboros-swarm-executors) by [marlandoj](https://github.com/marlandoj) - Local executor bridge for Claude Code + Hermes integration. Enables task handoff between both agents.
- **[beta]** [reina](https://github.com/Crustocean/reina) by [Crustocean](https://github.com/Crustocean) - Autonomous AI agent for the Crustocean platform. Deep integration of Hermes into Crustocean's product.
- **[beta]** [hermes-agent-acp-skill](https://github.com/Rainhoole/hermes-agent-acp-skill) by [Rainhoole](https://github.com/Rainhoole) - Multi-agent delegation skill bridging Hermes, Codex, and Claude Code. Routes subtasks to the best-suited agent automatically.
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
- **[beta]** [windy-access](https://github.com/sneakyfree/windy-connect) by [sneakyfree](https://github.com/sneakyfree) - One-command pairing for the Windy ecosystem. Auto-detects runtime, configures `~/.hermes/.env`, and gives the agent a `@windymail.ai` mailbox, Matrix chat identity, and OpenAI-compatible LLM access. `windy disconnect --yes` reverses cleanly.
- **[beta]** [wasl](https://github.com/Moshe-ship/wasl) by [Moshe-ship](https://github.com/Moshe-ship) - Arabic MCP server — 30 tools (prayer times, Quran, Hijri dates, Arabic NLP). `pip install wasl-mcp`.
- **[experimental]** [agy-cli bridge](https://github.com/ypnpt6ysmw-bit/agy-cli) by [ypnpt6ysmw-bit](https://github.com/ypnpt6ysmw-bit) - Integrates Google Antigravity CLI and Antigravity Pro subscription credentials with Hermes via macOS Keychain OAuth — no AI Studio API keys needed.
- **[production]** [Spraay x402 Gateway](https://gateway.spraay.app) by [plagtech](https://github.com/plagtech) - Batch-pay recipients in a single on-chain transaction across 13+ chains. 151 paid primitives via x402 micropayment protocol. Available as [Hermes skill](https://github.com/NousResearch/hermes-agent/pull/49716) or [MCP server](https://smithery.ai/servers/Plagtech/Spraay-x402-mcp).
- **[production]** [hypernatt-terminal](https://smithery.ai/servers/hypernatt/hypernatt-terminal) by [DIALLOUBE-RESEARCH](https://github.com/DIALLOUBE-RESEARCH) - BTC decision terminal MCP for agents — vault-backed BTC/USDC signals, MM trap/hunt, liq radar, and Li.Fi swap. MCP at `https://hypernatt.com/mcp/protocol`.
- **[beta]** [space0](https://github.com/zero-sq/space0-mcp) by [zero-sq](https://github.com/zero-sq) - Shared 3D voxel world body for agents with spatial memory, co-presence, and persistent identity across sessions. agentskills.io skill + MCP server.
- **[production]** [MeiGen-AI-Design-MCP](https://github.com/jau123/MeiGen-AI-Design-MCP) by [jau123](https://github.com/jau123) - Stdio MCP server for AI image + video generation across 9 leading models (GPT Image 2, Nanobanana 2, Seedream 5.0, Midjourney V8.1, Flux 2 Klein, Seedance 2.0, Happyhorse 1.0, Veo 3.1) plus local ComfyUI. Three backend modes: MeiGen cloud, any OpenAI-compatible API (BYOK), or fully offline ComfyUI. README ships a tested Hermes `mcp_servers` YAML with the timeout overrides needed for video gen workflows. SSRF-hardened, R2 uploads auto-expire after 24h. 1k+ stars.

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
- **[experimental]** [hermes-research-agent](https://github.com/Aum08Desai/hermes-research-agent) by [Aum08Desai](https://github.com/Aum08Desai) - Autonomous LLM research agent. Handles literature review, hypothesis generation, and experiment design end-to-end.
- **[beta]** [mycodo-hermes-skill](https://github.com/setasoma/mycodo-hermes-skill) by [setasoma](https://github.com/setasoma) - Phase-aware IoT decision engine for autonomous mushroom cultivation on Raspberry Pi. Reads sensors via Mycodo/InfluxDB, detects growth phases, and fires relay commands with safety guards. Tested through a complete Lion's Mane fruiting cycle.

<br>

## Forks & Derivatives

> Notable forks and derivative projects that take Hermes in new directions.

- **[beta]** [hermes-agent-camel](https://github.com/nativ3ai/hermes-agent-camel) by [nativ3ai](https://github.com/nativ3ai) - Hermes with integrated CaMeL trust boundaries. Adds formal trust verification to the agent loop for safety-critical deployments.
- **[experimental]** [orahermes-agent](https://github.com/jasperan/orahermes-agent) by [jasperan](https://github.com/jasperan) - Oracle AI Agent Harness — OCI GenAI and Oracle 26ai integration. Enterprise on-ramp for Oracle environments.
- **[beta]** [hermes-alpha](https://github.com/kaminocorp/hermes-alpha) by [kaminocorp](https://github.com/kaminocorp) - Cloud-deployed Hermes with pre-configured infrastructure templates. Skips local setup.
- **[experimental]** [hermes-skill-distillation](https://github.com/beardthelion/hermes-skill-distillation) by [beardthelion](https://github.com/beardthelion) - Generates agentic training trajectories from real-world tasks. Hackathon project for producing fine-tuning data at scale.

<br>

## Guides & Documentation

> Tutorials, documentation, and learning resources.

- **[beta]** [hermes-agent-docs](https://github.com/mudrii/hermes-agent-docs) by [mudrii](https://github.com/mudrii) - Comprehensive community documentation for Hermes Agent. Covers v0.2.0 in detail, useful supplement to the official docs for deployment patterns.
- **[production]** [hermes-wsl-ubuntu](https://github.com/metantonio/hermes-wsl-ubuntu) by [metantonio](https://github.com/metantonio) - Step-by-step WSL2 Ubuntu setup instructions for running Hermes on Windows.
- **[beta]** [HermesWiki](https://github.com/martymcenroe/HermesWiki) by [martymcenroe](https://github.com/martymcenroe) - Community-maintained wiki with practical patterns and deployment advice for building autonomous agents with Hermes.

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
- **Multi-agent execution layer** — Combine Hermes core delegation with [hermes-agent-acp-skill](https://github.com/Rainhoole/hermes-agent-acp-skill) for Codex/Claude Code routing, [zouroboros-swarm-executors](https://github.com/marlandoj/zouroboros-swarm-executors) for local executor handoff, and [opencode-hermes-multiagent](https://github.com/1ilkhamov/opencode-hermes-multiagent) or [bigiron](https://github.com/supermodeltools/bigiron) when you need specialized agent roles.
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

[Get in touch](https://builderz.dev) | [@nyk_builderz](https://x.com/nyk_builderz)

</div>

## License

[![CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

This list is licensed under [Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/). You are free to share and adapt this material for any purpose, provided you give appropriate attribution.

All resources included in this list have their own license terms.
