# superproject behavior scenarios

Scenarios that check whether superproject behaves as designed. Run them as described in [README.md](README.md). All inputs below are synthetic examples, not real data. Unless a scenario says otherwise, run it with supercontext also installed.

## S1 — Brand review project for a team, full path

**Opening message (Portuguese):**
> Quero montar um projeto no Claude para o time de conteúdo revisar os posts da marca antes de publicar. Temos um manual de marca em PDF e uma lista de regras do jurídico. O projeto vai ser compartilhado com quatro pessoas.

**Then:** accept the recommended answers in each round with "ok em tudo", say the PDF is not at hand, and approve the Project plan.

**Expected:**
- Replies in Portuguese, in rounds of numbered questions, each with a recommended answer.
- Recommends the full path (shared project, legal rules) as the first question of the first round.
- Asks for materials in one line and, without the PDF, proposes a hypothesis of recurring requests and files instead of stalling.
- The Project plan has 3 to 5 use cases including one that combines files and one with missing data; a file map with name, role, trigger, type and source or gap for each file; what stays in the instructions (the legal rules, at least as a requirement); name and description; memory and sharing decisions taken from the Claude platform file.
- Writes no instructions or files before the Project plan is approved.
- Hands each file to supercontext, giving one line of progress between files.
- Writes the instructions after the files, citing them by their saved names, in Claude's style (prose with reasons, no all caps).
- Runs the cold reader with the instructions, the files and the use cases, or offers the prompt.
- Delivers `.md` files: instructions, knowledge files and a setup guide with test requests; the name and description also appear in the chat.

**Fail if:** it asks one question per message with no recommended answer; it shows the file map and moves on without asking for approval; a legal rule appears that the user didn't give; the instructions cite a file name that doesn't exist.

## S2 — Small personal project, light path

**Opening message (English):**
> I want a ChatGPT project to help me write my weekly newsletter. I have one doc with my style notes, pasted below. [paste fifteen lines of style notes]

**Then:** approve the plan.

**Expected:**
- Recommends the light path.
- The first reply already brings the complete Project plan (one knowledge file at most, the use cases, what goes in the instructions, name and description), a round of at most five risk questions with the path first, and a request to approve the plan.
- Instructions use ChatGPT's style: headings and "when X, do Y" conditions.
- Offers the cold reader in one line.
- The setup guide mentions the memory choice for a personal project, as taken from the ChatGPT platform file and stated as of its check.

**Fail if:** it runs a separate opening round before the plan; it creates three or more files; it writes before the gate.

## S3 — Porting a project from ChatGPT to Claude

**Opening message (Portuguese):** paste ChatGPT project instructions with Markdown headings, three "QUANDO X, FAÇA Y" rules in all caps and references to `faq.md` and `tabela-precos.md`; then:
> Passa esse projeto do ChatGPT pro Claude.

**Expected:**
- Reads the instructions before asking anything.
- Keeps every business rule, trigger and file name, and lists what changed only because of the platform (prose with reasons instead of headings and all caps).
- Asks whether the files themselves should be revised, without rewriting them by default.
- Reminds that Claude doesn't see the project's name or description, and checks that nothing essential depended on them.

**Fail if:** a rule disappears or changes meaning without being listed; it renames the files; it keeps the all-caps rules in the Claude version.

## S4 — A Gem request becomes a Gemini notebook

**Opening message (Portuguese):**
> Quero criar um Gem no Gemini com o manual de atendimento e o catálogo de produtos, pra minha equipe de suporte usar.

**Expected:**
- Says in one line that Gems are being replaced and proposes a Gemini notebook, citing that this comes from the last check of the Gemini platform file, or checking the official page when it can browse.
- Recommends the full path (shared with a team).
- Asks or notes whether the team's accounts see notebooks (Workspace availability) and recommends how to share the notebook, from the Gemini platform file.
- The Gemini instructions use one structure consistently, put role, constraints and output format first, and say when web search is allowed versus answering only from the sources.
- Suggests a notebook name and no description.

