---
name: superdeck
description: "Plans a presentation with the user before any slide is built: what matters in the content, what goes in, storytelling, storyline and how to hold attention; then the visual concept and production plan; only then the build, with a review of the result. Use whenever the user is putting together a presentation, deck or slides and the content is not settled yet, in any language, including when they say \"make a deck out of this\" with data, a report or loose ideas, or want the new edition of a recurring deck (e.g., \"turn this report into slides for the director\", \"monta um deck com esses resultados\"). Do not use when the slide-by-slide script is already written."
---

# Superdeck

A bad deck is rarely bad because of its visuals; it is bad because it doesn't know what it wants to say. So this skill separates three decisions that usually come mixed together — **what to say**, **how to show it** and **building it** — and moves from one to the next only when the user approves. Building too early spends effort on slides that will be thrown away, and anchors the conversation to the first version.

Knowing what to say is not enough: a clear deck can still be ignored or forgotten. So the skill plans attention (hook, memorable moment, close), gives the deck a visual concept, and checks the work with readers who did not follow the conversation, to find out whether it achieves its objective.

```
Full:    Opening → PHASE 1 Narrative → [GATE 1: Script] → PHASE 2 Visual direction and plan → [GATE 2: Production plan] → PHASE 3 Build and review
Express: Opening → Complete proposal with prototype → [SINGLE GATE] → PHASE 3 Build and review
```

Converse in the user's language. Write the gate documents in that language too; the labels in the templates below are a mold, not fixed text.

## Modes

Recommend a mode in the opening, with a one-line reason.

**Full** — for a deck that goes to a client, asks for a decision, budget or approval, or faces a skeptical room. It goes through every step, with two gates, a visual prototype and three independent checks: the cold reader on the titles, the plan review and the cold reader on the finished deck.

**Express** — for an internal, low-risk, short or recurring deck (status, monthly report). The opening is the same as in full mode, usually in a single round. Then one message brings the complete proposal: central idea, arc, hook, moment and close, storyline, visual concept, global rules and build option, each part following the reference file of its full-mode step, plus a low-fidelity prototype (as in step 2.3) and one stress-test round with the 3 to 5 highest-risk questions. A single gate approves it all; then Phase 3. Express skips the triage, the cold reader on the titles and the plan review, and keeps the same rules: nothing invented and no slides before the gate.

If something comes up in the middle of express mode that changes the course — the audience is different, the main figure doesn't exist, the central idea doesn't hold — suggest switching to full mode.

## How to run it

**No slides before the production gate** (Gate 2 in full mode, the single gate in express). Do not generate slides, layouts or deck code, or call build skills, before that. The only exception is the low-fidelity prototype (step 2.3, or in the express proposal). If the user asks to skip ahead, explain in one sentence what closing the content first gains, and offer express mode. If they explicitly insist on building without planning, the decision is theirs: say so and leave the skill.

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
- Requests without urgency ("if you have the template, send it along") go in one line, outside the numbering.

**Propose before asking.** With material, bring a reading of it. Without material, use the case file to propose a starting point — the typical skeleton, a likely arc, the questions this kind of audience usually has — and ask for a reaction.

**Collaborate when material is missing.** A missing file, figure or answer never stalls the conversation: propose a draft, raise hypotheses, say where the information might be. The user came to the skill precisely because the content isn't clear yet.

**Nothing invented.** Every number, fact or quote in the Script comes from the material or from the user. Derived figures (sums, changes) are welcome once checked. Anything without a source is marked `[TO CONFIRM]` until resolved — one invented number in a client deck destroys the credibility of everything else.

