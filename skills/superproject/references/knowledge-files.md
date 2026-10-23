# Writing a knowledge file without supercontext

Used in step 2.1 when the session doesn't list the supercontext skill. These are the essentials that make a file usable by a model that never saw this conversation and often reads only retrieved excerpts. supercontext adds guidance per type of file and its own plan for each file; when it is available, use it instead.

## Before writing
- Write from the Project plan: the file's role, its trigger, its type and the use cases it serves. Each section must serve one of them.
- If the plan didn't settle the file's content, show an outline (sections in order, what each holds, where it comes from) and one sample entry written as it will appear — a rule with its condition and exception, a term, a step — and ask for approval first.

## Structure
- A title that names the subject, then a short paragraph saying what the file covers, what it doesn't, and when it is consulted.
- Markdown headings named by topic ("Refund conditions", not "Part 2"), in the order the file is used. Bullets for independent items, numbered lists for order, short tables only for comparable items.
- A file longer than about 100 lines starts with a list of its sections.
- Plain single-column text; layout tricks are lost when files are parsed.

## Sections that stand alone
- Each section names its subject (product, program, period, audience) instead of "it" or "the above".
- A rule's condition, exception and limit stay in the same section as the rule.
- One term per concept, the same term the project uses.

## Rules and facts
- Conditional rules as "If [condition], [action]", stating what to do, with a short reason when it isn't obvious.
- Observable criteria instead of adjectives: not "friendly tone" but "second person, short sentences, no jargon".
- Calm language: no all caps, "CRITICAL" or "NEVER", which make models apply rules rigidly.
- No two rules contradict each other; when they can collide, say which wins.
- Numbers with units, currency and period; dates of validity next to the facts they apply to; the current version in the main text.
- Items the user agreed to deliver unconfirmed keep `[TO CONFIRM]` next to them, and the opening paragraph says so.
- Examples, when they show what a rule can't, as three to five varied, labeled input and output pairs; literal text in fenced code blocks.

## What stays out
- The interview and notes on how the file was made.
- A "You are…" opening or any claim of authority over the instructions: a file is consulted, not obeyed.
- Common knowledge no use case depends on, generic introductions, and content that belongs to one job.

## Name and length
- A descriptive file name in lowercase with hyphens (`refund-policy.md`), so it can be found by name.
- The length the use cases need, no more. Short must not become ambiguous: keep every exact name, number, condition, exception and negation.
