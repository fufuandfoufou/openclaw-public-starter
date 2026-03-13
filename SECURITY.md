# Security Policy

## Scope
This repository is a public starter template. It is designed to avoid shipping secrets, personal runtime state, or live deployment context.

## Reporting a Security Issue
If you find a security issue in this repository structure or documentation, please do **not** open a public issue with sensitive details.

Instead:
- open a private security advisory on GitHub if available, or
- contact the maintainer privately

## What counts as a security issue here?
Examples:
- a template accidentally encourages committing secrets
- a script leaks private data into tracked files
- example config includes unsafe defaults
- docs suggest insecure publication practices

## Out of Scope
- security of a user's own local deployment
- leaked secrets that were never part of this repository
- third-party provider breaches

## Safe Usage Reminder
Before publishing changes, run:

```bash
make doctor
make validate
```

Then manually review `docs/release-checklist.md`.
