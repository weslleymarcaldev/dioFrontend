#!/bin/sh
mkdir -p dist/scripts
for file in src/scripts/*.js; do
  filename=$(basename "$file")
  npx terser "$file" -o "dist/scripts/$filename"
done
