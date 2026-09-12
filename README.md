# Awesome Hermes Agent [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A curated list of awesome resources for Hermes Agent, the self-improving AI agent by Nous Research.

<p align="center"><img src="media/banner.png" alt="Hermes Agent" width="640"></p>

Hermes Agent is an open-source, self-improving AI agent with persistent memory, autonomous skill creation, and multiple deployment backends. Get started by exploring deployment options, adding skills, and joining the community.

## Contents

- [Official Resources](#official-resources)
- [Models](#models)
- [Deployment](#deployment)
- [Skills and Plugins](#skills-and-plugins)
- [Tools and Utilities](#tools-and-utilities)
- [Integrations](#integrations)
- [Memory and Personality](#memory-and-personality)
- [Training and Research](#training-and-research)
- [Showcase Projects](#showcase-projects)
- [Tutorials and Guides](#tutorials-and-guides)
- [Community](#community)
- [Related Lists](#related-lists)

## Official Resources

- [agentskills.io](https://agentskills.io) - Official cross-platform skill registry and marketplace for agent capabilities.
- [Discord](https://discord.gg/jqVphNsB4H) - Official community Discord server for support and discussion.
- [Documentation](https://hermes-agent.nousresearch.com/docs/) - Official guides covering installation, configuration, skills, and deployment.
- [Hermes Agent](https://github.com/NousResearch/hermes-agent) - Open-source self-improving AI agent with persistent memory and autonomous skill creation.
- [Nous Portal](https://portal.nousresearch.com) - Cloud-hosted Hermes Agent instances with managed infrastructure.
- [Nous Research](https://nousresearch.com) - Parent organization building open-source AI models and tools.
- [Product Page](https://nousresearch.com/hermes-agent/) - Official product page with feature overview and getting started information.

## Models

- [Hermes 4 14B](https://huggingface.co/NousResearch/Hermes-4-14B) - Compact model balancing capability with resource efficiency for local deployment.
- [Hermes 4 405B](https://huggingface.co/NousResearch/Hermes-4-405B) - Flagship model with maximum capability for complex agent tasks.
- [Hermes 4 70B](https://huggingface.co/NousResearch/Hermes-4-70B) - Mid-range model offering strong reasoning with manageable resource requirements.
- [Hermes 4 Technical Report](https://arxiv.org/abs/2503.07903) - Research paper detailing Hermes 4 architecture, training methodology, and benchmarks.

## Deployment

- [evey-setup](https://github.com/42-evey/evey-setup) - One-command setup script for a full Hermes Agent development stack.
- [hermes-agent-docker](https://github.com/xmbshwll/hermes-agent-docker) - Minimal Docker sandbox environment for isolated Hermes Agent instances.
- [nix-hermes-agent](https://github.com/0xrsydn/nix-hermes-agent) - Nix package and NixOS module for reproducible Hermes Agent installations.
- [portainer-stack-hermes](https://github.com/ellickjohnson/portainer-stack-hermes) - Docker Compose stack with Portainer management UI and ttyd web terminal.

## Skills and Plugins

- [Anthropic-Cybersecurity-Skills](https://github.com/mukul975/Anthropic-Cybersecurity-Skills) - Over 700 cybersecurity skills mapped to the MITRE ATT&CK framework.
- [black-forest-labs/skills](https://github.com/black-forest-labs/skills) - Official FLUX image generation skills for agent-driven visual content creation.
- [chainlink-agent-skills](https://github.com/smartcontractkit/chainlink-agent-skills) - Official Chainlink integration skills for blockchain oracle interactions.
- [evey-bridge-plugin](https://github.com/42-evey/evey-bridge-plugin) - Plugin bridging Claude Code and Hermes Agent for cross-tool workflows.
- [execplan-skill](https://github.com/tiann/execplan-skill) - Complex task execution skill with checkpoints and failure recovery.
- [hermes-plugins](https://github.com/42-evey/hermes-plugins) - Collection of plugins for goal management, model selection, and cost control.
- [hermes-weather-plugin](https://github.com/FahrenheitResearch/hermes-weather-plugin) - Professional-grade weather data plugin using NWS and NEXRAD radar sources.
- [litprog-skill](https://github.com/tlehman/litprog-skill) - Literate programming skill for generating well-documented executable code.
- [pydantic-ai-skills](https://github.com/DougTrajano/pydantic-ai-skills) - Pydantic AI integration with agentskills.io skill validation and discovery.
- [Skills Guide](https://hermes-agent.nousresearch.com/docs/user-guide/features/skills) - Official documentation for creating, publishing, and discovering skills.
- [wondelai/skills](https://github.com/wondelai/skills) - Cross-platform agent skills collection compatible with multiple agent frameworks.

## Tools and Utilities

- [hermes-workspace](https://github.com/outsourc-e/hermes-workspace) - Web-based workspace combining chat interface, terminal, and skills manager.
- [Ivy Tendril](https://github.com/Ivy-Interactive/Ivy-Tendril) - Open-source agentic software factory with an amazing UI that handles parallel Git worktrees for you, complete with programmatic verifications and fast review loops.
- [lintlang](https://github.com/roli-lpci/lintlang) - Static analysis linter for AI agent configuration files and skill definitions.
- [mission-control](https://github.com/builderz-labs/mission-control) - Agent orchestration dashboard for monitoring and managing multiple Hermes instances.
- [openclaw-to-hermes](https://github.com/0xNyk/openclaw-to-hermes) - Migration tool for converting OpenClaw configurations to Hermes Agent format.
- [portable-hermes-agent](https://github.com/rookiemann/portable-hermes-agent) - Windows desktop application for running Hermes Agent without terminal setup.

## Integrations

- [hermes-agent-acp-skill](https://github.com/Rainhoole/hermes-agent-acp-skill) - Multi-agent delegation skill enabling task handoff across Hermes, Codex, and Claude Code.
- [hermes-android](https://github.com/raulvidis/hermes-android) - Android device bridge for controlling mobile devices through Hermes Agent.
- [hermes-cloudflare](https://github.com/raulvidis/hermes-cloudflare) - Cloudflare browser rendering plugin for headless web interactions.
- [hermes-miniverse](https://github.com/teknium1/hermes-miniverse) - Bridge connecting Hermes Agent to Miniverse interactive pixel worlds.

## Memory and Personality

- [Honcho](https://github.com/plastic-labs/honcho) - User context management layer for building personalized agent experiences.
- [Memory Guide](https://hermes-agent.nousresearch.com/docs/user-guide/features/memory) - Official guide for configuring persistent memory and conversation context.
- [Personality Guide](https://hermes-agent.nousresearch.com/docs/user-guide/features/personality) - Official guide for customizing agent personality through SOUL.md and persona files.

## Training and Research

- [Atropos](https://github.com/NousResearch/atropos) - Reinforcement learning environments framework for training LLM agent trajectories.
- [hermes-agent-self-evolution](https://github.com/NousResearch/hermes-agent-self-evolution) - Evolutionary self-improvement pipeline using DSPy and GEPA.
- [Open-Reasoning-Tasks](https://github.com/NousResearch/Open-Reasoning-Tasks) - Curated reasoning benchmark suite for evaluating agent capabilities.
- [Pokemon Agent](https://github.com/NousResearch/pokemon-agent) - Autonomous Pokemon gameplay agent demonstrating planning and real-time decision making.
- [tinker-atropos](https://github.com/NousResearch/tinker-atropos) - Standalone Atropos integration with Tinker API for reinforcement learning training runs.

## Showcase Projects

- [Autonovel](https://github.com/NousResearch/autonovel) - Autonomous novel writing pipeline showcasing long-form creative generation.
- [gladiator](https://github.com/runtimenoteslabs/gladiator) - Autonomous AI companies competing in simulated business environments.
- [hermes-agent-camel](https://github.com/nativ3ai/hermes-agent-camel) - Hermes Agent fork with CaMeL trust boundaries for safer autonomous operation.
- [hermes-incident-commander](https://github.com/Lethe044/hermes-incident-commander) - Autonomous SRE agent for infrastructure incident detection and self-healing.
- [hermescraft](https://github.com/bigph00t/hermescraft) - Minecraft AI companion agent demonstrating embodied gameplay interaction.

## Tutorials and Guides

- [Bitdoze Setup Guide](https://www.bitdoze.com/hermes-agent-setup-guide/) - Step-by-step installation and configuration tutorial with screenshots.
- [DEV Community Review](https://dev.to/george_larson_3cc4a57b08b/hermes-agent-honest-review-1557) - Independent developer review covering real-world usage experience.
- [hermes-wsl-ubuntu](https://github.com/metantonio/hermes-wsl-ubuntu) - Detailed guide for setting up Hermes Agent on Windows Subsystem for Linux.
- [TrySliq Review](https://trysliq.com/blog/hermes-agent-review) - Practical review focusing on daily workflow integration and productivity.

## Community

- [Forum](https://forum.nousresearch.com) - Official Nous Research community forum for long-form discussions.
- [Reddit r/hermesagent](https://www.reddit.com/r/hermesagent/) - Dedicated subreddit for Hermes Agent users and developers.
- [Reddit r/LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/) - Broader local AI community with active Hermes Agent discussions.
- [Twitter/X @NousResearch](https://x.com/NousResearch) - Official account for announcements and updates.

## Related Lists

- [Awesome AI Agents](https://github.com/e2b-dev/awesome-ai-agents) - Comprehensive list of AI agent projects across all frameworks.
- [Awesome LLM Apps](https://github.com/Shubhamsaboo/awesome-llm-apps) - Curated collection of applications built with large language models.
- [Awesome OpenClaw Skills](https://github.com/VoltAgent/awesome-openclaw-skills) - Community skills list for the OpenClaw agent platform.

## Footnotes

This list is partially maintained with the help of Hermes Agent for automated link checking and content discovery.

## Contributing

Contributions welcome! Read the [contribution guidelines](contributing.md) first.
