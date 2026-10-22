# Changelog

All notable changes to superlab and its skills are recorded here. The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and versions follow [Semantic Versioning](https://semver.org/) as described in [CONTRIBUTING.md](CONTRIBUTING.md#versioning).

## [Unreleased]

## [0.1.0] - 2026-10-22

Initial release, with superdeck as the suite's first skill.

### Added
- superdeck, which plans a presentation with the user before any slide is built. An opening gathers the audience, objective, deck type, materials and content. The narrative phase proposes the central idea, triage, arc, hook, memorable moment and close, and a storyline of assertion titles, presses it with a stress test and a cold reader on the titles, and closes with the Script. The visual phase settles a visual concept and global rules, the build option (chosen from what the session can actually do), a low-fidelity prototype and the plan slide by slide, has the plan reviewed by someone outside the conversation, and closes with the Production plan. Then the deck is built, reviewed on the rendered slides and read by a cold reader.
- superdeck express mode, for internal, low-risk or recurring decks: the same opening, one proposal with a prototype and a single gate.
- superdeck deck cases for results analysis, strategy proposals, idea pitches, research presentations, project status, training and campaign concepts, and the Recurring blueprint for periodic decks.
- Checks by someone outside the conversation run through a subagent, or through a ready-made prompt for a new conversation when the session can't start one.
- The superlab Claude Code plugin and marketplace, with superdeck called as `/superlab:superdeck`, and `scripts/package-skills.sh`, which builds one zip per skill for Claude.ai.
- `docs/principles.md` with the suite's principles, `docs/superdeck.md` with superdeck's design, `CONTRIBUTING.md`, and behavior scenarios S1 to S11 in `evals/superdeck.md`.

[Unreleased]: https://github.com/ramonk2o/superlab/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/ramonk2o/superlab/releases/tag/v0.1.0
