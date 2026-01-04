# AI 编程工具完整清单

本页面收集所有主流的 AI 编程工具，按类别整理。

## 🎯 快速选择指南

| 场景 | 推荐工具 | 免费版 | 特点 |
|------|---------|--------|------|
| **初学者入门** | Cursor | ❌ | 最简单易用，集成度高 |
| **命令行爱好者** | Aider | ✅ | Git 集成，终端操作 |
| **VSCode 用户** | Continue | ✅ | 开源，多模型支持 |
| **Web 快速开发** | Bolt.new | ✅ | 浏览器内开发，实时预览 |
| **企业团队** | GitHub Copilot | ❌ | 与 GitHub 深度集成 |
| **Claude 用户** | Claude Code | ✅ | 官方 CLI，长上下文 |
| **自主 Agent** | OpenHands | ✅ | 自动完成复杂任务 |
| **UI 生成** | v0.dev | ✅ | React/Next.js 专用 |
| **本地部署** | Ollama + Continue | ✅ | 隐私保护，离线使用 |

---

## 💻 IDE 集成工具

### Cursor
- **官网**: https://cursor.sh/
- **GitHub**: https://github.com/getcursor/cursor
- **价格**: $20/月（个人），$40/月（商业）
- **支持模型**: GPT-4, Claude 3.5 Sonnet
- **特点**:
  - AI 原生代码编辑器，基于 VSCode
  - 完美集成 AI 功能（补全、聊天、重构）
  - 支持整个项目的代码库理解
  - 多文件编辑和重构
  - 自然语言命令
- **适用场景**: 日常开发，全栈项目，团队协作
- **学习成本**: 低
- **评分**: ⭐⭐⭐⭐⭐

### GitHub Copilot
- **官网**: https://github.com/features/copilot
- **文档**: https://docs.github.com/en/copilot
- **价格**: $10/月（个人），$19/月（商业）
- **支持模型**: OpenAI GPT-4
- **特点**:
  - GitHub 官方，与 GitHub 深度集成
  - 支持 VS Code, JetBrains, Vim, Neovim
  - Copilot Chat 对话式编程
  - Copilot Labs 实验性功能
  - 代码建议补全
- **适用场景**: GitHub 重度用户，企业团队
- **学习成本**: 低
- **评分**: ⭐⭐⭐⭐

### Continue
- **官网**: https://continue.dev
- **GitHub**: https://github.com/continuedev/continue
- **价格**: 免费（开源）
- **支持模型**: GPT-4, Claude, Llama, Mistral 等
- **特点**:
  - 完全开源免费
  - 支持多种 LLM
  - VS Code 和 JetBrains 扩展
  - 可自定义 prompt
  - 上下文感知能力强
- **适用场景**: 开源爱好者，多模型用户
- **学习成本**: 中
- **评分**: ⭐⭐⭐⭐⭐

### Codium / Codeium
- **官网**: https://codeium.com/
- **GitHub**: https://github.com/CodiumAI
- **价格**: 免费（个人）
- **特点**:
  - 完全免费
  - 支持 70+ 编程语言
  - 支持 VS Code, JetBrains, Vim
  - AI 代码补全和聊天
  - 自动生成单元测试
- **适用场景**: 预算有限的开发者
- **学习成本**: 低
- **评分**: ⭐⭐⭐⭐

### Tabnine
- **官网**: https://www.tabnine.com/
- **GitHub**: https://github.com/Tabnine/Tabnine
- **价格**: $12/月（Pro）
- **特点**:
  - 支持本地模型（隐私保护）
  - AI 代码补全
  - 支持多种 IDE
  - 团队协作功能
- **适用场景**: 对隐私要求高的企业
- **学习成本**: 低
- **评分**: ⭐⭐⭐⭐

---

## 🖥️ 命令行工具

### Aider
- **GitHub**: https://github.com/paul-gauthier/aider
- **官网**: https://aider.chat/
- **价格**: 免费（开源）
- **支持模型**: GPT-4, Claude, Local LLMs
- **特点**:
  - Git 集成的 AI pair programming
  - 自动提交和版本控制
  - 支持大型代码库
  - 命令行操作
  - 可以自动运行和测试代码
