---
name: status
description: Show current position in 4D Cycle with all deliverables tracked.
---

Read `.faithtech/state.json`. Scan `docs/` subdirectories for existing files.

## Complete Deliverable Map

Check for each file and mark ✅ (exists) or ⬜ (pending/not yet):

**Phase 0: Onboard**
- `docs/0_onboard/identity_grounding.md` — Faith & Work Gap reflection

**Phase 1: Discover**
- `docs/1_discover/listening_notes.md` — raw insights from listening
- `docs/1_discover/lament.md` — 6-step community lament
- `docs/1_discover/personas.md` — Image-Bearer Profiles
- `docs/1_discover/discovery_brief.md` — synthesized problem definition

**Phase 2: Discern**
- `docs/2_discern/how_might_jesus.md` — reframed problem directions
- `docs/2_discern/existing_solutions_research.md` — web research on what already exists
- `docs/2_discern/solution_ideas.md` — raw solution brainstorm (tagged: Receive/Reimagine/Create/Non-tech)
- `docs/2_discern/3rc_decision.md` — Reject/Receive/Reimagine/Create evaluation (references research)
- `docs/2_discern/feature_spec.md` — features with redemptive alignment
- `docs/2_discern/implementation_plan.md` — from ce:plan
- `docs/2_discern/tech_stack_decision.md` — technology choices

**Phase 3: Develop**
- `docs/3_develop/dev_roadmap.md` — sprint plan overview
- `docs/3_develop/architecture.md` — technical architecture
- `docs/3_develop/sprint_plans/sprint_N.md` — per sprint (includes Request, Receive, Review, Care log, Review results, tasks)
- `docs/3_develop/cocreation_journal.md` — cumulative Rejoice reflections
- `.learnings/` — compounded knowledge from ce:compound
- `src/` — application code
- `tests/` — tests including redemptive alignment

**Phase 4: Demonstrate**
- `docs/4_demonstrate/success_vision.md` — redefined success (ri = friendship^time)
- `docs/4_demonstrate/metrics.md` — 5-dimension metrics + anti-metrics
- `docs/4_demonstrate/impact_report.md` — final review results
- `docs/4_demonstrate/demo_plan.md` — launch strategy
- `docs/4_demonstrate/sustainability_plan.md` — long-term stewardship
- `docs/4_demonstrate/pitch_deck.pptx` — audience-adapted pitch deck
- `docs/4_demonstrate/pitch_deck_notes.md` — speaker notes with timing
- `docs/4_demonstrate/celebration.md` — celebration and commissioning

## Report Format
```
Project: [name]
Phase [N]: [name] — "[tagline]"
Step [N.N]: [description]

Deliverables:
✅ docs/1_discover/listening_notes.md
✅ docs/1_discover/lament.md
⬜ docs/1_discover/personas.md
⬜ docs/1_discover/discovery_brief.md

Next: [immediate next action]
```

Only show deliverables for completed and current phases. Keep it to one screen.
