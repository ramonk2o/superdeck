# superdeck behavior scenarios

Scenarios that check whether superdeck behaves as designed. Run the affected ones after every behavior change and all of them before a MINOR or MAJOR release. All inputs below are synthetic examples, not real data.

## How to run

1. Install the version under test (upload the zip in Claude.ai, or load the plugin in Claude Code).
2. Start a **new conversation** for each scenario. Never test in the conversation where the change was written, because that conversation already knows what the skill should do.
3. Send the opening message exactly as written, then play the user as described in "Then".
4. Check each expected behavior and mark it pass or fail. A single "Fail if" item fails the scenario.
5. Record the result in the pull request or release notes: scenario, model, date, pass or fail per item, and a short note for each failure.
6. Run each scenario with the model you use day to day; before a MAJOR release, also run it with a smaller model, since instructions that work for a large model can be too thin for a small one.
7. **Baseline:** when adding a scenario, run its opening message once with the skill turned off. If the result is just as good, the scenario isn't testing anything the skill adds.

## S1 — Results deck with data, full mode

**Opening message (Portuguese):**
> Preciso de um deck para o diretor de marketing sobre a régua de reativação de setembro. Dados: base inativa 120 mil clientes; 9.600 reativados (8%); meta era 6%; push de oferta personalizada teve conversão 3x maior que e-mail genérico; custo da campanha R$ 45 mil. Ele vai decidir se escalamos para toda a base.

**Then:** accept the recommended answers in each round with "ok em tudo".

**Expected:**
- Replies in Portuguese.
- The first reply already reads the data: proposes a central idea (verdict + cause + implication) and flags at least one risk (for example, no control group, or reactivation not yet linked to revenue).
- The first reply ends with a numbered round in which the first question is the mode, recommending full mode because a director is deciding, and every question carries a recommended answer.
- Treats it as a results-analysis deck.
- Produces no slides, layouts or deck code before the production gate.

**Fail if:** it builds slides in the first replies; it asks open questions with no recommended answers; it states a revenue figure that wasn't given.

## S2 — Internal status deck, express mode

**Opening message (English):**
> Weekly status for my team tomorrow, 10 minutes. Launch is on track for December, but the partner integration slipped two weeks and we need to decide whether to cut the cashback module from the MVP.

**Then:** approve the mode, then approve the proposal.

**Expected:**
- Replies in English and recommends express mode.
- Once express is confirmed, one message brings the full proposal: central idea, storyline with assertion titles, hook and close (the close is the cashback decision), visual concept and global rules, build tool, plus one round of at most five risk questions.
- Asks for one explicit approval of the whole proposal (a single gate).
- After approval, builds and then reviews the result before delivering.

**Fail if:** it runs the full two-gate flow; the decision is not the first or last thing the deck says.

## S3 — User wants to skip planning

**Opening message:**
> Just make me 5 slides about our Q3 results, I don't want a planning process.

**Then:** reply "no, just build it".

**Expected:**
- First reply: one sentence on what closing the content first gains, and an offer of express mode.
- After the user insists, it says the decision is theirs and stops following the skill's flow.

**Fail if:** it lectures for more than a couple of sentences; it keeps applying the gates after the user insisted.

## S4 — No material, pitch

**Opening message (Portuguese):**
> Quero convencer minha diretora a aprovar uma ferramenta de automação de segmentação para o time de CRM. Ainda não tenho nada escrito.

**Expected:**
- Proposes the pitch case's starting point (problem, cost of not acting, idea, proof, ask) adapted to what was said.
- Invites the user to dump loose ideas as they are, and asks what proof exists (pilot, benchmark, internal data).
- Does not invent the tool's cost, time savings or results; anything assumed is marked as unconfirmed.

**Fail if:** any number appears that the user didn't give.

## S5 — Missing source

**Setup:** continue S1 until the storyline is proposed.

**Then:** say "put a slide saying the market for reactivation tools is growing 20% a year".

**Expected:**
- Asks for the source, or adds the slide with the figure marked as unconfirmed and lists it as pending.
- Does not let the item reach the production gate unresolved.

**Fail if:** the figure appears as a fact in the gate document.

## S6 — Cold reader without a separate agent

**Setup:** in a plain Claude.ai chat, run a full-mode deck until just before the first gate.

**Expected:**
- Offers a ready-made prompt to run in another conversation, containing only the audience profile and the slide titles, and asking the four cold-reader questions.
- Asks the user to paste the answers back, then compares them with the objective and the central idea.

**Fail if:** it answers as the cold reader itself without saying so; the prompt includes the objective, the central idea or the conversation.

## S7 — Recurring deck with a blueprint

**Opening message:** paste a recurring blueprint produced by a previous run, then:
> October edition. Opens fell 5%, but revenue per send went up 12% after we cut the base by 30%.

**Expected:**
- Goes straight to express mode and asks only the update questions.
- Proposes a new central idea for this edition (here, likely the trade of volume for relevance) while keeping the blueprint's structure and visual rules.

**Fail if:** it restarts the full narrative phase; the central idea just lists the metrics.

## S8 — Campaign concept

**Opening message (Portuguese):**
> Vou apresentar ao cliente o conceito criativo da campanha de fim de ano de um programa de pontos. Já temos key visual e três peças.

**Expected:**
- Uses the campaign or creative concept case: insight before pieces, the idea revealed as the memorable moment, a measurement plan.
- In the visual phase, proposes a visual concept derived from the campaign's key visual.
- Asks to see the key visual and pieces instead of describing them from imagination.

**Fail if:** the storyline opens by showing pieces before stating the insight and the idea.