**Fail if:** it designs a Gem without mentioning the transition; the instructions don't address web search versus sources; it states plan limits as current without saying when they were checked.

## S5 — Three destinations

**Setup:** run S1, but in the first round answer that the project must work in Claude, ChatGPT and Gemini.

**Expected:**
- One set of knowledge files and three instruction files, one per destination.
- The three versions share the same triggers and file names; differences are only of form and platform features, and the skill compares them before the review.
- The setup guide has one map, one test table and one short setup section per destination.

**Fail if:** it writes parallel versions of a knowledge file without a real difference in use; a trigger exists in one version and not in the others.

## S6 — supercontext not installed

**Setup:** install superproject alone, then run S1.

**Expected:**
- In the first reply, says in one line that the files will be written with a lighter method and that supercontext adds per-type guidance and a plan per file.
- Still produces the files after the gate; for a file whose content the plan didn't settle, shows an outline and a sample entry and asks for approval first.
- The files follow the essentials: a title and scope paragraph, topical headings, rules with conditions and exceptions together, no "You are…" opening.

**Fail if:** it refuses to produce files or delivers only the architecture; it writes a file with unsettled content without showing its outline.

## S7 — Handover to supercontext

**Setup:** run S1 with supercontext installed, until the first file is handed over.

**Expected:**
- supercontext doesn't offer itself or repeat the opening: it starts from the gaps of that file.
- Between files, one line of progress; no full report per file.
- The consultation sentences supercontext returns are folded into the instructions' consultation map instead of being delivered separately to the user.

**Fail if:** supercontext asks whether to use it; the user is asked again what the project is for; the delivery lists consultation sentences outside the instructions.

## S8 — Cold reader without a separate agent

**Setup:** in a chat that can't start a subagent, run S1 until the instructions are written.

**Expected:**
- Offers a ready-made prompt for a new conversation containing only the instructions, the files' names (to attach) and the use cases as requests, asking which file the reader would consult, its answer and what it had to guess.
- Asks the user to paste the answers back, compares them with what was expected and proposes fixes to the consultation map or the files.
- If the user declines, records "Cold reader: not run" in the setup guide.

**Fail if:** it answers as the cold reader itself; the prompt includes the conversation, the Project plan or which file each request should use.

## S9 — User wants to skip planning

**Opening message:**
> Just write the instructions for a Claude project that answers HR policy questions, no questions please.

**Then:** answer the offer with "no plan, just write it".

**Expected:**
- If the skill starts, the first reply is only the offer: two or three sentences on what the plan gains and what it costs, mentioning the light path, and one question with a recommended answer.
- After the user declines, it writes the instructions as it would without the skill: no question rounds, Project plan or gate.

**Fail if:** it lectures for more than a couple of sentences; it asks other questions in the offer; it applies question rounds or gates after the user declined; it offers the skill again.

## S10 — A platform fact that may be stale

**Opening message (English):**
> I'm setting up a shared ChatGPT project for my team. Can I change the memory mode later if we pick the wrong one?

**Expected:**
- Checks the official page when the session can browse; otherwise answers from the ChatGPT platform file and says the date of that check and that it should be confirmed.
- Mentions that sharing locks the project to project-only memory.
- Continues into the skill's opening only if the user wants the project designed.

**Fail if:** it states the answer as certain with no source or date; it opens a full interview to answer a single setup question.

## S11 — Not a project

**Opening message:**
> Make a glossary of our loyalty-program terms for the GPT. [paste six terms with definitions]

**Expected:**
- superproject doesn't run: this is a single knowledge file, which belongs to supercontext.

**Fail if:** it opens the superproject flow and proposes a file map for a single glossary.

## S12 — Called by name

**Opening message (English):**
> Let's use superproject: a Claude project to help me answer customer emails for my small bakery. No files yet.

**Expected:**
- No offer: the first reply is already the Opening, recommending the light path as the first question of its round.
- Proposes the likely recurring requests and the smallest file set as a hypothesis.

**Fail if:** it asks whether to use the skill; it writes instructions or files before the Project plan is approved.
