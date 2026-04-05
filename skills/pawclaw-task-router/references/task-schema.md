# Task Schema

## Category guide

- `big-task`: needs decomposition; unlikely to complete in one short session
- `small-task`: concrete and finishable today; often under 30 minutes
- `idea`: store without pushing execution
- `progress-update`: reports done, partial, blocked, or delayed
- `focus-request`: asks for help starting or continuing now
- `profile-signal`: reveals lasting preference or constraint

## Example task payloads

### Small task

```json
{
  "type": "small-task",
  "title": "Reply to the Zeabur deployment email",
  "estimated_minutes": 8,
  "startable_now": true
}
```

### Big task

```json
{
  "type": "big-task",
  "title": "Design the first PawClaw onboarding flow",
  "why_it_matters": "It unlocks the MVP entry path.",
  "suggested_next_step": "Draft the 4 onboarding questions in one list."
}
```

### Idea

```json
{
  "type": "idea",
  "title": "Use cat animation codes as a second response channel",
  "save_only": true
}
```
