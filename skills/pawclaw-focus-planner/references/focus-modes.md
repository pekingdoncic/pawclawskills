# Focus Modes

## `quick-reset`

Use when the user is dysregulated, scattered, or unable to pick a task.

Example reply:

- `先做一个 3 分钟动作。`

Suggested envelope fields:

```json
{
  "reply": {
    "text": "先做一个 3 分钟动作。",
    "tone": "gentle_nudger"
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
    "silenceLevel": "mild_hesitation"
  },
  "task": null,
  "memory": []
}
```

## `short-window`

Use when the user has less than 30 minutes.

Example reply:

- `先只做第一步就够了。`

## `focus-session`

Use when the user has 30 minutes or more.

Example step pattern:

1. Define the target.
2. Start the smallest buildable slice.
3. Check or review once.

## `review-transition`

Use after a completed or interrupted work block.

Example reply:

- `记下卡点，我们下次接着来。`
