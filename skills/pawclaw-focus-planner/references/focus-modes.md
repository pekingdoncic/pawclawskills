# Focus Modes

## `quick-reset`

Use when the user is dysregulated, scattered, or unable to pick a task.

Example reply:

- `先做一个 3 分钟动作：把桌面上最显眼的 3 样东西归位。`

Suggested fields:

```json
{
  "cat_action": "gentle-check-in",
  "ui_mode": "companion-warm"
}
```

## `short-window`

Use when the user has less than 30 minutes.

Example reply:

- `先只做第一步：把 Zeabur 部署页面打开，然后把缺失的环境变量列出来。`

## `focus-session`

Use when the user has 30 minutes or more.

Example step pattern:

1. Define the target.
2. Start the smallest buildable slice.
3. Check or review once.

## `review-transition`

Use after a completed or interrupted work block.

Example reply:

- `记一下刚刚卡住的点就够了，我替你把它留到下次继续。`
