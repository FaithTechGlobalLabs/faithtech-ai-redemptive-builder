---
name: 3rc-evaluator
description: "Walk through Reject/Receive/Reimagine/Create for each approach. Requires evidence from existing_solutions_research.md for Receive and Reimagine steps. Invoked in Phase 2 Step 2.2."
---

# 3RC Evaluator

> "Where a tech solution already exists, we can embrace it if it aligns with the community we are serving. We curate, rather than create." — FaithTech Playbook

## Prerequisites
Before running 3RC, verify that `docs/2_discern/existing_solutions_research.md` exists. If it doesn't, the agent MUST run Step 2.1a (Existing Solutions Research) first. You cannot honestly evaluate Receive and Reimagine without knowing what exists.

## Per Approach from solution_ideas.md

### 1. REJECT — Should we build this at all?
- "Is technology the right answer here?"
- "Would a non-tech solution (community, presence, mentoring, policy) be more redemptive?"
- "Are we falling into the Killer App Trap?"
- "What happens if we choose NOT to build? Is that a loving choice?"
- "Could building this cause more harm than the problem?"

If any answer suggests rejection → recommend REJECT and explain why it's the most loving choice. Rejection is not failure — it's discernment.

### 2. RECEIVE — Does a solution already exist?
**MUST reference `existing_solutions_research.md`.**

Pull the specific solutions found in research and present them:
- "Our research found these existing solutions: [list from research doc]. Have you looked at any of them?"
- "Specifically, [Solution X] serves a similar population and does [Y]. Why not use it?"
- "Could we partner with [Organization Z] rather than building our own?"
- "Is our desire to build driven by genuine need — or by the thrill of creation and the ego of ownership?"

Only move past Receive if there's a **specific, documented reason** each existing solution doesn't serve our Image-Bearer Profiles. "We want to build our own" is not a valid reason. The reason must be tied to the people we serve.

### 3. REIMAGINE — Can existing tech be redirected?
**MUST reference `existing_solutions_research.md`.**

- "Our research found [open-source project X]. Could we fork it and adapt it?"
- "Could we build a plugin or integration for [existing platform Y]?"
- "What's the minimum we could build on TOP of existing infrastructure?"
- "Could we take something built recklessly and reimagine it redemptively?"

Only move past Reimagine if adaptation genuinely doesn't work — and document WHY.

### 4. CREATE — Only if 1-3 genuinely don't apply
- "What is the irreducible core that MUST be newly created?"
- "What specific gap from the research does this fill that nothing else can?"
- "How could this be abused? What guardrails prevent each scenario?"
- "How does this specifically advance love?"

## Output per approach:
```
Approach: [name]
Tag: [🟢 RECEIVE / 🔵 REIMAGINE / 🟡 CREATE / ⚪ NON-TECH]

REJECT assessment: [findings]
RECEIVE assessment: [reference specific solutions from research]
  - Existing solutions considered: [list with reasons each was accepted or ruled out]
REIMAGINE assessment: [reference specific projects from research]
  - Adaptation candidates considered: [list with reasons each was accepted or ruled out]
CREATE assessment: [only if Receive and Reimagine genuinely failed]
  - Gap this fills: [what specifically doesn't exist]
  - Abuse scenarios: [list]
  - Guardrails: [list]

Decision: [Reject | Receive | Reimagine | Create]
Rationale: [why this is the most loving choice, with evidence]
```

Generate `docs/2_discern/3rc_decision.md`.

## Anti-patterns
- **All Create** → "Our research found [N] existing solutions. I need you to explain specifically why EACH one doesn't work before we choose Create."
- **Skipping research** → "We can't run 3RC without the research. Let me search for existing solutions first."
- **Vague Receive rejection** → "It doesn't fit" is not enough. Which Image-Bearer Profile doesn't it serve, and why specifically?
- **NIH syndrome** → "Not Invented Here" thinking. Building new gives us control and credit, but curating and partnering might serve people better.
