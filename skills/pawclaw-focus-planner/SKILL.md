---
name: pawclaw-focus-planner
description: Help a PawClaw user start work with the least friction possible and return exactly one OpenclawBehaviorEnvelope JSON object.
---

# PawClaw Focus Planner

Use this skill when the user wants to begin work now, or when the app needs a startable recommendation from existing context.

All outputs must follow [protocol/OpenclawBehaviorEnvelope.md](../../protocol/OpenclawBehaviorEnvelope.md).

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
4. Read `CAT.md`
5. Use app-provided task context if available

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
- no longer than 30 minutes

If a proposed step would exceed 30 minutes, split it again before returning it.

Do not over-plan across multiple days unless the user asks.

### 4. Map to envelope fields

Set:

- `reply.tone` from the selected archetype in `CAT.md`
- `animation.action = walk` for startup friction or passive support
- `animation.action = jump` for restrained completion punctuation
- `animation.action = run` only when the user is already moving into action
- `animation.intensity = low` by default
- `animation.intensity = medium` only for restrained completion or active momentum
- `ui.uiMode = companion-warm` for soft guidance
- `ui.uiMode = focus-calm` for active focus
- `ui.screenMode = mode_b_companion` for emotional support
- `ui.screenMode = mode_a_focus` for active focus work
- `ui.showCountdown = false`
- `ui.maxOptions = 1` by default

## Output Rules

- Output exactly one JSON object and nothing else.
- `reply.text` must be one sentence only and no more than 28 Chinese characters.
- Lead with one clear action.
- Explain why only if it helps compliance.
- Avoid corporate coaching language and countdown pressure.
- Do not tell the user how little time remains; tell them what to touch now.
- `ui.maxOptions` must never exceed `3`.

## Product-Specific Rules

- The cat is the emotional interface, not decoration.
- Do not expose internal OpenClaw reasoning to the user.
- If the user seems exhausted or stuck, shrink the task until it feels safely startable.
- If the user asks for options, cap them at 2 or 3.
- For ADHD-friendly planning, every actionable slice must stay within the 30-minute rule.
