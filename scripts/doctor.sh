#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

echo "==> Checking for common secret patterns"
PATTERN='(sk-|ghp_|xoxb-|Bearer |AIza|AKIA|ASIA)'
MATCHES="$(git grep -nE "$PATTERN" -- . ':(exclude)scripts/doctor.sh' ':(exclude).git' || true)"
if [ -n "$MATCHES" ]; then
  echo "Potential secret-like strings found. Review before publishing."
  printf '%s\n' "$MATCHES"
  exit 2
fi

echo "No common secret patterns found."
