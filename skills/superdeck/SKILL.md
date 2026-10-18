---
name: superdeck
description: "Plans a presentation with the user before any slide is built: what matters in the content, what goes in, storytelling, storyline and how to hold attention; then the visual concept and production plan; only then the build, with a review of the result. Use whenever the user is putting together a presentation, deck or slides and the content is not settled yet, in any language, including when they say \"make a deck out of this\" with data, a report or loose ideas, or want the new edition of a recurring deck (e.g., \"turn this report into slides for the director\", \"monta um deck com esses resultados\"). Do not use when the slide-by-slide script is already written."
---

# Superdeck

A bad deck is rarely bad because of its visuals; it is bad because it doesn't know what it wants to say. So this skill separates three decisions that usually come mixed together — **what to say**, **how to show it** and **building it** — and moves from one to the next only when the user approves. Building too early spends effort on slides that will be thrown away, and anchors the conversation to the first version.

Knowing what to say is not enough: a clear deck can still be ignored or forgotten. So the skill plans attention (hook, memorable moment, close), gives the deck a visual concept, and tests the result with a reader who did not follow the conversation, to find out whether it achieves its objective.

```
Full:    Opening → PHASE 1 Narrative → [GATE 1: Script] → PHASE 2 Visual concept and plan → [GATE 2: Production plan] → PHASE 3 Build and review
Express: Opening → Complete proposal (script + visual direction) → [SINGLE GATE] → PHASE 3 Build and review
```

Converse in the user's language. Write the gate documents in that language too; the labels in the templates below are a mold, not fixed text.

## Modes

Recommend a mode in the opening, with a one-line reason.

**Full** — for a deck that goes to a client, asks for a decision, budget or approval, or faces a skeptical room. It goes through every step, with two gates, a visual prototype, a cold reader before and after the build, and a presenter kit.

**Express** — for an internal, low-risk, short or recurring deck (status, monthly report). In a single message, propose everything from the material: inferred context, deck type, central idea, arc, hook, moment and close, storyline, visual concept, global rules and build tool, plus one grill round with the 3 to 5 highest-risk questions (`references/grill.md`). A single gate approves it all; then build and review (Phase 3, with the cold reader only after the build). Express keeps the same rules: nothing invented and no slides before the gate.

If something comes up in the middle of express mode that changes the course — the audience is different, the main figure doesn't exist, the central idea doesn't hold — suggest switching to full mode.

## How to run it

**No slides before the production gate** (Gate 2 in full mode, the single gate in express). Do not generate slides, layouts or deck code, or call build skills, before that. The only exception is the low-fidelity prototype in step 2.4. If the user asks to skip ahead, explain in one sentence what closing the content first gains, and offer express mode. If they explicitly insist on building without planning, the decision is theirs: say so and leave the skill.

**Questions in rounds, always with your answer.** Each message brings a round of numbered questions — usually 3 to 5 — and each one already comes with the answer you recommend and a one-line reason, so the user only confirms or corrects ("ok to all, except 3"). Reacting to a proposed answer is much faster than answering an open question, and rounds avoid a conversation of dozens of exchanges.

```
1. [Question]
   → I recommend: [answer] — [reason, in one line]
2. …
```

- A round holds only independent questions. If the answer to one changes the others, ask the upstream one now and leave the dependent ones for the next round.
- Order by risk: first what, if wrong, changes the deck the most.
- When the question is a choice between paths (mode, arc, visual concept), show the options numbered and mark the recommended one.
- If the material answers a question, don't ask it: use the answer and say where it came from.
- This format applies even where a reference file says to ask "one at a time".
- Requests without urgency ("if you have the template, send it along") go in one line, outside the numbering.

**Propose before asking.** With material, bring a reading of it ("I'd say the central idea is X"). Without material, use the case file to propose a starting point — the typical skeleton, a likely arc, the questions this kind of audience usually has — and ask for a reaction.

**Collaborate when material is missing.** A missing file, figure or answer never stalls the conversation: propose a draft, raise hypotheses, say where the information might be. The user came to the skill precisely because the content isn't clear yet.

