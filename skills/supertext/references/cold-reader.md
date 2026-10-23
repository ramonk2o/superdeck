# Cold reader

Used in step 3.1, and in the light path when the user accepts the check. A cold reader checks whether the text works for someone who has only the text — which is exactly the situation of its real reader. Who reads, and what to do without a subagent, is in "Checks by someone who wasn't here" in `SKILL.md`.

## What the reader receives
- The finished text, as it will be read.
- The reader profile from the Text plan: role, what they already know about the subject, what they think about it today. Check that it doesn't hint at what the text wants.
- How the text reaches them: an email in their inbox, a post they clicked, a document shared with them.
- Never the conversation, the Text plan, the central idea, the objective, the style sheet or the sample passage.

## Prompt
Write it in the user's language and fill in the brackets.

```
You are [reader profile: role, what you already know about the subject, what you think about it today].
You receive the text below as [an email in your inbox | a post you clicked | a document shared with you].

Read it once, as that person would, and answer briefly:
1. In one sentence, what is this text telling you or asking of you?
2. After reading, what would you think, decide or do?
3. Where did you skim or stop following? Quote the first words.
4. Which claim would you not believe without more evidence?
5. What did the text assume you knew that you didn't?
[Email only:] 6. From the subject and the first two lines alone, what is being asked, and by when?

Answer only from the text; don't guess what the author meant.

[text]
```

## Using the answers
- Compare answer 1 with the central idea and answer 2 with the objective. A difference in either is a problem of structure, not of the reader.
- Answer 3 points to something to cut or move.
- Answer 4 asks for evidence, or a `[TO CONFIRM]` marker.
- Answer 5 asks for context.
- Show the answers next to what was expected and propose fixes. Any fix that changes content needs the user's ok and is written back into the Text plan.
