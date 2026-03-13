#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

echo "==> Checking for common secret patterns"
if git grep -nE '(sk-|ghp_|xoxb-|Bearer |AIza|AKIA|ASIA)' -- . >/dev/null 2>&1; then
  echo "Potential secret-like strings found. Review before publishing."
  git grep -nE '(sk-|ghp_|xoxb-|Bearer |AIza|AKIA|ASIA)' -- . || true
  exit 2
fi

echo "No common secret patterns found."
