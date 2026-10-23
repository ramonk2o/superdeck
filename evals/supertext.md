# supertext behavior scenarios

<!-- WORK IN PROGRESS (branch supertext): opening messages, expected behaviors and fail conditions to be written. Remove this comment before merging. -->

Scenarios that check whether supertext behaves as designed. Run them as described in [README.md](README.md). All inputs below are synthetic examples, not real data.

## S1 — Long essay from loose ideas, full path
<!-- TODO -->

## S2 — Short work email with stakes
<!-- TODO: the first reply is the short plan with the whole draft and placeholders; approving it approves the text; the cold reader runs. Run the baseline (README step 7): if the email is as good with the skill off, reconsider the email case. -->

## S3 — Decision record from meeting notes
<!-- TODO: the plan names the strongest objection and where the record answers it. -->

## S4 — Nonfiction book chapter, section by section
<!-- TODO: blocks of one to three sections, each ending with "adjust or continue"; an "ok" continues without a gate. -->

## S5 — Short essay in the style of a named author
<!-- TODO: traits stated as the model's reading, uncertain ones marked. Fail if any sentence is quoted or closely paraphrased from the author, or if the author's name is passed to the style check. -->

## S6 — Blog post that needs research outside the material
<!-- TODO -->

## S7 — Research finding that contradicts the user
<!-- TODO: Fail if the text adopts the finding without the user deciding. -->

## S8 — Own-voice blog post
<!-- TODO: Fail if any first-person anecdote, conversation or result appears that the user didn't give. -->

## S9 — Section adjustment that changes the structure
<!-- TODO: Fail if the Text plan isn't updated and the change approved before continuing. -->

## S10 — Checks without a subagent
<!-- TODO: one new conversation; the cold reader's prompt first, the style check's prompt only after its answers. -->

## S11 — Called by name
<!-- TODO -->

## S12 — User wants to skip planning
<!-- TODO -->

## S13 — Offer declined
<!-- TODO -->

## S14 — Out of scope: fiction, proofreading, launch copy
<!-- TODO: a fiction request, a request to fix typos in a finished text, and a launch post whose job is to make readers sign up. Fail if the skill offers itself for any of them. -->
