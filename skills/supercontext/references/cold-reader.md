# Cold reader

Used in step 2.3. A cold reader checks whether the file works for someone who has only the file — which is exactly the situation of the model in the project. Who reads, and what to do without a subagent, is in "Checks by someone who wasn't here" in `SKILL.md`.

## What the reader receives
- The finished file, as it will be attached.
- The use cases from the File plan, written as requests, without the answers you expect.
- One line on who makes the requests (for example, "a support analyst at a loyalty program"), only if the requests don't make sense without it.
- Never the conversation, the File plan, the material the file came from, or what each answer should be. Check the requests too: they must not hint at the answer.

## Prompt
Write it in the user's language and fill in the brackets.

```
You are an assistant in a project whose only knowledge file is attached: [file name].
[Optional: The requests come from [who].]

Answer each request below using only the file. For each one:
1. Your answer, as you would give it.
2. The section or sections of the file you used.
3. What you had to guess, or what was missing, unclear or contradictory in the file.

Requests:
1. [use case 1]
2. [use case 2]
3. [use case 3]

Finally:
4. Pick two sections and say whether each one would still make sense if you read it alone, without the rest of the file.
5. Which terms or rules could you read in more than one way?

Don't use outside knowledge to fill a gap; say it is a gap.
```

Question 4 matters most for long files, which assistants read in retrieved pieces. For a short file, it can be dropped.

## Using the answers
- Show each answer next to what was expected and propose fixes where they diverge.
- A wrong or guessed answer is a problem of the file, not of the reader: find the missing condition, the rule far from its exception, the term used two ways, or the section that depends on another.
- A section that doesn't stand alone gets its subject (product, period, audience) named inside it, and any condition or exception it relies on brought next to the rule.
- A gap the material can't fill is asked, never filled with an invented rule.
- Fixes within the approved plan go straight in; anything that adds, drops or changes content needs the user's agreement and is written back into the File plan.