- **适用场景**: 终端用户，Git 重度用户
- **学习成本**: 中
- **评分**: ⭐⭐⭐⭐⭐

### Claude Code (Anthropic)
- **官网**: https://claude.ai/code
- **文档**: https://docs.anthropic.com/claude/docs/claude-code
- **价格**: 免费（使用 Claude API）
- **支持模型**: Claude 3.5 Sonnet, Opus
- **特点**:
  - Anthropic 官方 CLI 工具
  - 支持超长上下文（200K tokens）
  - 项目级代码理解
  - 自动文件操作
  - Bash 命令执行
- **适用场景**: Claude 用户，复杂项目
- **学习成本**: 中
- **评分**: ⭐⭐⭐⭐⭐

### OpenHands
- **GitHub**: https://github.com/OpenHands/openhands
- **官网**: https://openhands.ai/
- **价格**: 免费（开源）
- **特点**:
  - 自主 AI 软件开发 agent
  - 可以自动完成复杂任务
  - 支持问题解决和 bug 修复
  - Web UI 或命令行
  - 支持多种 LLM
- **适用场景**: 自动化开发任务
- **学习成本**: 高
- **评分**: ⭐⭐⭐⭐

### Ollama
- **GitHub**: https://github.com/ollama/ollama
- **官网**: https://ollama.com/
- **价格**: 免费（开源）
- **特点**:
  - 本地运行 LLM
  - 支持 CodeLlama, DeepSeek Coder 等
  - 简单命令行界面
  - 可与其他工具集成
- **适用场景**: 隐私保护，离线使用
- **学习成本**: 低
- **评分**: ⭐⭐⭐⭐⭐

---

## 🌐 Web 平台

### Bolt.new
- **官网**: https://bolt.new
- **GitHub**: https://github.com/stackblitz/bolt
- **价格**: 免费层 + 付费
- **特点**:
  - Web 原生 AI 开发环境
  - 浏览器中直接开发
  - 实时预览和部署
  - 支持全栈开发
  - 基于 StackBlitz
- **适用场景**: 快速原型，Web 应用
- **学习成本**: 低
- **评分**: ⭐⭐⭐⭐⭐

### v0.dev (Vercel)
- **官网**: https://v0.dev
- **价格**: 免费层 + 付费
- **支持模型**: GPT-4
- **特点**:
  - AI 生成的 React 组件
  - 专注于 Next.js 和 Tailwind
  - 实时预览
  - 可导出代码
  - Vercel 集成部署
- **适用场景**: React/Next.js 开发者
- **学习成本**: 低
- **评分**: ⭐⭐⭐⭐⭐

### Replit AI
- **官网**: https://replit.com/
- **GitHub**: https://github.com/replit
- **价格**: 免费层 + 付费
- **特点**:
  - 在线 IDE + AI
  - 一键部署
  - 协作编程
  - 支持多种语言
  - 内置数据库
- **适用场景**: 教育，快速原型
- **学习成本**: 低
- **评分**: ⭐⭐⭐⭐

---

## 🤖 自主 AI Agent

### OpenHands (原 OpenDevin)
- **GitHub**: https://github.com/OpenHands/openhands
- **官网**: https://openhands.ai/
- **价格**: 免费（开源）
- **特点**:
  - 完全自主的软件开发 AI
  - 可以编写代码、运行测试、修复 bug
  - 支持复杂的多步骤任务
  - 类似人类的开发工作流
- **适用场景**: 自动化开发任务
- **学习成本**: 高
- **评分**: ⭐⭐⭐⭐

### AutoGPT
- **GitHub**: https://github.com/autogpt/autogpt
- **官网**: https://news.agpt.co/
- **价格**: 免费（开源）
- **特点**:
  - 自主 AI agent
  - 自动完成复杂任务
  - 可扩展插件系统
  - 支持多种 LLM
- **适用场景**: 自动化任务，实验性项目
- **学习成本**: 高
- **评分**: ⭐⭐⭐⭐

