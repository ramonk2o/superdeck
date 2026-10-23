# Type: glossary

Terms the assistant must understand and use the way the project does: internal jargon, product names, acronyms, metrics, words that mean something specific in this domain. It is consulted when a term appears in a request or must appear in an output.

## What makes it usable
- Each term with its meaning in this domain, not the dictionary's.
- The other words people use for it, so the model recognizes them in requests.
- Distinctions from terms that look similar, when confusing them causes errors.
- How to use the term in outputs, when there is a rule (capitalization, never abbreviate, never translate).

## Diagnosis questions
- Which terms do newcomers or clients misunderstand most?
- Which words mean something here different from their everyday sense?
- Are there pairs that get confused (two metrics, two plans, two statuses)?
- Which acronyms are used, and are any ambiguous?
- Are there terms the brand never translates or always writes a certain way?
- Where do the definitions come from, and who settles a disputed one?

## Materials that help
An existing glossary or onboarding document, internal documents full of jargon, metric definitions from the reporting tool, and questions people actually ask.

## Typical skeleton
1. What the glossary covers
2. Entries
3. Entry format, the same for every term:

```
### Term
Definition in this domain, in one or two sentences.
- Also called: …
- Not to be confused with: … (the difference in one line)
- In outputs: … (only when there is a rule)
```

## Rules for this type
- Order entries alphabetically, because a glossary is looked up by term; group by topic only when there are many entries and they cluster.
- Every entry stands alone: the definition doesn't depend on reading the entry above it.
- Define with what the term is and how it is measured or decided, not with a synonym ("Active member: a member with at least one transaction in the last 90 days").
- List the synonyms people actually use; they let the model and the search connect a request to the entry.
- Leave out terms any capable reader knows in their everyday sense, unless the user listed them; then they stay, or are cut only with the user's agreement.
- Keep the fields of the entry format the same in every entry; drop a field when it is empty instead of filling it.

## Pitfalls
- Definitions copied from a dictionary, which lose the project's specific meaning.
- Circular definitions ("Engagement: how engaged users are").
- Hundreds of terms when the use cases need thirty.
- Two entries that define the same thing with different words.

## Sample entry for the plan
One full entry, preferably for a term that is often confused with another.
