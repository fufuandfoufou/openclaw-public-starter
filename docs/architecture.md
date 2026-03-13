# Architecture Overview

## Goal
Provide a reusable OpenClaw starter that others can clone and adapt quickly.

## Layers
1. Public starter layer
   - docs
   - templates
   - scripts
   - example configs
2. Private local layer
   - real secrets
   - real bindings
   - memory and runtime state
3. Optional private GitHub repo
   - personal overlays if the user wants versioned private config

## Principles
- separate public and private concerns
- use environment variables for secrets
- keep channel-facing agents isolated
- keep runtime state out of version control
