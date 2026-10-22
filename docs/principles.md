# superwriter principles

superwriter is a suite of skills that plan a piece of writing with the user before producing it. This file holds the principles every skill in the suite follows and how to judge a proposed change. Each skill also has its own design file (`superdeck.md` for superdeck) with the principles that apply only to it.

A change that breaks a principle is a decision about the suite's design, not a wording fix, and needs the maintainer's explicit agreement.

## Principles

**1. Each skill stands alone.**
Every skill is installed on its own in Claude.ai, as a separate zip that can't read another skill's files. So each `SKILL.md` states the shared rules it needs in its own words, and no skill points to a file outside its folder.
Implication: a change to a shared rule is made in every skill that states it, in the same pull request. This file is where maintainers check what the shared rules are; the skills don't read it.

**2. Gates are explicit approval, and gate documents are the source of truth.**
"OK", "approved", "go ahead" count; silence or a passing comment do not. Approving answers in a question round is not approving a gate. After a gate, the gate document is a closed specification: producing the output does not rewrite, add or swap anything decided there without asking, and content changes made afterwards are written back into the gate documents.

**3. Propose before asking, in rounds with a recommended answer.**
People react to a hypothesis much faster than they answer an open question. Each message brings a round of numbered questions, usually three to five, each with the recommended answer and a one-line reason. A round holds only independent questions ordered by risk; a question whose answer changes the others goes first, and its dependents wait for the next round. If the material answers a question, the skill uses that answer and says where it came from.
Implication: a new step must fit this format. Open questionnaires without recommendations are not acceptable.

**4. Nothing invented.**
Every number, fact or quote comes from the material or from the user. Derived figures (sums, changes) are fine once checked. Anything without a source is marked as unconfirmed until resolved, because one invented number in work for a client destroys the credibility of everything else.

**5. Missing material never blocks.**
Users come to these skills because the content isn't clear yet. Without files or data, the skill drafts, hypothesizes and says where the information might be.

**6. Go back when the foundation changes.**
If something from an earlier phase changes (a figure doesn't exist, the audience changed, the central idea fell), the skill says so and reopens that phase instead of building on a base that fell.

**7. Check the work with someone who wasn't in the conversation.**
A cold reader sees only what the real audience would see, never the objective or the conversation, and says what they understood. When the session can't start a separate agent, the skill offers a ready-made prompt to run in another conversation, because a model simulating an outsider inside the same conversation already knows the answer.

**8. Depth matches the stakes.**
Work that goes to clients, asks for a decision or money, or faces a skeptical audience gets the full flow. Internal, low-risk, short or recurring work gets a light path. The light path must stay cheap; every addition to a flow states whether it applies there.

**9. A lean core, references on demand.**
`SKILL.md` loads in full on every activation, so it holds only the flow and the rules every phase needs. Anything used by one step lives in that skill's `references/`.

**10. Capabilities, not tool names.**
The skills run on different Claude surfaces and tool names change, so they describe what the session can do ("if the session can start a subagent") instead of naming a product or tool.

## Judging a proposal

Ask, in order:

1. Which real situation does it fix, and does it make the output more useful or more likely to achieve its objective?
2. Does it conflict with a principle here or in the skill's design file? If so, is the case strong enough to change the principle?
3. Does it apply to most uses of the skill, or to one kind? One kind belongs in a reference file, not in `SKILL.md`.
4. Does it add turns or questions? If so, in which path, and is the cost worth it? The light path must stay short.
5. Is it already covered somewhere? Extend that rule instead of adding a second one.
6. Does it touch a shared rule? Then it changes every skill that states that rule.
7. Can it be written as a capability ("if the session can…") rather than a tool name?
