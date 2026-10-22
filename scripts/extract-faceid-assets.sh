#!/bin/bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
assets_dir="$repo_root/Resources/FaceID.bundle"
mkdir -p "$assets_dir"

for archive in "$repo_root"/*.zip; do
  if [[ -f "$archive" ]]; then
    unzip -o "$archive" -d "$assets_dir" >/dev/null 2>&1 || true
  fi
done

if [[ ! -f "$assets_dir/faceid.png" && ! -f "$assets_dir/faceid.jpg" ]]; then
  echo "No image assets were found in the repository zip files."
  echo "The tweak will still build, but the asset bundle is empty."
fi

printf 'Extracted Face ID assets to %s\n' "$assets_dir"
