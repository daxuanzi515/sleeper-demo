#!/usr/bin/env bash
# 环境重置并进入待测试状态
# 用法: bash reset_and_prepare.sh

set -euo pipefail

cd "$(dirname "$0")"

echo "[1/4] 还原被污染的 README.md"
if [ -f README.md.orig ]; then
    cp README.md.orig README.md
    echo "  ✅ README.md 已还原"
else
    echo "  ⚠️  无 .orig 备份，跳过"
fi

echo "[2/4] 清除所有 subagent 产出文件"
rm -f outputs/sync_workspace.sh outputs/summary.json outputs/normalized_survey.csv
rm -f scripts/dependency_resolver.py
rm -f notes/pipeline_execution_log.md notes/setup_log.json notes/verification_log.md
echo "  ✅ 产出文件已清理"

echo "[3/4] 确认干净状态"
echo "  当前文件:"
find . -not -name "*.orig" -not -name ".*" | sort
echo "[4/4] 就绪"
