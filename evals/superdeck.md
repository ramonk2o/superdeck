# superdeck behavior scenarios

Scenarios that check whether superdeck behaves as designed. Run them as described in [README.md](README.md). All inputs below are synthetic examples, not real data.

## S1 — Results deck with data, full mode

**Opening message (Portuguese):**
> Preciso de um deck para o diretor de marketing sobre a régua de reativação de setembro. Dados: base inativa 120 mil clientes; 9.600 reativados (8%); meta era 6%; push de oferta personalizada teve conversão 3x maior que e-mail genérico; custo da campanha R$ 45 mil. Ele vai decidir se escalamos para toda a base.

**Then:** accept the recommended answers in each round with "ok em tudo".

**Expected:**
- Replies in Portuguese.
- The first reply already reads the data: brings the findings that matter and flags at least one risk (for example, no control group, or reactivation not yet linked to revenue).
- The first reply ends with a numbered round in which the first question is the mode, recommending full mode because a director is deciding, and every question carries a recommended answer; it asks for materials in one line.
- Treats it as a results-analysis deck.
- The central idea (verdict + cause + implication) is proposed when the narrative phase starts, after the opening, not in the first reply.
- Produces no slides, layouts or deck code before the production gate.

**Fail if:** it builds slides in the first replies; it asks open questions with no recommended answers; it states a revenue figure that wasn't given.

## S2 — Internal status deck, express mode

**Opening message (English):**
> Weekly status for my team tomorrow, 10 minutes. Launch is on track for December, but the partner integration slipped two weeks and we need to decide whether to cut the cashback module from the MVP.

**Then:** approve the mode, say there is no material beyond the message, then approve the proposal.

**Expected:**
- Replies in English and recommends express mode.
- The opening asks for materials in one line, as in full mode.
- Once express is confirmed, one message brings the full proposal: central idea, storyline with assertion titles, hook and close (the close is the cashback decision), visual concept and global rules, build option, a low-fidelity prototype of two or three slides, plus one round of at most five risk questions.
- Asks for one explicit approval of the whole proposal (a single gate).
- After approval, builds, reviews the result on the rendered slides and runs the cold reader on the finished deck before delivering.

**Fail if:** it runs the full two-gate flow; no prototype is shown before the gate; the decision is not the first or last thing the deck says.

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

**Setup:** in a chat that can't start a subagent, run a full-mode deck until just before the first gate.

**Expected:**
- Offers a ready-made prompt to run in a new conversation, containing only the audience profile and the slide titles, and asking the four cold-reader questions.
- Asks the user to paste the answers back, then compares them with the objective and the central idea.
- If the user declines, records "Cold reader: not run" in the Script instead of reading the deck itself.
- If the run continues past the build, offers the prompt again for the finished deck, with the fifth question ("what would you remember tomorrow?").

**Fail if:** it answers as the cold reader itself; the prompt includes the objective, the central idea, the conversation, or an audience profile that gives them away.

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

## S9 — Build options for a client deck with a mandatory template

**Opening message:**
> I need a deck for a client's marketing committee next Tuesday on our Q3 loyalty program results. Active members grew from 410k to 455k; redemption rate went from 18% to 23%; the target was 21%. They require their corporate .pptx template, which I'll send.

**Then:** run full mode, accept the recommended answers, and approve Gate 1.

**Expected:**
- Before Gate 2, offers two to four build options, numbered, each with one pro and one con for this deck, plus the two fallbacks (external-tool prompt, build checklist) in one line.
- Every option listed is something the session actually offers; nothing is named that the session doesn't have.
- Recommends an option that can use the client's .pptx template, gives that as the reason, and asks for the template file before building.
- The Production plan records the chosen option and why.

**Fail if:** it lists an option the session doesn't have; the recommendation ignores the mandatory template; the build option is first asked after Gate 2.

## S10 — Stress test

**Setup:** continue S1 until the storyline is proposed and the stress test starts.

**Then:** accept the recommended answers, except in the first stress-test round: disagree with the central idea ("the 8% isn't the story, the 3x conversion of the push is"). In later rounds, accept the recommended answers again.

**Expected:**
- The first stress-test round is about the central idea only; questions about the audience, the cut or the close wait for a later round.
- Every question carries a recommended answer and aims at a weak spot of this data (for example, no control group, or reactivation not yet tied to revenue), not only the bank's generic wording.
- After the disagreement, the central idea is reworked before the branches that depend on it are asked.
- No round holds more than five questions, and the stress test stops once every branch is resolved instead of going through the whole bank.
- It ends by showing what changed in the central idea and the storyline, and resolves each objection: a change to the storyline, an appendix slide, or left out on purpose and said to the user.

**Fail if:** it asks one question at a time with no recommended answer; it asks the bank's questions word for word without tying them to the deck's data; it asks the dependent branches in the same round as the central idea; it invents a figure.

## S11 — Plan review without a separate agent

**Setup:** in a chat that can't start a subagent, continue S9 until every slide of the plan is defined.

**Then:** paste back a review that says slide 3's chart highlights the target instead of the 23% redemption rate, and that slides 4 to 7 are all dense.

**Expected:**
- Before Gate 2, offers a ready-made prompt for a new conversation, containing the audience profile, the format, the plan and, if possible, the prototype, and asking the six review questions.
- Fixes the highlight and the rhythm in the plan and shows what changed; anything that changes a title, a figure or the slide list is asked first and written back into the Script.
- Records the review's result in one line in the Production plan.
- If the user declines the review, checks the six points itself and records "Plan review: not run".

**Fail if:** it reviews the plan as if it were an outsider and presents that as an independent review; the prompt includes the conversation; it changes a title without updating the Script.
