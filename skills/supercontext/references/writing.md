# Writing the file

Used in step 2.1. These rules make a file usable by a model that never saw the conversation, whether it reads the whole file or only retrieved pieces of it. They hold for every type; each type file adds its own skeleton and rules.

## Contents
- Who reads the file
- Structure
- Sections that stand alone
- Rules
- Examples and templates
- Facts that change
- Format and length
- What stays out

## Who reads the file

- Write for a capable colleague who knows the world but not this project. Explain what is specific to the project — its rules, names, criteria, exceptions — and skip what any capable reader already knows; each paragraph should earn its place by changing what the model does in a use case.
- A file is consulted, not obeyed. It doesn't open with "You are…" or claim authority over the project's instructions, because the model reads it as material to apply, and a file that poses as a system prompt competes with the instructions instead of supporting them.

## Structure

- Open with a title that names the subject and a short paragraph saying what the file covers, what it doesn't, and when to consult it.
- Use Markdown headings for sections and subsections, named by topic ("Refund conditions", not "Part 2"). Headings are what both a reader and a search find first.
- Order sections by how they are used: what is consulted most, or first in the task, comes first. Files looked up by name, such as a glossary, follow the order their type sets.
- Use bullet lists for independent items, numbered lists when order matters, and tables only for comparable items with the same attributes (a catalog, a price list). Keep hierarchy shallow: two heading levels and one level of nesting cover almost everything.
- Keep tables short. A long table cut into retrieved pieces loses its header row, so split it by entity under its own heading, or name the entity in every row.
- Plain, single-column text. Layout tricks (columns, text boxes, text inside images) are lost when files are parsed.
- A file longer than about 100 lines starts with a short list of its sections, so a partial read still shows the whole scope.

## Sections that stand alone

When a file is large, assistants search it and read retrieved excerpts, not the whole. An excerpt that says "the company" or "this quarter" is useless out of place.

- Each section names its subject: the product, program, period, region or audience it applies to. Repeat the name instead of "it" or "the above".
- Keep a rule's condition, exception and limit in the same section, ideally the same bullet, as the rule.
- Use one term per concept throughout the file, the same term the project uses. Mixing synonyms ("client", "customer", "account") makes the reader wonder whether they are different things, and makes searches miss.
- Don't make a section depend on another one ("as explained above"); if it needs a definition, name the term and keep its meaning obvious, or link to the glossary entry by its exact term.

## Rules

- Write conditional rules as "If [condition], [action]". State what to do, not only what to avoid: "Write prices with the currency symbol and two decimals" beats "Don't write prices loosely".
- Give the reason for a rule that isn't obvious, in one short sentence. A model generalizes from the reason to cases the rule didn't foresee.
- Replace adjectives with observable criteria: not "friendly tone" but "second person, short sentences, no jargon, one emoji at most".
- Write in calm, plain language. All caps, "CRITICAL", "NEVER" make models apply a rule rigidly and out of context.
- No two rules may contradict each other. When rules can collide, say which wins ("If a client contract says otherwise, the contract wins"). Contradictions make the model guess, and the guess changes from one chat to the next.
- Match the rule's strictness to the risk: exact wording where a mistake is costly (legal text, prices, a fixed format), a principle with room for judgment where several answers are fine.

## Examples and templates

- Use examples when they show what a rule can't say alone (tone, level of detail, a format), or when they are the file's subject.
- Show them as input and output pairs, varied enough to cover different decisions and not so similar that the model copies a surface pattern. Three to five usually teach more than one or ten.
- Say what each example illustrates, and make sure every behavior an example shows is also stated as a rule.
- Label synthetic examples as such; never present them as real cases or real data.
- Keep literal text — an approved message, a template, a schema — in a fenced code block, so it is clearly separate from the guidance around it. XML-style tags are an option for delimiting mixed content; don't wrap the whole file in tags or duplicate Markdown and XML.
- In templates, mark variables as `{{field_name}}`, say which are required, and what to do when the data is missing. Placeholders belong in templates, never as stand-ins for facts.

## Facts that change

- Give numbers with units, currency and the period they refer to.
- When a fact has a validity, state it ("valid from 2026-07-01") next to the fact, and write the current version in the main text. A superseded version either goes or moves to a section clearly labeled as old; never leave two versions side by side without saying which applies.
- Keep the source of decisive facts and rules (document and section, link, or "stated by [role]") where it helps someone apply or update them, in a short note after the item or in a sources line at the end of the section.
- Content the user agreed to deliver unconfirmed keeps its `[TO CONFIRM]` marker next to the item, and the file's opening paragraph says that marked items are not confirmed, so the model doesn't present them as fact.

## Format and length

- Markdown in UTF-8, with a descriptive file name in lowercase with hyphens (`refund-policy.md`, `brand-voice.md`). Names like `doc1.md` or `info.md` help no one find the file.
- Markdown is the default because both a model and a person read it well, it survives copy and paste, and its headings mark sections for search. If the user wants another format, say this in one line and follow their choice. JSON is a poor container for prose; PDF and slides lose structure when parsed.
- Respect a stated length. Without one, use the length the use cases need; don't aim for a number of words or pages, and don't state a token count without a known tokenizer, since it varies between models.
- Don't save space with obscure abbreviations or telegraphic fragments that drop the condition or the negation. Short is good; ambiguous isn't.

## What stays out

- The interview, its transcript, and notes about how the file was made.
- Generic introductions, motivation and filler ("In today's fast-paced world…").
- Common knowledge that no use case depends on.
- Content that belongs to a single task (one campaign's briefing, one client's exception), unless the file is about it.
- Prompt-engineering advice, unless that is the file's subject.
