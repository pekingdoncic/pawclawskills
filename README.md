# pawclaw-openclaw-cloud

OpenClaw workspace templates, operating rules, and reusable skills for the cloud-hosted PawClaw companion.

This repository is designed for one OpenClaw workspace per linked PawClaw user. It packages:

- a ready-to-copy workspace baseline
- multi-skill prompts for onboarding, task capture, focus support, and review
- a simple workspace bootstrap script
- file conventions for long-term memory, daily notes, and cat presentation signals

## Repository Layout

```text
pawclaw-openclaw-cloud/
├── README.md
├── protocol/
│   └── OpenclawBehaviorEnvelope.md
├── scripts/
│   └── init-workspace.sh
├── skills/
│   ├── pawclaw-user-profile-extractor/
│   ├── pawclaw-task-router/
│   ├── pawclaw-focus-planner/
│   └── pawclaw-review-curator/
└── workspace-template/
    ├── AGENTS.md
    ├── BOOTSTRAP.md
    ├── CAT.md
    ├── MEMORY.md
    ├── SOUL.md
    ├── USER.md
    └── memory/
```

## What This Sets Up

The template supports the product direction described in the PawClaw PRD:

- ADHD-friendly low-friction action support
- a cat companion as the emotional interface instead of a plain IM bot
- non-intrusive OpenClaw integration through a channel or plugin bridge
- one linked workspace per user with shared but curated memory
- task routing across `Big Task`, `Small Task`, and `Idea`
- two common support windows: under 30 minutes and 30 minutes or more
- user-facing output plus UI-facing cat action signals
- fixed cat archetype mapping with canonical IDs and colors

## Workspace Files

- `protocol/OpenclawBehaviorEnvelope.md`: strict JSON contract for runtime outputs
- `SOUL.md`: the companion identity, tone, and behavioral philosophy
- `AGENTS.md`: operating rules, memory boundaries, and channel contract
- `CAT.md`: current cat persona slots and UI action vocabulary
- `USER.md`: stable user profile facts and support preferences
- `MEMORY.md`: distilled long-term patterns
- `memory/YYYY-MM-DD.md`: daily observations and session-level notes
- `BOOTSTRAP.md`: first-run setup instructions for a newly linked user

## Skills

- `pawclaw-user-profile-extractor`: writes durable user information into the correct memory layer
- `pawclaw-task-router`: classifies messy input into idea, task, focus request, or profile signal
- `pawclaw-focus-planner`: generates one next action or a short step plan based on the available time window
- `pawclaw-review-curator`: turns review messages into daily notes and promotable long-term insights
- `pawclaw-silence-regulator`: handles low-pressure silent-state responses, micro-copy, and low-stimulation cat motion codes

## Quick Start

### Option A: Initialize a new OpenClaw workspace

```bash
./scripts/init-workspace.sh /path/to/openclaw/workspaces/pawclaw-user-001
```

### Option B: Copy manually

Copy everything under `workspace-template/` into the target OpenClaw workspace root, and copy the `skills/` directory wherever your OpenClaw skill loader expects skill folders.

## Recommended Cloud Flow

1. User signs up in PawClaw.
2. Backend creates one OpenClaw workspace for that user from `workspace-template/`.
3. Backend binds the user ID to that workspace.
4. First session runs with `BOOTSTRAP.md` still present.
5. App or backend sends user metadata and first interactions into OpenClaw.
6. Skills classify, route, and persist only durable context.
7. After first-run initialization, remove `BOOTSTRAP.md`.

## Notes

- User-facing replies should follow the user's preferred language from `USER.md`. If unknown, default to concise Simplified Chinese.
- Skill prompts are written in English for model consistency, but they explicitly support Chinese-language conversations and app metadata.
- This repository is safe to version as a standalone GitHub repo and copy into cloud deployment workflows.
