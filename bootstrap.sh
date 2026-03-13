#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "==> OpenClaw starter bootstrap"

if [ ! -f "$ROOT_DIR/.env" ]; then
  cp "$ROOT_DIR/.env.example" "$ROOT_DIR/.env"
  echo "Created .env from .env.example"
else
  echo ".env already exists, skipped"
fi

if [ ! -f "$ROOT_DIR/openclaw.json" ]; then
  cp "$ROOT_DIR/openclaw.example.json" "$ROOT_DIR/openclaw.json"
  echo "Created openclaw.json from openclaw.example.json"
else
  echo "openclaw.json already exists, skipped"
fi

mkdir -p "$ROOT_DIR/private"
mkdir -p "$ROOT_DIR/workspaces/main"
mkdir -p "$ROOT_DIR/workspaces/feishu"
mkdir -p "$ROOT_DIR/workspaces/telegram"
mkdir -p "$ROOT_DIR/workspaces/specialist"

echo ""
echo "Next steps:"
echo "1. Fill in .env with your own secrets"
echo "2. Edit openclaw.json with your own bindings"
echo "3. Review docs/privacy-model.md before publishing changes"
