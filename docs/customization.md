# Customization Guide

## Goal
Use this public starter as a base, then adapt it safely to your own OpenClaw setup.

## Common Customizations

### 1. Add or change channel agents
Examples:
- feishu
- telegram
- discord
- slack

Keep real ids, tokens, and deployment bindings private.

### 2. Add specialist agents
Examples:
- coder
- researcher
- writer
- reviewer
- image-generator

Create one workspace per specialist when possible.

### 3. Customize workspace templates
You can adapt:
- `AGENTS.template.md`
- `USER.template.md`
- `TOOLS.template.md`

Do not turn the public repo into a live dump of your personal environment.

### 4. Customize scripts
You can extend:
- `bootstrap.sh`
- `install.sh`
- `scripts/validate-config.sh`
- `scripts/doctor.sh`

If you add checks, prefer privacy-safe defaults.

## Recommended Pattern
1. keep the public repo generic
2. keep secrets in `.env`
3. keep real runtime state local
4. version private overlays separately if needed
