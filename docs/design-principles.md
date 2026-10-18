# superdeck design principles

Why superdeck works the way it does, and how to judge a proposed change. The skill's goal is decks that are useful, hold attention and achieve their objective; each principle below serves that goal. A change that breaks a principle is a decision about the skill's design, not a wording fix, and needs the maintainer's explicit agreement.

## Principles

**1. Separate what to say, how to show it, and building it.**
A bad deck is rarely bad because of its visuals; it is bad because it doesn't know what it wants to say. Building early spends effort on slides that will be thrown away and anchors the conversation to the first version.
Implication: no step produces slides, layouts or deck code before the production gate. The only exception is the low-fidelity prototype of two or three slides in the visual phase, which validates the visual concept and never uses a build skill.

**2. Gates are explicit approval, and gate documents are the source of truth.**
"OK", "approved", "go ahead" count; silence or a passing comment do not. Approving answers in a question round is not approving a gate. After a gate, the gate document is a closed specification: the build does not rewrite titles, add content or swap visuals without asking, and content changes made after the build are written back into the gate documents.

**3. Propose before asking, in rounds with a recommended answer.**
People react to a hypothesis much faster than they answer an open question. Each message brings a round of numbered questions, usually three to five, each with the recommended answer and a one-line reason. A round holds only independent questions ordered by risk; a question whose answer changes the others goes first, and its dependents wait for the next round. If the material answers a question, the skill uses that answer and says where it came from.
Implication: a new step must fit this format. Open questionnaires without recommendations are not acceptable.

**4. Nothing invented.**
Every number, fact or quote comes from the material or from the user. Derived figures (sums, changes) are fine once checked. Anything without a source is marked as unconfirmed until resolved, because one invented number in a client deck destroys the credibility of everything else.

**5. Missing material never blocks.**
Users come to the skill because the content isn't clear yet. Without files or data, the skill drafts, hypothesizes and says where the information might be.

**6. Go back when the foundation changes.**
If something from an earlier phase changes (a figure doesn't exist, the audience changed, the central idea fell), the skill says so and reopens that phase instead of building on a base that fell.

**7. Titles state conclusions.**
Every slide title is a full sentence with the slide's conclusion, never a label, and fits in two lines. Read in sequence, the titles tell the whole story; each slide's body proves its title, nothing more.

**8. Attention is planned, not hoped for.**
A clear deck can still be ignored or forgotten. The narrative phase plans a hook tied to the central idea, one memorable moment at the turning point of the arc, and a close that is the concrete ask. The storyline controls rhythm (no long runs of dense slides) and every supporting point carries a concrete element: a case, a real quote, a screenshot, a number with a comparison.

**9. A visual concept comes before visual rules.**
As the narrative starts from a central idea, the visual phase starts from a single visual concept that the whole deck orbits. Without one, each slide solves its visuals alone and the deck becomes a collage. Palette, type and chart rules derive from the concept and the brand identity, and the user judges the concept by seeing a prototype, not by reading a description.

**10. Check the deck with someone who wasn't in the conversation.**
The skill tests the storyline before the first gate, and the finished deck after the build, with a cold reader who sees only the audience profile and the deck, never the objective or the conversation. When the session can't start a separate agent, the skill offers a ready-made prompt to run in another conversation, because a model simulating an outsider inside the same conversation already knows the answer.

**11. Depth matches the stakes.**
Full mode is for decks that go to clients, ask for a decision or money, or face a skeptical room. Express mode is for internal, low-risk, short or recurring decks: one proposal message, one round of risk questions, one gate. Express must stay cheap; every addition to the flow states whether it applies in express mode.

**12. The build is tool-agnostic and reviewed on the rendered output.**
The skill looks for the build options the session actually has, weighs them against the deck (a mandatory template, how it will be shared and edited, whether the result can be reviewed) and recommends one before the production gate; the build then treats the production plan as the specification. Before delivering, it looks at the rendered slides (overflowing text, legibility, contrast, wrong highlight) and checks them against the plan, not only the code or text behind them.

**13. A lean core, references on demand.**
`SKILL.md` loads in full on every activation, so it holds only the flow and the rules every phase needs. Anything used by one step lives in `references/`.

## What superdeck is not

- **Not a slide builder or design tool.** It hands off to whatever builds slides in the session.
- **Not for decks whose slide-by-slide script is already done.** Its value is in the decisions before that.
- **Not a template library.** Deck cases give a typical skeleton and pitfalls as a starting point, never a form to fill.
- **Not tied to a product or tool name.** It describes capabilities so it works across Claude surfaces.

## Judging a proposal

Ask, in order:

1. Which real situation does it fix, and does it make decks more useful, more attention-holding or more likely to achieve their objective?
2. Does it conflict with a principle above? If so, is the case strong enough to change the principle?
3. Does it apply to most decks, or to one kind? One kind belongs in a deck case file, not in `SKILL.md`.
4. Does it add turns or questions? If so, in which mode, and is the cost worth it? Express mode must stay short.
5. Is it already covered somewhere? Extend that rule instead of adding a second one.
6. Can it be written as a capability ("if the session can…") rather than a tool name?
