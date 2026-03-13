#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

[ -f "$ROOT_DIR/.env" ] || { echo "Missing .env"; exit 1; }
[ -f "$ROOT_DIR/openclaw.json" ] || { echo "Missing openclaw.json"; exit 1; }

echo "Basic config files exist."
