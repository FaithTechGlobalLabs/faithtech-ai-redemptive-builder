---
name: discern
description: "Phase 2 of the FaithTech 4D Cycle. 'How Might Jesus' reframing and 3RC evaluation (Reject/Receive/Reimagine/Create). Feature specs with redemptive alignment. Integrates with ce:plan."
---

# Phase 2: Discern — "Involve the Wisdom of God"

> "Do not conform to the pattern of this world, but be transformed by the renewing of your mind. Then you will be able to test and approve what God's will is — his good, pleasing and perfect will." — Romans 12:2

We involve the wisdom of God, testing and refining our approach. We move from "How Might We" (human-centered) toward "How Might Jesus" (Christ-centered).

## Tool Requirements
- **Web search** (REQUIRED): Used in Step 2.1a for existing solutions research. The `existing-solutions-researcher` agent runs 25+ web searches across 5 categories. Without web search, the Receive and Reimagine steps in 3RC are guesswork.
- **CE plugin** (`ce:plan`): Used in Step 2.3 for implementation planning. If not installed, create the plan manually.
- **CE plugin** (`ce:brainstorm`): Optional for Step 2.1b solution ideation.

## CE Integration
Step 2.3: Run `/ce:plan` after features pass 3RC and alignment checks.

## Step 2.1 — "How Might Jesus" Reframe

Read `agents/facilitators/hmj-reframer.md`.

Romans 12:2 calls us to not conform to the world's patterns but be transformed by renewing our minds. The tech industry's pattern is "How Might We" — human-centered design. We transform this into "How Might Jesus" — Christ-centered discernment.

For each problem area from discovery_brief:
- "Through Jesus' eyes, what would he notice first?"
- "How did Jesus respond to this kind of suffering?"
- "What would sacrificial love look like — beyond a clever solution?"
- "What would Jesus give up to serve these people?"
- "Who would Jesus include that we're missing?"

Generate `docs/2_discern/how_might_jesus.md`.

## Step 2.1a — Existing Solutions Research

**Before brainstorming new ideas, research what already exists.** The Playbook says: "Where a tech solution already exists, we can embrace it... We curate, rather than create, custom-built technology that risks placing ourselves and others in technical debt."

The agent MUST use web search to actively investigate BEFORE the team ideates. This is not optional — it prevents the Killer App Trap and honors the Receive/Reimagine postures in 3RC.

### Search for:
1. **Existing apps and platforms** — search for tools already solving this problem or similar ones. Search terms: the problem domain + "app", "platform", "tool", "software".
2. **Non-profits and ministries** — search for organizations already serving these people. They may have solutions, partnerships, or deep knowledge. Search terms: problem domain + "nonprofit", "ministry", "organization", "charity".
3. **Open-source projects** — search GitHub, GitLab, and Openly Faithful (`projects.openlyfaithful.org`) for existing Christian and open-source codebases that could be adapted or contributed to. Search terms: problem keywords on github.com or Openly Faithful.
4. **Church and faith-based resources** — search for faith communities, Christian open-source tools (`projects.openlyfaithful.org`), and kingdom initiatives already addressing this. Search terms: problem + "church", "faith-based", "Christian", "ministry".
5. **Academic research** — search for studies on what interventions actually work for this problem. Search terms: problem domain + "research", "study", "evidence", "what works".

### For each existing solution found, document:
- Name and URL
- What it does and who it serves
- How well it aligns with our Image-Bearer Profiles
- Strengths and gaps (where does it fall short?)
- Could we partner with, support, or build on this?
- Is it Reckless, Responsible, or Redemptive in its approach?

Read `agents/facilitators/existing-solutions-researcher.md` for the full research process.

Generate `docs/2_discern/existing_solutions_research.md` — a thorough landscape of what already exists, organized by category (apps, orgs, open-source, faith-based, research).

**This document feeds directly into 3RC** — without it, the Receive and Reimagine postures are just guesswork.

## Step 2.1b — Solution Ideation

