# Contributing

Thanks for improving this OpenClaw starter.

## Ground Rules
- Do not commit real secrets
- Do not commit personal runtime state
- Keep examples generic and reusable
- Prefer templates over live configs

## Before Opening a PR
1. Run `./scripts/validate-config.sh`
2. Run `./scripts/doctor.sh`
3. Check both `README.md` and `README.zh-CN.md`
4. Make sure no personal identifiers leaked into examples

## Good Contributions
- better templates
- safer bootstrap logic
- clearer docs
- more reusable agent / workspace patterns

## Avoid
- provider-specific secrets
- real chat bindings
- personal device paths
- memory dumps or session logs
