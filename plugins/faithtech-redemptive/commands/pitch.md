---
name: pitch
description: "Generate a pitch deck from project deliverables. Adapts to audience type. Can be invoked at any phase — the deck uses whatever deliverables exist so far."
---

Read `skills/pitch-deck/SKILL.md` and follow its full process.

This command can be invoked at ANY phase — not just Phase 4. The pitch deck will use whatever deliverables exist so far:

- **During Phase 1**: Generates a problem-focused deck (lament, personas, discovery brief). Good for early feedback.
- **During Phase 2**: Adds solution direction, research findings, 3RC decisions. Good for hackathon midpoint check-ins.
- **During Phase 3**: Adds demo, architecture, what was built. Good for sprint reviews.
- **After Phase 4**: Full deck with impact metrics, sustainability, celebration. Good for final presentations.

The skill adapts the slide structure based on what documents exist. Missing documents are skipped, not faked.

Also read the built-in pptx skill at `/mnt/skills/public/pptx/SKILL.md` for PPTX generation using pptxgenjs.

Deliverables:
- `docs/4_demonstrate/pitch_deck.pptx` — the presentation file
- `docs/4_demonstrate/pitch_deck_notes.md` — speaker notes with talking points and timing
