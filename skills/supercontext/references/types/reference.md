# Type: reference

Facts the assistant looks up: a product catalog, prices and fees, specifications, the rules of a program, eligibility criteria, an FAQ. It is consulted when a request needs a fact the model can't know.

## What makes it usable
- Scope: what the reference covers and what it doesn't.
- Each fact with its unit, currency, period and, when it changes, its validity date.
- Comparable items described with the same attributes, in the same order.
- Limits and exceptions next to the fact they qualify.
- The source of decisive facts, so someone can check or update them.

## Diagnosis questions
- Which questions will this reference answer? List the most frequent ones.
- Where does each kind of fact come from, and which source wins if two disagree?
- Which facts change, how often, and who updates the file?
- Are there exceptions by region, plan, channel or customer type?
- What should the assistant say when the fact isn't in the file?

## Materials that help
The official source of each fact (price table, product sheet, regulation, terms), the most frequent questions people actually ask, and the date each source was last updated.

## Typical skeleton
1. Scope and validity: what the file covers, as of when, and where facts come from
2. One section per entity or topic (one product, one plan, one rule), each self-contained
3. Comparisons in a table when items share attributes
4. Exceptions and limits, kept with the item they apply to
5. What isn't covered, and where to look instead

## Rules for this type
- One entity per section, named in its heading and in its text: retrieval may return the section alone.
- Write facts as facts ("The Gold plan costs R$ 29.90 per month, billed monthly"), not as prose about them.
- A table holds attributes of comparable items; a rule with conditions goes in text, not in a table cell.
- Mark validity next to facts that expire, and keep only the current value in the main text.
- For an FAQ, write each question as people ask it, and an answer that stands alone without the question.
- State what the assistant should do when a fact is missing (say it isn't in the file, point to the channel), instead of leaving it to guess.

## Pitfalls
- Copying a whole source document when the use cases need a fraction of it.
- Numbers without unit, period or date.
- Two versions of a price or rule with no indication of which applies.
- Facts the model already knows (what a credit card is) taking space from facts it doesn't.

## Sample entry for the plan
One entity's section as it will appear, with its facts, units, validity and one exception.
