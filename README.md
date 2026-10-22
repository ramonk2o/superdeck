# superlab

Agent Skills that plan a piece of writing with you before producing it: first what it needs to say, then how it will look, and only then the output, with explicit approval gates between phases.

| Skill | For | Status |
|---|---|---|
| [superdeck](#superdeck) | Presentations, decks and slides | Available |

Every skill asks a round of numbered questions with a recommended answer, so you mostly confirm or correct. Nothing is invented: every number comes from your material or from you, and anything without a source stays marked until it is confirmed. The skills work in any language and converse in yours.

## superdeck

Plans presentations with you before any slide is built: what the deck needs to say, how to hold attention, the visual concept and production plan, and only then the build and its review.

A bad deck is rarely bad because of its visuals; it is bad because it doesn't know what it wants to say. superdeck keeps three decisions apart — what to say, how to show it, and building it — and moves on only when you approve.

```
Full:    Opening → Narrative → [Gate 1: Script] → Visual concept and plan → [Gate 2: Production plan] → Build and review
Express: Opening → Complete proposal → [Single gate] → Build and review
```

- **Narrative:** central idea, what goes in, the arc, a hook, a memorable moment and a close that is the concrete ask, then a storyline whose titles state conclusions. A grill presses the idea until it can stand up to the room, and a cold reader who never saw the conversation checks what the titles actually say.
- **Visual concept and plan:** one visual concept the whole deck orbits, global rules, a low-fidelity prototype you can see, the plan slide by slide, and the build option that fits this deck, chosen from what your session can actually do.
- **Build and review:** the deck is built from the approved plan, reviewed on the rendered slides, read again by a cold reader, and comes with a presenter kit (anticipated Q&A, backup slides, a short version).

**Express mode** compresses everything into one proposal and one gate for internal, low-risk or recurring decks.

Ask for a deck the way you normally would — "make a deck out of this report for the board", with or without files. The skill triggers when the content isn't settled yet; if your slide-by-slide script is already written, it stays out of the way. In Claude Code you can also call it directly with `/superlab:superdeck`.

## Install

### Claude.ai (web and desktop)

Each skill installs on its own.

1. Download the skill's zip (for example, `superdeck.zip`) from the [latest release](https://github.com/ramonk2o/superlab/releases/latest).
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
