# superlab

Agent Skills that plan a piece of writing with you before producing it: first what it needs to say, then how it will look, and only then the output, with explicit approval gates between phases.

| Skill | For | Status |
|---|---|---|
| [superdeck](#superdeck) | Presentations, decks and slides | Available |
| [supercontext](#supercontext) | Knowledge files for AI projects, GPTs and assistants | Available |

Every skill asks a round of numbered questions with a recommended answer, so you mostly confirm or correct. Nothing is invented: every number comes from your material or from you, and anything without a source stays marked until it is confirmed. The skills work in any language and converse in yours.

## superdeck

Plans presentations with you before any slide is built: what the deck needs to say, how to hold attention, the visual concept and production plan, and only then the build and its review.

A bad deck is rarely bad because of its visuals; it is bad because it doesn't know what it wants to say. superdeck keeps three decisions apart — what to say, how to show it, and building it — and moves on only when you approve.

```
Full:    Opening → Narrative → [Gate 1: Script] → Visual direction and plan → [Gate 2: Production plan] → Build and review
Express: Opening → Complete proposal with prototype → [Single gate] → Build and review
```

- **Opening:** who the deck is for and what it should achieve, the kind of deck, your materials and an interview about the content.
- **Narrative:** central idea, what goes in, the arc, a hook, a memorable moment and a close that is the concrete ask, then a storyline whose titles state conclusions. A stress test presses the idea until it can stand up to the room, and a cold reader who never saw the conversation checks what the titles actually say.
- **Visual direction and plan:** one visual concept the whole deck orbits and the global rules that come from it, the build option that fits this deck (chosen from what your session can actually do), a low-fidelity prototype you can see, the plan slide by slide, and a review of the plan by someone who wasn't in the conversation.
- **Build and review:** the deck is built from the approved plan, reviewed on the rendered slides and read again by a cold reader.

**Express mode** keeps the same opening, then compresses the rest into one proposal with a prototype and one gate, for internal, low-risk or recurring decks.

Ask for a deck the way you normally would — "make a deck out of this report for the board", with or without files. The skill triggers when the content isn't settled yet; if your slide-by-slide script is already written, it stays out of the way. In Claude Code you can also call it directly with `/superlab:superdeck`.

## supercontext

Plans a knowledge file with you before writing it — a playbook, reference, profile, guidelines, glossary, example set, checklist or output template — then writes it for how AI assistants actually read files, and tests it with a reader who has only the file.

A knowledge file is read by a model that never saw the conversation where it was written, often in retrieved pieces. supercontext starts from two or three real requests the file must serve, decides with you what goes in and what stays out, and only then writes.

```
Full:  Opening → Interview → [Gate: File plan] → Write → Cold reader → Deliver
Light: Opening → File plan proposal → [Gate: File plan] → Write → Deliver
```

- **Opening:** what the project does, the file's role, the file type, your materials and an interview about the content.
- **File plan:** the use cases, a triage of the material (in the file, in the project instructions, or out), the outline and a sample entry so you judge the format on a real item.
- **Write:** portable Markdown following Anthropic's and OpenAI's guidance for context material: sections that stand alone when retrieved, rules with their conditions and exceptions, one term per concept, varied examples.
- **Cold reader and delivery:** a reader who never saw the conversation answers the use cases from the file alone; you get the file, a sentence for your project instructions and test requests.

**Light path** keeps the same opening and compresses the rest into one proposal and one gate, for glossaries, short checklists, templates and revisions of settled content.

Ask the way you normally would — "make a glossary for the GPT", "turn this PDF into a file for the project", "this manual is too long for Claude, slim it down". In Claude Code you can also call it directly with `/superlab:supercontext`. It replaces the earlier create-knowledge skill.

## Install

### Claude.ai (web and desktop)

Each skill installs on its own.

1. Download the skill's zip (for example, `superdeck.zip` or `supercontext.zip`) from the [latest release](https://github.com/ramonk2o/superlab/releases/latest).
2. In Claude, open **Customize > Skills**, click **+**, choose **Create skill > Upload a skill**, and upload the zip.

Skills need code execution turned on. If the menu or the upload option looks different, see Anthropic's [Use skills in Claude](https://support.claude.com/en/articles/12512180-use-skills-in-claude).

### Claude Code

```
/plugin marketplace add ramonk2o/superlab
/plugin install superlab@superlab
```

From a shell, the same commands are `claude plugin marketplace add ramonk2o/superlab` and `claude plugin install superlab@superlab`. The plugin brings every skill in the suite, and new versions reach you when the plugin's version changes.

To install a single skill as a personal skill instead, copy its folder to your skills folder, for example `skills/superdeck/` to `~/.claude/skills/superdeck/`.

## Contributing

Issues and pull requests are welcome. Read [CONTRIBUTING.md](CONTRIBUTING.md) for the repository rules, [docs/principles.md](docs/principles.md) for how changes are judged, and each skill's design file in `docs/`. Behavior scenarios live in [evals/](evals/), and changes are listed in [CHANGELOG.md](CHANGELOG.md).

## License

[MIT](LICENSE)
