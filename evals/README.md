# Behavior scenarios

Each skill has a scenario file here (`superdeck.md` for superdeck) with scenarios that check whether the skill behaves as designed. Run the affected scenarios after every behavior change, and all scenarios of a skill before a MINOR or MAJOR release that touches it.

## How to run

1. Install the version under test (upload the skill's zip in Claude.ai, or load the plugin in Claude Code).
2. Start a **new conversation** for each scenario. Never test in the conversation where the change was written, because that conversation already knows what the skill should do.
3. Send the opening message exactly as written, then play the user as described in "Then".
4. Check each expected behavior and mark it pass or fail. A single "Fail if" item fails the scenario.
5. Record the result in the pull request or release notes: skill, scenario, model, date, pass or fail per item, and a short note for each failure.
6. Run each scenario with the model you use day to day; before a MAJOR release, also run it with a smaller model, since instructions that work for a large model can be too thin for a small one.
7. **Baseline:** when adding a scenario, run its opening message once with the skill turned off. If the result is just as good, the scenario isn't testing anything the skill adds.

