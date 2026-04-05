---
name: pawclaw-task-router
description: Classify messy user input for PawClaw into Big Task, Small Task, Idea, progress update, focus request, or profile signal; produce concise structured output for the app layer and separate memory-worthy context from volatile task state.
---

# PawClaw Task Router

Use this skill when the user sends quick capture text, voice transcripts, or mixed conversational input that needs immediate classification.

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

Use context to avoid re-asking obvious questions.

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

### 4. Produce output for the app bridge

Prefer a compact structure with:

1. `reply_to_user`
2. `cat_action`
3. `ui_mode`
4. `task_payload`
5. `memory_ops`

Keep the user-facing reply short. The app can render details from structured payloads.

## Task Payload Guidance

For `big-task`, include:

- `type`
- `title`
- `why_it_matters`
- `suggested_next_step`

For `small-task`, include:

- `type`
- `title`
- `estimated_minutes`
- `startable_now`

For `idea`, include:

- `type`
- `title`
- `save_only`

For `progress-update`, include:

- `type`
- `status`
- `blocker` if any

## Routing Rules

- If a message contains both an idea and a stable preference, route the idea to task payload and the preference to `memory_ops`.
- If the user seems overloaded, prefer one concrete next step over elaborate classification language.
- When the message is ambiguous between `big-task` and `small-task`, use the 30-minute threshold from the PRD.
- Avoid pretending certainty. Estimate conservatively.

## Field Guide

Read [references/task-schema.md](references/task-schema.md) for examples.
