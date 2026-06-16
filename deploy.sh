#!/bin/bash
set -e

cd "$(dirname "$0")"

echo "==> Building Hugo site..."
hugo --minify

echo "==> Staging changes..."
git add -A

echo "==> Committing..."
if [ -n "$1" ]; then
  git commit -m "$1" || echo "(nothing to commit)"
else
  now=$(date "+%Y-%m-%d %H:%M")
  git commit -m "update: $now" || echo "(nothing to commit)"
fi

echo "==> Pushing..."
git push

echo "==> Done. Site will be live at https://kel1n1995.github.io/"
