# OpenClaw Starter (Public)

A reusable public starter for OpenClaw setups.

This repository contains only the **public layer**:
- reusable architecture
- workspace templates
- example config
- bootstrap scripts
- documentation for safe reuse

It does **not** include:
- personal memory
- private tokens / API keys
- real chat bindings
- personal device info
- runtime state

## Quick Start

```bash
git clone https://github.com/fufuandfoufou/openclaw-public-starter.git
cd openclaw-starter-public
./bootstrap.sh
```

## One-Command Install

```bash
curl -fsSL https://raw.githubusercontent.com/fufuandfoufou/openclaw-public-starter/main/install.sh | bash
```

## What You Need To Fill In
- `.env`
- your own `openclaw.json`
- your own channel bindings
- your own private workspace notes

## Repository Layout

```text
openclaw-starter-public/
├─ README.md
├─ README.zh-CN.md
├─ LICENSE
├─ CONTRIBUTING.md
├─ .env.example
├─ openclaw.example.json
├─ bootstrap.sh
├─ install.sh
├─ Makefile
├─ docs/
├─ scripts/
├─ agents/
├─ workspaces/
└─ skills/
```

## Included Docs
- `docs/architecture.md`
- `docs/privacy-model.md`
- `docs/release-checklist.md`

## Included Scripts
- `bootstrap.sh` — initialize local starter files
- `install.sh` — clone + bootstrap helper
- `scripts/validate-config.sh` — basic config presence checks
- `scripts/doctor.sh` — simple secret-pattern scan

## Privacy Model
This repo is designed as a **public starter**, not a dump of a live OpenClaw instance.

Keep these private:
- all tokens and API keys
- user / chat ids
- memory files
- logs and runtime state
- personal notes and device details

See `docs/privacy-model.md` for details.

## Recommended Workflow
1. Clone this public repo
2. Copy `.env.example` to `.env`
3. Copy `openclaw.example.json` to your local config
4. Fill in your own secrets locally
5. Customize agents and workspaces from templates
6. Run validation before publishing changes

## Publish Checklist
Before pushing publicly:

```bash
make validate
make doctor
```

Then review `docs/release-checklist.md`.

## License
MIT
