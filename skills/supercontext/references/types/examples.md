# Type: examples

A set of examples that shows the assistant what good output looks like: approved posts, model replies to clients, reviewed briefs, classified cases. It is consulted when the output's tone, level of detail or format is hard to describe in rules.

## What makes it usable
- Each example as a pair: the input or situation, and the output that was approved.
- What each example illustrates, in one line: the decision or quality it shows.
- Variety: examples that teach different decisions, not variations of the same one.
- A clear label on whether each example is real or written for the file.

## Diagnosis questions
- Which outputs will the assistant produce, and which of them are hard to get right?
- Are there approved real outputs? Can they be used (no personal or confidential data)?
- What makes a good one good? Ask about each candidate.
- Are there bad outputs worth showing with their fix?
- Which situations differ enough to need their own example (a complaint vs a compliment, a short post vs a long one)?

## Materials that help
Real approved outputs with the request that produced them, rejected outputs with the reason, and reviewers' comments.

## Typical skeleton
1. What the examples are for, and the rules they illustrate in short
2. Examples grouped by situation, each with:

```
### [Situation in a few words]
Shows: [the decision or quality this example illustrates]
Input: …
Output:
[the approved output, verbatim]
```

3. Poor and good pairs, when a common mistake is worth showing

## Rules for this type
- Choose examples by the decisions they teach, not by how good they look. Three to five per situation usually teach more than one or ten.
- Vary them in length, topic and structure, so the model learns the principle and not a surface pattern (the same opening, the same length).
- State what each example shows, and make sure it matches a rule the project states; an example that teaches something no rule says will be copied without knowing why.
- Keep outputs verbatim in a fenced block so their exact form is preserved and separated from commentary.
- Remove personal data and anything confidential; replace with clearly fictional stand-ins and say so.
- Label examples written for the file as synthetic, and never present them as real cases or results.

## Pitfalls
- Several near-identical examples, which teach the model to copy their shape.
- Examples that contradict the guidelines.
- Outputs without the input that produced them.
- Real client data left in the file.

## Sample entry for the plan
One complete example with its "Shows" line, input and output.
