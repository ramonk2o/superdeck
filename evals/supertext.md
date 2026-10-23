# supertext behavior scenarios

Scenarios that check whether supertext behaves as designed. Run them as described in [README.md](README.md). All inputs below are synthetic examples, not real data.

## S1 — Long essay from loose notes, full path

**Opening message (Portuguese):**
> Quero escrever um ensaio longo, umas 4 mil palavras, sobre por que o trabalho remoto prejudica quem está começando a carreira. Minhas anotações: "júnior aprende ouvindo conversa dos outros"; "no meu primeiro emprego eu aprendi mais no café do que em treinamento"; "empresas acham que resolvem com mentoria agendada"; "não sou contra remoto, sou contra remoto sem desenho". Vai sair no meu Substack.

**Then:** accept the recommended answers with "ok em tudo", approve the Text plan, and answer "ok" at the end of each block.

**Expected:**
- Replies in Portuguese; recommends the full path, as the first question of a numbered round in which every question carries a recommended answer.
- Identifies an essay; asks for one or two of the user's texts for their own voice, in one line.
- The central idea is proposed as the user's position, sharper, with one alternative labeled as a proposal, in the last interview round; the whole Text plan then comes in one message.
- The Text plan has a triage table, a structure whose points are full sentences, title, first lines and last line, the strongest objection and where it is answered, a style sheet of four to seven traits, and the sample passage shown below the block as prose.
- The anecdote about the café appears only as the user told it; any other anecdote is a labeled proposal.
- Writes in blocks of one to three sections, each ending with "adjust or continue"; offers in one line to build the text in an editable document when the session can create one.
- After the last block, runs the cold reader and the style check, and brings their findings, the proposed fixes and the delivery options in one message.

**Fail if:** it writes any of the essay before the gate, apart from the sample; it presents a position the user didn't take as theirs; it shows the plan one step per message; it writes the 4,000 words in one reply.

## S2 — Short work email with stakes

**Opening message (English):**
> Help me tell the client the launch slips two weeks. The payment partner's certification failed. Client is Ana, head of marketing at the retailer.

**Then:** accept the offer; answer the round with the new date ("March 14") and nothing else, and approve. Then choose to create an email draft.

**Expected:**
- After the offer is accepted, the first reply is the short Text plan (subject line, reader, objective, pending) with the whole email below it as prose, `[new date]` as a placeholder, and at most three questions; it doesn't ask the path or the style.
- The draft follows the bad-news structure: the news and the date in the first lines, the cause in one line, what is being done, what it means for Ana.
- After approval with the date, the next reply brings the final email without asking for approval again, with the cold reader's result (the stakes are high) or, without a subagent, its prompt offered in one line, and the delivery options.
- The draft is created, never sent.

**Fail if:** it runs an opening round before the draft; it asks for approval again after the date is filled in; the email over-apologizes or blames the partner beyond one line; the email is sent; a draft with an open placeholder is created without a warning in the same line.

**Baseline:** run the opening message with the skill off. If that email is as good, reconsider whether short emails belong in the skill.

## S3 — Decision record from meeting notes

**Opening message (English):**
> Write up why we chose Postgres over DynamoDB for the orders service. Notes from Tuesday: "Dynamo cheaper at scale per Marcos' estimate; we need orders + payments in one transaction; team knows Postgres; managed Postgres not in sa-east-1 yet, we'd run our own replication; revisit if write volume > 5k/s".

**Then:** accept the recommended answers and approve the Text plan.

**Expected:**
- Identifies a decision record and asks who decided, its status and where records live, each with a recommended answer.
- The central idea states the decision, the deciding reason (one transaction) and the accepted cost (own replication).
- The objection answered is DynamoDB's best case (cost at scale), put fairly.
- The structure puts the decision in the first lines and keeps Options, Consequences (good and bad) and Revisit when.
- Facts about either product that aren't in the notes (limits, prices, regions) are checked with a source or marked `[TO CONFIRM]`.
- Written whole, not section by section, since it is under about 1,500 words.

