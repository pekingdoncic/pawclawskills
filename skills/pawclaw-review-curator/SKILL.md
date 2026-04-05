---
name: pawclaw-review-curator
description: Curate PawClaw review, reflection, and archive signals and return exactly one OpenclawBehaviorEnvelope JSON object.
---

# PawClaw Review Curator

Use this skill when the user finishes a task, abandons a task, reflects on a session, or when the app wants to generate daily or weekly review notes.

All outputs must follow [protocol/OpenclawBehaviorEnvelope.md](../../protocol/OpenclawBehaviorEnvelope.md).

## Purpose

Support the PRD's review and archive flow:

- daily timeline memory
- weekly cat-style summary
- monthly long-term pattern shaping

The user should not feel like they are filling out a report.

## Workflow

### 1. Read context

Before writing:

1. Read `USER.md`
2. Read today's `memory/YYYY-MM-DD.md` if it exists
3. Read `MEMORY.md`
4. Read `CAT.md`

### 2. Extract the smallest useful reflection

Prefer these questions, explicitly or implicitly:

1. What did the user try?
2. What helped?
3. What blocked progress?
4. What should be easier next time?

Do not ask all four unless the product flow requires it.

### 3. Write to the right layer

#### `memory/YYYY-MM-DD.md`

Write:

- what was attempted
- what was completed or deferred
- what intervention helped
- what friction appeared today

#### `MEMORY.md`

Promote only:

- repeated friction patterns
- confirmed support preferences
- durable time-of-day or environment patterns
- stable response to cat tone or reminder style

### 4. Output Contract

Return exactly one JSON object and nothing else.

Hard rules:

- `reply.text` must be one sentence only and no more than 28 Chinese characters
- `ui.showCountdown` must always be `false`
- `ui.maxOptions` must never exceed `3`
- `reply.tone` must be one allowed archetype
- `animation.action` must be one allowed action

## Product-Specific Rules

- Do not reward only final completion. Credit restart, partial progress, and useful recovery.
- Avoid scoreboards, ranking language, and pressure-heavy framing.
- If the user abandoned the task, frame the archive as continuity, not failure.
- Cat feedback should feel warm and quiet, not loud or gamified.
- Preferred completion signal is a soft warm glow with one restrained `jump`.
- Do not expose traits, growth, XP, level, badge, or bond-meter state to the user.

## Field Guide

Read [references/review-schema.md](references/review-schema.md) for examples.
