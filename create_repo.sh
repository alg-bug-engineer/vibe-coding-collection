#!/bin/bash

# 从 GitHub 获取认证 token（如果有）
if [ -z "$GITHUB_TOKEN" ]; then
    echo "需要 GitHub Personal Access Token 来创建仓库。"
    echo ""
    echo "请按以下步骤操作："
    echo "1. 访问: https://github.com/settings/tokens"
    echo "2. 点击 'Generate new token' -> 'Generate new token (classic)'"
    echo "3. 勾选 'repo' 权限"
    echo "4. 生成 token 并复制"
    echo ""
    read -p "请输入你的 GitHub Token: " GITHUB_TOKEN
fi

# 创建仓库
echo "正在创建仓库..."

curl -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/user/repos \
  -d '{
    "name": "vibe-coding-collection",
    "description": "收集关于 Vibe Coding（氛围编程）的教程、新闻、视频、文档等高质量资源",
    "private": false,
    "has_issues": true,
    "has_projects": true,
    "has_wiki": true,
    "has_discussions": true
  }'

echo ""
echo "仓库创建完成！现在推送代码..."
sleep 2

git remote add origin git@github.com:alg-bug-engineer/vibe-coding-collection.git 2>/dev/null || \
git remote set-url origin git@github.com:alg-bug-engineer/vibe-coding-collection.git

git push -u origin main
