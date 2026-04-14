---
name: demonstrate
description: "Phase 4 of the FaithTech 4D Cycle. Redefine impact as friendship^time. Redemptive metrics, anti-metrics, final review, celebration. Integrates with ce:review and ce:compound."
---

# Phase 4: Demonstrate — "Friendship Compounded by Time"

> "For Christ's love compels us, because we are convinced that one died for all, and therefore all died. And he died for all, that those who live should no longer live for themselves but for him who died for them and was raised again." — 2 Corinthians 5:14-15

Christ's love compels us as creators of technology to no longer live for self but to live for him.

## Tool Requirements
- **CE plugin**: `ce:review` (final review), `ce:compound` (final knowledge capture), `git-commit-push-pr` + `/changelog` (release).
- **Built-in pptx skill** (`/mnt/skills/public/pptx/SKILL.md`): Required for pitch deck generation in Step 4.5b. Uses `pptxgenjs` (`npm install -g pptxgenjs`).
- **Web search**: Optional — for supporting data, images, or context in the pitch deck.

## CE Integration
- `/ce:review` Step 4.4 — final comprehensive review
- `/ce:compound` Step 4.6 — final knowledge capture
- `git-commit-push-pr` + `/changelog` Step 4.5 — release

## Step 4.1 — Redefine Success

The modern tech myth: the most impactful product achieves the greatest force in the shortest time.

As Andy Crouch observed, the tech industry defines impact as:
**i = force / time** — fast, forceful, extractive. Communities and families sacrificed on the altar of short-term impact.

Crouch redefines influence — and the FaithTech Playbook adopts this as **redemptive impact**:
**ri = friendship ^ time** — deep relationships compounded over time.

This is demonstrated most powerfully in Jesus' own model. Jesus devoted most of his energy and time to a small group of 12 men, with an even smaller circle of 3 friends — Peter, James, and John. Deep friendship compounded over time produces deep people who produce redemptive impact.

Ask:
- "If this product succeeds beyond wildest dreams, what does the world look like in 5 years?"
- "How will you know people are loving God and others more deeply because of this?"
- "What would Jesus celebrate about this product? What might he challenge?"
- "How has your team already been transformed through building?"
- "What relationships have deepened — within the team and with those you serve?"

Generate `docs/4_demonstrate/success_vision.md` — capture the team's answers to these questions. This document defines what redemptive success looks like for this project and becomes the north star for metrics design in the next step.

## Step 4.2 — Redemptive Metrics
Read `agents/facilitators/redemptive-metrics-designer.md`. 5 dimensions:
1. **Relationship Depth** (replaces engagement)
2. **Love Advancement** (replaces growth)
3. **Community Health** (replaces retention)
4. **Builder Transformation** (unique to FaithTech)
5. **Image-Bearer Dignity** (replaces satisfaction)

## Step 4.3 — Anti-Metrics
Explicitly reject: addictive usage, data extraction, growth over depth, revenue over relationships, vanity metrics without quality context.
Generate `docs/4_demonstrate/metrics.md`.

## Step 4.4 — Final Review
Run `/ce:review` full codebase — ALL CE + FaithTech reviewers. VETO must resolve.
Generate `docs/4_demonstrate/impact_report.md`.

## Step 4.5 — Demo + Sustainability
- "How will we introduce this with humility, not hype?"
- "How will we invite honest feedback honoring autonomy to reject what we built?"
- "What does ongoing relationship look like after launch — not just support tickets?"
- "How will we sustain long-term? What's our stewardship plan?"

We gauge redemptive impact by how it redefines the community — both those we serve and those who build — demonstrated through lasting relationship, not quick-win solutions that leave people indebted and alone.

Generate `docs/4_demonstrate/demo_plan.md` + `docs/4_demonstrate/sustainability_plan.md`.

## Step 4.5b — Pitch Deck Generation

Read `skills/pitch-deck/SKILL.md`. Generate a pitch deck pulling from ALL project deliverables.

Ask: "Who is the primary audience for this pitch? Hackathon judges, ministry partners, investors, church leaders, or the people you serve?"

The pitch deck skill adapts the slide structure, tone, and emphasis based on the audience. It reads every deliverable generated across all phases and synthesizes them into a cohesive presentation.

**Tool requirement**: Uses the built-in pptx skill (`/mnt/skills/public/pptx/SKILL.md`) and `pptxgenjs` for PPTX generation. Optional web search for supporting images or statistics.

Generate `docs/4_demonstrate/pitch_deck.pptx` + `docs/4_demonstrate/pitch_deck_notes.md`.

Note: This step is also available anytime via the `/ft:pitch` command — the deck adapts to whatever deliverables exist at that point in the process.

## Step 4.6 — Celebrate & Commission
Read `agents/facilitators/celebration-facilitator.md`. 6 steps: Name what was built, Honor contributors, Name learnings, Acknowledge sacrifice, Give praise to the Spirit, Commission with blessing.
Run `/ce:compound` final. Generate `docs/4_demonstrate/celebration.md`.

> "We create and demonstrate our work through a redemptive lens, giving praise and credit to the work of the Holy Spirit." — FaithTech Playbook

## Project Complete
All deliverables documented. All learnings compounded. God praised. The ongoing rhythm of redemptive metrics tracking continues beyond this session.
