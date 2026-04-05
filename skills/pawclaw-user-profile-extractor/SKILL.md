---
name: pawclaw-user-profile-extractor
description: Extract stable user profile fields, ADHD support preferences, cat-tone preferences, and durable behavior patterns from signup metadata, onboarding answers, and channel conversations; update USER.md, daily memory notes, and MEMORY.md without copying volatile app state.
---

# PawClaw User Profile Extractor

Use this skill when a PawClaw user reveals information that should improve future support.

## Purpose

Keep profile and memory clean across three layers:

1. `USER.md` for stable user facts and support preferences
2. `memory/YYYY-MM-DD.md` for session-level observations
3. `MEMORY.md` for repeated or durable insights

Only write what improves future support. Do not treat every message as memory.

## Typical Inputs

- signup metadata
- QR-link metadata
- onboarding answers
- channel profile fields
- quick capture messages
- focus session conversations
- review or reflection messages

Structured app data should take priority over weak inference from free text.

## Workflow

### 1. Read current state

Before writing:

1. Read `USER.md`
2. Read today's `memory/YYYY-MM-DD.md` if it exists
3. Read `MEMORY.md`

Avoid duplicate notes and stale assumptions.

### 2. Classify each candidate fact

Ask:

1. Is this stable enough for `USER.md`?
2. Is this only useful for today?
3. Has this happened enough times to promote into `MEMORY.md`?

When unsure, prefer the daily note over long-term memory.

### 3. Normalize the signal

Rewrite noisy language into concise, reusable support notes.

- Good: `User starts more easily when the first step is physical and visible.`
- Bad: `User says they kind of maybe can work if the step feels real.`

Preserve meaning. Remove filler.

### 4. Write to the right layer

#### `USER.md`

Write only:

- preferred name, pronouns, language, timezone
- preferred support style
- disliked reminder style
- stable blockers and overload signs
- recurring routines and constraints
- durable reward preferences
- stable cat-tone preferences

#### `memory/YYYY-MM-DD.md`

Write:

- what happened today
- what the user tried to do
- what intervention was suggested
- what helped or failed
- tentative observations not yet proven

#### `MEMORY.md`

Promote only:

- repeated startup blockers
- durable planning preferences
- recurring time-of-day patterns
- emotional support patterns that clearly matter

## Product-Specific Rules

- Onboarding fields from the PRD such as profession interest, MBTI, current activity, and gender may enter `USER.md` if they help future support.
- Cat selection details belong in `CAT.md`, not `USER.md`, unless they reveal a stable support preference.
- Fish totals, timer state, task IDs, streaks, and other app mechanics belong outside long-term memory.
- Do not guess clinical severity or invent medical claims.

## Preferred Output Shape

When using this skill, provide a short write plan:

1. `USER.md`: stable additions
2. `memory/YYYY-MM-DD.md`: today's observations
3. `MEMORY.md`: promoted durable insights

If there is nothing worth storing, say so plainly.

## Field Guide

Read [references/profile-schema.md](references/profile-schema.md) for preferred field shape and examples.
