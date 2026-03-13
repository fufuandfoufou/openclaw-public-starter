# Release Checklist

Before publishing a new release:

## Safety
- [ ] No `.env` files committed
- [ ] No real `openclaw.json` committed
- [ ] No API keys, tokens, or secrets present
- [ ] No user ids / chat ids present
- [ ] No personal names, emails, phone numbers, or addresses leaked
- [ ] No memory / logs / session files included

## Docs
- [ ] `README.md` updated
- [ ] `README.zh-CN.md` updated
- [ ] install command uses correct repo URL
- [ ] bootstrap instructions still work
- [ ] architecture and privacy docs still match repo structure

## Validation
- [ ] `./scripts/validate-config.sh`
- [ ] `./scripts/doctor.sh`
- [ ] manual grep for leftover placeholders if needed

## Packaging
- [ ] license included
- [ ] contribution guide included
- [ ] repo name and examples use final naming
- [ ] tag and changelog prepared
