# Cold reader

Used in step 4.2. A cold reader checks whether the project works for someone who has only what the project will have: the instructions and the files. It shows whether the consultation map sends each request to the right file and whether the files answer it. Who reads, and what to do without a subagent, is in "Checks by someone who wasn't here" in `SKILL.md`.

## What the reader receives
- The instructions for one destination, as they will be pasted. With more than one destination, use the one with the most users; the versions share their logic.
- The knowledge files, as they will be attached, with their names.
- The use cases from the Project plan, written as requests, without the answers you expect.
- Never the conversation, the Project plan, the source material or what each answer should be. Check the requests too: they must not name the file to use or hint at the answer.

## Prompt
Write it in the user's language and fill in the brackets.

```
You are the assistant in a project. Its instructions are below, and its files are attached: [file names].

<instructions>
[instructions text]
</instructions>

Answer each request below as the project's assistant, using only the instructions and the files. For each one:
1. Which file or files you would consult, and why the instructions sent you there.
2. Your answer, as you would give it.
3. What you had to guess, or what was missing, unclear or contradictory in the instructions or the files.

Requests:
1. [use case 1]
2. [use case 2]
3. [use case 3]

Finally:
4. Is there a request this project is clearly meant for that the instructions don't tell you how to handle?
5. Did you find a rule stated in two places, or two rules that contradict each other?

Don't use outside knowledge to fill a gap; say it is a gap.
```

## Using the answers
- Show each answer next to what was expected and propose fixes where they diverge.
- The wrong file consulted, or none, is a problem of the consultation map: make the trigger an intent the request actually expresses, or name the file more descriptively.
- The right file but a wrong or guessed answer is a problem of the file: find the missing condition, the rule far from its exception, or the section that depends on another, and fix it in the file, going back to supercontext for that file when it was used.
- A duplicated or contradictory rule is removed from one place; the instructions keep only what must apply in every chat.
- A gap the material can't fill is asked, never filled with an invented rule.
