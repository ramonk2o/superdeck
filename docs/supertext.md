# supertext design

<!-- WORK IN PROGRESS (branch supertext). Remove this comment before merging. -->

Why supertext works the way it does. The skill's goal is nonfiction prose that says one clear thing to its reader and sounds the way the author wants: essays, blog posts, decision records, work emails and nonfiction book chapters, in any register or in the style of a named author. It follows the suite principles in [principles.md](principles.md); the principles below apply only to supertext. A change that breaks one of them is a decision about the skill's design, not a wording fix, and needs the maintainer's explicit agreement.

## Principles

**1. What to say before how it sounds.**
A text that doesn't know what it wants the reader to take away can't be fixed by style. The central idea, the structure, the opening and the close are settled before the style is applied to the whole text; the opening only settles where the style comes from, and the traits are written in the plan. For an argument or a decision, the plan also names the strongest objection and where the text answers it, because that is where these texts most often fail.

**2. Style is judged on a sample, not on adjectives.**
"Formal", "light" or "like Borges" mean different things to the user and to the model. The Text plan records the style as observable traits and shows them on one real passage, so the user approves sentences, not words about sentences.
Implication: no step writes the text before the gate, except the sample passage.

**3. Imitate traits, never passages.**
Writing in the style of an author means sharing their rhythm, distance and choices in new sentences. The skill doesn't reproduce or closely paraphrase the author's text.

**4. The reader decides the shape.**
Length, structure and register follow from who reads the text and what they should do after it. A work email gets the ask in its first lines; a chapter gets room.

**5. Two paths.**
Full is for texts with an argument or decision that matters, outside or skeptical readers, long texts and voices the user cares about. Light is for short texts with settled content and rewrites in another register: one proposal with the sample passage, one round of risk questions and one gate. A text of a few lines, such as a short email, is lighter still: the first reply is a short plan whose sample passage is the whole draft, and approving it approves the text.

**6. Long texts are written with the user, section by section.**
A chapter or a long essay written in one go comes back as a block the user can only accept or redo. Showing one section at a time lets them adjust while the rest is still unwritten. Approving a section is not a gate; a change that touches the central idea, the structure or the style goes back into the Text plan.

**7. Meaning and style are checked separately.**
After writing, the cold reader checks what the text says to its reader, given the real reader's profile, and the style check, with only the style sheet, the sample and the text, checks whether it sounds as approved. They stay separate because a reader told how the text should sound stops reading it as its real reader would. Without a subagent, both run in one new conversation, the cold reader first. The style check never gets the name of an imitated author, so it judges the approved traits, not its own idea of the author.

**8. Delivery follows where the text is going.**
The skill offers the delivery options the session actually has, judged against the occasion in the Text plan, and recommends one. An email is delivered as a draft, never sent.

**9. Research serves the author's argument; it doesn't write it.**
When the subject looks more complex than the material can settle, the skill researches before the plan, on its own judgment, and what it finds counts as material with its source. Findings support or test the user's view; one that contradicts it is shown next to it for the user to decide. This is a deliberate difference from supercontext, which researches only when the user agrees, because an essay or a decision record often needs evidence the user doesn't have at hand.

**10. The author's position and the author's life are theirs.**
The skill sharpens the position the user takes and offers others only as labeled proposals. Anecdotes, conversations and results attributed to the author come from the author; a model writing in someone's voice is most tempted to invent exactly these.

## What supertext is not

- **Not for fiction.** It writes about real things, meant to be taken as true; stories, novels and fictional chapters are out of scope.
- **Not a copywriter.** Ads, campaign messages and other marketing copy belong to a separate skill. If the text's job is to get the reader to buy, sign up or click, it is copy; if it is to inform, argue, ask or record, it is supertext.
- **Not a deck or a knowledge file.** Presentations belong to superdeck, files for AI projects to supercontext.
- **Not a proofreader.** Fixing typos or polishing a text whose content is settled doesn't need a plan, so the skill doesn't offer itself.

## Judging a proposal

Use the questions in [principles.md](principles.md#judging-a-proposal). For supertext, a change that applies to one kind of text belongs in its case file in `references/cases/`, a change about style in `references/style.md`, and the light path must stay one proposal and one gate.
