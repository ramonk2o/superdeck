# Changelog

All notable changes to superlab and its skills are recorded here. The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and versions follow [Semantic Versioning](https://semver.org/) as described in [CONTRIBUTING.md](CONTRIBUTING.md#versioning).

## [Unreleased]

### Added
- supertext, which plans a nonfiction text with the user before writing it: essays, blog and newsletter posts, decision records and design docs, work emails where something is at stake, and nonfiction book chapters, in any register, in the user's own voice or in the style of a named author. The opening gathers the reader, objective, occasion, kind of text, style source and materials in question rounds, and researches published sources when the material isn't enough; the Text plan gate approves the central idea, a triage, the structure, the title, first lines and last line, the strongest objection, a style sheet of observable traits and a sample passage. Texts over about 1,500 words are written with the user in blocks of one to three sections. A cold reader with the real reader's profile and a separate style check, which never receives an imitated author's name, review the result, and the text is delivered by the option that fits where it is going. A light path covers short texts with settled content and register rewrites, and a text of a few lines comes back as a draft in the first reply.
- supertext case files for essays, blog posts, decision records, work emails and book chapters, and `references/style.md`, `references/writing.md`, `references/cold-reader.md`, `references/style-check.md` and `references/handoff.md`.
- `docs/supertext.md` with supertext's design, and behavior scenarios S1 to S16 in `evals/supertext.md`.

## [0.1.0] - 2026-10-22

First release, with superdeck, supercontext and superproject.

### Added
- superdeck, which plans a presentation with the user before any slide is built. An opening gathers the audience, objective, deck type, materials and content. The narrative phase proposes the central idea, triage, arc, hook, memorable moment and close, and a storyline of assertion titles, presses it with a stress test and a cold reader on the titles, and closes with the Script. The visual phase settles a visual concept and global rules, the build option (chosen from what the session can actually do), a low-fidelity prototype and the plan slide by slide, has the plan reviewed by someone outside the conversation, and closes with the Production plan. Then the deck is built, reviewed on the rendered slides and read by a cold reader.
- superdeck express mode, for internal, low-risk or recurring decks: the same opening, one proposal with a prototype and a single gate.
- superdeck deck cases for results analysis, strategy proposals, idea pitches, research presentations, project status, training and campaign concepts, and the Recurring blueprint for periodic decks.
- supercontext, which plans a knowledge file with the user before writing it and replaces create-knowledge. The opening gathers the project, the file's role, its type and the materials; the File plan gate approves the use cases, a triage of the material (in the file, in the project instructions with the detail in the file, or out), the outline and a sample entry; the file is written as portable Markdown following Anthropic's and OpenAI's guidance for context material, and a cold reader answers the use cases from the file alone. A light path covers glossaries, short checklists, templates and revisions with one proposal and one gate.
- supercontext type files for playbooks, references, profiles, guidelines, glossaries, example sets, checklists and output templates, and `references/writing.md` with the writing rules for every type.
- Checks by someone outside the conversation run through a subagent, or through a ready-made prompt for a new conversation when the session can't start one.
- A skill started by the subject of a request, rather than by its name, first offers itself in one short message with what it does, what it costs and a recommended answer; if the user declines, the request is handled as it would be without the skill. Called by name, or handed a file by another skill, it starts directly.
- The superlab Claude Code plugin and marketplace, with each skill called as `/superlab:<skill>` (for example, `/superlab:superdeck`), and `scripts/package-skills.sh`, which builds one zip per skill for Claude.ai.
- `docs/principles.md` with the suite's principles, `docs/superdeck.md` and `docs/supercontext.md` with each skill's design, `CONTRIBUTING.md`, and behavior scenarios S1 to S12 in `evals/superdeck.md` and `evals/supercontext.md`.
- superproject, which designs a Claude project, ChatGPT project or Gemini notebook with the user before setting it up, and replaces create-project. The opening gathers the destination, purpose, recurring requests, users and knowledge in question rounds; the Project plan gate approves the use cases, what stays in the instructions, the file map with each file's trigger, the setup decisions and a suggested name and description; files are handed to supercontext when it is installed, or written with a lighter method otherwise; instructions are written per platform after the files; a cold reader with only the instructions and the files checks the consultation map. A light path covers small personal projects, porting and revising instructions with one proposal and one gate.
- superproject platform files for Claude, ChatGPT and Gemini, each with its sources and last-checked date, and Gemini notebooks as a destination, with Gem requests designed as notebooks.
- `docs/superproject.md` with superproject's design, and behavior scenarios S1 to S12 in `evals/superproject.md`.

[Unreleased]: https://github.com/ramonk2o/superlab/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/ramonk2o/superlab/releases/tag/v0.1.0
