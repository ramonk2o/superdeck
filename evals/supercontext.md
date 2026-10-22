# supercontext behavior scenarios

Scenarios that check whether supercontext behaves as designed. Run them as described in [README.md](README.md). All inputs below are synthetic examples, not real data.

## S1 — Guidelines from pasted material, full path

**Opening message (Portuguese):**
> Preciso de um arquivo de diretrizes para o projeto do Claude que escreve os e-mails de CRM do nosso programa de pontos. Colei abaixo trechos do manual da marca e as regras do jurídico.
> Manual: "Nosso tom é próximo e animado. Falamos com você, nunca com o senhor. Evitamos jargão financeiro. Usamos no máximo um emoji por e-mail." / Jurídico: "Toda comunicação com oferta deve trazer o regulamento e a validade. Nunca prometer pontos sem a condição de acúmulo." / Manual, outra página: "Emojis não são usados em comunicações transacionais."

**Then:** accept the recommended answers in each round with "ok em tudo", and approve the File plan.

**Expected:**
- Replies in Portuguese.
- The first reply reads the material: identifies it as guidelines (with voice), translates "próximo e animado" into observable choices or asks for an approved text to do so, and flags that the two emoji rules need a scope (promotional vs transactional emails).
- Recommends the full path, with a reason, as the first question of a numbered round in which every question carries a recommended answer.
- The File plan has 2 or 3 use cases including an exception (for example, a transactional email, or an offer email), a triage table, an outline and a sample rule with condition, exception and reason.
- The triage routes the legal rule (regulation and validity in every offer) to the project instructions as well as the file.
- Writes nothing before the File plan is approved; after writing, runs or offers the cold reader on the use cases.
- Delivers one `.md` file with a descriptive name, plus the consultation sentence and the lines for the instructions outside the file.

**Fail if:** it asks one question per message with no recommended answer; it writes the file before the gate; the file contains rules like "be friendly" with no observable choice; the two emoji rules appear side by side with no scope.

## S2 — Glossary, light path

**Opening message (English):**
> Can you make a glossary for our support GPT? Terms: active member (one transaction in the last 90 days), dormant member (no transaction for 91 to 365 days), churned (over 365 days), redemption, accrual, partner network.

**Then:** approve the path and the File plan.

**Expected:**
- Recommends the light path.
- One message brings the complete File plan with a sample entry and at most five risk questions (for example, what redemption and accrual mean exactly here, and which synonyms customers use).
- Asks for one explicit approval, then writes.
- Entries use the same format, define with how the term is measured, and list synonyms where known.
- Offers the cold reader in one line instead of running a full check.
- Does not invent definitions for redemption, accrual or partner network; anything it proposes is labeled as a proposal or marked unconfirmed.

**Fail if:** it runs the full interview over several rounds; it writes before the gate; a definition appears as fact that the user didn't give or confirm.

## S3 — Slimming an existing file

**Opening message (Portuguese):** paste a long knowledge file (about 150 lines) that mixes a company history, a product price table with no dates, the same tone rule written twice in different words, and a three-step refund procedure; then:
> Esse arquivo tá grande demais pro projeto, enxuga.

**Expected:**
- Reads the file before asking, and brings what works, what a model would misread and what could go.
- Asks for the use cases or proposes them, so the cuts have a criterion.
- Shows the triage (In / Instructions / Out, with reasons) before rewriting, including the duplicated tone rule and the company history.
- Flags the undated prices and asks for their validity or marks them as unconfirmed.
- May suggest splitting the refund procedure into its own file because it is consulted at a different moment.

**Fail if:** it returns a shorter file without first showing what will be cut; it drops a condition, number or exception without saying so; it invents the prices' validity.

## S4 — Company profile with no material

**Opening message (English):**
> Write a description of our company for the Claude project our sales team uses. We're a small agency doing CRM for retail brands.

**Expected:**
- Proposes the profile skeleton adapted to what was said and invites the user to dump what they know.
- Asks the type's diagnosis questions in a round with recommended answers (for example, which tasks need the description, what newcomers get wrong, which facts are stable).
- Does not invent client names, team size, results or years in business; anything assumed is marked unconfirmed.
- Asks for materials in one line (about page, pitch deck, case studies).

**Fail if:** it writes a full profile in the first reply; any fact appears that the user didn't give; the description is adjectives instead of observable facts.

## S5 — User wants to skip planning

**Opening message:**
> Just turn these notes into a knowledge file, no questions. [paste ten lines of loose notes about a returns policy]

**Then:** reply "no plan, just write it".

**Expected:**
- First reply: one sentence on what the plan gains and an offer of the light path.
- After the user insists, says the decision is theirs and stops following the skill's flow.

**Fail if:** it lectures for more than a couple of sentences; it keeps asking for a gate after the user insisted.

## S6 — Cold reader without a separate agent

**Setup:** in a chat that can't start a subagent, run S1 until the file is written.

**Expected:**
- Offers a ready-made prompt for a new conversation containing only the file and the use cases as requests, asking the reader to answer from the file, cite the sections used and say what was missing.
- Asks the user to paste the answers back, compares them with what was expected and proposes fixes.
- If the user declines, records "Cold reader: not run" in the delivery note instead of reviewing the file as if it were an outsider.

**Fail if:** it answers as the cold reader itself; the prompt includes the conversation, the File plan or the expected answers.

## S7 — Conflicting sources

**Setup:** in S1, add a second excerpt that says "Tratamos o cliente por 'senhor' ou 'senhora' em e-mails de cobrança".

**Expected:**
- Raises the conflict with the "você, nunca o senhor" rule in the next round, with a recommended resolution (for example, a scope for billing emails), instead of picking the most recent source.
- The rule in the file carries the agreed scope next to it.

**Fail if:** it silently keeps one rule and drops the other; the file states both rules with no scope.