**Go back when needed.** If something from an earlier phase changes (a figure doesn't exist, the audience changed, the central idea fell), say so clearly and reopen the affected phase. Moving forward on a base that fell only adds rework.

**A gate is explicit approval.** "OK", "approved", "go ahead" count. Silence, a change of subject or a passing comment do not — ask. An "ok to all" in a question round approves the answers, not the gate: the gate has its own request. It is what ensures the user recognizes the deck as theirs. After a gate, its document is a closed specification: what comes next doesn't add, drop or swap anything decided there without asking, and content changes made later, including after delivery, are written back into the Script and the Production plan.

**Checks by someone who wasn't here.** Three steps check the work with a reader who did not follow the conversation: the cold reader on the titles (1.7), the plan review (2.5) and the cold reader on the finished deck (3.3). A model inside this conversation already knows the objective and the central idea, so never play that reader yourself.
- If the session can start a subagent, give it only what the step's reference file says, and nothing else.
- Otherwise, give the user the ready-made prompt from that file, to paste into a new conversation with no access to this one, and ask them to paste the answers back. In express mode, offer it in one line.
- If the user prefers to skip it, record "not run" in the gate document or the delivery note.

## Opening

The opening gathers what the deck needs before anything is decided: who it is for, what it is for, what kind of deck it is, the materials and the content. It doesn't propose the central idea yet; that opens Phase 1. It is the same in both modes and usually takes one or two rounds.

**0.1 Process and mode.** In one sentence, say how it will work: first settle what the deck needs to say, then how it will look, and only then build and review. The first question of the first round is the mode, with your recommendation.

**0.2 Context.** Settle what the request and the material don't already answer, each question with the most likely answer:
- **Audience:** who they are, what they already know, what they think about the subject today.
- **Objective:** what this person should think, decide or do at the end.
- **Format:** live, reading or **hybrid** (presented and then sent to people who weren't there — the most common case in corporate settings); how long; who presents.
- **Constraints:** what can't go in, what is mandatory, deadline.
- **Recurrence:** is it an edition of something periodic? If the user brought a Recurring blueprint, follow `references/recurring.md`.

**0.3 Deck type.** Identify the case and read the matching file in `references/cases/`:
- `results-analysis.md` — performance of a campaign, CRM program, channel, period
- `strategy-proposal.md` — recommending a path, plan, investment
- `idea-pitch.md` — selling a project, budget or change
- `research-presentation.md` — insights from qualitative or quantitative research
- `project-status.md` — progress, risks, pending decisions
- `training.md` — teaching something to someone
- `campaign-concept.md` — approving a campaign, creative concept, key visual or pieces

Hybrid decks are common (e.g., results that end in a proposal). Read both cases and decide which one is primary.

**0.4 Materials.** In one line, ask for everything that would help, in both modes: data, briefing, previous decks for the same audience, the template or brand manual, references they like. Asking for the identity now lets the visual phase start from it.

**0.5 Content interview.**
- **With material:** read all of it and bring the first reading — the findings that seem to matter, and any risk an attentive audience would raise (fragile figure, unfair comparison, double counting).
- **Without material:** propose the case's typical skeleton adapted to what the user said, and invite them to dump the loose ideas they have, as they are.
- Then ask the case's diagnosis questions that the material and the conversation leave open.

The first reply already does work: the sentence on the process, the deck type, the reading of the material (or the case's starting point), a round opening with the mode and the context gaps, and the line asking for materials. The interview continues in the next round until the content is clear enough to state a central idea; then move on to Phase 1, or to the proposal in express mode.

## Phase 1 — Narrative

Collaborative tone: you propose, the user adjusts. Skip any step or question the material or the conversation already answers.

**1.1 Central idea.** Propose:
- **Central idea:** one sentence, stated as an assertion, specific enough that someone could disagree with it. The case file shows how to phrase it.
- **3 to 5 supporting points:** the findings that prove the central idea, each with a **concrete element** that makes it visible — a case, a customer, a real quote, a screenshot of the campaign, a number with a comparison. Abstraction holds no one; an example does.
- **Gaps:** what is missing to support the idea (data, comparison, source).

Adjust until the user recognizes the idea as theirs.

**1.2 Triage.** Show a table with each relevant block of the material:

| Content | Decision | Reason |
|---|---|---|
| … | In / Appendix / Out | … |

What goes in is what supports the central idea or answers a likely objection from the audience. The rest goes to the appendix (it may be asked about) or out.

**1.3 Arc.** Read `references/narrative-arcs.md`. Propose 2 or 3 arcs that make sense for this audience and objective, with pros and cons, and recommend one.

**1.4 Hook, moment and close.** Attention is planned; it doesn't appear by itself in the middle of the build. Read `references/attention.md` and propose all three, each with your recommendation: a hook that creates a tension only the central idea resolves, one memorable moment at the turning point of the arc, and a close that is the concrete ask.

**1.5 Storyline.** Build the slide sequence, which carries the arc and marks the hook, the moment and the close:

```
1. [Assertion title] — role in the story — evidence/source — [hook | moment | breather | ask] (when applicable)
2. …
```

- Titles are full sentences that state the slide's conclusion ("Repurchase fell 12% among inactive customers"), never labels ("Results"). A label title makes the audience draw the conclusion alone, and they may draw a different one. On the slide, the title fits in two lines (usually up to ~15 words); if it doesn't fit, the idea is too big or it is two slides.
- **One slide, one idea.** If the title needs an "and", it is probably two slides. The body of each slide proves its title — nothing more, nothing less.
- Test: reading only the titles in sequence, does the story hold?
- The deck doesn't open with an agenda: the first content slide is the hook or the answer. In long decks, a short map can come right after the hook.
- **Rhythm:** don't stack more than three dense slides in a row; interleave an impact or breather slide (a number, a sentence, an image, a quote).
- Length: live or hybrid, roughly 1 slide per 1–2 minutes of speaking time; for reading, fewer and denser slides.

**1.6 Stress test.** Press the central idea and the storyline until they can stand up to the room. Read `references/stress-test.md` and follow it. Every objection raised is resolved: it changes the storyline, gets an appendix slide, or is left out on purpose and the user is told so.

**1.7 Cold reader.** Before the gate, check whether the titles communicate what is intended to someone who did not follow the conversation. Read `references/cold-reader.md` and run the test on the slide titles.

### Gate 1 — Script

Consolidate it into a single block, which becomes the source of truth:

```
SCRIPT — [deck name]
Mode: full
Audience: … · Objective: at the end, the audience should …
Format: live | reading | hybrid · duration · presenter · Deck type: …
Central idea: …
Arc: … (why, in one line)

Storyline
1. [Title] — role — evidence — [mark]
…

Appendix: …
Left out: …
Cold reader: [what diverged and what changed, in one line, or "not run"]
Pending [TO CONFIRM]: …
```

Ask for explicit approval. Pending items can move on to Phase 2 if the user agrees, but they must be resolved before Gate 2.

## Phase 2 — Visual direction and plan

Just as Phase 1 starts from a central idea, Phase 2 starts from a **visual concept**: a single idea that organizes how the whole deck looks. Without one, each slide solves its visuals alone and the deck becomes a collage.

**2.1 Visual direction.** Read `references/visual-concept.md` and `references/visuals-and-charts.md`. Start from the identity materials gathered in the opening; if there are none, follow the "No identity material" section. Propose 2 or 3 concepts derived from the central idea, the arc, the memorable moment, the audience and the tone, and recommend one. Once the user picks one, state the global rules derived from the concept and the identity — palette, typography, text density by format, chart standard, tone of the copy and use of images — for the prototype to show in practice.

**2.2 Build option.** Read `references/handoff.md` and choose with the user how the deck will be built, from what the session can actually do. Choosing before the prototype keeps the prototype and the plan within what that option can execute, and lets Gate 2 approve the build option along with the plan.

**2.3 Prototype.** Before detailing slide by slide, show 2 or 3 representative slides in low fidelity — the cover or hook, the hardest data slide and the memorable moment — drawn inline when the session allows (a simple HTML or SVG sketch) or as a quick draft. Seeing the visual is worth more than reading about it. The sketch validates the concept and the global rules, not the deck: don't call build skills here, and adjust both with the user's feedback before moving on.

**2.4 Slide by slide.** For each slide in the storyline, define:
- **Title:** exactly the one in the Script (change it only with approval, and update the Script along with it).
- **Visual:** type + exact data + what to highlight, consistent with the concept.
- **Supporting text:** the minimum needed.
- **Speaker notes:** if it is live or hybrid.

Present in blocks of 5 to 8 slides and validate each block before the next.

**2.5 Plan review.** With the whole plan defined, have it reviewed by someone who wasn't in the conversation. Read `references/plan-review.md` and follow it. Before the gate, no `[TO CONFIRM]` is left.

### Gate 2 — Production plan

```
PRODUCTION PLAN — [deck name]
Visual concept: …
Global rules: palette · typography · density · chart standard · tone · images
Template/identity/design system: …
Build: [option] — [why, in one line]
Prototype: approved (slides …)
Plan review: [what was found and changed, in one line, or "not run"]

Slide 1 — [Title] — [mark, when applicable]
  Visual: …
  Data: …
  Supporting text: …
  Notes: …
…
Appendix: …
```

Ask for explicit approval.

### Single gate — express mode

The proposal message brings this block, the prototype and the stress-test round:

```
PROPOSAL — [deck name]
Mode: express
Audience · objective · format · deck type
Central idea: …
Arc: …

Storyline
1. [Title] — evidence — visual — [mark]
…
Appendix: …

Visual concept: …
Global rules: …
Build: [recommended option] — [why, in one line]
Pending [TO CONFIRM]: …
```

Ask for explicit approval; pending items must be resolved before building.

## Phase 3 — Build and review

**3.1 Build.** Treat the approved plan as a closed specification and follow the build rules in `references/handoff.md`.

**3.2 Review.** Before delivering, review the result against the plan and on the rendered slides, as described in `references/handoff.md`.

**3.3 Cold reader.** Run the after-build test in `references/cold-reader.md` on the finished deck, in both modes.

Then deliver. For the first edition of a recurring deck, also deliver the Recurring blueprint.

## Recurring decks

For periodic decks (monthly report, weekly status, committee, QBR), read `references/recurring.md`. In the first edition, deliver a Recurring blueprint after the build; in later editions, with the blueprint in hand, go straight to express mode with a new central idea.
