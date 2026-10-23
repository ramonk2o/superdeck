# Type: playbook

A procedure the assistant follows to do a recurring task: handling a complaint, reviewing a contract, qualifying a lead, onboarding a client. It is consulted when the task starts and step by step during it.

## What makes it usable
- When the playbook applies, and when it doesn't (which neighboring task has another procedure).
- The inputs it needs and what to do when one is missing.
- The steps in order, each one an action with its result.
- The decision points, written as conditions, with every branch going somewhere.
- Exceptions and escalation: when to stop, ask or hand over to a person.
- What "done" looks like: the output and how to check it.

## Diagnosis questions
- What sets the task off, and what does a typical request look like?
- Walk through the last real case: what was done first, then what?
- Where does the person doing it have to decide, and on what basis?
- What goes wrong most often, and what is done then?
- When must the assistant stop and ask a person instead of deciding?
- What does a finished job look like, and who receives it?

## Materials that help
An existing procedure or SOP, a real case from start to finish, the message or document the task produces, and the escalation rules.

## Typical skeleton
1. Purpose and scope: what the playbook covers and when to use it
2. Inputs: what is needed, and what to do if something is missing
3. Steps, numbered, with the decisions inside the step where they happen
4. Exceptions and escalation
5. Output and done criteria

## Rules for this type
- One action per step, in the imperative, with its result when it isn't obvious ("Check the order status in the invoice; if it says 'shipped', go to step 5").
- Every branch of a decision ends somewhere: a later step, an output, or an escalation. A branch that ends nowhere leaves the model improvising.
- Steps that must be done exactly (a legal disclaimer, a fixed sequence) say so; steps where judgment is fine say what good judgment looks for.
- Put the escalation conditions in the steps where they arise, and list them again in the exceptions section by name only.
- If a step depends on a fact that changes (a deadline, a fee), name where that fact lives instead of copying it, or state its validity.

## Pitfalls
- Describing the process instead of telling what to do ("The team usually analyzes…").
- The happy path only, with no branches for what actually goes wrong.
- Long steps that hide several decisions in one paragraph.

## Sample entry for the plan
One step that contains a decision, written as it will appear, with its condition, both branches and an escalation if there is one.