**Fail if:** it tells the story of the meeting; consequences list only benefits; it states a product limit or price from memory without a source or marker; it records the decision as made by "we" without asking who decided.

## S4 — Nonfiction book chapter, section by section

**Opening message (Portuguese):**
> Estou escrevendo um livro sobre a história do crédito no Brasil. Preciso do capítulo 3, sobre o crediário nas lojas de departamento dos anos 1960. O capítulo 2 tratou da inflação e o 4 vai falar dos cartões. Anexo minhas notas e as fontes.

**Then:** accept the recommended answers, approve the Text plan, and answer "segue" after each block.

**Expected:**
- Asks what the previous chapter established and what the next one needs, and for the style sheet or a passage of an earlier chapter.
- The central idea states the chapter's claim and its role in the book; the plan names a bridge to chapter 4.
- Writes in blocks of one to three sections; "segue" continues without a gate.
- Facts come from the notes and sources; reconstructed scenes or dialogue with details no source gives are absent or labeled.
- At delivery, offers the style sheet and a three-line summary of the chapter for the next one.

**Fail if:** it asks for approval of each block as a gate; it writes the whole chapter in one reply; it invents a scene, a date or a quote.

## S5 — Short essay in the style of a named author

**Opening message (Portuguese):**
> Escreve um ensaio curto, umas 800 palavras, no estilo do Machado de Assis, sobre a mania de produtividade. Minha ideia: a gente virou contador das próprias horas.

**Then:** send a short passage of Machado when asked; accept the recommended answers and approve the plan.

**Expected:**
- Asks for a passage the user likes, in one line.
- The style sheet states traits as the model's reading of the author ("minha leitura de Machado: …"), marks the uncertain ones, and treats a known device (addressing the reader) as a trait used sparingly.
- The sample passage and the text are new sentences; nothing reuses the sentences, images or structure of the passage the user sent.
- A quote attributed to Machado appears only with a source or marked `[TO CONFIRM]`.
- The style check runs, because the style comes from a named author, and receives the traits without the author's name.

**Fail if:** any sentence is quoted or closely paraphrased from Machado or from the passage sent; signature phrases appear; the author's name, or "my reading of…", is passed to the style check; the text is presented as Machado's.

## S6 — Blog post that needs research outside the material

**Opening message (English):**
> I want a post for our engineering blog arguing that most teams don't need Kubernetes. I don't have numbers, just a strong feeling from three migrations I led.

**Then:** accept the recommended answers and approve the plan.

**Expected:**
- Says in one line what it will research (for example, published surveys on container orchestration adoption, or costs of running a cluster) and does so before the Text plan, if the session can search.
- Findings appear in the plan with their sources and a citation choice.
- Asks about the three migrations — what happened in each — instead of searching for them.
- The central idea is the user's position, with the migrations as proof.

**Fail if:** research replaces the user's experience as the core of the post; a figure appears without a source; it searches for what only the user can know.

## S7 — Research finding that contradicts the user

**Opening message (English):**
> Help me write an essay arguing that four-day work weeks always raise productivity.

**Then:** when a finding contradicts the claim, answer "keep 'always', it's my opinion".

**Expected:**
- Reports, in the round before the plan, findings that support and that complicate "always", with sources, and asks the user to decide.
- Keeps the user's position after the answer, and marks or answers the contradicting evidence in the objection, without dropping it silently.

**Fail if:** the text adopts the finding without the user deciding; the contradicting finding vanishes from the plan without the user agreeing.

## S8 — Own-voice blog post

**Opening message (English):**
> Write a post for my personal blog about what I learned managing my first remote team. Keep it in my voice — here are two of my old posts. [paste two short posts]

**Then:** accept the recommended answers and approve the plan, giving only two concrete events when asked.

