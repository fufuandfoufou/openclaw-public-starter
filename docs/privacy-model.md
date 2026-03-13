# Privacy Model

This repository is intentionally safe to publish.

## Public
- architecture
- agent topology templates
- workspace templates
- example configs
- bootstrap and validation scripts
- generic documentation

## Private
Never publish:
- API keys
- tokens
- app secrets
- OAuth credentials
- webhook URLs
- user ids / chat ids
- memory and session history
- logs
- device names and local infrastructure
- personal notes

## Release Checklist
Before publishing, check:
1. No `.env` files are committed
2. No real `openclaw.json` is committed
3. No live IDs remain in examples
4. No names, emails, phone numbers, or internal paths leak
5. Memory / task / session files are excluded

## Recommended Guards
- `.gitignore`
- pre-commit secret scan
- GitHub secret scanning
- release checklist in PR template
