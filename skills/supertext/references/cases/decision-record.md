# Case: decision record

A decision record or design doc: what was decided, which options were weighed and why this one won. It is read now by people affected by the decision and later by someone who needs to know why things are the way they are. The reader wants to know **what was decided, why, and what it costs**.

## What the reader needs to leave with
- What was decided, by whom, when, and its status (proposed, accepted, superseded).
- The problem and constraints that forced a decision.
- The options seriously considered, and why each lost, put in a way someone who preferred it would accept as fair.
- What the decision costs, and what would make it worth revisiting.

## Materials that help
The meeting notes, the RFC or thread, benchmarks or costs, the team's template or a past record they liked, links to tickets.

## Diagnosis questions
- What exactly was decided, and is it final or a proposal for review?
- Who decided, and who is affected but wasn't in the room?
- Which options were seriously considered? Was "do nothing" one?
- What is the deciding reason — the one that would flip the decision if it were false?
- What does it cost or make harder, and who pays?
- What would make you revisit it (a load, a price, a date)?
- Is there a template, and where do these records live?

## How to phrase the central idea
Decision + deciding reason + accepted cost.
- Weak: "This document describes the database selection process."
- Strong: "We will use Postgres for the orders service because it keeps orders and payments in one transaction; we accept running our own replication until the managed offering reaches our region."

## Typical structures
- **Record (one page):** Status and date → Context → Decision → Options considered, each with why not → Consequences, good and bad → Revisit when.
- **Design doc asking for review:** Summary with the proposal and the ask → Context, goals and non-goals → Proposal → Alternatives → Risks and open questions → Rollout.
- Drop "Options" only when there was truly one option, and say so; drop "Revisit when" for decisions that are easy to reverse.
- Either way, the decision comes in the first lines, because most readers stop there.
- When the team has a template, use it and map the plan into it.

## Pitfalls
- A story of the meeting ("first we discussed…") instead of the decision.
- Straw options: the losing option's best case is missing. That case is usually the objection the plan must answer.
- Consequences that list only benefits.
- Tool or vendor facts (versions, limits, prices) from memory: check them or mark them `[TO CONFIRM]`.
- A proposal recorded as a decision; "we" without saying who decided.
- Context that only makes sense to someone who was at the meeting ("the incident").

## Sample passage for the plan
The Decision section with its deciding reason, the hardest part to phrase fairly. For a design doc, the summary.
