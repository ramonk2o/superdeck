# superdeck design

Why superdeck works the way it does. The skill's goal is decks that are useful, hold attention and achieve their objective. It follows the suite principles in [principles.md](principles.md); the principles below apply only to superdeck. A change that breaks one of them is a decision about the skill's design, not a wording fix, and needs the maintainer's explicit agreement.

## Principles

**1. Separate what to say, how to show it, and building it.**
A bad deck is rarely bad because of its visuals; it is bad because it doesn't know what it wants to say. Building early spends effort on slides that will be thrown away and anchors the conversation to the first version.
Implication: no step produces slides, layouts or deck code before the production gate. The only exception is the low-fidelity prototype of two or three slides (in the visual phase, or in the express proposal), which validates the visual concept and never uses a build skill.
The same separation holds inside the narrative: the opening gathers the context, the materials and the content, and the central idea is only proposed once that is done.

**2. Titles state conclusions.**
Every slide title is a full sentence with the slide's conclusion, never a label, and fits in two lines. Read in sequence, the titles tell the whole story; each slide's body proves its title, nothing more.

**3. Attention is planned, not hoped for.**
A clear deck can still be ignored or forgotten. The narrative phase plans a hook tied to the central idea, one memorable moment at the turning point of the arc, and a close that is the concrete ask. The storyline controls rhythm (no long runs of dense slides) and every supporting point carries a concrete element: a case, a real quote, a screenshot, a number with a comparison.

**4. A visual concept comes before visual rules.**
As the narrative starts from a central idea, the visual phase starts from a single visual concept that the whole deck orbits. Without one, each slide solves its visuals alone and the deck becomes a collage. Palette, type and chart rules derive from the concept and the brand identity, and the user judges the concept by seeing a prototype, not by reading a description.

**5. Independent checks at each stage.**
The suite's cold reader runs twice: on the storyline before the first gate, and on the finished deck after the build. It sees only the audience profile and the deck. Between them, a reviewer who wasn't in the conversation checks the production plan before the second gate: whether each visual proves its title and the concept holds. In express mode, only the cold reader on the finished deck runs.

**6. Two modes.**
Full mode is for decks that go to clients, ask for a decision or money, or face a skeptical room. Express mode is for internal, low-risk, short or recurring decks: the same opening, then one proposal message with a prototype and one round of risk questions, and one gate.

**7. The build is tool-agnostic and reviewed on the rendered output.**
The skill looks for the build options the session actually has, weighs them against the deck (a mandatory template, how it will be shared and edited, whether the result can be reviewed) and recommends one before the production gate; the build then treats the production plan as the specification. Before delivering, it looks at the rendered slides (overflowing text, legibility, contrast, wrong highlight) and checks them against the plan, not only the code or text behind them.

## What superdeck is not

- **Not a slide builder or design tool.** It hands off to whatever builds slides in the session.
- **Not for decks whose slide-by-slide script is already done.** Its value is in the decisions before that.
- **Not a template library.** Deck cases give a typical skeleton and pitfalls as a starting point, never a form to fill.

## Judging a proposal

Use the questions in [principles.md](principles.md#judging-a-proposal). For superdeck, a change that applies to one kind of deck belongs in a deck case file in `references/cases/`, and the light path is express mode.
