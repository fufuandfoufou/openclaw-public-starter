# FAQ

## Why not publish my whole OpenClaw directory?
Because live directories often contain secrets, memory, runtime state, user identifiers, or other private context that should never be public.

## What should stay private?
- `.env`
- real `openclaw.json`
- memory files
- logs
- session state
- real channel bindings
- internal infrastructure details

## Can I use this as a team starter?
Yes. That is one of the main use cases. Keep the public starter generic and layer private team-specific config separately.

## Does this repo include a working production config?
No. It includes templates and examples only.

## Why are there bilingual READMEs?
Because starter repos are often onboarding tools. Clear English and Chinese docs reduce friction for reuse.

## Can I add GitHub Actions later?
Yes. If your GitHub token has `workflow` scope, you can add CI checks later without changing the repo structure.

## Can I keep my private overlay in another repo?
Yes. That is a good pattern if you want version control for private config without mixing it into the public starter.
