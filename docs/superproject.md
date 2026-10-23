# superproject design

Why superproject works the way it does. The skill's goal is assistant projects — Claude projects, ChatGPT projects and Gemini notebooks — whose instructions and files make the assistant handle the project's recurring requests correctly, without depending on the conversation where they were designed. It follows the suite principles in [principles.md](principles.md); the principles below apply only to superproject. A change that breaks one of them is a decision about the skill's design, not a wording fix, and needs the maintainer's explicit agreement.

superproject replaces create-project, which lived outside the suite. It keeps that skill's layers, consultation map, problem handling, platform files, setup guide and the rule of always suggesting a project name and description. It drops the one-question-per-message interview and the architecture shown without approval, and adopts the suite's question rounds, a gate, paths and cold reader. It adds Gemini notebooks as a destination and no longer requires another skill to be installed.

## Principles

**1. The project has only its instructions and its files.**
The model never saw the design conversation, can't see the project's name or description, and may or may not have memory. Everything the project needs to work lives in the instructions or the files; memory and personal instructions are a complement, never a dependency.

**2. Instructions are always read; files are consulted.**
The instructions carry the purpose, the requirements indispensable to every task and the consultation map; the files carry the detail. A requirement that must hold in every chat stays in the instructions even when a file explains how to apply it, because a file may be retrieved in part or not at all.

**3. Use cases decide the file map.**
The plan starts from three to five requests the project must serve: a common one, one that combines files, and one with missing data. A file exists only if a use case needs it. The same requests become the cold reader's test and the test requests in the setup guide, so what the project is for, what it holds and how it is checked stay the same thing.

**4. Smallest file set.**
Platforms cap files, small projects load every file every time, and large ones are searched in excerpts. Each of these punishes extra files differently, so the map combines what is consulted together and separates only what has a different trigger, update cycle or owner.

**5. Portable files, platform-specific instructions.**
Knowledge files are Markdown shared by every destination. The instructions are written once per destination, with the same logic, triggers and file names, and only the form and the platform's features change.

**6. Platform facts are dated and checked.**
Limits, plans, memory modes and screens change often; ChatGPT's memory mode, for example, went from fixed at creation to changeable between two checks. These facts live only in `references/platforms/`, each file with its sources and last-checked date, and the skill checks the official page before stating a number when the session can browse. This is a scoped exception to keeping time-sensitive facts out of skills: superproject can't design a setup without them.

**7. supercontext writes the files when it is there.**
Writing a knowledge file well is supercontext's job, with its own File plan gate. superproject hands each file over with what it already knows, and owns the file map and the delivery. When supercontext isn't installed, superproject still produces the files with a lighter method, says so at the start, and asks for approval of a file's outline when the plan didn't settle its content. Each skill stands alone, as principle 1 of the suite requires.

**8. Two paths.**
Full is for shared projects, projects with rules that have consequences, three files or more, or more than one destination. Light is for small personal projects, porting and revising instructions: when the request allows, the first reply is already the Project plan with one round of risk questions and the gate request, and the cold reader is offered in one line.

## What superproject is not

- **Not the project itself.** It designs and writes the project; it doesn't do the project's tasks.
- **Not a knowledge-file writer.** A single file on its own belongs to supercontext.
- **Not a configurator.** It writes the setup guide; it creates or changes a project on a platform only through a connected tool, with the user's agreement, and checks the result before saying so.
- **Not for software projects.** Code repositories and agent configurations have their own conventions.

## Platform sources

Each platform file in `skills/superproject/references/platforms/` lists its sources and the date they were last checked (2026-10-22 for all three). When a source changes, update the file and its date, and review the matching scenarios in `evals/superproject.md`. Gemini changes fastest: at the last check Gems were being retired in favor of Gemini skills, and notebooks were still rolling out.

## Judging a proposal

Use the questions in [principles.md](principles.md#judging-a-proposal). For superproject, a platform detail belongs in that platform's file, a rule for writing instructions belongs in `references/instructions.md`, a rule for writing knowledge files belongs in supercontext (and, only in its essentials, in `references/knowledge-files.md`), and the light path must stay one proposal and one gate.