Now that we've reframed through Jesus' lens AND researched what already exists, generate solution ideas. This brainstorming is informed by research — not starting from zero.

Use `/ce:brainstorm` if available, or guide ideation directly:
- "Based on our research, which existing solutions could we Receive (adopt as-is) or Reimagine (adapt for our context)?"
- "What gaps did our research reveal that genuinely need new creation?"
- "Based on our 'How Might Jesus' reframes, what solution directions emerge?"
- "What could we build that would directly serve our Image-Bearer Profiles?"
- "What non-technology solutions should we consider alongside or instead of tech?"
- "What partnerships with existing organizations could multiply our impact?"
- "What's the simplest thing that could advance love in this situation?"

Capture EVERY idea — Receive, Reimagine, and Create ideas alike. Tag each one:
- 🟢 RECEIVE — adopt an existing solution
- 🔵 REIMAGINE — adapt an existing solution
- 🟡 CREATE — build something new
- ⚪ NON-TECH — a human/relational/community solution

Generate `docs/2_discern/solution_ideas.md` — all ideas organized by the Image-Bearer Profile they serve, tagged by type, with the research or HMJ reframe that inspired each one.

## Step 2.2 — 3RC Evaluation

Read `agents/facilitators/3rc-evaluator.md`. For EACH approach from the solution ideas, walk ALL FOUR in order.

**CRITICAL: The Receive and Reimagine evaluations MUST reference `docs/2_discern/existing_solutions_research.md`.** If the research found existing solutions, the agent must present them and ask "Why not use this?" before allowing Create.

1. **REJECT**: Is tech the answer? Killer App Trap? What if we build nothing? Could a non-tech solution (community, presence, mentoring, policy) be more redemptive?
2. **RECEIVE**: **Reference the research doc.** "Our research found [X, Y, Z] already exist. Could we adopt one of these? Could we partner with this organization?" Only move past Receive if there's a genuine, specific reason existing solutions don't serve our Image-Bearer Profiles.
3. **REIMAGINE**: **Reference the research doc.** "Could we adapt [existing solution X] for our context? Could we fork [open-source project Y]? Could we build a layer on top of [platform Z]?" Only move past Reimagine if adaptation genuinely doesn't work.
4. **CREATE**: Irreducible core? Abuse scenarios? Guardrails? How does this specifically advance love? "We commit to actively imagine how our innovations might be abused, exploited, or misused, and we design guardrails where possible."

**Anti-pattern:** All Create → "Our research found [N] existing solutions. Let's revisit why none of them work before building from scratch."

Generate `docs/2_discern/3rc_decision.md`.

## Step 2.3 — Feature Specification + CE Plan

For each Create/Reimagine feature, run three checks:

**Belief check**: Does this encourage surrender or control? Dependence on God or on technology?
**Values check**: Honors dignity, privacy, autonomy? People can leave easily? "People" not "users"?
**Tools check**: How specifically does this advance love? Apply the 1 Corinthians 13 lens — is this product patient? Kind? Not envious, boastful, proud, or self-seeking? Does it not dishonor others? Not easily angered? Keeps no record of wrongs? Rejoices with truth? (1 Cor 13:4-7)

**Abuse potential**: How could this be exploited? What guardrails prevent each scenario?

**Design standards**: No dark patterns, WCAG AA, privacy-first, exit-friendly, redemptive language.

Generate `docs/2_discern/feature_spec.md`. Then run `/ce:plan` → `docs/2_discern/implementation_plan.md`.

## Step 2.4 — Technology Decisions
"What's the simplest technology that serves these people well?"
Generate `docs/2_discern/tech_stack_decision.md`.

## Gate Check → Phase 3
1. Was existing solutions research conducted (web search, not just asking the user)?
2. Was 3RC honestly applied — with Receive/Reimagine referencing actual research findings?
3. Does every feature advance love — tested against 1 Cor 13?
4. Are guardrails designed for each abuse scenario?
5. Did we ask "How Might Jesus" (Rom 12:2) before "How Might We"?
6. Has `/ce:plan` produced an implementation plan?
