# 项目创建和上传指南

由于系统环境限制，无法直接使用 GitHub CLI 创建远程仓库。本指南提供详细的步骤说明，帮助你将本地上传的 `vibe-coding-collection` 项目推送到 GitHub。

## 前提条件
- 一个 GitHub 账号
- 本地安装了 Git
- 本项目已在本地创建完成

## 方法一：通过 GitHub 网页创建仓库（推荐）

### 步骤 1：在 GitHub 创建新仓库

1. **登录 GitHub**
   - 访问 https://github.com
   - 使用你的账号登录

2. **创建新仓库**
   - 点击右上角的 "+" 图标
   - 选择 "New repository"

3. **填写仓库信息**
   ```
   Repository name: vibe-coding-collection
   Description: 收集关于 Vibe Coding（氛围编程）的教程、新闻、视频、文档等高质量资源

   可见性：选择 Public（公开）或 Private（私有）
   ```

4. **创建选项**
   - ❌ **不要勾选** "Add a README file"（我们已经有了）
   - ❌ **不要勾选** "Add .gitignore"
   - ❌ **不要勾选** "Choose a license"（我们已经添加了 MIT）

5. **点击 "Create repository"**

### 步骤 2：推送本地代码到 GitHub

在终端中执行以下命令：

```bash
# 1. 进入项目目录
cd /Users/zhangqilai/project/vibe-coding-collection

# 2. 初始化 Git 仓库（如果还没初始化）
git init

# 3. 添加所有文件
git add .

# 4. 创建初始提交
git commit -m "Initial commit: Vibe Coding 资源集合

- 添加核心概念详解
- 添加教程资源列表
- 添加 GitHub 仓库推荐
- 添加最新动态和新闻
- 添加 FAQ 和贡献指南"

# 5. 添加远程仓库（替换 YOUR_USERNAME 为你的 GitHub 用户名）
git remote add origin https://github.com/YOUR_USERNAME/vibe-coding-collection.git

# 6. 推送代码到 GitHub
git branch -M main  # 重命名分支为 main
git push -u origin main
```

### 步骤 3：验证

1. 访问 `https://github.com/YOUR_USERNAME/vibe-coding-collection`
2. 检查所有文件是否已上传
3. 查看 README.md 是否正确显示

## 方法二：使用 GitHub Desktop（图形界面）

如果你更喜欢图形界面：

1. **下载 GitHub Desktop**
   - 访问 https://desktop.github.com/
   - 安装并登录

2. **创建本地仓库**
   - File → Add Local Repository
   - 选择 `/Users/zhangqilai/project/vibe-coding-collection`

3. **推送到 GitHub**
   - 在 GitHub Desktop 中点击 "Publish repository"
   - 填写仓库名称和描述
   - 选择可见性
   - 点击 "Publish"

## 方法三：安装 GitHub CLI 后使用（可选）

如果你想使用命令行工具：

### 安装 GitHub CLI

**macOS** (需要先安装 Homebrew):
```bash
# 安装 Homebrew（如果没有）
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 安装 GitHub CLI
brew install gh

# 认证
gh auth login
```

**Windows**:
```bash
# 使用 winget
winget install --id GitHub.cli

# 或从官网下载安装包
# https://cli.github.com/
```

**Linux**:
```bash
# macOS/Linux
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh
```

### 使用 gh 创建仓库

```bash
# 1. 进入项目目录
cd /Users/zhangqilai/project/vibe-coding-collection

# 2. 初始化 Git（如果还没初始化）
git init
git add .
git commit -m "Initial commit"

# 3. 使用 gh 创建仓库并推送
gh repo create vibe-coding-collection --public --source=. --remote=origin --push
```

## 上传后的后续步骤

### 1. 设置仓库主题（可选）
- 访问仓库页面
- 点击 ⚙️ Settings
- 滚动到 "GitHub Pages" 或 "Topics"
- 添加相关主题：`ai`, `coding`, `vibe-coding`, `prompt-engineering`, `developer-tools`

### 2. 添加仓库描述和标签
在仓库页面点击 ⚙️ 图标：
```
Description: 收集关于 Vibe Coding（氛围编程）的教程、新闻、视频、文档等高质量资源

Website: (可选，如果有相关网站)

Topics: ai-coding, vibe-coding, prompt-engineering, claude, copilot, ai-assistant, developer-tools
```

### 3. 启用 GitHub Issues 和 Discussions
- Settings → General → Features
- ✅ Issues
- ✅ Discussions
- ✅ Actions（如果需要）

### 4. 设置分支保护（可选）
- Settings → Branches
- 添加规则保护 `main` 分支
- 要求 PR review
- 要求状态 checks

### 5. 添加贡献和行为准则
仓库已包含：
- ✅ CONTRIBUTING.md（贡献指南）
- ✅ LICENSE（MIT 许可证）
- ✅ README.md（项目说明）
- ✅ FAQ.md（常见问题）

## 验证清单

上传完成后，检查：

- [ ] 仓库在 GitHub 上可见
- [ ] 所有文件都已上传（docs/ 目录、LICENSE、README.md 等）
- [ ] README.md 正确渲染，图片和链接正常
- [ ] 仓库名称、描述、标签已设置
- [ ] Issues 和 Discussions 已启用
- [ ] LICENSE 文件显示在仓库页面

## 分享你的仓库

创建完成后，可以：

1. **分享到社交媒体**：
   - Twitter: 使用 #AICoding #VibeCoding 标签
   - LinkedIn: 分享给开发者网络
   - 技术社区：Reddit, V2EX, 掘金

2. **提交到 Awesome Lists**：
   - 搜索相关的 awesome 列表
   - 提交 PR 添加你的仓库

3. **写博客**：
   - 介绍创建这个仓库的原因
   - 分享 Vibe Coding 经验

## 维护建议

保持仓库活跃：

1. **定期更新**（每周）
   - 添加新发现的资源
   - 更新新闻和动态
   - 修复失效链接

2. **社区互动**
   - 及时回应 Issues
   - Review 和合并 PR
   - 参与 Discussions

3. **质量保证**
   - 验证添加的资源
   - 保持内容准确性
   - 更新过时信息

## 常见问题

### Q: 推送时出现错误 "fatal: remote origin already exists"
**A**: 移除现有远程仓库后重新添加
```bash
git remote remove origin
git remote add origin https://github.com/YOUR_USERNAME/vibe-coding-collection.git
```

### Q: 推送时要求用户名和密码
**A**: GitHub 已不再支持密码认证，请使用 Personal Access Token：
1. GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Generate new token（选择 repo 权限）
3. 使用 token 作为密码

### Q: 想要修改仓库名称
**A**:
1. 仓库页面 → Settings → General
2. Repository name → 输入新名称
3. Rename
4. 更新本地远程仓库：
```bash
git remote set-url origin https://github.com/YOUR_USERNAME/NEW_NAME.git
```

## 需要帮助？

- GitHub 官方文档：https://docs.github.com/
- Git 官方文档：https://git-scm.com/doc
- 提交 Issue 到本仓库（如果已创建）

---

**祝你上传顺利！** 🎉

创建完成后，欢迎分享仓库链接，让更多人受益于这些 Vibe Coding 资源。
