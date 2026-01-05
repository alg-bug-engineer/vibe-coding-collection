# Awesome Vibe Coding

A curated list of awesome Vibe Coding resources.

> **Vibe Coding**（氛围编程）是由 Andrej Karpathy 在 2025 年提出的新兴编程范式，强调通过自然语言与 AI 工具协作完成软件开发。

## Contents

* [Contents](#contents)
* [General Resources](#general-resources)
  * [Learning Platforms](#learning-platforms)
  * [Official Documentation](#official-documentation)
  * [Tools](#tools)
  * [YouTube Series](#youtube-series)
  * [Blogs and News](#blogs-and-news)
* [Core Concepts](#core-concepts)
  * [What is Vibe Coding](#what-is-vibe-coding)
  * [Development Patterns](#development-patterns)
  * [Best Practices](#best-practices)
* [AI Coding Tools](#ai-coding-tools)
  * [IDE Integration](#ide-integration)
  * [CLI Tools](#cli-tools)
  * [Web Platforms](#web-platforms)
  * [Agent Frameworks](#agent-frameworks)
* [Learning Resources](#learning-resources)
  * [Tutorials](#tutorials)
  * [Video Tutorials](#video-tutorials)
  * [GitHub Repositories](#github-repositories)
  * [Expert Resources](#expert-resources)
* [Open Source Models](#open-source-models)
* [Research Papers](#research-papers)
* [Related Awesome Lists](#related-awesome-lists)
* [Contributing](#contributing)
* [License](#license)

## General Resources

### Learning Platforms

* [Vibe Coding 101](https://www.vibecoding101.net/) - Free, systematic, practical AI programming tutorials covering Claude, Cursor, Gemini and more
* [Vibe Coding 零基础 AI 编程课](https://vibecoding.hot/) - From zero to commercial developer course
* [Khan Academy - Computer Programming](https://www.khanacademy.org/computing/computer-programming)
* [Coursera - AI and Machine Learning](https://www.coursera.org/browse/computer-science/artificial-intelligence)
* [edX - Computer Science](https://www.edx.org/course?search_query=programming)
* [FreeCodeCamp](https://www.freecodecamp.org/)
* [The Odin Project](https://www.theodinproject.com/)

### Official Documentation

* [Anthropic Claude Documentation](https://docs.anthropic.com/claude/docs)
* [Anthropic Claude API](https://docs.anthropic.com/api/getting-started)
* [GitHub Copilot Documentation](https://docs.github.com/en/copilot)
* [Cursor Documentation](https://cursor.sh/docs)
* [OpenAI API Documentation](https://platform.openai.com/docs)

### Tools

* [Cursor](https://cursor.sh/) - AI-powered code editor
* [GitHub Copilot](https://github.com/features/copilot) - AI pair programmer
* [Claude Code](https://docs.anthropic.com/claude/docs/claude-code) - Official CLI tool for vibe coding
* [Aider](https://aider.chat/) - AI pair programmer in your terminal
* [Continue](https://continue.dev/) - Open-source autopilot for VS Code
* [Bolt.new](https://bolt.new/) - AI-powered web development platform
* [v0.dev](https://v0.dev/) - AI UI component generator
* [Div-idy](https://div-idy.com/) - First fully AI-generated website builder platform
* [Void](https://vibeai.vip/) - Open-source AI code editor based on VS Code, emphasizing privacy and local control
* [Codium](https://www.codium.ai/) - AI-powered test generation
* [Tabnine](https://www.tabnine.com/) - AI code completion
* [CodeWhisperer](https://aws.amazon.com/codewhisperer/) - AWS AI coding companion
* [Bloop](https://bloop.ai/) - AI code search and understanding

### YouTube Series

* [3Blue1Brown](https://www.youtube.com/@3blue1brown) - Math and AI visualizations
* [Andrej Karpathy](https://www.youtube.com/@AndrejKarpathy) - Neural Networks: Zero to Hero
* [StatQuest](https://www.youtube.com/@statquest) - Statistics and machine learning
* [Traversy Media](https://www.youtube.com/@TraversyMedia) - Web development tutorials
* [FreeCodeCamp](https://www.youtube.com/@freecodecamp) - Programming tutorials
* [The Coding Train](https://www.youtube.com/@TheCodingTrain) - Creative coding
* [Fireship](https://www.youtube.com/@Fireship) - Quick tech tutorials

### Blogs and News

* [Anthropic Blog](https://www.anthropic.com/blog)
* [GitHub Blog - Copilot](https://github.blog/category/copilot/)
* [OpenAI Blog](https://openai.com/blog)
* [TechCrunch - AI](https://techcrunch.com/category/artificial-intelligence/)
* [The Verge - AI](https://www.theverge.com/ai-artificial-intelligence)

## Core Concepts

### What is Vibe Coding

**Vibe Coding** is a programming paradigm introduced by Andrej Karpathy in February 2025, emphasizing collaboration with AI tools through natural language to complete software development.

> "I just write code, the AI writes the code." - Andrej Karpathy

#### Core Principles

* **AI Collaboration First**: Developers become "Managers", AI assistants (like Claude, GPT-4) handle code implementation
* **Natural Language Interaction**: Describe requirements in human language, iterate through prompts
* **Rapid Iteration**: Focus on quick implementation of ideas and features, not syntax details
* **Formal Definition**: According to YuyaoGe's research, Vibe Coding can be viewed as a Constrained Markov Decision Process (CMDP) with multiple development patterns

#### Key Features

* **Intent-First**: Start with "What do I want to implement" rather than "How to write code"
* **Iterative**: Continuously refine and improve through dialogue
* **Low-Friction**: Reduce cognitive burden, let AI handle tedious syntax and framework details
* **Democratizing**: Lower the barrier to programming, enabling more people to create software

### Development Patterns

📝 [Vibe Coding Concepts](./docs/vibe-coding-concepts.md) - Detailed analysis of development patterns

According to research, Vibe Coding includes 5 main development patterns:

1. **Unconstrained Automation**: Fully automated code generation
2. **Iterative Dialogue**: Step-by-step refinement through conversation
3. **Planning-Driven**: Generate plans first, then implement
4. **Test-Driven**: Write tests first, then generate code
5. **Context-Enhanced**: Leverage project context for better results

### Best Practices

📝 [Best Practices Guide](./docs/tools-cases.md) - Comprehensive best practices and case studies

#### Prompt Engineering Tips

1. **Be Specific**: Clearly describe what you want to implement
2. **Provide Context**: Explain project background, tech stack, constraints
3. **Iterate and Refine**: Gradually improve requirements through multiple rounds of dialogue
4. **Request Explanations**: Ask AI to explain generated code for deeper understanding
5. **Verify and Test**: Always test AI-generated code

#### Workflow Recommendations

1. **Start with High-Level Design**: Let AI help design architecture first
2. **Implement in Modules**: Break large tasks into manageable units
3. **Maintain Conversation Continuity**: Keep context within the same session
4. **Version Control**: Use Git to record AI-assisted iteration process
5. **Learn and Grow**: Don't just use code, understand it

## AI Coding Tools

### IDE Integration

* [Cursor](https://cursor.sh/) - AI-native code editor based on VS Code
* [GitHub Copilot](https://github.com/features/copilot) - AI pair programmer for VS Code, JetBrains, Vim
* [Continue](https://continue.dev/) - Open-source autopilot for VS Code
* [Codeium](https://codeium.com/) - Free AI code completion
* [Tabnine](https://www.tabnine.com/) - AI code completion for multiple IDEs

📝 [Complete AI Tools List](./docs/ai-tools.md) - 50+ AI programming tools with detailed comparisons

### CLI Tools

* [Claude Code](https://docs.anthropic.com/claude/docs/claude-code) - Official CLI tool from Anthropic
* [Aider](https://aider.chat/) - AI pair programmer in terminal with Git integration
* [Cline](https://github.com/approximatelabs/cline) - AI assistant for terminal
* [GitHub Copilot CLI](https://githubnext.com/projects/copilot-cli/) - GitHub Copilot in terminal

### Web Platforms

* [Bolt.new](https://bolt.new/) - AI-powered web development in browser
* [v0.dev](https://v0.dev/) - AI UI component generator for React/Next.js
* [Replit](https://replit.com/) - AI-powered online IDE
* [Codeium](https://codeium.com/) - AI coding assistant in browser

### Agent Frameworks

* [LangChain](https://www.langchain.com/) - Framework for building LLM applications
* [AutoGPT](https://github.com/Significant-Gravitas/AutoGPT) - Autonomous AI agent
* [CrewAI](https://www.crewai.com/) - Framework for orchestrating role-playing AI agents
* [OpenHands](https://github.com/columbia/OpenHands) - Autonomous coding agent
* [Aider](https://aider.chat/) - AI pair programmer with agent capabilities

📝 [Agent Frameworks Guide](./docs/agent-frameworks.md) - Complete guide to AI agent frameworks

## Learning Resources

### Tutorials

📝 [Tutorials and Learning Paths](./docs/tutorials.md) - Comprehensive tutorial collection

#### Getting Started

* [Claude Code Guide](https://docs.anthropic.com/claude/docs/claude-code) - Official Anthropic documentation
* [GitHub Copilot Quickstart](https://docs.github.com/en/copilot/quickstart) - 15-minute getting started guide
* [Cursor Introduction](https://cursor.sh/docs/intro) - Official Cursor documentation

#### Advanced Topics

* [Prompt Engineering Guide](https://docs.anthropic.com/claude/docs/prompt-engineering) - Anthropic's guide to effective prompting
* [OpenAI Prompt Engineering](https://platform.openai.com/docs/guides/prompt-engineering) - Prompting techniques for GPT-4
* [Effective AI Pair Programming](https://github.blog/2023-10-16-introducing-github-copilot-chat/) - Best practices for AI collaboration

### Video Tutorials

📝 [Video Tutorials Collection](./docs/video-tutorials.md) - Curated video resources

#### Must-Watch Series

* [Neural Networks: Zero to Hero](https://www.youtube.com/playlist?list=PLAqhIrjkxbuWI23v9cThsA9GvCAUhRvKZ) - Andrej Karpathy
* [AI for Everyone](https://www.coursera.org/learn/ai-for-everyone) - Andrew Ng
* [Cursor Features Deep Dive](https://www.youtube.com/@cursor) - Cursor Official

#### Beginner-Friendly

* [AI Programming for Beginners](https://www.youtube.com/results?search_query=ai+programming+for+beginners) - FreeCodeCamp
* [Build AI Apps with OpenAI API](https://www.youtube.com/results?search_query=build+ai+apps+openai) - Traversy Media

### GitHub Repositories

📝 [GitHub Repositories Guide](./docs/github-repositories.md) - Curated list of quality repositories

#### Top Vibe Coding Repositories

* [YuyaoGe/Awesome-Vibe-Coding](https://github.com/YuyaoGe/Awesome-Vibe-Coding) ⭐ - Most comprehensive Vibe Coding ecosystem overview
* [filipecalegario/awesome-vibe-coding](https://github.com/filipecalegario/awesome-vibe-coding) - Curated list of Vibe Coding resources
* [analyticalrohit/awesome-vibe-coding-guide](https://github.com/analyticalrohit/awesome-vibe-coding-guide) - Become 10x Vibe Coder guide
* [cpjet64/vibecoding](https://github.com/cpjet64/vibecoding) - Collaboration space for Vibe Coders
* [humanstack/vibe-coding-template](https://github.com/humanstack/vibe-coding-template) - Complete full-stack template for vibe coding with code context

#### Official SDKs

* [anthropics/anthropic-sdk-python](https://github.com/anthropics/anthropic-sdk-python) - Anthropic Python SDK
* [anthropics/anthropic-sdk-typescript](https://github.com/anthropics/anthropic-sdk-typescript) - Anthropic TypeScript SDK
* [openai/openai-python](https://github.com/openai/openai-python) - OpenAI Python library

### Expert Resources

📝 [Expert Resources and Documentation](./docs/experts-docs.md) - Resources from experts and major companies

#### International Experts

* **Andrej Karpathy** - Former Tesla AI Director, Vibe Coding concept creator
* **Andrew Ng** - DeepLearning.AI founder, AI education pioneer
* **Jeremy Howard** - Fast.ai founder, practical deep learning advocate

#### Major Companies

* **Microsoft** - GitHub Copilot, Azure AI
* **Google** - Gemini, TensorFlow
* **OpenAI** - GPT-4, Codex
* **Anthropic** - Claude, Claude Code

## Open Source Models

📝 [Open Source Models Guide](./docs/open-source-models.md) - Complete guide to open source code models

### Popular Models

* [DeepSeek Coder](https://github.com/deepseek-ai/DeepSeek-Coder) - High-performance code generation model
* [CodeLlama](https://github.com/facebookresearch/codellama) - Meta's code generation model
* [Codestral](https://mistral.ai/news/codestral/) - Mistral's code generation model
* [StarCoder](https://github.com/bigcode-project/starcoder) - Open source code generation model

### Local Deployment

* [Ollama](https://ollama.ai/) - Run LLMs locally
* [vLLM](https://github.com/vllm-project/vllm) - Fast LLM serving and inference
* [LM Studio](https://lmstudio.ai/) - Desktop app for running LLMs locally

## Research Papers

📝 Academic research on Vibe Coding and AI-assisted programming

* [Good Vibrations? A Qualitative Study of Co-Creation, Communication, Flow, and Trust in Vibe Coding](https://arxiv.org/abs/2509.12491) - Qualitative study on collaboration, communication, flow, and trust in vibe coding
* [Is Vibe Coding Safe? Benchmarking Vulnerability of Agent-Generated Code in Real-World Tasks](https://arxiv.org/abs/2512.03262) - Evaluation of security vulnerabilities in AI-generated code for real-world tasks

## Related Awesome Lists

* [Awesome AI](https://github.com/owainlewis/awesome-artificial-intelligence)
* [Awesome Machine Learning](https://github.com/josephmisiti/awesome-machine-learning)
* [Awesome Deep Learning](https://github.com/ChristosChristofidis/awesome-deep-learning)
* [Awesome Prompt Engineering](https://github.com/promptslab/Awesome-Prompt-Engineering)
* [Awesome ChatGPT](https://github.com/sindresorhus/awesome-chatgpt)

## Contributing

Contributions are welcome! Please read our [Contributing Guide](CONTRIBUTING.md) first.

We welcome:
* New tutorials, documentation links (with brief descriptions)
* Quality video resources
* GitHub repositories (with reasons for recommendation)
* Practical experiences and case studies
* Translations and localization content

When submitting a PR, please ensure:
1. Resources are accurate and verified
2. Provide clear descriptions and categorization
3. Follow existing format

## License

[![CC0](https://mirrors.creativecommons.org/presskit/buttons/88x31/svg/cc-zero.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

To the extent possible under law, the contributors have waived all copyright and related or neighboring rights to this work.

---

**Note**: Vibe Coding is a rapidly evolving field. This repository is continuously updated. We recommend checking regularly for the latest updates.

**Contact**: Submit questions and suggestions via [GitHub Issues](https://github.com/alg-bug-engineer/vibe-coding-collection/issues)
