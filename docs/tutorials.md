# 教程与学习资源

## 🎓 官方教程

### Anthropic Claude
- **[Claude 完整文档](https://docs.anthropic.com/claude/docs)**
  - 官方最权威的资源
  - 涵盖所有功能和使用场景
  - 包含代码示例和最佳实践
  - 📚 **必读**

- **[Claude Code 使用指南](https://docs.anthropic.com/claude/docs/claude-code)**
  - 专为开发者设计的 CLI 工具
  - Vibe Coding 的官方实现
  - 包含完整工作流示例

- **[Prompt Engineering Guide](https://docs.anthropic.com/claude/docs/prompt-engineering)**
  - 如何有效地与 Claude 沟通
  - 适用于编程场景的技巧

### GitHub Copilot
- **[Copilot 快速入门](https://docs.github.com/en/copilot/quickstart)**
  - 15 分钟上手指南
  - 支持的 IDE 和编辑器
  - 基本功能和快捷键

- **[Copilot Chat 指南](https://docs.github.com/en/copilot/copilot-chat)**
  - 对话式编程教程
  - 实用示例和场景

- **[Copilot 最佳实践](https://docs.github.com/en/copilot/best-practices)**
  - 官方推荐的使用方式
  - 提升效率的技巧

### Cursor
- **[Cursor 官方文档](https://cursor.sh/docs)**
  - 编辑器完整使用手册
  - 快捷键和配置
  - AI 功能详解

- **[Cursor 教程系列](https://cursor.sh/docs/tutorials)**
  - 从入门到进阶
  - 实战项目演示

## 📝 入门教程（中文）

### Vibe Coding 基础
1. **[Vibe Coding 入门指南](./vibe-coding-concepts.md)**
   - 本项目内部文档
   - 理解核心理念和概念
   - 适用场景分析

2. **AI 辅助编程实践**
   - 待补充：社区贡献的中文教程
   - 欢迎提交 PR 贡献内容

### 工具安装和配置
1. **Claude Code 安装**
   ```bash
   # macOS
   brew install claude-code

   # Linux
   curl -fsSL https://claude.ai/install.sh | sh

   # Windows
   # 从官网下载安装包
   ```
   详细步骤：参考官方文档

2. **Cursor 安装**
   - 下载：https://cursor.sh/download
   - 支持 macOS, Windows, Linux
   - 一键导入 VSCode 设置

3. **GitHub Copilot 设置**
   - 订阅：https://github.com/features/copilot
   - IDE 插件安装
   - 账号关联和激活

## 🎬 视频教程

### 中文视频
- **待添加**
  - 欢迎推荐优质的中文视频教程
  - B站、YouTube 等平台

### 英文视频（推荐）

#### 入门级
1. **[AI Coding for Beginners](https://www.youtube.com/watch?v=example)**
   - 基础概念介绍
   - 工具安装演示
   - 第一个 AI 辅助项目

2. **[Getting Started with Cursor](https://www.youtube.com/results?search_query=cursor+editor+tutorial)**
   - Cursor 编辑器入门
   - 常用功能演示

3. **[GitHub Copilot Full Course](https://www.youtube.com/results?search_query=github+copilot+tutorial)**
   - Copilot 完整教程
   - 实际项目演示

#### 进阶内容
1. **[Advanced Prompt Engineering for Coding](https://www.youtube.com/results?search_query=prompt+engineering+code)**
   - 高级提示技巧
   - 复杂场景处理

2. **[Building Full-Stack Apps with AI](https://www.youtube.com/results?search_query=ai+coding+fullstack)**
   - 全栈项目实战
   - 从设计到部署

3. **[Andrej Karpathy - Intro to LLMs](https://www.youtube.com/watch?v=kCc8FmEb1nY)**
   - 理解 LLM 工作原理
   - 更好地使用 AI 工具

## 📚 文章和博客

### 中文文章
- **机器之心**
  - 搜索：AI 编程、代码生成
  - https://www.jiqizhixin.com/

- **量子位**
  - Claude、Copilot 相关报道
  - https://www.qbitai.com/

- **掘金**
  - 搜索：Vibe Coding、AI 辅助编程
  - 社区实践经验分享
  - https://juejin.cn/

### 英文文章（权威来源）

#### 官方博客
1. **[Anthropic Blog](https://www.anthropic.com/blog)**
   - Claude 功能更新
   - 案例研究和最佳实践
   - 技术深度解析

2. **[GitHub Blog - Copilot](https://github.blog/category/copilot/)**
   - Copilot 新功能
   - 团队使用经验
   - 开发者故事

3. **[OpenAI Blog](https://openai.com/blog)**
   - GPT 能力进展
   - 代码生成技术

#### 技术媒体
1. **[TechCrunch AI](https://techcrunch.com/category/artificial-intelligence/)**
   - AI 编程工具行业新闻
   - 产品评测

2. **[The Verge AI](https://www.theverge.com/ai-artificial-intelligence)**
   - 深度报道
   - 行业趋势分析

3. **[Hacker News](https://news.ycombinator.com/)**
   - 搜索：AI coding, Claude, Copilot
   - 开发者讨论
   - 工具推荐和评价

## 🔧 实战教程

### 项目 1：构建个人博客
**目标**：使用 AI 辅助创建一个简单的博客网站

**步骤**：
1. 设计阶段
   - 让 AI 帮助规划功能
   - 选择技术栈（推荐：Next.js + Tailwind CSS）
   - 设计数据结构

2. 开发阶段
   - 使用 Cursor 或 Claude Code
   - 逐步实现各个功能
   - 每个功能与 AI 对话完成

3. 部署阶段
   - 让 AI 生成部署配置
   - 使用 Vercel 或 Netlify 部署

**预计时间**：1-2 天（传统方式可能需要 1-2 周）

### 项目 2：API 集成工具
**目标**：创建一个调用多个 API 的数据处理工具

**学习要点**：
- API 设计和文档理解
- 错误处理
- 数据格式转换

**AI 辅助重点**：
- 让 AI 阅读 API 文档
- 生成客户端代码
- 处理边界情况

### 项目 3：自动化脚本
**目标**：编写自动化工作流脚本

**场景示例**：
- 文件整理和批处理
- 数据备份和同步
- 报告生成

**AI 优势**：
- 快速生成脚本框架
- 处理各种边界情况
- 添加日志和错误处理

## 📖 推荐阅读顺序

### 绝对初学者（1-2 周）
1. 阅读 [Vibe Coding 核心概念](./vibe-coding-concepts.md)（1 天）
2. 选择并安装一个 AI 编程工具（1 天）
3. 完成官方入门教程（2-3 天）
4. 观看视频教程，理解工作流（2-3 天）
5. 完成第一个小项目（5-7 天）

### 有编程基础（1 周）
1. 快速浏览核心概念（半天）
2. 安装工具并阅读官方文档（1 天）
3. 观看进阶视频教程（2 天）
4. 完成一个中等项目（3-4 天）

### 进阶学习（持续）
1. 阅读 Prompt Engineering 深度指南
2. 关注官方博客更新
3. 参与社区讨论
4. 尝试新工具和功能
5. 分享个人经验和最佳实践

## 💡 学习技巧

### 有效的学习方式
1. **动手实践**：边看教程边操作
2. **记录笔记**：记录有用的 prompt 和技巧
3. **构建项目**：通过实际项目巩固知识
4. **阅读代码**：仔细理解 AI 生成的代码
5. **迭代改进**：不断优化自己的工作流

### 常见错误
❌ 盲目复制粘贴 AI 生成的代码
❌ 不理解代码逻辑就部署
❌ 过度依赖 AI，失去编程能力
❌ 忽视代码质量和安全性
❌ 不测试就提交代码

### 推荐做法
✅ 理解并学习 AI 生成的代码
✅ 始终进行测试和验证
✅ 保持代码审查习惯
✅ 关注安全和性能
✅ 用 AI 辅助学习，而非替代学习

## 🔗 快速链接

- [返回主 README](../README.md)
- [GitHub 仓库推荐](./github-repositories.md)
- [核心概念详解](./vibe-coding-concepts.md)

---

**贡献者注意**：
如果你发现好的教程资源，欢迎提交 PR！
请包含：资源链接、简要描述、适合人群、推荐理由

**更新日期**: 2025-01-04
