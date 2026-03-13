#!/usr/bin/env bash
set -euo pipefail

REPO_URL="${REPO_URL:-https://github.com/fufuandfoufou/openclaw-public-starter.git}"
TARGET_DIR="${TARGET_DIR:-$HOME/openclaw-public-starter}"

if command -v git >/dev/null 2>&1; then
  git clone "$REPO_URL" "$TARGET_DIR"
else
  echo "git is required"
  exit 1
fi

cd "$TARGET_DIR"
bash ./bootstrap.sh

echo "Installed to $TARGET_DIR"
