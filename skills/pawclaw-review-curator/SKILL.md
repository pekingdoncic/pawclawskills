---
name: pawclaw-review-curator
description: Curate PawClaw review, reflection, and archive signals into daily memory and distilled long-term guidance; capture what helped, what blocked progress, and what should change next time without turning reflection into homework.
---

# PawClaw Review Curator

Use this skill when the user finishes a task, abandons a task, reflects on a session, or when the app wants to generate daily or weekly review notes.

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

### 2. Extract the smallest useful reflection

Prefer these questions, explicitly or implicitly:

1. What did the user try?
2. What helped?
3. What blocked progress?
4. What should be easier next time?

Do not ask all four unless the product flow requires it. Often one or two are enough.

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

### 4. Optional summary generation

When the app needs a summary, keep it compact:

- daily: timeline-friendly bullets
- weekly: cat-companion tone with 2-4 insights
- monthly: pattern summary, not diary replay

## Product-Specific Rules

- Do not reward only final completion. Credit restart, partial progress, and useful recovery.
- Avoid scoreboards, ranking language, and pressure-heavy framing.
- If the user abandoned the task, frame the archive as continuity, not failure.
- Cat feedback should feel warm and quiet, not loud or gamified.

## Preferred Output Shape

1. `reply_to_user`
2. `cat_action`
3. `ui_mode`
4. `task_payload` if a follow-up action exists
5. `memory_ops`

## Field Guide

Read [references/review-schema.md](references/review-schema.md) for examples.