**Expected:**
- The style sheet is derived from the two posts and describes what they actually do.
- Asks for concrete events the post can stand on.
- The post uses only the two events given; any other example is a labeled proposal in the plan, adopted or dropped before writing.

**Fail if:** any first-person anecdote, conversation or result appears that the user didn't give; a claim gets a made-up "something the author saw" to support it.

## S9 — Section adjustment that changes the structure

**Opening message:** reuse S1.

**Then:** after the first block, answer "actually, put the objection right at the start".

**Expected:**
- Says that this changes the structure, shows the updated Text plan and asks for approval of the change before writing the next block.
- After approval, continues from the updated plan.

**Fail if:** it continues without updating the plan; it rewrites the plan without asking for approval of the change.

## S10 — Checks without a subagent

**Setup:** a session that can't start subagents.

**Opening message:** reuse S5.

**Expected:**
- After writing, gives both prompts in one message, for one new conversation: the cold reader's first, and the style check's only after the cold reader has answered.
- The cold reader's prompt contains the reader profile and the text, and nothing about the central idea, the objective or the style.
- The style check's prompt contains the traits without the author's name, the sample and the text.
- Asks the user to paste both answers back, then brings the fixes and the delivery options in one message.

**Fail if:** it plays either reader itself; the cold reader's prompt includes the style sheet or the sample; the style check's prompt names the author.

## S11 — Rewrite in another register, light path

**Opening message (English):**
> Turn this internal post-incident note into a version for our customers' status page blog. [paste a 300-word internal note with jargon and blame on a vendor]

**Then:** accept the recommended answers and approve the plan.

**Expected:**
- Treats it as in scope (a move to another register) and recommends the light path.
- The first reply brings the complete Text plan with its sample passage and one round of at most five questions, the path first.
- Flags what can't go to customers (internal names, blame on a vendor) in the round.
- After writing, offers the checks in one line instead of running them.

**Fail if:** it refuses or skips the skill as "polishing"; it runs a separate opening round when the request already settles reader and objective; it keeps internal jargon in the customer version.

## S12 — Called by name

**Opening message (English):**
> Use supertext: I need a short essay for our company newsletter on why we stopped doing quarterly OKRs.

**Expected:**
- Starts the Opening directly, without the offer.
- The first round opens with the path, with a recommendation.

**Fail if:** it offers the skill before starting.

## S13 — User wants to skip planning

**Opening message:** reuse S1.

**Then:** accept the offer, then answer the first round with "just write it, no questions".

**Expected:**
- Explains in one sentence what the plan gains and offers the light path.
- If the user insists, says the decision is theirs and leaves the skill.

**Fail if:** it keeps asking rounds after the user insists; it writes the text while claiming to follow the skill.

## S14 — Offer declined

**Opening message:** reuse S6.

**Then:** decline the offer.

**Expected:**
- Handles the request without question rounds, gates or the Text plan.
- Doesn't offer the skill again in the conversation.

**Fail if:** any part of the skill's flow appears after the decline.

## S15 — Out of scope and neighbors

Run each opening message in its own conversation:
> Write a short story about a lighthouse keeper.

> Fix the typos in this email before I send it. [paste a finished email]

> Write the launch post for our new card; the goal is to get people to sign up this week.

> Make a deck out of this report for the board.

> Write the instructions for my customer-support GPT.

> Reply to Paulo that Thursday works.

**Expected:** for each one, the skill doesn't offer itself, and the request is handled as it would be without it (or by the skill that fits it).

**Fail if:** supertext offers itself for any of them.

## S16 — Central idea falls during writing

**Opening message:** reuse S3.

**Then:** after approving the plan, say "turns out we haven't decided yet; it goes to review next week".

**Expected:**
- Says the foundation changed: the text is now a design doc asking for review, not a record of a decision.
- Reopens the plan (central idea, structure, status) and asks for approval before writing on.

**Fail if:** it keeps writing a record of a decision; it changes the plan without approval.
