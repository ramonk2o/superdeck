# Contributing to superdeck

superdeck is an Agent Skill that plans presentations with the user before any slide is built: narrative first, then visual concept and production plan, then build and review, with explicit approval gates between phases. This file explains how the repository is organized, the rules every change to the skill follows, and how releases are made.

Before proposing a behavior change, read [docs/design-principles.md](docs/design-principles.md): it explains why the skill works the way it does and how proposals are judged.

## Repository layout

```
superdeck/                         repository root, also the Claude Code plugin root
├── .claude-plugin/
│   ├── marketplace.json           lists the plugin so Claude Code users can install it
│   └── plugin.json                plugin manifest; the only place the version number lives
├── skills/
│   └── superdeck/                 the skill itself; this folder is what gets zipped for Claude.ai
│       ├── SKILL.md
│       └── references/            one file per step or deck case that is read on demand
├── evals/
│   └── scenarios.md               behavior scenarios run before releases
├── docs/
│   └── design-principles.md
├── scripts/
│   └── package-skill.sh           builds dist/superdeck.zip
├── CHANGELOG.md
├── CONTRIBUTING.md
├── LICENSE                        MIT
└── README.md                      what the skill does and how to install it
```

`dist/` is a build output and is not committed.

## Language

- Everything in the repository is written in English: the skill, docs, changelog, commit messages and issue replies.
- The skill tells the model to converse with the user in the user's language. Do not add language-specific behavior; if an example is in another language, label it as an example.

## Authoring rules for the skill

These rules follow the [Agent Skills specification](https://agentskills.io/specification) and Anthropic's [skill authoring best practices](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/best-practices).

**Frontmatter**
- Keep it to `name`, `description` and, optionally, `license`. Other fields add nothing for Claude.ai, and support varies by client.
- `name` is `superdeck` and must match the skill folder name; Claude.ai rejects uploads where they differ.
- `description` stays under 1,024 characters, in third person, and says both what the skill does and when to use it, including the phrases users actually type. It decides when the skill triggers, so treat any change to it as a behavior change.

**Size and structure**
- The whole `SKILL.md` loads every time the skill activates. Keep it under 500 lines and, as the specification recommends, under about 5,000 tokens.
- `SKILL.md` holds the flow, the modes, the rules that apply in every phase, and the gate formats. Content used by a single step (a question bank, a deck case, a checklist) goes in `references/`.
- `SKILL.md` links each reference file directly. Reference files do not send the model on to other reference files, because nested references tend to be read only partially.
- A reference file longer than 100 lines starts with a short table of contents.
- Use forward slashes in all paths.

**One source per rule**
- State each rule in one file only. If a reference file needs a rule from `SKILL.md`, point to the section instead of restating it. Duplicated rules drift apart; an earlier version had a reference file saying "one question at a time" while `SKILL.md` asked for question rounds.
- Step names, artifact names (such as the gate documents) and file names are used identically everywhere. Renaming one means updating every file in the same pull request.

**Style**
- Give the reason behind important rules in a short sentence. Avoid all caps and words like "CRITICAL", which make models apply rules rigidly out of context.
- Describe capabilities, not product or tool names ("if the session can start a subagent", not a tool's name), because the skill runs on different Claude surfaces and tool names change.
- Keep time-sensitive facts (model names, plan limits, product screens) out of the skill.

## Making a change

1. **Open an issue first** for any behavior change: a new step, a new deck case, a different question format, a change to a gate. Typos and wording fixes that keep the same behavior can go straight to a pull request.
2. **Describe the real situation** that motivated it: the kind of deck, what the skill did, and what it should have done. Changes based on an actual use are much easier to evaluate than general ideas.
3. **Check it against the design principles.** If it conflicts with one, say so in the issue; the maintainer decides whether the principle changes.
4. **Update the scenarios.** If the change alters behavior, add or edit a scenario in `evals/scenarios.md`, and run the affected scenarios as described there.
5. **Update `CHANGELOG.md`** under `## [Unreleased]`, in the Added, Changed, Fixed or Removed group.

**Pull request checklist**
- [ ] Linked issue (or a typo/wording fix)
- [ ] `SKILL.md` still under 500 lines; single-step content lives in `references/`
- [ ] No rule stated in two files; names consistent across files
- [ ] Scenarios added or updated, with results: model used, date, pass or fail for each expected behavior
- [ ] `CHANGELOG.md` updated

## Versioning

superdeck follows [Semantic Versioning](https://semver.org/), applied to the skill's behavior:

- **MAJOR**: breaks how existing users work with the skill — removes, merges or reorders phases or gates, changes the format of the gate documents, or renames files that users or other skills reference.
- **MINOR**: adds capability without breaking the flow — a new deck case, a new optional step, a new reference file.
- **PATCH**: wording, clarity and fixes that do not change the intended behavior.

The version number lives only in `.claude-plugin/plugin.json`. Do not also set it in `marketplace.json`: Claude Code uses the `plugin.json` value and `claude plugin validate` reports a mismatch. Claude Code users receive an update only when the version changes, so every release bumps it.

## Releasing (maintainers)

1. Run every scenario in `evals/scenarios.md` affected since the last release, and fix or document any failure.
2. In `CHANGELOG.md`, move the `[Unreleased]` entries under a new heading `## [X.Y.Z] - YYYY-MM-DD`.
3. Set `"version": "X.Y.Z"` in `.claude-plugin/plugin.json`.
4. Run `claude plugin validate .` from the repository root and fix anything it reports.
5. Run `scripts/package-skill.sh`. It builds `dist/superdeck.zip` containing the `superdeck/` folder at its root, which is the layout Claude.ai expects.
6. Commit, tag `vX.Y.Z`, and push the commit and the tag.
7. Create a GitHub release for the tag, paste that version's changelog entries as the notes, and attach `dist/superdeck.zip`.
