# Style check

Used in step 3.2, and in the light path when the user accepts the check. A style check compares the finished text with the style sheet approved in the Text plan, with a reader who has only the two. Who reads, when it runs, and what to do without a subagent, are in `SKILL.md`.

## What the reader receives
- The finished text.
- The traits of the style sheet, rewritten without the author's or book's name: drop the style-source line and any "my reading of …". A reader given the name would judge against its own idea of that author instead of the traits that were approved.
- The approved sample passage, as the reference for how the text should sound.
- Never the conversation, the central idea, the objective or the material.

## Prompt
Write it in the user's language and fill in the brackets.

```
Below are a style sheet, a sample passage approved as the reference for how a text should sound, and the finished text.

1. For each trait: does the text keep it (yes / mostly / no)? Quote up to three passages that break it, and say how.
2. Name up to three passages that sound least like the sample, and why.
3. List habits that run through the text but aren't in the style sheet: repeated constructions, stock phrases, reflexive patterns.
4. Quote any sentence that sounds copied or closely paraphrased from a published text.

Judge only how it sounds, not whether the content is right.

Style sheet:
[traits]

Sample passage:
[sample]

Text:
[text]
```

## Using the answers
- Fix the passages that break a trait.
- If a trait breaks all over the text, ask whether the trait is wrong for this text, and change it in the Text plan with the user's approval, as "A gate is explicit approval" in `SKILL.md` says, instead of forcing it.
- Cut the habits from answer 3.
- Rewrite anything flagged in answer 4.
