# Writing the project instructions

Used in step 3.1. The instructions are the one layer the platform always reads, so they carry the purpose, the requirements indispensable to every task and the map of when to open each file. Use the skeletons below as a starting point, not as forms: remove what doesn't change how the project acts and add what the purpose calls for. Text inside `{{ }}` is a variable.

## Contents
- What goes in
- The consultation map
- Gaps and conflicts
- What stays out
- Style per destination
- Skeleton for Claude
- Skeleton for ChatGPT
- Skeleton for Gemini

## What goes in

- Who the project serves, with what work, the most common requests and what a good deliverable looks like, in observable terms.
- The requirements listed under "Always in the instructions" in the Project plan, each with a short reason.
- The consultation map, inside the instructions themselves, so finding a file doesn't depend on first opening an index.
- How to handle gaps and conflicts, proportionate to the project.

Write concrete, concise, self-sufficient guidance, with only what changes how the project acts.

## The consultation map

- For each trigger, state the situation or intent, the exact file and what to apply: "When creating or reviewing public brand copy, consult `brand-voice.md` and apply its rules and examples. Before delivering, check the relevant criteria in `publishing-checklist.md`."
- Prefer intents and stages of the work over keywords, because users rarely use the words you anticipated.
- Allow combining files in mixed tasks. Add an exclusion ("don't use X for Y") only when it prevents a likely confusion.
- Cite each file by the exact name it was saved under; the name also guides search in large projects.
- Fold in the consultation sentences supercontext handed back, adapted to the map's wording.

## Gaps and conflicts

Include what fits the project:
- A needed source is inaccessible: say so, ask for the content when it is decisive, and if it is possible to move on, mark what is provisional without claiming the file was applied.
- A piece of data that changes the deliverable is missing: ask a specific question instead of inventing product features, numbers or internal rules. A project that confidently invents is worse than one that asks.
- General rules, exceptions approved for one job and hypotheses under discussion are different things; a brainstorm does not become policy.
- Sources conflict on something decisive: use each source's known authority and scope, and ask when it still matters, without imposing a universal precedence or silently picking the most recent one. An explicit correction from the user can replace earlier data.
- An approved change affects future work: say which file needs updating, without promising that memory will keep it.

## What stays out

- Commands to invoke skills: they build the project; they aren't part of using it.
- Requests to show internal reasoning, and promises of tools, connectors or features the destination doesn't offer (check the platform file).
- Briefings and decisions that belong to one deliverable.

## Style per destination

- **Claude:** direct prose, with a short reason for important rules instead of all caps or warnings, because Claude generalizes from the reason; aggressive emphasis tends to make it overcautious. XML tags only to separate blocks of a different nature, such as rules and literal examples.
- **ChatGPT:** Markdown headings to separate purpose, behavior and consultation map, with explicit "when X, do Y" conditions.
- **Gemini:** direct and concise, ambiguous terms defined, role, constraints and output format first, and one structure used throughout (Markdown headings or XML-style tags, not both). Say when web search is allowed and when only the notebook's sources count, because Gemini and Gemini Notebook ground answers differently. If the project needs detailed or conversational answers, ask for them explicitly.

## Skeleton for Claude

```markdown
You support {{who}} with {{work}}. The most common requests are {{recurring requests}}, and a good deliverable {{observable criterion}}.

{{Requirement indispensable to every task}}, because {{reason}}.

Consult the project files according to the stage of the work:
- When {{situation or intent}}, use `{{file.md}}` to {{what to apply}}.
- Before delivering {{type of deliverable}}, check the relevant criteria in `{{file.md}}`.

If a needed file isn't accessible, say so and mark what is provisional. If a piece of data that changes the deliverable is missing, ask instead of assuming — {{examples of data that must never be invented}}.

Briefings and requests in the chat apply only to that job. When a new decision affects future work, say which file needs updating.
```

## Skeleton for ChatGPT

```markdown
# Purpose
Support {{who}} with {{work}}. Common requests: {{recurring requests}}. A good deliverable {{observable criterion}}.

# Behavior
- {{Indispensable requirement}}.
- When a piece of data that changes the deliverable is missing, ask a specific question; don't invent {{examples}}.
- Treat briefings as valid only for the current job.

# When to consult the files
- When {{situation or intent}}: consult `{{file.md}}` and apply {{what}}.
- Before delivering {{type of deliverable}}: check `{{file.md}}`.

# Gaps and conflicts
- Inaccessible file: say so and mark what is provisional.
- Decisively conflicting sources: ask for clarification.
- Decision that affects future work: name the file to update.
```

## Skeleton for Gemini

```markdown
# Role
You support {{who}} with {{work}}. Common requests: {{recurring requests}}. A good deliverable {{observable criterion}}.

# Constraints
- {{Indispensable requirement}}, because {{reason}}.
- Answer from the notebook's sources for {{subjects the sources own}}. Use web search only for {{what the web is allowed for}}, and say when an answer comes from the web.
- When a piece of data that changes the deliverable is missing, ask a specific question; don't invent {{examples}}.

# When to consult the sources
- When {{situation or intent}}: use `{{file.md}}` and apply {{what}}.
- Before delivering {{type of deliverable}}: check `{{file.md}}`.

# Output format
{{Structure, length and tone of a typical deliverable}}.

# Gaps and conflicts
- Inaccessible source: say so and mark what is provisional.
- Decisively conflicting sources: ask for clarification.
- Decision that affects future work: name the source to update.
```
