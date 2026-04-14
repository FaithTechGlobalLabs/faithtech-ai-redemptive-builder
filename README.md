# FaithTech Redemptive Builder

> *"We believe there is a way of building technology that redemptively changes the world while transforming those who build it."* — [The FaithTech Playbook](https://faithtech.com/the-faithtech-playbook/)

## About the FaithTech Playbook

[FaithTech](https://faithtech.com) is a global community of technologists who believe there is a uniquely Jesus-centered way to build technology. The [FaithTech Playbook](https://faithtech.com/the-faithtech-playbook/) ([PDF](https://faithtech.com/wp-content/uploads/The-FaithTech-Playbook.pdf)) lays out this vision across three layers:

**A Way of Being Redemptive** — The tech industry is caught between two traps: the *Killer App Trap* (believing technology will solve our deepest problems) and the *Faith and Work Gap* (feeling like an outsider in both church and workplace). The Playbook offers a third path rooted in the way of Jesus.

**A Way of Building Redemptively** — Three pillars guide every decision:
- **Belief: Live by the Spirit** — Give up power and control. Depend on the Holy Spirit.
- **Values: People as Image-Bearers** — Every person bears God's image. People above products.
- **Tools: Advance Love** — Every product must answer: *"How is this helping people love God and love others more deeply?"*

**A Way of Practicing Redemptive Technology** — The **4D Cycle** is a four-phase framework for going from problem to product: **Discover** (listen, lament, understand the people affected), **Discern** (ask "How Might Jesus?", evaluate through Reject/Receive/Reimagine/Create), **Develop** (co-create with the Holy Spirit through iterative sprints), and **Demonstrate** (measure impact as *friendship compounded by time*).

The [FaithTech Workbook](https://workbook.faithtech.com/) expands the Playbook into practical exercises, templates, and guides for running the 4D Cycle in your community. This plugin brings that entire framework into your terminal.

📖 **Read the Playbook**: [faithtech.com/the-faithtech-playbook](https://faithtech.com/the-faithtech-playbook/)
📓 **Explore the Workbook**: [workbook.faithtech.com](https://workbook.faithtech.com/)
🌍 **Join the Community**: [faithtech.com](https://faithtech.com)

---

## What This Plugin Does

This is a **Claude Code plugin** that turns the FaithTech 4D Cycle into an interactive, agent-driven development environment — integrated with [Compound Engineering](https://github.com/EveryInc/compound-engineering-plugin) for engineering workflow.

```
Discover          →  Discern                →  Develop        →  Demonstrate
├─ Listen            ├─ How Might Jesus        ├─ Co-Creation     ├─ Metrics
├─ Lament            ├─ Web Research ← NEW     │  Cycle (6 steps  ├─ Final Review
├─ Profiles          ├─ Solution Ideation      │  incl. Care)     ├─ Launch
│                    ├─ 3RC Evaluation         │                  └─ Celebrate
│  ce:brainstorm     ├─ Feature Spec           │  ce:work
│                    │  ce:plan                │  ce:review
│                    │                         │  ce:compound
```

The agent asks all the questions, collects your answers, **researches what already exists before brainstorming**, generates 22+ documents across phases, enforces gate checks, and builds the software — all following the Playbook's methodology. You don't need to memorize the framework. The agent knows every step, all 14 custom agents, and every gate criterion. You just answer and type `/ft:next`.

## Install

### Claude Code (Primary — 2 commands)

Open Claude Code and run:

```
/plugin marketplace add FaithTechGlobalLabs/faithtech-ai-redemptive-builder
/plugin install faithtech-redemptive
```

That's it. All 7 commands (`/ft:start`, `/ft:next`, etc.), 6 skills, and 14 agents are now available. Start a project with:

```
/ft:start
```

#### Optional: Install Compound Engineering

For the full engineering workflow (brainstorm, plan, work, review, compound), also install:

```
/plugin marketplace add EveryInc/compound-engineering-plugin
/plugin install compound-engineering
```

The FaithTech plugin automatically calls CE commands at the right moments. Without CE, the plugin still works — the agent handles everything directly, just without CE's multi-agent review pipeline and worktree management.

#### Optional: Install pptxgenjs for Pitch Decks

For PPTX pitch deck generation via `/ft:pitch`:

```bash
npm install -g pptxgenjs
```

---

### Cursor

Clone the repo and point Cursor at the skills and agents:

```bash
git clone https://github.com/FaithTechGlobalLabs/faithtech-ai-redemptive-builder.git
```

Then in your project:
1. Copy `plugins/faithtech-redemptive/skills/` → your project's `.cursor/skills/`
2. Copy `plugins/faithtech-redemptive/agents/` → your project's `.cursor/agents/`
3. The SKILL.md files work as Cursor custom instructions — each one tells the agent how to run a phase

Alternatively, paste the content of any SKILL.md into Cursor's "Rules for AI" settings for project-wide context.

---

### Codex (OpenAI)

Use the Compound Engineering CLI to convert:

```bash
git clone https://github.com/FaithTechGlobalLabs/faithtech-ai-redemptive-builder.git
cd faithtech-ai-redemptive-builder
bunx @every-env/compound-plugin install ./plugins/faithtech-redemptive --to codex
```

This converts skills into Codex prompts + skills at `~/.codex/prompts` and `~/.codex/skills`.

---

### Windsurf

```bash
git clone https://github.com/FaithTechGlobalLabs/faithtech-ai-redemptive-builder.git
cd faithtech-ai-redemptive-builder
bunx @every-env/compound-plugin install ./plugins/faithtech-redemptive --to windsurf
```

Installs to `~/.codeium/windsurf/` (global) by default. Add `--scope workspace` for project-level.

---

### GitHub Copilot

```bash
git clone https://github.com/FaithTechGlobalLabs/faithtech-ai-redemptive-builder.git
cd faithtech-ai-redemptive-builder
bunx @every-env/compound-plugin install ./plugins/faithtech-redemptive --to copilot
```

Agents become `.agent.md` files with Copilot frontmatter.

---

### Gemini CLI

```bash
git clone https://github.com/FaithTechGlobalLabs/faithtech-ai-redemptive-builder.git
cd faithtech-ai-redemptive-builder
bunx @every-env/compound-plugin install ./plugins/faithtech-redemptive --to gemini
```

---

### Kiro, Pi, Droid, OpenClaw, Qwen

All supported via the CE converter. Replace `--to <target>`:

```bash
bunx @every-env/compound-plugin install ./plugins/faithtech-redemptive --to kiro
bunx @every-env/compound-plugin install ./plugins/faithtech-redemptive --to pi
bunx @every-env/compound-plugin install ./plugins/faithtech-redemptive --to droid
bunx @every-env/compound-plugin install ./plugins/faithtech-redemptive --to openclaw
bunx @every-env/compound-plugin install ./plugins/faithtech-redemptive --to qwen
```

---

### Any Other AI Tool (Universal)

The skills and agents are plain markdown files. They work in any tool that accepts custom instructions:

1. Clone the repo
2. Open any `SKILL.md` or agent `.md` file
3. Paste its content as a system prompt, custom instruction, or rules file

The framework is the markdown — the plugin format is just packaging.

---

### Local Development / Testing

```bash
# Test without installing (one session)
claude --plugin-dir ./plugins/faithtech-redemptive

# Or clone and test
git clone https://github.com/FaithTechGlobalLabs/faithtech-ai-redemptive-builder.git
cd faithtech-ai-redemptive-builder
claude --plugin-dir ./plugins/faithtech-redemptive
/ft:start
```

### Shell Helper Scripts

For teams that create many projects, the install scripts add a helper function to your shell:

**PowerShell:**
```powershell
.\scripts\install.ps1
. $PROFILE
New-FaithTechProject kalima-app
```

**Bash/Zsh:**
```bash
./scripts/install.sh
source ~/.zshrc
faithtech-new kalima-app
```

These create the project directory structure and initialize state — then you run `claude --plugin-dir ...` and `/ft:start` inside it.

---

## Usage

### Create a New Project

**PowerShell:**
```powershell
New-FaithTechProject kalima-app
claude --plugin-dir "C:\path\to\faithtech-plugin\plugins\faithtech-redemptive"
```

**Bash/Zsh:**
```bash
faithtech-new kalima-app
claude --plugin-dir ~/faithtech-plugin/plugins/faithtech-redemptive
```

### Start the 4D Cycle

Once inside Claude Code:

```
/ft:start
```

The agent welcomes you, creates the project structure, and asks:

> "What problem or pain have you observed that you believe technology might help address?"

From there, you just answer. The agent drives the process.

### Example Session

```
You:  /ft:start
Agent: Welcome. What would you like to call this project?
You:   Kalima — a platform connecting Arabic-speaking refugees with language tutors

Agent: Before we dive in, let me ground us in something essential.
       Many technologists feel a gap — at church, people don't 
       understand our work; at work, people don't understand our faith...
       You are an image-bearing co-creator with the Creator.
       
       How does this gap between faith and work show up in your experience?
You:   I work in tech but my church thinks social media is evil...

Agent: [saves identity_grounding.md]
       What problem or pain have you observed that you believe 
       technology might help address?
You:   Refugees arriving in new countries can't communicate...

      [Agent asks 6-8 deepening questions across 3 rounds]
      [Agent guides you through the 6-step lament modeled on Nehemiah]
      [Agent helps create 2-3 Image-Bearer Profiles]
      [Agent synthesizes discovery_brief.md]

You:  /ft:next
Agent: Gate check for Phase 1...
       ✅ Problem deeply understood
       ✅ Moved from empathy to compassion
       ✅ Started with God through lament
       ✅ Profiles represent real humans
       Advancing to Phase 2: Discern.

       Instead of "How might we connect refugees with tutors?",
       let's ask: "How might Jesus approach isolation among refugees?"
       Through his eyes, what would he notice first?

You:   He'd notice the person everyone else walks past...

Agent: [saves how_might_jesus.md]
       Now before we brainstorm solutions, let me research what 
       already exists. The Playbook says: curate before you create.

       [Agent searches: "refugee language learning app"]
       [Agent searches: "refugee integration nonprofit"]
       [Agent searches: "language exchange platform open source"]
       [Agent searches: "refugee ministry technology"]
       [Agent searches: "language learning refugee evidence"]

       I found 12 existing solutions across 5 categories.
       Tarjimly offers free translation for refugees. Duolingo has 
       a refugee program. Several nonprofits are already active...

       [saves existing_solutions_research.md]

       With this research in hand, let's brainstorm — what could 
       we Receive, Reimagine, or Create?

You:   Tarjimly is great but doesn't do peer matching...

Agent: [saves solution_ideas.md, then runs 3RC on each idea]
       Our research found Tarjimly. Why not use it?
You:   It's translation-focused, not relationship-focused...
Agent: That's a specific gap tied to our profiles. Noted.
       Let's evaluate through 3RC...
       [saves 3rc_decision.md]
```

### Commands Reference

| Command | What It Does |
|---------|-------------|
| `/ft:start` | Begin a new project (Phase 0) |
| `/ft:next` | Advance to next step |
| `/ft:status` | Show current phase, step, deliverables |
| `/ft:gate` | Run gate check for current phase |
| `/ft:check <feature>` | Run redemptive alignment check |
| `/ft:trap` | Run Killer App Trap detector |
| `/ft:pitch` | Generate pitch deck from deliverables (works at any phase) |

CE commands (available when compound-engineering is installed):

| Command | When It's Called |
|---------|-----------------|
| `/ce:brainstorm` | Phase 1 — structured discovery Q&A |
| `/ce:plan` | Phase 2 — implementation planning |
| `/ce:work` | Phase 3 — task execution with worktrees |
| `/ce:review` | Phase 3 per sprint + Phase 4 final (includes FaithTech reviewers) |
| `/ce:compound` | Phase 3 Rejoice + Phase 4 final (captures redemptive learnings) |

### Resume a Project

```bash
cd kalima-app
claude --plugin-dir ~/faithtech-plugin/plugins/faithtech-redemptive
```

Then:

```
/ft:status
```

The agent reads your deliverables and state file, tells you exactly where you left off.

---

## The 4D Cycle

### Phase 0: Onboard

| Step | What Happens | Deliverable |
|------|-------------|-------------|
| 0.2 | Project setup — directories, state file | `.faithtech/state.json` |
| 0.3 | Identity grounding — close the Faith and Work Gap (Eph 2:10, Rom 8:15) | `docs/0_onboard/identity_grounding.md` |

### Phase 1: Discover — "See Through the Lens of Christ"

> *"My sheep hear my voice, and I know them, and they follow me."* — John 10:27

| Step | What Happens | Deliverable |
|------|-------------|-------------|
| 1.1-1.3 | Listen — 3 rounds of deepening questions about the problem and people affected | `docs/1_discover/listening_notes.md` |
| 1.4 | Lament — guided 6-step process modeled on Nehemiah, bringing the problem before God | `docs/1_discover/lament.md` |
| 1.5 | Image-Bearer Profiles — 2-3 profiles honoring full humanity (not "user personas") | `docs/1_discover/personas.md` |
| 1.6 | Synthesis — combine everything into a discovery brief | `docs/1_discover/discovery_brief.md` |
| Gate | Problem deeply understood? Compassion not just empathy? Started with God? | |

**4 deliverables saved**

### Phase 2: Discern — "Involve the Wisdom of God"

> *"Do not conform to the pattern of this world, but be transformed by the renewing of your mind."* — Romans 12:2

| Step | What Happens | Deliverable |
|------|-------------|-------------|
| 2.1 | "How Might Jesus" — reframe every solution direction through Jesus' lens | `docs/2_discern/how_might_jesus.md` |
| 2.1a | Existing solutions research — agent web-searches for apps, orgs, open-source, faith-based resources, and academic evidence | `docs/2_discern/existing_solutions_research.md` |
| 2.1b | Solution ideation — brainstorm ALL ideas informed by research (tagged: Receive/Reimagine/Create/Non-tech) | `docs/2_discern/solution_ideas.md` |
| 2.2 | 3RC — Reject/Receive/Reimagine/Create evaluation. Receive and Reimagine MUST reference research. | `docs/2_discern/3rc_decision.md` |
| 2.3 | Feature spec — features with redemptive alignment (1 Cor 13 love lens) + `ce:plan` | `docs/2_discern/feature_spec.md` + `docs/2_discern/implementation_plan.md` |
| 2.4 | Tech decisions — stack chosen by who we serve, not what's trendy | `docs/2_discern/tech_stack_decision.md` |
| Gate | 3RC honestly applied? Research done? Every feature advances love? Guardrails designed? | |

**7 deliverables saved**

### Phase 3: Develop — "Co-Create with the Holy Spirit"

> *"In their hearts humans plan their course, but the LORD establishes their steps."* — Proverbs 16:9

| Step | What Happens | Deliverable |
|------|-------------|-------------|
| 3.0 | Plan iterations — group features into sprints by redemptive priority | `docs/3_develop/dev_roadmap.md` + `docs/3_develop/architecture.md` |

Each sprint follows the **Co-Creation Cycle** (6 steps):

| Step | What Happens | Saved To | CE Command |
|------|-------------|----------|-----------|
| Request | Define sprint goal, invite the Spirit | `sprint_plans/sprint_N.md` | — |
| Receive | Pause. Capture insights before coding. | → appended to sprint plan | — |
| Review | Form sprint plan, validate alignment | → appended to sprint plan | — |
| Care | Team check-in — mandatory. Reduce scope if needed. | → Care Log in sprint plan | — |
| Render | Build code, tests, guardrails | `src/` + `tests/` | `ce:work` |
| Sprint Review | Multi-agent code review (CE + FaithTech reviewers) | → Review Results in sprint plan | `ce:review` |
| Rejoice | Celebrate. Reflect. Capture learnings. | `cocreation_journal.md` + `.learnings/` | `ce:compound` |

The `redemptive-alignment-reviewer` has **veto power** — code that violates the three pillars cannot merge.

**4+ deliverables per sprint** (sprint plan with Care + Review sections, code, tests, journal entry, learnings)

### Phase 4: Demonstrate — "Friendship Compounded by Time"

> *"For Christ's love compels us... that those who live should no longer live for themselves."* — 2 Corinthians 5:14-15

| Step | What Happens | Deliverable |
|------|-------------|-------------|
| 4.1 | Redefine success — ri = friendship^time, not force/time (Andy Crouch). Jesus' model: 12+3. | `docs/4_demonstrate/success_vision.md` |
| 4.2-4.3 | Redemptive metrics (5 dimensions) + anti-metrics (what we refuse to optimize) | `docs/4_demonstrate/metrics.md` |
| 4.4 | Final comprehensive review — full codebase, all reviewers | `docs/4_demonstrate/impact_report.md` |
| 4.5 | Launch plan + sustainability — humility, ongoing relationship, stewardship | `docs/4_demonstrate/demo_plan.md` + `docs/4_demonstrate/sustainability_plan.md` |
| 4.5b | Pitch deck — audience-adapted presentation pulling from ALL deliverables (also available anytime via `/ft:pitch`) | `docs/4_demonstrate/pitch_deck.pptx` + `docs/4_demonstrate/pitch_deck_notes.md` |
| 4.6 | Celebrate and commission — honor contributors, credit the Spirit, bless the work | `docs/4_demonstrate/celebration.md` |

**8 deliverables saved**

#### Pitch Deck Audiences

The `/ft:pitch` command adapts the deck to who you're presenting to:

| Audience | Emphasis | Length |
|----------|----------|--------|
| Hackathon judges | Problem → Solution → Demo → Impact | 8-12 slides |
| Ministry partners | Lament → People served → Redemptive approach → Partnership | 10-15 slides |
| Investors / Funders | Problem scale → Traction → Sustainability → Ask | 12-15 slides |
| Church leaders | Faith & Work Gap → Story → How tech serves the church | 8-12 slides |
| Beneficiaries | "We listened to you" → What we built → Your feedback matters | 6-10 slides |

### Complete Deliverable Summary

| Phase | Documents | Total |
|-------|-----------|-------|
| 0 — Onboard | `identity_grounding.md` | 1 |
| 1 — Discover | `listening_notes.md`, `lament.md`, `personas.md`, `discovery_brief.md` | 4 |
| 2 — Discern | `how_might_jesus.md`, `existing_solutions_research.md`, `solution_ideas.md`, `3rc_decision.md`, `feature_spec.md`, `implementation_plan.md`, `tech_stack_decision.md` | 7 |
| 3 — Develop | `dev_roadmap.md`, `architecture.md`, `sprint_plans/sprint_N.md` (with Care + Review sections), `cocreation_journal.md`, `.learnings/`, `src/`, `tests/` | 4+ per sprint |
| 4 — Demonstrate | `success_vision.md`, `metrics.md`, `impact_report.md`, `demo_plan.md`, `sustainability_plan.md`, `pitch_deck.pptx`, `pitch_deck_notes.md`, `celebration.md` | 8 |
| **Total** | | **24+ documents** |

Every conversation captured. Every decision documented. Every reflection saved. Nothing lost between phases.

---

## Plugin Components

| Type | Count | Examples |
|------|-------|---------|
| Commands | 7 | `start`, `next`, `status`, `gate`, `check`, `trap`, `pitch` |
| Skills | 6 | `discover`, `discern`, `develop`, `demonstrate`, `theology-of-technology`, `pitch-deck` |
| Review Agents | 6 | `redemptive-alignment-reviewer` (veto), `dark-pattern-scanner`, `image-bearer-language-reviewer`, `killer-app-trap-detector`, `grey-zone-evaluator`, `accessibility-dignity-reviewer` |
| Facilitator Agents | 8 | `lament-facilitator`, `image-bearer-profiler`, `existing-solutions-researcher`, `3rc-evaluator`, `hmj-reframer`, `cocreation-facilitator`, `redemptive-metrics-designer`, `celebration-facilitator` |

## Plugin Structure

```
faithtech-plugin/
├── plugins/
│   └── faithtech-redemptive/
│       ├── .claude-plugin/
│       │   └── plugin.json              ← Plugin manifest (name: "ft")
│       ├── commands/
│       │   ├── start.md                 ← /ft:start (includes identity grounding)
│       │   ├── next.md                  ← /ft:next
│       │   ├── status.md                ← /ft:status (tracks 24+ deliverables)
│       │   ├── gate.md                  ← /ft:gate
│       │   ├── check.md                 ← /ft:check
│       │   ├── trap.md                  ← /ft:trap
│       │   └── pitch.md                 ← /ft:pitch (anytime — adapts to audience)
│       ├── skills/
│       │   ├── discover/SKILL.md        ← Listen → Lament → Profiles
│       │   ├── discern/SKILL.md         ← HMJ → Research → Ideate → 3RC → Spec
│       │   ├── develop/SKILL.md         ← Co-Creation Cycle (6 steps incl. Care)
│       │   ├── demonstrate/SKILL.md     ← Vision → Metrics → Review → Pitch → Celebrate
│       │   ├── theology-of-technology/  ← 8 biblical narratives (optional reflection)
│       │   │   └── SKILL.md
│       │   └── pitch-deck/              ← Audience-adapted pitch deck generator
│       │       └── SKILL.md
│       ├── agents/
│       │   ├── reviewers/               ← 6 review agents (extend ce:review)
│       │   │   ├── redemptive-alignment-reviewer.md   (VETO + 1 Cor 13 lens)
│       │   │   ├── image-bearer-language-reviewer.md  (20+ substitutions)
│       │   │   ├── dark-pattern-scanner.md            (pattern detection)
│       │   │   ├── killer-app-trap-detector.md        (anti-solutionism)
│       │   │   ├── grey-zone-evaluator.md             (ambiguity assessment)
│       │   │   └── accessibility-dignity-reviewer.md  (beyond WCAG)
│       │   └── facilitators/            ← 8 facilitator agents
│       │       ├── lament-facilitator.md              (Nehemiah model)
│       │       ├── image-bearer-profiler.md           (not "personas")
│       │       ├── existing-solutions-researcher.md   (WEB SEARCH)
│       │       ├── 3rc-evaluator.md                   (requires research)
│       │       ├── hmj-reframer.md                    (Romans 12:2)
│       │       ├── cocreation-facilitator.md          (6 steps + Care)
│       │       ├── redemptive-metrics-designer.md     (Jesus 12+3 model)
│       │       └── celebration-facilitator.md         (2 Cor 5:14-15)
│       └── templates/                   ← Document templates
├── scripts/
│   ├── install.ps1                      ← PowerShell installer
│   └── install.sh                       ← Bash/Zsh installer
├── LICENSE
└── README.md                            ← This file
```

## Tool Requirements by Phase

Each skill declares what tools it needs. The plugin works without any of them, but capabilities degrade gracefully.

| Tool | Phase(s) | Required? | What It Does |
|------|----------|-----------|-------------|
| **Web search** | Discern (2.1a) | REQUIRED for 3RC | `existing-solutions-researcher` runs 25+ searches to find what already exists. Without this, Receive/Reimagine in 3RC are guesswork. |
| **CE plugin** (`ce:brainstorm`) | Discover (1.1) | Recommended | Structured Q&A. Without it, the agent conducts the interview directly. |
| **CE plugin** (`ce:plan`) | Discern (2.3) | Recommended | Implementation planning. Without it, create the plan manually. |
| **CE plugin** (`ce:work`) | Develop (3.5) | Recommended | Task execution with worktrees. Without it, write code directly. |
| **CE plugin** (`ce:review`) | Develop (3.5r), Demonstrate (4.4) | Recommended | Multi-agent code review. Without it, FaithTech reviewers still run. |
| **CE plugin** (`ce:compound`) | Develop (3.6), Demonstrate (4.6) | Recommended | Knowledge capture. Without it, log learnings manually in the journal. |
| **Git** | Develop (3.0+) | Recommended | Version control, worktrees, PR workflow. |
| **pptxgenjs** | Demonstrate (4.5b), `/ft:pitch` | Required for PPTX | `npm install -g pptxgenjs`. Generates .pptx files. Uses built-in pptx skill. |

---

## Credits

- [The FaithTech Playbook: Practicing Redemptive Technology](https://faithtech.com) © 2023 FaithTech Inc.
- [Compound Engineering Plugin](https://github.com/EveryInc/compound-engineering-plugin) by Every Inc. (MIT)

## License

MIT
