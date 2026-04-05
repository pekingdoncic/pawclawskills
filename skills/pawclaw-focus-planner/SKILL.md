---
name: pawclaw-focus-planner
description: Help a PawClaw user start work with the least friction possible; choose between a one-action short-window intervention and a 2-4 step focus plan for longer sessions, while returning cat-action signals that the UI can animate.
---

# PawClaw Focus Planner

Use this skill when the user wants to begin work now, or when the app needs a startable recommendation from existing context.

## Purpose

Reduce startup friction using the PRD's two main windows:

1. under 30 minutes
2. 30 minutes or more

The first job is not to maximize output. It is to make starting feel possible.

## Workflow

### 1. Read context

Before responding:

1. Read `USER.md`
2. Read today's `memory/YYYY-MM-DD.md` if it exists
3. Read `MEMORY.md`
4. Use app-provided task context if available

### 2. Identify the current mode

Choose one:

- `quick-reset`
- `short-window`
- `focus-session`
- `review-transition`

### 3. Plan by time window

#### Under 30 minutes

Return one action, not a list.

Prefer this order:

1. a previously captured small real-world task
2. a tiny visible first step from a larger task
3. one ADHD-friendly reset action such as stretch, water, or one-minute cleanup

The action should usually fit within 3 to 15 minutes unless the user explicitly says they have the full 30.

#### 30 minutes or more

Return a compact 2-4 step plan.

Each step must be:

- visible
- concrete
- easy to begin
- realistically matched to the time window

Do not over-plan across multiple days unless the user asks.

### 4. Map to cat feedback

Choose the cat action by support state:

- startup friction: `gentle-check-in`
- ready to begin: `focus-sit`
- small completion: `celebrate-purr`
- meaningful completion: `celebrate-hop`
- passive support: `idle-soft`

Also choose a `ui_mode`:

- `companion-warm`
- `focus-calm`
- `review-soft`

## Output Rules

- Keep `reply_to_user` short enough for a mobile overlay.
- Lead with one clear action.
- Explain why only if it helps compliance.
- Avoid corporate coaching language and countdown pressure.

## Product-Specific Rules

- The cat is the emotional interface, not decoration. The reply should support the cat layer, not compete with it.
- Do not expose internal OpenClaw reasoning to the user.
- If the user seems exhausted or stuck, shrink the task until it feels safely startable.
- If the user asks for options, cap them at 2 or 3.

## Field Guide

Read [references/focus-modes.md](references/focus-modes.md) for examples.
