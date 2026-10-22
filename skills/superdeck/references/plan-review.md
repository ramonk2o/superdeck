# Plan review

Used in step 2.5, before Gate 2, in full mode. A reviewer who did not follow the conversation checks whether the production plan will produce slides that prove their titles and hold together as one deck. Fresh eyes catch what the conversation made invisible: a chart that no longer proves its title, a concept that faded halfway, a run of dense slides. Who reviews, and what to do without a subagent, is in "Checks by someone who wasn't here" in `SKILL.md`.

## What the reviewer receives
- The audience profile and the format: live, reading or hybrid, and the duration.
- The plan: visual concept, global rules and, slide by slide, title, mark, visual, data and supporting text.
- The approved prototype, if it can be attached.
- Never the conversation or your notes.

## Prompt
Write it in the user's language and fill in the brackets.

```
You are reviewing the production plan of a presentation before it is built. You did not see how it was made.
Audience: [profile]. Format: [live | reading | hybrid], [duration].
The plan: [visual concept, global rules and, slide by slide, title, mark, visual, data and supporting text]. [If available: The prototype is attached.]

Check each slide and the whole plan. List the problems, most serious first, each with the slide number, what is wrong and a suggested fix:
1. Does the visual prove the title, and is the highlight on the figure the title claims?
2. Does every chart with data show its source and period?
3. Is the density right for the format? Are there more than three dense slides in a row?
4. Does the visual concept hold across the deck, with each color meaning the same thing everywhere?
5. Do the hook, the memorable moment and the close stand out from the slides around them?
6. Does any title run past two lines (about 15 words)?

Report only what you see in the plan; don't rewrite the deck.
```

## Using the answers
- Show the problems found, each with the fix you propose.
- Fix what is only form (visual, highlight, density) in the plan. A fix that changes content — a title, a figure, a slide that comes in or goes out — needs the user's approval and is written back into the Script.
- If the review was not run, check the six points yourself before the gate.
