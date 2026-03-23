<p align="center">
  <picture>
    <img src="https://raw.githubusercontent.com/NousResearch/hermes-agent/main/assets/banner.png" alt="Awesome Hermes Agent" width="600">
  </picture>
</p>

# Awesome Hermes Agent

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A curated list of skills, tools, integrations, and resources for enhancing your [Hermes Agent](https://github.com/NousResearch/hermes-agent) workflow — the self-improving AI agent built by [Nous Research](https://nousresearch.com).

Hermes Agent is the only agent with a built-in learning loop — it creates skills from experience, improves them during use, searches its own past conversations, and builds a deepening model of who you are across sessions. Run it on a $5 VPS, a GPU cluster, or serverless infrastructure. Talk to it from Telegram while it works on a cloud VM.

This list tracks the growing ecosystem around it.

---

## Where Do I Start?

New to Hermes? Don't try to install everything at once. Here's the three-step path from zero to productive:

1. **Get running** — Follow the [Official Docs quickstart](https://hermes-agent.nousresearch.com/docs/). It covers installation, CLI, configuration, and your first conversation.
2. **Add your first skills** — Install [wondelai/skills](https://github.com/wondelai/skills) (250+ stars, actively maintained) — a cross-platform skills library that works with Hermes and other agents. Or try [litprog-skill](https://github.com/tlehman/litprog-skill) (60+ stars) for literate programming across Claude Code, OpenCode, and Hermes.
3. **Get a GUI** — Set up [hermes-workspace](https://github.com/outsourc-e/hermes-workspace) (200+ stars) for a Hermes-native workspace with chat, terminal, and skills manager. Or use [mission-control](https://github.com/builderz-labs/mission-control) (3k+ stars) for a broader agent orchestration dashboard with fleet management, task dispatch, and cost tracking.

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
- [Tools & Utilities](#tools--utilities)
  - [Deployment](#deployment)
- [Integrations & Bridges](#integrations--bridges)
- [Multi-Agent & Swarms](#multi-agent--swarms)
- [Domain Applications](#domain-applications)
- [Forks & Derivatives](#forks--derivatives)
- [Guides & Documentation](#guides--documentation)
- [Contributing](#contributing)
- [License](#license)

---

## Official Resources

> Core repositories and resources maintained by Nous Research.

- [Hermes Agent](https://github.com/NousResearch/hermes-agent) by [Nous Research](https://nousresearch.com) - The core project. Self-improving AI agent with a closed learning loop, multi-platform gateway (Telegram, Discord, Slack, WhatsApp, Signal), six terminal backends, cron scheduling, and MCP integration. 10k+ stars. Includes automatic migration from OpenClaw.
- [autonovel](https://github.com/NousResearch/autonovel) by [Nous Research](https://nousresearch.com) - Autonomous novel-writing pipeline built on Hermes. Generates long-form manuscripts (100k+ words) end-to-end using the agent loop.
- [hermes-paperclip-adapter](https://github.com/NousResearch/hermes-paperclip-adapter) by [Nous Research](https://nousresearch.com) - Run Hermes as a managed employee in Paperclip companies. Connects the agent to Paperclip's task management and governance system.
- [hermes-agent-self-evolution](https://github.com/NousResearch/hermes-agent-self-evolution) by [Nous Research](https://nousresearch.com) - Evolutionary self-improvement using DSPy and GEPA (Genetic Evolution of Prompt Architectures). The research pipeline for optimizing Hermes's own prompts and behaviors.
- [Official Documentation](https://hermes-agent.nousresearch.com/docs/) - Comprehensive docs covering quickstart, CLI, configuration, messaging gateway, security, tools, skills, memory, MCP, cron, and architecture.
- [tinker-atropos](https://github.com/NousResearch/tinker-atropos) by [Nous Research](https://nousresearch.com) - Standalone Atropos integration with Thinking Machines Tinker API. RL training infrastructure for fine-tuning tool-calling models on real agent trajectories.
- [Skills Hub](https://agentskills.io) - The open standard for agent skills. Compatible across Hermes, Claude Code, Cursor, Codex, and other agents.
- [Discord](https://discord.gg/NousResearch) - The Nous Research community. Bug reports, feature requests, and general discussion.

<br>

## Skills & Plugins

> Skills are procedural memory — reusable capabilities that Hermes creates from experience and improves during use. Plugins extend core functionality.

### Community Skills

- **[beta]** [hermes-plugins](https://github.com/42-evey/hermes-plugins) by [42-evey](https://github.com/42-evey) - Goal management, inter-agent bridge, model selection, and cost control. Four plugins covering the most common operational needs. The inter-agent bridge is useful if you run multiple Hermes instances.
- **[beta]** [hermes-skill-factory](https://github.com/Romanescu11/hermes-skill-factory) by [Romanescu11](https://github.com/Romanescu11) - Meta-skill that auto-generates reusable skills from your workflows. Point it at a task you repeat and it creates a skill for it.
- **[beta]** [litprog-skill](https://github.com/tlehman/litprog-skill) by [tlehman](https://github.com/tlehman) - Literate programming skill that works across Claude Code, OpenCode, and Hermes. Weaves code and prose into documented, executable notebooks.
- **[experimental]** [Wizards-of-the-Ghosts](https://github.com/Hmbown/Wizards-of-the-Ghosts) by [Hmbown](https://github.com/Hmbown) - Fantasy spell-themed skill pack. Wraps real development operations (refactoring, linting, testing) in a tabletop RPG interface.
- **[experimental]** [super-hermes](https://github.com/Cranot/super-hermes) by [Cranot](https://github.com/Cranot) - Teaches Hermes to write its own analytical prompts. Adds a meta-reasoning layer where the agent generates better prompts for itself before executing tasks.
- **[experimental]** [hermes-life-os](https://github.com/Lethe044/hermes-life-os) by [Lethe044](https://github.com/Lethe044) - Personal OS agent that detects daily patterns and learns your routines over time. Uses Hermes's memory system for lifestyle tracking, not just code.
- **[beta]** [hermes-incident-commander](https://github.com/Lethe044/hermes-incident-commander) by [Lethe044](https://github.com/Lethe044) - Autonomous SRE agent for production incident detection and self-healing. Monitors services, diagnoses failures, and applies fixes. Works well with Hermes's cron scheduling.
- **[beta]** [hermes-dojo](https://github.com/Yonkoo11/hermes-dojo) by [Yonkoo11](https://github.com/Yonkoo11) - Self-improvement system that monitors agent performance, identifies weak skills, and iterates on them automatically.
- **[experimental]** [hermes-skill-marketplace](https://github.com/Lethe044/hermes-skill-marketplace) by [Lethe044](https://github.com/Lethe044) - Agent that writes, tests, and publishes new skills autonomously. Automates the skill creation and distribution lifecycle.


### agentskills.io Ecosystem

> Skills built on the [agentskills.io](https://agentskills.io) open standard — compatible across Hermes and other agent platforms.

- **[production]** [wondelai/skills](https://github.com/wondelai/skills) by [wondelai](https://github.com/wondelai) - Cross-platform agent skills for Claude Code and agentskills.io-compatible platforms.
- **[production]** [Anthropic-Cybersecurity-Skills](https://github.com/mukul975/Anthropic-Cybersecurity-Skills) by [mukul975](https://github.com/mukul975) - 734+ structured cybersecurity skills mapped to MITRE ATT&CK. The most comprehensive security skills collection available. 3.6k stars.
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

### Plugins

- **[experimental]** [hermes-payguard](https://github.com/nativ3ai/hermes-payguard) by [nativ3ai](https://github.com/nativ3ai) - Safe USDC and x402 payment plugin. Lets Hermes send and receive payments with configurable spending limits and approval flows.
- **[beta]** [hermes-web-search-plus](https://github.com/robbyczgw-cla/hermes-web-search-plus) by [robbyczgw-cla](https://github.com/robbyczgw-cla) - Multi-provider web search with intelligent routing across Serper, Tavily, Exa, and more. Replaces the built-in search with better result quality and source diversity.
- **[beta]** [hermes-weather-plugin](https://github.com/FahrenheitResearch/hermes-weather-plugin) by [FahrenheitResearch](https://github.com/FahrenheitResearch) - Professional-grade weather plugin with NWS model imagery, NEXRAD radar, and meteorological calculations.
- **[experimental]** [hermes-wxtrain-plugin](https://github.com/FahrenheitResearch/hermes-wxtrain-plugin) by [FahrenheitResearch](https://github.com/FahrenheitResearch) - ML pipeline plugin for building training datasets from HRRR/GFS/ERA5 weather models. Companion to the weather plugin for building weather ML pipelines.
- **[experimental]** [hermes-plugin-chrome-profiles](https://github.com/anpicasso/hermes-plugin-chrome-profiles) by [anpicasso](https://github.com/anpicasso) - Switch browser tools between Chrome profiles via CDP. Useful for multi-account testing or browsing with different saved sessions.
- **[experimental]** [hermes-cloudflare](https://github.com/raulvidis/hermes-cloudflare) by [raulvidis](https://github.com/raulvidis) - Cloudflare browser rendering plugin. Headless browsing through Cloudflare's infrastructure instead of local browser automation.
- **[beta]** [evey-bridge-plugin](https://github.com/42-evey/evey-bridge-plugin) by [42-evey](https://github.com/42-evey) - Claude Code plugin for bridging with Evey (hermes-agent). Lets Claude Code and Hermes share context and hand off tasks between each other.

### Skill Registries & Discovery

- **[beta]** [hermeshub](https://github.com/amanning3390/hermeshub) by [amanning3390](https://github.com/amanning3390) - Browse, share, and install community skills for Hermes. Community hub for skill discovery, still early but growing.
- **[production]** [skilldock.io](https://github.com/chigwell/skilldock.io) by [chigwell](https://github.com/chigwell) - Registry of reusable AI skills compatible with OpenClaw, Claude Code, and Hermes. Established cross-platform skills marketplace with an active catalog.

<br>

## Tools & Utilities

> Applications, CLIs, and utilities built on top of or alongside Hermes Agent.

- **[production]** [hermes-workspace](https://github.com/outsourc-e/hermes-workspace) by [outsourc-e](https://github.com/outsourc-e) - Web-based workspace with chat, terminal, memory browser, skills manager, and inspector. The most complete GUI for Hermes. Built during the Nous Hackathon 2026.
- **[production]** [mission-control](https://github.com/builderz-labs/mission-control) by [builderz-labs](https://github.com/builderz-labs) - Open-source dashboard for AI agent orchestration. Manage agent fleets, dispatch tasks, track costs, and coordinate multi-agent workflows. Self-hosted, SQLite-powered. 3k+ stars.
- **[experimental]** [hermes-neurovision](https://github.com/Tranquil-Flow/hermes-neurovision) by [Tranquil-Flow](https://github.com/Tranquil-Flow) - Terminal neurovisualizer with 42 animated themes. Decorative terminal overlays for agent activity.
- **[beta]** [lintlang](https://github.com/roli-lpci/lintlang) by [roli-lpci](https://github.com/roli-lpci) - Static linter for AI agent configs and prompts with HERM v1.1 scoring. Catches config mistakes that silently degrade agent behavior.
- **[beta]** [nix-hermes-agent](https://github.com/0xrsydn/nix-hermes-agent) by [0xrsydn](https://github.com/0xrsydn) - Nix package and NixOS module for Hermes. Fully reproducible deployments via Nix flakes.
- **[beta]** [openclaw-to-hermes](https://github.com/0xNyk/openclaw-to-hermes) by [0xNyk](https://github.com/0xNyk) - Migration tool from OpenClaw to Hermes. Handles settings, memories, skills, API keys, messaging configs, and workspace files.
- **[experimental]** [vessel-browser](https://github.com/unmodeled-tyler/vessel-browser) by [unmodeled-tyler](https://github.com/unmodeled-tyler) - AI-native Linux browser with MCP control and autonomous browsing. Full browser built for agent use, not a headless wrapper.
- **[beta]** [portable-hermes-agent](https://github.com/rookiemann/portable-hermes-agent) by [rookiemann](https://github.com/rookiemann) - Windows desktop app bundling 100 tools, GUI, local models, ComfyUI, and workflows in a single portable package.
- **[beta]** [hermes-webui](https://github.com/sanchomuzax/hermes-webui) by [sanchomuzax](https://github.com/sanchomuzax) - Lightweight process monitoring and configuration dashboard. Simpler alternative to hermes-workspace, focused on ops.
- **[beta]** [evey-setup](https://github.com/42-evey/evey-setup) by [42-evey](https://github.com/42-evey) - One-command setup for the full hermes-agent stack with free models and 29 plugins. Opinionated defaults that cover most use cases.
- **[beta]** [flowstate-qmd](https://github.com/amanning3390/flowstate-qmd) by [amanning3390](https://github.com/amanning3390) - Anticipatory memory for AI agents with RAG and vector search. Pre-fetches relevant context before queries hit the agent.

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
- **[experimental]** [zouroboros-swarm-executors](https://github.com/marlandoj/zouroboros-swarm-executors) by [marlandoj](https://github.com/marlandoj) - Local executor bridge for Claude Code + Hermes integration. Enables task handoff between both agents.
- **[beta]** [reina](https://github.com/Crustocean/reina) by [Crustocean](https://github.com/Crustocean) - Autonomous AI agent for the Crustocean platform. Deep integration of Hermes into Crustocean's product.
- **[beta]** [hermes-agent-acp-skill](https://github.com/Rainhoole/hermes-agent-acp-skill) by [Rainhoole](https://github.com/Rainhoole) - Multi-agent delegation skill bridging Hermes, Codex, and Claude Code. Routes subtasks to the best-suited agent automatically.
- **[experimental]** [hermes-blockchain-oracle](https://github.com/gizdusum/hermes-blockchain-oracle) by [gizdusum](https://github.com/gizdusum) - Solana blockchain intelligence MCP server. Provides on-chain analytics and wallet data to Hermes via MCP.
- **[experimental]** [hermes-council](https://github.com/Ridwannurudeen/hermes-council) by [Ridwannurudeen](https://github.com/Ridwannurudeen) - Adversarial multi-perspective council MCP server. Multiple AI viewpoints debate before the agent commits to a decision.
- **[experimental]** [NemoHermes](https://github.com/Hmbown/NemoHermes) by [Hmbown](https://github.com/Hmbown) - NVIDIA capability registry and Spark-aware routing layer. Routes compute-heavy tasks to available GPU infrastructure.

<br>

## Multi-Agent & Swarms

> Frameworks and tools for running multiple Hermes agents, or Hermes alongside other agents.

- **[experimental]** [Ankh.md](https://github.com/Abruptive/Ankh.md) by [Abruptive](https://github.com/Abruptive) - TAW Agent x Hermes multi-agent swarm framework. Coordinates multiple agents with shared goals and distributed task execution.
- **[experimental]** [gladiator](https://github.com/runtimenoteslabs/gladiator) by [runtimenoteslabs](https://github.com/runtimenoteslabs) - Two autonomous AI companies compete for GitHub stars. Hackathon project exploring autonomous agent competition dynamics.
- **[beta]** [bigiron](https://github.com/supermodeltools/bigiron) by [supermodeltools](https://github.com/supermodeltools) - AI-native SDLC with Hermes and Supermodel code graph. Full software development lifecycle driven by coordinated agents.
- **[beta]** [opencode-hermes-multiagent](https://github.com/1ilkhamov/opencode-hermes-multiagent) by [1ilkhamov](https://github.com/1ilkhamov) - 17 specialized agents for OpenCode AI. Each agent has a defined role and they communicate through structured interfaces.

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

## Contributing

[Recommend a new resource here!](https://github.com/0xNyk/awesome-hermes-agent/issues/new)

Before submitting, please ensure:

1. The resource is directly related to the Hermes Agent ecosystem or the [agentskills.io](https://agentskills.io) standard
2. The resource has a clear README and is reasonably maintained
3. You've checked the list to avoid duplicates

For suggestions about the repository itself, please [open an issue](https://github.com/0xNyk/awesome-hermes-agent/issues/new).

Please read [CONTRIBUTING.md](CONTRIBUTING.md) before submitting.

## License

[![CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

This list is licensed under [Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/). You are free to share and adapt this material for any purpose, provided you give appropriate attribution.

All resources included in this list have their own license terms.
