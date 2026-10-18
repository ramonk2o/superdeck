# Cold reader

Used in step 1.9 (before Gate 1, on the slide titles) and in step 3.3 (after the build, on the finished deck). A cold reader checks whether the deck communicates what is intended to someone who did not follow the conversation. It only works if the reader really doesn't know the answer: a model simulating an outsider inside this conversation already knows the objective and the central idea, so never play the reader yourself.

## What the reader receives
- The audience profile: role, what they already know about the subject, what they think about it today.
- Before Gate 1: the slide titles, in order. After the build: the finished deck.
- Never the conversation, the objective, the central idea or your notes. Check the profile too: it must not hint at what the deck wants.

## Who reads
- **If the session can start a subagent,** give it the prompt below and nothing else.
- **Otherwise,** give the user the prompt below, ready to copy, and ask them to paste it into a new conversation with no access to this one (after the build, attaching the deck), then paste the answers back here.
- If the user prefers not to, skip the test and record "Cold reader: not run" in the gate document or the delivery note.
- In express mode, run only the after-build test; without a subagent, offer the prompt in one line.

## Prompt
Write it in the user's language and fill in the brackets.

```
You are [audience profile: role, what you already know about the subject, what you think about it today].
Someone is about to show you a presentation. [Before Gate 1: Here are its slide titles, in order: …] [After the build: The deck is attached.]

Read it as that person would, and answer briefly:
1. In one sentence, what does this deck want you to think or do?
2. What is the first question or objection you would raise?
3. At what point would you lose interest?
4. At the end, what would you do?
[After the build only:] 5. What would you remember tomorrow?

Answer only from what is in front of you; don't guess what the presenter meant.
```

## Using the answers
- Show the reader's answers next to what was expected (the central idea and the objective) and propose adjustments where they diverge.
- Divergence in answers 1 or 4 is a storyline problem, not the reader's.
- Answer 5 should be the memorable moment or the central idea; if it isn't, propose the adjustment.
- New objections go into the list for the presenter kit.