### Devin (Cognition AI)
- **官网**: https://www.cognition.ai/devin
- **价格**: 企业定制
- **特点**:
  - 第一个 AI 软件工程师
  - 完全自主开发
  - 端到端项目构建
  - 商业产品
- **适用场景**: 企业级自动化
- **学习成本**: N/A
- **评分**: ⭐⭐⭐⭐⭐

---

## 🧪 测试和验证工具

### CodiumAI
- **官网**: https://www.codium.ai/
- **GitHub**: https://github.com/CodiumAI
- **价格**: 免费层 + 付费
- **特点**:
  - AI 代码测试生成
  - 自动生成单元测试
  - 代码覆盖率分析
  - 测试用例建议
  - IDE 集成
- **适用场景**: 测试驱动开发
- **学习成本**: 中
- **评分**: ⭐⭐⭐⭐

### Metatable
- **官网**: https://metatable.com/
- **价格**: 免费层 + 付费
- **特点**:
  - AI 辅助测试
  - 智能测试用例生成
  - 回归测试
- **适用场景**: 质量保证团队
- **学习成本**: 中
- **评分**: ⭐⭐⭐⭐

---

## 🔧 特殊用途工具

### Bloop
- **官网**: https://bloop.ai/
- **GitHub**: https://github.com/BloopAI/bloop
- **价格**: 免费（开源）
- **特点**:
  - 代码搜索和理解
  - 快速索引大型代码库
  - 自然语言查询
  - 本地运行
- **适用场景**: 代码审查，理解遗留代码
- **学习成本**: 低
- **评分**: ⭐⭐⭐⭐

### Sourcegraph Cody
- **官网**: https://about.sourcegraph.com/cody
- **GitHub**: https://github.com/sourcegraph/cody
- **价格**: 免费层 + 付费
- **特点**:
  - 代码理解和搜索
  - 企业级代码智能
  - 支持大型 monorepo
  - 上下文感知强
- **适用场景**: 大型企业项目
- **学习成本**: 中
- **评分**: ⭐⭐⭐⭐

---

## 📊 工具对比矩阵

### 按价格分类

| 免费/开源 | 付费 | 混合模式 |
|----------|------|---------|
| Continue | Cursor ($20/月) | Bolt.new |
| Aider | Copilot ($10/月) | v0.dev |
| OpenHands | Tabnine ($12/月) | CodiumAI |
| Ollama | Devin（企业） | Replit AI |
| Bloop | | Sourcegraph Cody |

### 按使用场景分类

#### Web 开发
1. **Cursor** - 最佳整体体验
2. **Bolt.new** - 快速原型
3. **v0.dev** - React 组件生成

#### 后端/系统编程
1. **Aider** - Git 集成强
2. **Claude Code** - 长上下文
3. **Copilot** - 多语言支持

#### 数据科学
1. **Continue** - Jupyter 集成
2. **CodiumAI** - 测试生成
3. **Cursor** - Python 支持好

#### 移动开发
1. **Copilot** - IDE 支持广
2. **Cursor** - 通用性强
3. **Continue** - 可定制

---

## 🎓 选择建议

### 初学者推荐
1. **Cursor** - 最简单，开箱即用
2. **Bolt.new** - 浏览器中，零配置
3. **v0.dev** - React 学习快速

### 专业开发者
1. **Aider** - Git 集成，效率高
2. **Claude Code** - 强大的项目理解
3. **Continue** - 开源，可定制

### 团队/企业
1. **GitHub Copilot** - 企业功能完善
2. **Sourcegraph Cody** - 大型项目
3. **Tabnine** - 本地部署，隐私保护

### 预算有限
1. **Continue** - 完全免费
2. **CodiumAI/Codeium** - 免费版功能强
3. **Aider** - 开源免费

### 隐私要求高
1. **Ollama** - 完全本地
2. **Tabnine** - 本地模型选项
3. **Bloop** - 本地索引

---

## 🔗 相关资源

- [Agent 框架对比](./agent-frameworks.md)
- [Prompt 工程指南](./prompts/)
- [工作流案例](./workflows/)
- [GitHub 仓库推荐](./github-repositories.md)

---

**最后更新**: 2025-01-04
**维护者**: vibe-coding-collection 社区