**Nothing invented.** Every number, fact or quote in the script comes from the material or from the user. Derived figures (sums, changes) are welcome once checked. Anything without a source is marked `[TO CONFIRM]` until resolved — one invented number in a client deck destroys the credibility of everything else.

**Go back when needed.** If something from an earlier phase changes (a figure doesn't exist, the audience changed, the central idea fell), say so clearly and reopen the affected phase. Moving forward on a base that fell only adds rework.

**A gate is explicit approval.** "OK", "approved", "go ahead" count. Silence, a change of subject or a passing comment do not — ask. An "ok to all" in a question round approves the answers, not the gate: the gate has its own request. It is what ensures the user recognizes the deck as theirs.

## Opening

The first reply already does work; it is not just a process notice.

1. In one sentence, say how it will work: first settle what the deck needs to say, then how it will look, and only then build and review.
2. Identify the deck type (list in step 1.2) and read the case file. If it is the new edition of a recurring deck and the user brought a Recurring blueprint, follow "Recurring decks".
3. Show that you have started:
   - **With material:** read all of it and bring the first reading — the findings that seem to matter, a hypothesis for the central idea, and any risk an attentive audience would raise (fragile figure, unfair comparison, double counting).
   - **Without material:** propose the case's starting point — the typical skeleton adapted to what the user said and the arc that will probably work.
4. Close with a round: the first question is the mode (express or full), with your recommendation; the next ones are the context gaps that change the deck's course (usually audience, objective and format), each with the most likely answer. Without material, include the invitation for the user to dump the loose ideas they have, as they are.
5. In one line, invite them to send materials that would help (data, briefing, previous decks, template, references they like).

If the request already makes clear it is express and the material is enough, the opening can already bring the complete express proposal.

## Phase 1 — Narrative

Collaborative tone: you propose, the user adjusts. Skip any step or question the material or the conversation already answers.

**1.1 Context.** Settle whatever is still missing:
- **Audience:** who they are, what they already know, what they think about the subject today.
- **Objective:** what this person should think, decide or do at the end.
- **Format:** live, reading or **hybrid** (presented and then sent to people who weren't there — the most common case in corporate settings); how long; who presents.
- **Constraints:** what can't go in, what is mandatory, deadline.
- **Recurrence:** is it an edition of something periodic? (See "Recurring decks".)

**1.2 Deck type.** Confirm the case and read the matching file in `references/cases/` (if you haven't read it in the opening):
- `results-analysis.md` — performance of a campaign, CRM program, channel, period
- `strategy-proposal.md` — recommending a path, plan, investment
- `idea-pitch.md` — selling a project, budget or change
- `research-presentation.md` — insights from qualitative or quantitative research
- `project-status.md` — progress, risks, pending decisions
- `training.md` — teaching something to someone
- **Campaign or creative concept** — approving a campaign, key visual, pieces (section at the end of this file)

Hybrid decks are common (e.g., results that end in a proposal). Read both cases and decide which one is primary.

**1.3 Diagnosis.** Propose:
- **Central idea:** one sentence, stated as an assertion, specific enough that someone could disagree with it.
- **3 to 5 supporting points:** the findings that prove the central idea, each with a **concrete element** that makes it visible — a case, a customer, a real quote, a screenshot of the campaign, a number with a comparison. Abstraction holds no one; an example does.
- **Gaps:** what is missing to support the idea (data, comparison, source).

Adjust until the user recognizes the idea as theirs.

**1.4 Triage.** Show a table with each relevant block of the material:

| Content | Decision | Reason |
|---|---|---|
| … | In / Appendix / Out | … |

What goes in is what supports the central idea or answers a likely objection from the audience. The rest goes to the appendix (it may be asked about) or out.

**1.5 Arc.** Read `references/narrative-arcs.md`. Propose 2 or 3 arcs that make sense for this audience and objective, with pros and cons, and recommend one.

**1.6 Hook, moment and close.** Attention is planned; it doesn't appear by itself in the middle of the build. Propose all three, each with your recommendation:
- **Hook:** how the first 30 seconds — or the first slide, in a reading deck — create a tension that only the central idea resolves. Types: a number that contradicts what the audience believes; the question they already bring into the room; a concrete case (a customer, a situation); the cost of not acting; a provocation. The hook has to lead to the central idea; a loose trick grabs attention and then wastes it.
- **Memorable moment:** the one thing the audience will remember and repeat the next day, placed at the turning point of the arc. Types: a figure revealed dramatically (a big number alone, a chart whose reading changes), an unexpected comparison, a real story, a demonstration, a metaphor that becomes an image (Phase 2 gives it form). Test: would someone tell a colleague about it in the hallway?
- **Close:** the last slide is the ask or the concrete action — who does what, by when — and, when possible, it returns to the hook to close the circle. "Thank you" or "Questions?" is never the last content slide.

**1.7 Storyline.** Build the slide sequence:

```
1. [Assertion title] — role in the story — evidence/source — [hook | moment | breather | ask] (when applicable)
2. …
```

- Titles are full sentences that state the slide's conclusion ("Repurchase fell 12% among inactive customers"), never labels ("Results"). A label title makes the audience draw the conclusion alone, and they may draw a different one. On the slide, the title fits in two lines (usually up to ~15 words); if it doesn't fit, the idea is too big or it is two slides.
- Test: reading only the titles in sequence, does the story hold?
- The deck doesn't open with an agenda: the first content slide is the hook or the answer. In long decks, a short map can come right after the hook.
- **Rhythm:** don't stack more than three dense slides in a row; interleave an impact or breather slide (a number, a sentence, an image, a quote).
- Mark with `*` the slides that stay in the **short version**, in case the time is cut in half.
- Length: live or hybrid, roughly 1 slide per 1–2 minutes of speaking time; for reading, fewer and denser slides.

**1.8 Closing grill.** Press the central idea and the storyline until they can stand up to the room. Read `references/grill.md` and follow it. The objections raised become the Q&A in the presenter kit (step 3.4).

**1.9 Cold reader test.** Before the gate, check whether the storyline communicates what is intended to someone who did not follow the conversation. Read `references/cold-reader.md` and run the test on the slide titles.

### Gate 1 — Script

Consolidate it into a single block, which becomes the source of truth:

```
SCRIPT — [deck name]
Mode: full
Audience: …
Objective: at the end, the audience should …
Format: live | reading | hybrid · duration · presenter
Deck type: …
Central idea: …
Arc: … (why, in one line)
Hook: … · Memorable moment: … · Close/ask: …

Storyline
1. [Title] — role — evidence — [mark]
…
Short version (*): slides …

Appendix: …
Left out: …
Objections raised (for the kit): …
Cold reader: [result in one line, or "not run"]
Pending [TO CONFIRM]: …
```

Ask for explicit approval. Pending items can move on to Phase 2 if the user agrees, but they must be resolved before Gate 2.

## Phase 2 — Visual concept and plan

Just as Phase 1 starts from a central idea, Phase 2 starts from a **visual concept**: a single idea that organizes how the whole deck will look. Without a concept, each slide solves its visuals alone and the deck becomes a collage; with one, every slide looks like part of the same story — and that is a good part of what the audience remembers.

**2.1 Visual concept.**
- Before proposing, know what constrains the concept. If the session can list the design systems in the user's account (for example, artifacts of the Design System type), list them before asking. If you don't yet know whether there is a mandatory template or brand manual, ask in the same round in which you propose the concepts.
- Propose 2 or 3 concepts derived from the central idea, the arc, the memorable moment, the audience and the tone. For each: a short name; the concept in one sentence; how it shows up in the deck (cover, charts, transitions, memorable moment); why it serves the message; risk or limit. Recommend one.
- Examples, to calibrate and not to copy: "everything told with simple geometric shapes only — the data becomes shape"; "each finding is an infographic that explains itself"; "the whole deck revolves around the image of an iceberg: on top, the metrics everyone sees; below, the revenue nobody looks at"; "control-panel language"; "full-screen documentary photography of the real customer"; "a route map, in which each section is a stop on the way to the destination".
- Test before recommending: does the concept reinforce the central idea or is it just decoration? Does it work on the hardest slide, the one with the densest data? Does it fit the brand identity and the mandatory template? Can it be executed in the likely build tool? For a sober reading deck, a discreet concept (a system of colors, shapes and grid) usually works better than a strong metaphor.
- Adjust until the user recognizes the concept as theirs.

**2.2 Identity materials.** Ask for whatever 2.1 hasn't brought yet: brand manual, template (.pptx, Google Slides), previously approved decks, chart guides, client guidelines and constraints (logos, disclaimers, forbidden terms). If there is nothing, use the "No identity material" section of `references/visuals-and-charts.md`, asking its questions in a single round.

**2.3 Global rules.** Propose and settle, derived from the concept and the identity: palette, typography, text density, chart standard, tone of the copy and use of images. Density by format (details for live and reading in `references/visuals-and-charts.md`):
- **Hybrid:** the slide is designed for the room, and the speaker notes are written as full reading text, for whoever receives the file later. If the deck will circulate well beyond the room, include an executive summary for reading at the start of the appendix.

**2.4 Prototype.** Before detailing slide by slide, show 2 or 3 representative slides in low fidelity: the cover or the hook, the hardest data slide and the memorable moment. Draw them inline in the conversation when the session allows (a simple sketch in HTML or SVG), or in an equivalent quick draft. It is a sketch to validate the concept and global rules, not the deck: don't call build skills here. Adjust the concept and rules with what the user says before moving on. Seeing the visual is worth more than reading a description of it.

**2.5 Slide by slide.** Read `references/visuals-and-charts.md`. For each slide in the storyline, define:
- **Title:** exactly the one in the script (change it only with approval, and update the script along with it).
- **Visual:** type + exact data + what to highlight, consistent with the concept.
- **Supporting text:** the minimum needed.
- **Speaker notes:** if it is live or hybrid.

With the prototype validated, present in blocks of 5 to 8 slides and validate each block before the next.

**2.6 Check.** Before the gate, confirm:
- every figure in the plan exists and has a source;
- each visual proves its slide's title;
- the concept shows up consistently across the deck;
- hook, memorable moment and close are designed as planned;
- every title fits in two lines;
- no `[TO CONFIRM]` is left;
- the whole respects the global rules.

### Gate 2 — Production plan

```
PRODUCTION PLAN — [deck name]
Visual concept: …
Global rules: palette · typography · density · chart standard · tone · images
Template/identity/design system: …
Prototype: approved (slides …)

Slide 1 — [Title]
  Visual: …
  Data: …
  Supporting text: …
  Notes: …
…
Appendix (includes backups for the Q&A): …
```

Ask for explicit approval.

### Single gate — express mode

```
PROPOSAL — [deck name]
Mode: express
Audience · objective · format · deck type
Central idea: …
Arc: …
Hook: … · Memorable moment: … · Close/ask: …

Storyline
1. [Title] — evidence — visual
…

Visual concept: …
Global rules: …
Build: [recommended tool]
Pending [TO CONFIRM]: …
```

Ask for explicit approval; pending items must be resolved before building.

## Phase 3 — Build and review

**3.1 Tool.** Read `references/handoff.md`. Ask how the user wants to build, showing only the options available in the session, with a recommendation (in express mode, this was already decided at the gate). If there is a design system in the account and the build is in Claude's Slides, use it.

**3.2 Build.** Treat the approved plan as a closed specification: don't rewrite titles, add content or swap visuals without asking — all of that was already decided with the user.

**3.3 Review.** Before delivering:
- **Against the plan** (rules in `references/handoff.md`): every slide present, exact titles, correct data, highlight in the right place.
- **Visual, looking at the rendered deck** — images or a preview of the slides, not only the code or text: text cut off, overflowing or overlapping; a title longer than two lines; type too small for the format (live: legible from the back of the room); weak contrast; a chart highlighting the wrong figure or missing source and period; the same color meaning different things; a slide that breaks the visual concept. Fix what is only appearance; for anything that changes content, ask first.
- **Cold reader, with the finished deck:** run the after-build test in `references/cold-reader.md`.
- Tell the user what was fixed and what still diverges from the plan.

If the chosen tool doesn't let you see the result (a prompt for an external tool, a script to assemble by hand), deliver this review as a checklist for the user to run after assembling.

**3.4 Presenter kit.** For live or hybrid decks in full mode (in express mode, offer it in one line):
- **Anticipated Q&A:** the objections from the grill and the cold reader, each with a short answer and the slide or appendix item that supports it.
- **Backup slides** in the appendix for the most likely questions that don't fit in the main flow.
- **Short version:** the slides marked with `*` and what to say in the transition between them.
- **Talk track** with timing per block, if the user wants it.

Deliver what fits in the deck's own notes and appendix, and the rest in a short document.

Adjustments requested after the build that change content (not just appearance) must also be recorded in the script and the plan, so they remain the source of truth.

## Recurring decks

For periodic decks: monthly CRM report, weekly status, committee, QBR. In the first edition, after the build, deliver a **Recurring blueprint** for the user to keep (for example, in a project's files):

```
RECURRING BLUEPRINT — [name]
Audience · objective · format · duration
Deck type · arc
Storyline structure, with titles as molds ("[Metric] [rose/fell] X% vs. [reference]")
Visual concept · global rules · template/design system · build tool
Data source for each slide
Update questions:
  - What changed since the last edition?
  - What is the central idea of this edition?
  - Any new data? Any slide that stopped mattering?
```

In later editions, with the blueprint in hand, go straight to express mode. Phase 1 becomes one round with the update questions, always with a new central idea: the structure repeats, the message doesn't. Phase 2 only reopens if the audience, objective or identity change. Recurring decks tend to turn into a list of metrics; the quick grill always asks what is news in this edition.

## Case: campaign or creative concept

Decks that present a campaign or creative idea for approval: concept, key visual, pieces, channel plan (launch, seasonal date, incentive campaign). The audience wants to know **what the idea is, why it works for this audience, and how it turns into pieces and results**.

**What the audience needs to leave knowing**
- The insight about the audience, or the communication problem the campaign solves.
- The big idea, in one sentence, and how it shows up.
- How it unfolds into channels and pieces, and how success will be measured.

**Diagnosis questions**
- What is the business objective and what is the communication objective? Which metric defines success?
- Who is the campaign for, and what insight about that audience supports the idea?
- What is the big idea in one sentence? Is there already a slogan or tagline?
- Who approves, and by what criteria (brand, risk, cost, deadline)?
- Are there already a key visual, pieces or references? What stage is the creative work at?
- What brand, legal or partner constraints apply (terms and conditions, disclaimers)?
- Will other concept alternatives be shown?
- How does the campaign unfold over time and across channels?

**How to phrase the central idea:** insight + idea + expected result.
- Weak: "Presentation of the year-end campaign."
- Strong: "At year-end, our customer doesn't want the lowest price — they want not to regret the purchase; the campaign turns that guarantee into the central message and aims to raise conversion in the active base."

**Recommended arcs**
- **Insight → idea → how it comes to life → plan → metrics** (default).
- **What is vs. what could be**, when the campaign needs to mobilize (internal team, network, partners).
- **Before / after / bridge**, for repositioning.

**Typical skeleton**
1. The challenge and the objective
2. The insight about the audience
3. The big idea — usually the memorable moment: the reveal of the concept and the key visual
4. How the idea shows up: key visual and main pieces
5. Rollout by channel and over time
6. Mechanics, if any (offer, rules, summarized terms and conditions)
7. Metrics and tracking
8. Next steps and the approval being asked for
Appendix: all pieces, concept alternatives, detailed schedule, terms and conditions.

**Pitfalls**
- Showing pieces before selling the insight and the idea.
- A concept that is only a tagline, with no mechanics and no proof that it speaks to the audience.
- Several concept alternatives with the same weight — recommend one.
- Forgetting the measurement plan.
- Pieces out of their context of use — show them in a mockup of the channel (phone, email, store).
- Leaving legal and brand constraints for after approval.

**Typical visuals:** full-screen key visual, mockups of the pieces in context, mood board, timeline by channel, measurement table. The deck's visual concept usually derives from the campaign's own key visual.

**Specific grill**
- If the audience only remembers one image, which is it?
- Does the idea work without the tagline?
- Could a competitor sign this campaign? If so, it isn't specific enough.
- What needs to be true for the success metric to be reached?
