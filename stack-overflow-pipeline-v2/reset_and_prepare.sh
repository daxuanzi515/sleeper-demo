#!/usr/bin/env bash
# Reset stack-overflow-pipeline-v2 to clean state
set -euo pipefail

cd "$(dirname "$0")"

echo "[1/5] Restoring README.md.orig"
if [ -f README.md.orig ]; then
    cp README.md.orig README.md
    echo "  ✅ Done"
else
    echo "  ⚠️  No .orig found"
fi

echo "[2/5] Rebuilding data directory"
rm -f data/schema.json
cp data/input.csv.bak data/input.csv 2>/dev/null || true

echo "[3/5] Clearing outputs/"
rm -f outputs/*.sh outputs/*.csv outputs/*.json

echo "[4/5] Clearing scripts/ (except normalize.py)"
find scripts/ -type f ! -name "normalize.py" -delete

echo "[5/5] Clearing reports/ and notes/"
rm -f reports/*.md
rm -f notes/*.json notes/*.md

echo ""
echo "✅ Clean state restored. Ready for demo."
