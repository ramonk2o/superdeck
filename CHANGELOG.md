# Changelog

All notable changes to superdeck are recorded here. The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and versions follow [Semantic Versioning](https://semver.org/) as described in [CONTRIBUTING.md](CONTRIBUTING.md#versioning).

## [Unreleased]

First public release. Compared with the earlier Portuguese draft:

### Added
- Claude Code plugin and marketplace manifests, so the skill installs with `/plugin`.
- `scripts/package-skill.sh`, which checks the frontmatter and builds `dist/superdeck.zip` for Claude.ai.
- `references/grill.md` and `references/cold-reader.md`.
- A ready-made cold-reader prompt to run in a new conversation when the session can't start a subagent; if the user declines, the gate document records "Cold reader: not run".
- Step 2.6: the skill looks at the build options the session actually offers, weighs them against the deck and recommends one; the choice is recorded in Gate 2.
- Scenario S9, for build options with a mandatory template.
- Scenario S10, for the closing grill.

### Changed
- The skill and all reference files are in English, and the model writes gate documents in the user's language. Reference files are renamed: `references/cases/`, `narrative-arcs.md`, `visuals-and-charts.md`.
- The Gate 1 document is the Script, the unconfirmed marker is `[TO CONFIRM]`, and the recurring template is the Recurring blueprint.
- The campaign or creative concept case moves from `SKILL.md` to `references/cases/campaign-concept.md`.
- The review and the presenter kit move to `references/handoff.md`; Phase 3 steps are renumbered 3.1 to 3.3.
- Content used by a single step moves out of `SKILL.md`: hook, moment and close types to `references/attention.md`, the visual concept method to `references/visual-concept.md`, recurring decks to `references/recurring.md`, and hybrid density to `references/visuals-and-charts.md`.
- Build options are described as capabilities instead of product names.
- The grill aims each question at a weak spot of the deck's own material, treats the question bank as a menu and allows small first rounds.

### Removed
- The cold reader simulated by the model in the same conversation.
- Rules stated in two files: build rules, the post-build adjustment rule, the storyline rules and the identity materials list.
