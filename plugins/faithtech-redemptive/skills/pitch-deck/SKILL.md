---
name: pitch-deck
description: "Generate a redemptive technology pitch deck from project deliverables. Adapts to audience: hackathon judges, ministry partners, investors, church leaders, or beneficiaries. Can be invoked anytime via /ft:pitch. Uses the built-in pptx skill for PPTX generation."
---

# Pitch Deck Generator — Redemptive Technology

Generate a pitch deck that tells the story of a redemptive technology project, pulling content from every phase's deliverables. This is not a generic startup pitch — it's a presentation grounded in the FaithTech framework.

## Tool Requirements
- **Built-in pptx skill**: Read `/mnt/skills/public/pptx/SKILL.md` before generating. Uses `pptxgenjs` (`npm install -g pptxgenjs`).
- **Web search**: Optional — search for relevant images, statistics, or context to strengthen the pitch.

## Step 1 — Define Audience

Ask: "Who is this pitch deck for?"

| Audience | Tone | Emphasis | Length |
|----------|------|----------|--------|
| **Hackathon judges** | Energetic, concise, demo-focused | Problem → Solution → Demo → Impact | 8-12 slides |
| **Ministry partners** | Relational, mission-aligned | Lament → People served → Redemptive approach → Partnership | 10-15 slides |
| **Investors / Funders** | Professional, impact-driven | Problem scale → Solution → Traction → Sustainability → Ask | 12-15 slides |
| **Church leaders** | Pastoral, accessible | Faith & Work Gap → Story of those served → How tech serves the church → Call to action | 8-12 slides |
| **Beneficiaries / Community** | Warm, human, non-technical | Your story → What we built for you → How it works → Your feedback matters | 6-10 slides |

## Step 2 — Gather Content from Deliverables

Read these project documents to populate the deck (skip any that don't exist yet):

| Slide Content | Source Document | Phase |
|--------------|----------------|-------|
| Problem definition | `docs/1_discover/discovery_brief.md` | Discover |
| Who is affected (real stories) | `docs/1_discover/personas.md` | Discover |
| Spiritual grounding | `docs/1_discover/lament.md` | Discover |
| Builder identity | `docs/0_onboard/identity_grounding.md` | Onboard |
| How we approached it differently | `docs/2_discern/how_might_jesus.md` | Discern |
| What already exists | `docs/2_discern/existing_solutions_research.md` | Discern |
| Why we built (not just adopted) | `docs/2_discern/3rc_decision.md` | Discern |
| What we built | `docs/2_discern/feature_spec.md` | Discern |
| Technical approach | `docs/2_discern/tech_stack_decision.md` | Discern |
| How we built it | `docs/3_develop/cocreation_journal.md` | Develop |
| Team story | `docs/3_develop/sprint_plans/` (Care logs) | Develop |
| Impact definition | `docs/4_demonstrate/success_vision.md` | Demonstrate |
| Metrics | `docs/4_demonstrate/metrics.md` | Demonstrate |
| Sustainability | `docs/4_demonstrate/sustainability_plan.md` | Demonstrate |

## Step 3 — Generate Slide Structure

### For Hackathon Judges (default)
1. **Title slide** — Project name, tagline, team
2. **The problem** — From discovery_brief. Lead with a person's story from personas.md, not statistics.
3. **Who is affected** — Image-Bearer Profile summary. Real names, real pain. Not "target market."
4. **What already exists** — From existing_solutions_research. Show you did the homework. "We found X, Y, Z — here's the gap."
5. **Our approach** — "How Might Jesus" reframe. 3RC decision. Why we built new vs. adopted existing.
6. **What we built** — Features from feature_spec. Demo screenshots or live demo.
7. **How we built it** — Co-Creation Cycle. The redemptive process (not just agile with prayer).
8. **Redemptive guardrails** — What dark patterns we refused. What abuse scenarios we designed against.
9. **Impact** — ri = friendship^time. Redemptive metrics, not vanity metrics. Jesus' 12+3 model.
10. **What's next** — Sustainability plan. How the relationship continues.
11. **Call to action** — What you're asking for (feedback, partnership, funding, prayer).
12. **Thank God** — Brief acknowledgment that this was co-created with the Holy Spirit.

### For Ministry Partners
Same structure but expand slides 2-3 (more time on the people and lament), add a "How you can partner" slide, and include the lament excerpt.

### For Investors / Funders
Add: market context (from research), technical architecture, team credentials, financial sustainability, specific ask with use of funds.

### For Church Leaders
Lead with the Faith and Work Gap. Tell the story of bridging faith and technology. Show how this serves the church's mission. Minimize technical jargon.

### For Beneficiaries
Lead with "we listened to you." Show their stories reflected back. Demonstrate the product simply. End with "your feedback shapes what's next."

## Step 4 — Generate the Deck

Read the built-in pptx skill at `/mnt/skills/public/pptx/SKILL.md` and follow its instructions for generating PPTX files using `pptxgenjs`.

Design principles:
- **Bold, content-informed palette** — not generic. Colors should reflect the project's character.
- **People, not data** — lead every slide with a human story, not a chart.
- **Redemptive language** — "people we serve" not "users", "relationship depth" not "engagement".
- **Honest, not hyped** — present what exists, acknowledge what doesn't. Humility is the posture.
- **Scripture where appropriate** — a single grounding verse on the title or closing slide. Not preachy.

Save to: `docs/4_demonstrate/pitch_deck.pptx`

Also generate: `docs/4_demonstrate/pitch_deck_notes.md` — speaker notes for each slide with talking points and timing.

## Step 5 — Review

After generation, ask:
- "Does this accurately represent the people we serve?"
- "Would those we built this for feel honored by how they're represented?"
- "Does this give credit to the Holy Spirit's role, or does it sound like we did it alone?"
- "Is the tone appropriate for the audience?"

Revise based on feedback.
