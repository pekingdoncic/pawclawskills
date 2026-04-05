---
name: pawclaw-task-router
description: Classify messy user input for PawClaw into Big Task, Small Task, Idea, progress update, focus request, or profile signal, and return exactly one OpenclawBehaviorEnvelope JSON object.
---

# PawClaw Task Router

Use this skill when the user sends quick capture text, voice transcripts, or mixed conversational input that needs immediate classification.

All outputs must follow [protocol/OpenclawBehaviorEnvelope.md](../../protocol/OpenclawBehaviorEnvelope.md).

## Purpose

Turn messy input into action without making the user do extra sorting.

The target categories align with the product PRD:

- `big-task`
- `small-task`
- `idea`
- `progress-update`
- `focus-request`
- `profile-signal`

One message may contain more than one signal. Route the primary action first and log secondary signals separately.

## Workflow

### 1. Read context

Before classifying:

1. Read `USER.md`
2. Read today's `memory/YYYY-MM-DD.md` if it exists
3. Read `MEMORY.md`
4. Read `CAT.md`

### 2. Determine the primary intent

Ask:

1. Is the user trying to store something?
2. Is the user asking what to do next?
3. Is the user reporting progress or blockage?
4. Is the message revealing durable preference or profile context?

### 3. Classify the item

#### `big-task`

Use when the task:

- is too large for one sitting
- needs decomposition
- likely spans multiple steps or a full day

#### `small-task`

Use when the task:

- can likely be started and finished today
- can usually fit within 3 to 30 minutes
- benefits from immediate action

#### `idea`

Use when the message:

- is exploratory
- does not commit to execution
- should be saved without pressure

#### `progress-update`

Use when the user reports:

- completion
- partial progress
- blockage
- deferral

#### `focus-request`

Use when the user explicitly or implicitly asks for help starting now.

#### `profile-signal`

Use when the message reveals stable preference or durable context worth storing.

## Output Contract

Return exactly one JSON object and nothing else.

Use the `OpenclawBehaviorEnvelope` shape.

Hard rules:

- no prose outside JSON
- no markdown fences
- `reply.text` must be one sentence only
- `reply.text` must be no more than 28 Chinese characters
- `ui.showCountdown` must always be `false`
- `ui.maxOptions` must never exceed `3`

## Task Payload Guidance

For `big-task`, include:

- `type`
- `title`
- `whyItMatters`
- `suggestedNextStep`
- `nextStepEstimatedMinutes` with a value no greater than 30

For `small-task`, include:

- `type`
- `title`
- `estimatedMinutes`
- `startableNow`

For `idea`, include:

- `type`
- `title`
- `saveOnly`

For `progress-update`, include:

- `type`
- `status`
- `blocker` if any

For all task objects:

- do not expose chain-of-thought
- do not expose internal scoring
- do not expose traits or growth values
- do not expose XP, level, or bond-meter language

## Routing Rules

- If a message contains both an idea and a stable preference, route the idea to `task` and the preference to `memory`.
- If the user seems overloaded, prefer one concrete next step over elaborate classification language.
- When the message is ambiguous between `big-task` and `small-task`, use the 30-minute threshold from the PRD.
- Avoid pretending certainty. Estimate conservatively.
- When routing a `big-task`, always convert the first returned action into a sub-step that can fit within 30 minutes.
- Use `reply.tone` from the selected archetype in `CAT.md`.
- Use `animation.action = walk` by default.
- Use `animation.action = jump` only for restrained completion punctuation.
- Use `animation.action = run` only for explicit active user-initiated momentum.

## Field Guide

Read [references/task-schema.md](references/task-schema.md) for examples.
