---
name: next
description: Advance to next step in the 4D Cycle. Runs gate check at phase boundaries.
---

Read `.faithtech/state.json` for current phase/step. Read `skills/<phase>/SKILL.md`. Advance to next step. At phase end, run gate check from skill file — advance only if all criteria pass. Update state.json. Execute the new step immediately.
