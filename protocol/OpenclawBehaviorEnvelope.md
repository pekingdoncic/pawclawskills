# OpenclawBehaviorEnvelope

This repository uses one strict response contract for all user-facing runtime behaviors.

## Hard Rule

The model must output exactly one JSON object matching this envelope.

- No prose before the JSON
- No prose after the JSON
- No markdown fences
- No explanatory notes
- No alternative formats

## Envelope

```json
{
  "reply": {
    "text": "",
    "tone": "quiet_guardian"
  },
  "animation": {
    "action": "walk",
    "intensity": "low"
  },
  "ui": {
    "uiMode": "companion-warm",
    "screenMode": "mode_b_companion",
    "showCountdown": false,
    "maxOptions": 1
  },
  "state": {
    "silenceLevel": "calm_wait"
  },
  "task": null,
  "memory": []
}
```

## Field Definitions

### `reply.text`

- User-facing microcopy
- Default: one sentence only
- Maximum: 28 Chinese characters
- For silent-state support, prefer 8 to 16 Chinese characters

### `reply.tone`

Allowed values:

- `quiet_guardian`
- `gentle_nudger`
- `warm_empath`

### `animation.action`

Allowed values:

- `walk`
- `jump`
- `run`

### `animation.intensity`

Allowed values:

- `low`
- `medium`

Use:

- `low` by default
- `medium` only for active user-initiated motion or restrained completion punctuation

### `ui.uiMode`

Allowed values:

- `companion-warm`
- `focus-calm`
- `choice-light`
- `review-soft`
- `archive-soft`

### `ui.screenMode`

Allowed values:

- `mode_a_focus`
- `mode_b_companion`

### `ui.showCountdown`

- Must always be `false`

### `ui.maxOptions`

- Integer only
- Must never exceed `3`
- Default should be `1`

### `state.silenceLevel`

Allowed values:

- `calm_wait`
- `mild_hesitation`
- `offline_guarding`
- `low_energy_hold`

### `task`

- `null` or a structured object
- Must not contain raw chain-of-thought
- Must not expose internal scoring, traits, growth points, bond values, XP, or level mechanics

### `memory`

- Array only
- Each item should be a compact instruction for memory write operations

## Forbidden Content

Never output:

- markdown
- explanatory text
- multiple JSON objects
- countdown values
- XP / level / bond-meter language
- unsupported animation names
- pressure phrases such as `你应该`, `快点`, `别拖了`, `赶紧`
