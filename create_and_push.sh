#!/bin/bash

echo "=========================================="
echo "Vibe Coding Collection - GitHub 创建脚本"
echo "=========================================="
echo ""

# 检查是否有 GitHub Token
if [ -z "$GITHUB_TOKEN" ]; then
    echo "❌ 未找到 GITHUB_TOKEN 环境变量"
    echo ""
    echo "请按以下步骤创建 Personal Access Token："
    echo ""
    echo "1️⃣  访问: https://github.com/settings/tokens"
    echo "2️⃣  点击 'Generate new token' → 'Generate new token (classic)'"
    echo "3️⃣  勾选以下权限："
    echo "    ☑️ repo (完整的仓库访问权限)"
    echo "    ☑️ workflow (如果需要 GitHub Actions)"
    echo "4️⃣  设置过期时间（建议 90 天或更长）"
    echo "5️⃣  点击 'Generate token'"
    echo "6️⃣  复制生成的 token（只显示一次！）"
    echo ""
    echo "💡 设置 Token："
    echo "   export GITHUB_TOKEN='your_token_here'"
    echo ""
    read -p "是否现在输入 Token？(y/n): " input_token

    if [ "$input_token" = "y" ]; then
        read -s -p "请输入你的 GitHub Token: " GITHUB_TOKEN
        export GITHUB_TOKEN
        echo ""
        echo "✅ Token 已设置"
    else
        echo "❌ 取消操作"
        exit 1
    fi
fi

echo ""
echo "正在创建 GitHub 仓库..."
echo ""

# 创建仓库的 API 调用
response=$(curl -s -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/user/repos \
  -d '{
    "name": "vibe-coding-collection",
    "description": "收集关于 Vibe Coding（氛围编程）的教程、新闻、视频、文档等高质量资源。包含 50+ AI 编程工具、6 大 Agent 框架详解、开源模型部署指南",
    "private": false,
    "has_issues": true,
    "has_projects": true,
    "has_wiki": true,
    "has_discussions": true,
    "delete_branch_on_merge": true
  }')

# 检查是否成功
if echo "$response" | grep -q '"html_url"'; then
    echo "✅ 仓库创建成功！"
    echo ""
    echo "📍 仓库地址:"
    echo "$response" | grep -o '"html_url":"[^"]*' | cut -d'"' -f4
    echo ""
    echo "🎨 仓库信息:"
    echo "$response" | grep -o '"description":"[^"]*' | cut -d'"' -f4
    echo ""

    # 等待 GitHub 处理
    echo "⏳ 等待 GitHub 处理（3秒）..."
    sleep 3

    # 推送代码
    echo ""
    echo "🚀 正在推送代码到 GitHub..."
    echo ""

    git remote add origin git@github.com:alg-bug-engineer/vibe-coding-collection.git 2>/dev/null
    git remote set-url origin git@github.com:alg-bug-engineer/vibe-coding-collection.git

    if git push -u origin main; then
        echo ""
        echo "=========================================="
        echo "✅ 完成！代码已成功推送到 GitHub"
        echo "=========================================="
        echo ""
        echo "📍 仓库地址: https://github.com/alg-bug-engineer/vibe-coding-collection"
        echo ""
        echo "📋 后续步骤："
        echo "   1. 访问仓库查看所有文件"
        echo "   2. 设置仓库主题（Topics）"
        echo "   3. 在仓库设置中启用 GitHub Pages（如需要）"
        echo "   4. 分享给你的社区"
        echo ""
    else
        echo "❌ 推送失败，请手动执行："
        echo "   cd /Users/zhangqilai/project/vibe-coding-collection"
        echo "   git push -u origin main"
    fi

else
    echo "❌ 创建失败"
    echo ""
    echo "错误信息:"
    echo "$response"
    echo ""
    echo "可能的原因："
    echo "1. Token 权限不足"
    echo "2. 仓库名称已存在"
    echo "3. 网络连接问题"
    echo ""
    echo "💡 如果仓库已存在，直接推送即可："
    echo "   cd /Users/zhangqilai/project/vibe-coding-collection"
    echo "   git push -u origin main"
fi
