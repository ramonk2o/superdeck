# supertext design

<!-- DRAFT (branch supertext): principles below are proposals until the maintainer approves them. -->

Why supertext works the way it does. The skill's goal is prose that says one clear thing to its reader and sounds the way the author wants: essays, blog posts, decision records, work emails and book chapters, in any register or in the style of a named author. It follows the suite principles in [principles.md](principles.md); the principles below apply only to supertext. A change that breaks one of them is a decision about the skill's design, not a wording fix, and needs the maintainer's explicit agreement.

## Principles

**1. What to say before how it sounds.**
A text that doesn't know what it wants the reader to take away can't be fixed by style. The central idea and the structure are settled before the style is applied to the whole text.

**2. Style is judged on a sample, not on adjectives.**
"Formal", "light" or "like Borges" mean different things to the user and to the model. The Text plan records the style as observable traits and shows them on one real passage, so the user approves sentences, not words about sentences.
Implication: no step writes the text before the gate, except the sample passage.

**3. Imitate traits, never passages.**
Writing in the style of an author means sharing their rhythm, distance and choices in new sentences. The skill doesn't reproduce or closely paraphrase the author's text.

**4. The reader decides the shape.**
Length, structure and register follow from who reads the text and what they should do after it. A work email gets the ask in its first lines; a chapter gets room.

**5. Two paths.**
Full is for texts with an argument or decision that matters, outside or skeptical readers, long texts and voices the user cares about. Light is for short work emails, short texts with settled content and rewrites in another register: one proposal with the sample passage, one round of risk questions and one gate.

<!-- TODO: principle on the cold reader for this skill (what it checks that the user can't). -->

## What supertext is not

- **Not a copywriter.** Ads, campaign messages and other marketing copy belong to a separate skill.
- **Not a deck or a knowledge file.** Presentations belong to superdeck, files for AI projects to supercontext.
- **Not a proofreader.** Fixing typos or tightening a finished text doesn't need a plan.

## Judging a proposal

Use the questions in [principles.md](principles.md#judging-a-proposal). For supertext, a change that applies to one kind of text belongs in its case file in `references/cases/`, a change about style in `references/style.md`, and the light path must stay one proposal and one gate.
