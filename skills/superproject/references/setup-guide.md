# Setup and testing guide

Used in Deliver. A guide for the user to create and test the project; it isn't attached to the project. Name it in the project's language (for example `setup-and-tests.md` or `configuracao-e-testes.md`). Take every setting and limit from the platform file for the destination, as checked, and keep the guide to what the user has to do or decide.

## Test requests
Write them from the Project plan's use cases: a common task, one that combines files when there is more than one, and one with missing data or an ambiguous ask, for which success is a specific question instead of an invented answer. For each, name the files that should be consulted and an observable success signal. When the destination is Claude and the knowledge is large, add a request that names a file, to check retrieval. Say that these are tests to run on the platform; the cold reader was only a check.

## Skeleton

```markdown
# {{Project name}} — setup and tests

A guide for setting up the project. It doesn't need to be attached.

## Name and description
- **Name:** {{short project name}}
- **Description:** {{one or two sentences: what the project is for and for whom}} (only where the creation screen has the field)

The model doesn't rely on the name or the description; they help you find the project in your list.

## Map
| File | Role | When it is consulted |
| --- | --- | --- |
| `{{file.md}}` | {{role}} | {{trigger}} |

## Set up in {{Claude | ChatGPT | Gemini}}
1. {{Decisions to make before or at creation: memory mode, sharing, where the files will live}}.
2. Create the project with the name above and paste `{{instructions file}}` into the instructions field.
3. Add {{knowledge files}} {{and original references, if any}}.

## Tests
| Request | Should consult | Success signal |
| --- | --- | --- |
| {{common task}} | `{{file.md}}` | {{observable criterion}} |
| {{task combining files}} | `{{a.md}}`, `{{b.md}}` | {{criterion}} |
| {{missing data or ambiguous}} | — | Asks {{what}} instead of inventing |

## Check and open items
- Cold reader: {{what diverged and what changed, in one line, or "not run"}}
- {{Only open items that affect the result}}
```

With more than one destination, keep one map and one test table, and write one short setup section per destination.
