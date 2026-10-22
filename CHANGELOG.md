# Changelog

All notable changes to superlab and its skills are recorded here. The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and versions follow [Semantic Versioning](https://semver.org/) as described in [CONTRIBUTING.md](CONTRIBUTING.md#versioning).

## [Unreleased]

First public release, with superdeck as the suite's first skill. Compared with the earlier Portuguese draft of superdeck:

### Added
- The superlab suite: the repository, the Claude Code plugin and its marketplace are named superlab, so later skills ship in the same plugin. In Claude Code, superdeck is called as `/superlab:superdeck`.
- Claude Code plugin and marketplace manifests, so the suite installs with `/plugin`.
- `scripts/package-skills.sh`, which checks each skill's frontmatter and builds one zip per skill for Claude.ai, such as `dist/superdeck.zip`.
- `docs/principles.md`, with the principles every skill in the suite follows; superdeck's own principles are in `docs/superdeck.md`.
- `references/stress-test.md`, `references/cold-reader.md` and `references/plan-review.md`.
- A ready-made cold-reader prompt to run in a new conversation when the session can't start a subagent; if the user declines, the gate document records "Cold reader: not run".
- Plan review (step 2.5): before Gate 2, a reviewer who wasn't in the conversation checks whether each visual proves its title and the concept holds, through a subagent or a ready-made prompt; it replaces the self-check before the gate.
- Step 2.2: the skill looks at the build options the session actually offers, weighs them against the deck and recommends one; the choice is recorded in Gate 2.
- Scenario S9, for build options with a mandatory template.
- Scenario S10, for the stress test.
- Scenario S11, for the plan review without a separate agent.

### Changed
- The skill and all reference files are in English, and the model writes gate documents in the user's language. Reference files are renamed: `references/cases/`, `narrative-arcs.md`, `visuals-and-charts.md`.
- The Gate 1 document is the Script, the unconfirmed marker is `[TO CONFIRM]`, and the recurring template is the Recurring blueprint.
- The campaign or creative concept case moves from `SKILL.md` to `references/cases/campaign-concept.md`.
- The opening gathers context, deck type, materials and the content, using the case's diagnosis questions, and is the same in both modes; Phase 1 starts at the central idea. Opening steps are numbered 0.1 to 0.5 and Phase 1 steps 1.1 to 1.7.
- The Script no longer repeats the hook, moment and close or lists objections: the storyline carries the marks, and each objection is resolved in the storyline, in the appendix or left out on purpose.
- Phase 2 merges the visual concept, identity and global rules into one visual direction step and chooses the build tool before the prototype; its steps are numbered 2.1 to 2.5.
- Express mode asks for materials like full mode and shows a prototype before the single gate.
- The review moves to `references/handoff.md`; Phase 3 is the build, the review on the rendered slides and the cold reader on the finished deck (3.1 to 3.3).
- The rule for checks by someone outside the conversation is stated once in `SKILL.md` and used by the cold reader and the plan review.
- Content used by a single step moves out of `SKILL.md`: hook, moment and close types to `references/attention.md`, the visual concept method to `references/visual-concept.md`, recurring decks to `references/recurring.md`, and hybrid density to `references/visuals-and-charts.md`.
- Build options are described as capabilities instead of product names.
- The stress test aims each question at a weak spot of the deck's own material, treats the question bank as a menu and allows small first rounds.

### Removed
- The presenter kit (anticipated Q&A, backup slides, short version, talk track) and the short-version marks in the storyline.
- The cold reader simulated by the model in the same conversation.
- Rules stated in two files: build rules, the post-build adjustment rule, the storyline rules and the identity materials list.
