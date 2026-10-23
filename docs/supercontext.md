# supercontext design

Why supercontext works the way it does. The skill's goal is knowledge files that an assistant can apply correctly without the conversation where they were written: playbooks, references, profiles, guidelines, glossaries, example sets, checklists and output templates. It follows the suite principles in [principles.md](principles.md); the principles below apply only to supercontext. A change that breaks one of them is a decision about the skill's design, not a wording fix, and needs the maintainer's explicit agreement.

supercontext replaces create-knowledge, which lived outside the suite. It keeps that skill's writing rules and source handling, and adopts the suite's question rounds, gate, paths and cold reader.

## Principles

**1. The reader has only the file, often in pieces.**
The model that uses the file never saw the interview, and in large projects it reads retrieved excerpts rather than the whole file. Everything about how the file is written follows from this: sections that name their subject, conditions kept next to their rules, one term per concept, no reference to "the above".

**2. Use cases decide what goes in.**
The plan starts from two or three concrete requests the file must serve, including an exception. A block of material goes in only if a use case needs it. The same requests become the cold reader's test and the test requests delivered to the user, so what the file is for, what it holds and how it is checked stay the same thing.

**3. Plan before writing.**
The File plan shows the use cases, the triage of the material, the outline and a sample entry before the file exists. The user sees what goes in and what gets cut — especially when slimming a file — and judges the format on one real item instead of a description.
Implication: no step writes the knowledge file before the gate, except the sample entry.

**4. A file is consulted, not obeyed.**
Files may be retrieved in part or not at all; project instructions are always read. A rule that must apply in every conversation is marked "Instructions + file" in the triage: one line goes to the instructions, and the file keeps how to apply it. Files don't pose as system prompts or claim authority.

**5. Smallest file that serves its uses.**
Every section earns its place through a use case. Common knowledge, background and the interview stay out. Short must not become ambiguous: exact names, numbers, units, conditions, exceptions and negations are always kept.

**6. Portable Markdown by default.**
The same file should work in any assistant. Markdown is read well by models and people, keeps headings that mark sections for search, and survives copy and paste. The destination changes the instructions and the consultation sentence, rarely the file.

**7. One file per type of consultation.**
Each type has its own reference file with what makes it usable, diagnosis questions, a skeleton, rules and pitfalls. Content consulted at different moments, or updated on different cycles, goes in separate files.

**8. Two paths.**
Full is for files that encode rules with consequences, condense long or conflicting material, or serve a team. Light is for glossaries, short checklists, templates, small profiles and revisions of settled content: when the request allows, the first reply is already the File plan with one round of risk questions and the gate request, and the cold reader is offered in one line.

## What supercontext is not

- **Not a summarizer.** A summary serves a person reading once; a knowledge file serves a model applying it many times.
- **Not a project designer.** It produces one file at a time. Designing a project's file map and instructions belongs to superproject, which can hand each file over to supercontext without replacing its gate.
- **Not a template filler.** Type files give a skeleton and pitfalls as a starting point, never a form to complete.

## Format choices and their sources

These choices are what create-knowledge kept in a separate rationale file. They are written here because they serve maintainers; the skill states only the rules.

| Choice in the skill | Reason | Sources |
|---|---|---|
| Markdown headings as the main structure; tags only to delimit literal or mixed content; no JSON for prose | Both vendors recommend Markdown or XML-style delimiters; OpenAI reports JSON performing poorly for documents in long context | OpenAI GPT-4.1 prompting guide; OpenAI prompt engineering guide; Anthropic prompting best practices |
| Sections that name their subject and keep conditions next to rules | Retrieved chunks lose the context around them | Anthropic, Introducing Contextual Retrieval; OpenAI, Knowledge in GPTs (semantic search over chunks) |
| Descriptive file names and topical headings | Both Claude Projects search and the skill-authoring guidance rely on names to pick the right file | Anthropic Help Center, RAG for Projects; Anthropic skill authoring best practices |
| Table of contents for files over about 100 lines | Partial reads still show the whole scope | Anthropic skill authoring best practices |
| Include only what the model doesn't know; minimal high-signal content | Every token competes for attention | Anthropic skill authoring best practices; Anthropic, Effective context engineering for AI agents |
| One term per concept | Mixed synonyms confuse parsing and search | Anthropic skill authoring best practices |
| Positive, observable rules with a short reason; no all caps or "CRITICAL" | Reasons help the model generalize; aggressive emphasis causes overtriggering and rigid application | Anthropic prompting best practices; OpenAI GPT-4.1 prompting guide |
| No contradictory rules; say which wins | Contradictions cost reasoning and produce inconsistent behavior | OpenAI GPT-5 prompting guide |
| Examples as varied input and output pairs, three to five, labeled, with the rule they illustrate also stated | Examples steer format and tone reliably; similar examples get copied; behaviors in examples should also be rules | Anthropic prompting best practices; OpenAI prompt engineering guide; OpenAI GPT-4.1 prompting guide |
| Template strictness stated explicitly | Strict where the form must be exact, a default where judgment is fine | Anthropic skill authoring best practices |
| Current facts in the main text, validity dates, superseded content removed or labeled | Time-sensitive content goes stale silently | Anthropic skill authoring best practices |
| Plain single-column text; PDF and slides discouraged as containers | Multi-column layouts and slide positions are lost when parsed | OpenAI, Knowledge in GPTs |
| Always-apply rules in the instructions, not only in files | Files are searched or reviewed depending on the request, so a rule in a file may not be read | OpenAI, Knowledge in GPTs; Anthropic Help Center, RAG for Projects |
| No token counts without a known tokenizer | Counts vary by model | — |

Sources, last checked 2026-10-22:
- Anthropic, [Prompting best practices](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices)
- Anthropic, [Long context prompting tips](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/long-context-tips)
- Anthropic, [Skill authoring best practices](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/best-practices)
- Anthropic, [Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)
- Anthropic, [Introducing Contextual Retrieval](https://www.anthropic.com/news/contextual-retrieval)
- Anthropic Help Center, [RAG for Projects](https://support.claude.com/en/articles/11473015-retrieval-augmented-generation-rag-for-projects)
- OpenAI, [Prompt engineering guide](https://developers.openai.com/api/docs/guides/prompt-engineering)
- OpenAI, [GPT-4.1 prompting guide](https://developers.openai.com/cookbook/examples/gpt4-1_prompting_guide)
- OpenAI, [GPT-5 prompting guide](https://developers.openai.com/cookbook/examples/gpt-5/gpt-5_prompting_guide)
- OpenAI Help Center, [Knowledge in GPTs](https://help.openai.com/en/articles/8843948-knowledge-in-gpts)

When these sources change, review the table and the matching rules in `skills/supercontext/references/writing.md` and the type files, and update the date.

## Judging a proposal

Use the questions in [principles.md](principles.md#judging-a-proposal). For supercontext, a change that applies to one kind of file belongs in that type's file in `references/types/`, a writing rule for every type belongs in `references/writing.md`, and the light path must stay one proposal and one gate.
