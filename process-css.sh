#!/bin/sh
for file in dist/styles/*.css; do
  npx postcss "$file" --use autoprefixer -o "$file"
done