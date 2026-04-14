---
name: develop
description: "Phase 3 of the FaithTech 4D Cycle. Co-Creation Cycle (Request→Receive→Review→Care→Render→Rejoice). Integrates with ce:work, ce:review (with FaithTech reviewers), and ce:compound."
---

# Phase 3: Develop — "Co-Create with the Holy Spirit"

> "By faith we understand that the universe was formed at God's command, so that what is seen was not made out of what was visible." — Hebrews 11:3
>
> "In their hearts humans plan their course, but the LORD establishes their steps." — Proverbs 16:9
>
> "In Christ are hidden all the treasures of wisdom and knowledge." — Colossians 2:3

What we need already exists in God. Through the Holy Spirit, he reveals what is not yet visible so we can bring it into view. We do not simply develop — we co-develop with the Holy Spirit.

## Tool Requirements
- **CE plugin** (RECOMMENDED): `ce:work` (task execution), `ce:review` (multi-agent review), `ce:compound` (knowledge capture). Without CE, execute tasks manually, review with FaithTech agents only, and capture learnings in the journal manually.
- **Git**: For version control and worktrees (`git-worktree`).
- **Web search**: Optional — for researching libraries, frameworks, or best practices during Render.

## CE Integration
- `/ce:plan` for roadmap + `git-worktree` for parallel branches
- `/ce:work` in Render — task execution with worktrees
- `/ce:review` in Sprint Review — CE reviewers + ALL FaithTech reviewers from `agents/reviewers/`
- `/ce:compound` in Rejoice — engineering + redemptive learnings

## Step 3.0 — Plan Iterations
Group features into sprints. Each sprint: small, focused on an Image-Bearer Profile, ordered by redemptive priority. Generate `docs/3_develop/dev_roadmap.md` and `docs/3_develop/architecture.md`.

## Co-Creation Cycle (6 Steps — Repeat Per Sprint)

The Playbook says "keep asking" (Eph 1:17), creating a rhythm of Spirit-led inspiration. Each sprint follows 6 steps:

### Step 3.1 — REQUEST
> "In their hearts humans plan their course, but the LORD establishes their steps." — Prov 16:9

"What are we building this sprint? What questions remain? What guidance do we need?"
Document sprint goal and uncertainties in `docs/3_develop/sprint_plans/sprint_N.md`.

### Step 3.2 — RECEIVE
> "By faith we understand that the universe was formed at God's command, so that what is seen was not made out of what was visible." — Heb 11:3

"Before coding — what insights are emerging? Any Scripture or principle relevant? New understanding about those we serve? Technical approaches coming to mind?"
Capture WITHOUT judgment. The Spirit reveals what we cannot see on our own.

### Step 3.3 — REVIEW (Sprint Planning)
Synthesize Request + Receive into tasks. Each maps to an Image-Bearer Profile + redemptive purpose. Validate against feature_spec alignment annotations.

### Step 3.4 — CARE (Team Check-In) ← MANDATORY

> "It is more important to do projects together over projects themselves. If a team member needs to be heard, or cared for, or loved, we willingly pause to care for that person over perfectly achieving the end result." — FaithTech Playbook

Before Render begins, the agent MUST ask:
- "How is everyone doing — honestly? Is anyone feeling overwhelmed, rushed, or stretched thin?"
- "Do we need to reduce scope to protect people? We lean toward an unhurried approach, not willing to sacrifice our team for our product."
- "Is anyone working alone who shouldn't be? The Playbook says creating happens best with others in committed, trusted, sacrificial relationships — together over isolation."

If anyone signals distress → pause. Care for the person. Adjust scope. Do NOT proceed to Render until the team is healthy.

This is not an anti-pattern check — it is a mandatory step. People are image-bearers. They come before the product. Always.

Append a **Care Log** section to `docs/3_develop/sprint_plans/sprint_N.md`:
```
## Care Check-In
- Team health: [what was reported]
- Scope adjusted: [yes/no — what changed]
- Collaboration: [who is working together]
- Concerns: [any flags raised]
```

### Step 3.5 — RENDER (Build)
Run `/ce:work`. Code standards:
- No dark patterns
- Accessible (WCAG AA, progressive enhancement)
- Privacy-first (minimal collection, transparent, user control)
- "People" not "users" in ALL UI copy
- Exit-friendly (easy leave, export, delete)
- Implement all guardrails from Phase 2
- Together: pair work and collaboration preferred over solo building

### Step 3.5r — SPRINT REVIEW
Run `/ce:review` (CE standard reviewers). THEN read and apply EVERY file in `agents/reviewers/`:
- `redemptive-alignment-reviewer.md` — **VETO POWER** — includes 1 Cor 13 love lens and posture spectrum
- `image-bearer-language-reviewer.md`
- `dark-pattern-scanner.md`
- `accessibility-dignity-reviewer.md`
- `grey-zone-evaluator.md` (conditional)
- `killer-app-trap-detector.md` (conditional)

Fix all issues. VETO = must resolve before proceeding.

Append a **Review Results** section to `docs/3_develop/sprint_plans/sprint_N.md`:
```
## Sprint Review Results
- CE reviewers: [summary — pass/fail per reviewer]
- Redemptive alignment: [PASS/CONCERNS/VETO]
- Language review: [issues found / clean]
- Dark pattern scan: [patterns found / clean]
- Accessibility: [issues / pass]
- Issues fixed: [list]
- Remaining concerns: [list or none]
```

### Step 3.6 — REJOICE (Mandatory)

> "In Christ are hidden all the treasures of wisdom and knowledge." — Col 2:3

"What was accomplished? What surprised you? How has the team been affected? What did you learn about those we serve? What are you thankful for?"

Run `/ce:compound` — capture BOTH engineering AND redemptive learnings.
Append to `docs/3_develop/cocreation_journal.md`.

### Step 3.R — Repeat or Advance
More sprints? → Loop to 3.1. All done? → Gate Check.

## Gate Check → Phase 4
1. Was the Co-Creation Cycle followed each sprint — all 6 steps including Care?
2. Were people prioritized over deadlines? (Evidence: Care step logs)
3. Was collaboration preferred over isolation? (Together over solo?)
4. All Phase 2 guardrails implemented in code?
5. Every feature traces to redemptive purpose?
6. `/ce:review` run per sprint with FaithTech reviewers?
7. `/ce:compound` captured learnings per sprint?
