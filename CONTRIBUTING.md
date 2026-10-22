# Contributing to superwriter

superwriter is a suite of Agent Skills that plan a piece of writing with the user before producing it, with explicit approval gates between phases. Today it has one skill, superdeck, for presentations. This file explains how the repository is organized, the rules every change to a skill follows, and how releases are made.

Before proposing a behavior change, read [docs/principles.md](docs/principles.md), which holds the principles every skill follows and how proposals are judged, and the design file of the skill you are changing (for superdeck, [docs/superdeck.md](docs/superdeck.md)).

## Repository layout

```
superwriter/                       repository root, also the Claude Code plugin root
├── .claude-plugin/
│   ├── marketplace.json           lists the plugin so Claude Code users can install it
│   └── plugin.json                plugin manifest; the only place the version number lives
├── skills/
│   └── superdeck/                 one folder per skill; each folder is zipped on its own for Claude.ai
│       ├── SKILL.md
│       └── references/            one file per step or case that is read on demand
├── evals/
│   ├── README.md                  how to run scenarios
│   └── superdeck.md               behavior scenarios for each skill, one file per skill
├── docs/
│   ├── principles.md              principles shared by every skill
│   └── superdeck.md               design principles of each skill, one file per skill
├── scripts/
│   └── package-skills.sh          builds one zip per skill in dist/
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
- `name` must match the skill's folder name (`superdeck` for `skills/superdeck/`); Claude.ai rejects uploads where they differ.
- `description` stays under 1,024 characters, in third person, and says both what the skill does and when to use it, including the phrases users actually type. It decides when the skill triggers, so treat any change to it as a behavior change.

**Size and structure**
- The whole `SKILL.md` loads every time the skill activates. Keep it under 500 lines and, as the specification recommends, under about 5,000 tokens.
- `SKILL.md` holds the flow, the modes, the rules that apply in every phase, and the gate formats. Content used by a single step (a question bank, a deck case, a checklist) goes in `references/`.
- Each skill is self-contained: it never points to a file outside its own folder, because in Claude.ai it is installed alone.
- `SKILL.md` links each reference file directly. Reference files do not send the model on to other reference files, because nested references tend to be read only partially.
- A reference file longer than 100 lines starts with a short table of contents.
- Use forward slashes in all paths.

**One source per rule**
- Inside a skill, state each rule in one file only. If a reference file needs a rule from `SKILL.md`, point to the section instead of restating it. Duplicated rules drift apart; an earlier version had a reference file saying "one question at a time" while `SKILL.md` asked for question rounds.
- Rules shared by the suite (listed in [docs/principles.md](docs/principles.md)) are the exception: each skill states them in its own `SKILL.md`, since skills can't read each other's files. Changing a shared rule means changing it in every skill that states it, in the same pull request.
- Step names, artifact names (such as the gate documents) and file names are used identically everywhere. Renaming one means updating every file in the same pull request.

**Style**
- Give the reason behind important rules in a short sentence. Avoid all caps and words like "CRITICAL", which make models apply rules rigidly out of context.
- Describe capabilities, not product or tool names ("if the session can start a subagent", not a tool's name), because the skill runs on different Claude surfaces and tool names change.
- Keep time-sensitive facts (model names, plan limits, product screens) out of the skill.

## Making a change

1. **Consider opening an issue first** for a behavior change: a new step, a new deck case, a different question format, a change to a gate. It is a recommendation, not a requirement: a short discussion before you write the change saves effort if the idea doesn't fit. Typos and wording fixes that keep the same behavior can go straight to a pull request, and the maintainer doesn't need an issue to change the skill.
2. **Describe the real situation** that motivated it: what you were making (for superdeck, the kind of deck), what the skill did, and what it should have done. Changes based on an actual use are much easier to evaluate than general ideas.
3. **Check it against the principles** in `docs/principles.md` and the skill's design file. If it conflicts with one, say so in the issue or the pull request; the maintainer decides whether the principle changes.
4. **Update the scenarios.** If the change alters behavior, add or edit a scenario in the skill's file in `evals/`, and run the affected scenarios as described in `evals/README.md`.
5. **Update `CHANGELOG.md`** under `## [Unreleased]`, in the Added, Changed, Fixed or Removed group. Start the entry with the skill it affects (for example, "superdeck:"), unless it affects the whole suite.

**Pull request checklist**
- [ ] Issue linked, if you opened one (recommended for behavior changes)
- [ ] `SKILL.md` still under 500 lines; single-step content lives in `references/`
- [ ] No rule stated in two files of the same skill; names consistent across files
- [ ] A changed shared rule is changed in every skill that states it
- [ ] Scenarios added or updated, with results: model used, date, pass or fail for each expected behavior
- [ ] `CHANGELOG.md` updated

## Versioning

superwriter has one version for the whole suite, following [Semantic Versioning](https://semver.org/) applied to the skills' behavior:

- **MAJOR**: breaks how existing users work with any skill — removes, merges or reorders phases or gates, changes the format of the gate documents, removes or renames a skill, or renames files that users or other skills reference.
- **MINOR**: adds capability without breaking the flow — a new skill, a new case, a new optional step, a new reference file.
- **PATCH**: wording, clarity and fixes that do not change the intended behavior.

The version number lives only in `.claude-plugin/plugin.json`. Do not also set it in `marketplace.json`: Claude Code uses the `plugin.json` value and `claude plugin validate` reports a mismatch. Claude Code users receive an update only when the version changes, so every release bumps it.

## Releasing (maintainers)

1. Run every scenario in `evals/` affected since the last release, and fix or document any failure.
2. In `CHANGELOG.md`, move the `[Unreleased]` entries under a new heading `## [X.Y.Z] - YYYY-MM-DD`.
3. Set `"version": "X.Y.Z"` in `.claude-plugin/plugin.json`.
4. Run `claude plugin validate .` from the repository root and fix anything it reports.
5. Run `scripts/package-skills.sh`. It builds one zip per skill in `dist/` (for example, `dist/superdeck.zip`), each with the skill's folder at its root, which is the layout Claude.ai expects.
6. Commit, tag `vX.Y.Z`, and push the commit and the tag.
7. Create a GitHub release for the tag, paste that version's changelog entries as the notes, and attach every zip in `dist/`.
