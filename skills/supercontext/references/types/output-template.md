# Type: output template

The structure an output must follow: a report, a brief, a client email, a ticket, a summary in a fixed format. It is consulted when the assistant produces that output.

## What makes it usable
- When the template is used, and for which output.
- The fields or sections, in order, with what goes in each.
- Which parts are required and which are optional.
- Variables marked as `{{field_name}}`, with where their data comes from.
- What to do when data for a field is missing.
- How strict it is: exact form to keep, or a default to adapt.

## Diagnosis questions
- Which output does this template produce, and who receives it?
- Is there an approved real output to start from?
- Which parts never change (fixed text, legal lines), and which vary?
- Must the form be kept exactly (a system reads it, a client expects it), or is it a sensible default?
- What happens today when a field has no data?
- Are there length limits for a field or the whole output?

## Materials that help
An approved real output, the system or form it goes into, and any fixed text (signature, disclaimer) that must appear verbatim.

## Typical skeleton
1. When to use it, how strict it is, and who receives the output
2. The template, in a fenced block
3. Field notes: for each variable, what it holds, where it comes from, required or not, and what to do when it is missing
4. A filled example, labeled as an example, when the fields aren't obvious

## Rules for this type
- Put the template in a fenced code block, so its exact form is preserved and separated from the notes.
- Mark every variable as `{{field_name}}`, with names that say what they hold (`{{client_first_name}}`, not `{{name1}}`).
- Say how strict it is. Exact: "Keep this structure and the fixed text exactly". Flexible: "Use this as the default structure; sections can be dropped when empty".
- For each field, state the rule for missing data: ask for it, leave the line out, or write a fixed fallback. Never fill it with invented content.
- Keep fixed text (legal lines, signatures) verbatim inside the template.
- A filled example is labeled as an example, uses fictional data, and shows the template exactly.

## Pitfalls
- Placeholders without explanation, which the model fills with plausible inventions.
- Mixing the template with instructions inside it, so the model copies the instructions into the output.
- No rule for missing data.
- A template stricter than needed, which forces empty sections into every output.

## Sample entry for the plan
The template's first lines in their fenced block, and the field note for one required variable.
