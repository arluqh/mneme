#!/bin/bash
set -e

# ルートslides.md
pnpm exec slidev build slides.md --out dist --base /mneme/

# slides/*/slides.md
for d in slides/*; do
  if [ -f "$d/slides.md" ]; then
    name=$(basename "$d")
  pnpm exec slidev build "$d/slides.md" --out "$PWD/dist/$name" --base /mneme/$name/
  fi
done

# SPA対応: 各ディレクトリに404.htmlを配置
if [ -f dist/index.html ]; then
  cp dist/index.html dist/404.html
fi
for d in dist/*; do
  if [ -d "$d" ] && [ -f "$d/index.html" ]; then
    cp "$d/index.html" "$d/404.html"
  fi
done
# faviconを配置
cp favicon.ico dist/favicon.ico

echo "dist directory contents:"
ls -al dist
for d in dist/*; do
  if [ -d "$d" ]; then
    echo "$d contents:"
    ls -al "$d"
  fi
done