# superprompt design

Why superprompt works the way it does. The skill's goal is prompts that get the right result where the user can't steer them: in another tool, many times over, or running alone for minutes. That covers images, videos, long research tasks, tasks for autonomous agents, templates reused with different inputs, and chains of prompts. It follows the suite principles in [principles.md](principles.md); the principles below apply only to superprompt. A change that breaks one of them is a decision about the skill's design, not a wording fix, and needs the maintainer's explicit agreement.

## Principles

**1. Only prompts that run without the user steering, and whose good result isn't settled.**
A prompt that goes wrong in a chat costs one more message; a prompt that renders a video, runs a long research task or is pasted a hundred times costs much more. The skill takes a request only when both hold: the prompt runs without the user steering it (in another tool, many times, alone for a long time, or in chained steps), and what a good result looks like isn't settled yet, or an existing prompt gives a wrong result. A quick one-off prompt is out of scope and gets no offer, as quick replies do in supertext.

**2. A good result is defined before the prompt.**
The plan starts from the criterion a good result must meet: what it shows or says, for whom, in what format, and what would make it fail. The same criterion is what the test judges, so what the prompt is for and how it is checked stay the same thing, as use cases do in supercontext and superproject.

**3. The target decides the form.**
A reasoning model wants the goal, not the steps; an image model wants a described scene; a video model wants the language of a shot. So the target tool and mode are settled before the prompt is written. In the full path they are the first question of the plan, and the questions that depend on them wait for the next round. In the light path the draft is written for the tool the user named, and the tool is a question of the round when they named none.

**4. Planned, not long.**
Current guidance from both Anthropic and OpenAI favors lean prompts that lead with the outcome and state each instruction once; repeated or conflicting instructions make results worse. The skill spends its effort on the plan so the prompt can be short. A long prompt needs a reason in the plan, such as a template's examples or a shot list.

**5. The common core is in the skill; the target's current guidance is researched every time.**
The case files hold what the main tools of a kind agree on, which changes slowly. What a specific tool wants changes fast and diverges even within one vendor: Google's own Veo pages, a year apart, format dialogue and exclusions differently, and image tools disagree on whether to list exclusions or describe only what should appear. So:
- For images and videos, the skill always looks up the target tool's official prompting guide and current tips before writing the prompt, in every path, and says what it found and its date. This is a deliberate cost in the light path, which principle 8 of the suite asks to keep cheap: a prompt built on last year's syntax fails on a render the user pays for.
- For the other cases, it looks up only the volatile facts the prompt depends on: limits, parameters, modes and the features of the tool that will run it.
- Without browsing, it says so, writes the prompt from the common core, and marks every tool-specific detail `[TO CONFIRM]`.
- No model, tool version, parameter or price is written into the skill's files.

This is a third research policy in the suite, next to supercontext's (only with the user's agreement) and supertext's (evidence for the argument, on the skill's own judgment).

**6. Model recommendation is honest about its sources.**
The skill recommends a tool or mode in the full path, when the user asks, or when a requirement in the plan meets a known limit of the tool they chose. It asks first what the user has or pays for and recommends among those, naming another only when the gain is clear. It states the criterion before the options, shows two or three with the recommended one, why, access and cost, sources and date, and separates what official documentation says (what a tool does) from independent comparisons (which is better), which are marked as such; affiliate pages and "best of" lists are never sources. It considers the mode inside a tool, not only the tool. It says when the recommended option comes from the same vendor as the model running the skill. A price is never given without a source and a date.

**7. Nothing invented, in the prompt too.**
A fact about the user's situation that the prompt needs and the user didn't give becomes a visible `[placeholder]`, never a plausible guess. A tool parameter is never made up. In a research prompt, every detail the user gave is kept and a dimension they didn't settle is marked as open, which is also what OpenAI's deep research guidance asks.

**8. Traits, not works.**
A prompt in the style of an artist or a film describes observable traits (palette, light, composition, technique, framing), never a reproduction of a specific work. Real people follow the target tool's rules, which the skill looks up.

**9. Tested by its result, by someone who wasn't here.**
Suite principle 7 applies with a twist: a prompt is judged by what it produces, so the main check runs it.
- A **cold executor**, a subagent with only the prompt and the input, runs prompts meant for text models; a separate **judge**, with only the result and the criterion from the plan, says whether it meets it. They are separate for the same reason supertext keeps the cold reader and the style check apart.
- A task for an autonomous agent is only **simulated**: the executor describes what it would do and where it would stop, and never acts, because a test must not send, buy or delete anything.
- A reusable prompt runs on two or three of the user's real inputs, including an edge case; synthetic inputs are marked as such.
- In a chain, the result of one step goes cold into the next.
- Images and videos can't be generated here: a cold reader reads the prompt and says what it pictures, and the user brings the generated result back for an adjustment round, at most three, as supertext caps its rounds.
- The delivery says that a subagent doesn't reproduce the target model, so the real run is the final test.

**10. A chain is approved as a map before its prompts.**
For a chain of prompts, the gate approves what each step produces and hands to the next, before any prompt is written. If a real result from one step changes what the next needs, the map reopens, as suite principle 6 requires.

**11. Two paths.**
Full is for chains, reusable or shared templates, agent tasks and deep research. Light is for a single image or video prompt: the first reply brings the complete draft, built on the target's current guidance, with at most three questions; approving it delivers the prompt, and the test is offered in one line. Diagnosing a prompt that gives a wrong result takes the path its case would take.

## What superprompt is not

- **Not a quick prompt writer or a polisher.** A one-off prompt whose result is settled, or rewording a prompt that already works, doesn't need a plan. Diagnosing a prompt that gives a wrong result is in scope.
- **Not the task itself.** It writes the research prompt, not the research; the agent's task, not the task.
- **Not a tutor, a simulation or a role-play.**
- **Not audio.** Music, voice and sound effects are out of scope for now; song lyrics are fiction, which the suite doesn't cover.
- **Not project instructions.** Standing instructions with files consulted over many chats, in a project, GPT or Gem, belong to superproject; a template pasted at each use belongs here.
- **Not a deck, a knowledge file or a text.** Presentations and prompts for slide tools belong to superdeck, knowledge files to supercontext, essays and emails to supertext.
- **Not software.** System prompts for apps and APIs, and prompts for writing code, have their own conventions.

## Practices and their sources

These are the practices the case files build on. They are written here because they serve maintainers; the skill states only the rules. Tool-specific details that differ between vendors are not in this table: the skill looks them up at each use.

| Practice in the skill | Reason | Sources |
|---|---|---|
| Lead with the outcome: goal, context, constraints, required evidence, success criteria, format; steps only when the process matters | Current models plan their own path; scripted steps and repeated instructions cost quality and tokens | OpenAI, Using GPT-6 and GPT-5.6; OpenAI, Reasoning best practices |
| Each instruction once; no contradictions | Conflicts make the model spend reasoning reconciling them | OpenAI, GPT-5 prompting guide; OpenAI, Using GPT-6 and GPT-5.6 |
| No "think step by step" for reasoning models; zero-shot first, examples only if needed | These models reason internally; examples can over-constrain | OpenAI, Reasoning best practices |
| Say why a rule exists; phrase it as what to do | Models generalize from reasons; positive instructions steer better | Anthropic, Prompting best practices |
| Examples three to five, relevant and varied, delimited | Examples steer format reliably; similar ones get copied | Anthropic, Prompting best practices |
| Images: subject, action, setting, composition, light, color, mood, medium, intended use | The elements every major image tool's guide covers | OpenAI, GPT Image prompting guide; Google Cloud, Nano Banana guide; Google Cloud, Gemini image best practices; Midjourney, Prompt Basics |
| Images: text to render in quotes, with font, size, color and placement | Image models render quoted text more faithfully | OpenAI, GPT Image prompting guide; Google Cloud, Nano Banana guide |
| Images and videos: a fixed character anchor and reference images reused across a series | Consistency drifts unless the same description and references come back each time | OpenAI, GPT Image prompting guide; OpenAI, Sora 2 prompting guide; Google Cloud, Veo 3.1 guide |
| Iterate with one change at a time, saying what changes and what stays; repeat constraints | Several changes at once make it impossible to tell what worked | OpenAI, GPT Image prompting guide; OpenAI, Sora 2 prompting guide; Google Cloud, Gemini image best practices |
| Videos: framing, camera movement, lens and focus, lighting, ambiance, pacing | The elements every major video tool's guide covers | Google Cloud, Veo prompt guide; Google Cloud, Veo 3.1 guide; OpenAI, Sora 2 prompting guide; Google DeepMind, Gemini Omni prompt guide |
| Videos: one camera move and one action per shot; short clips; simplify a failing shot | Short, simple shots follow instructions more reliably | OpenAI, Sora 2 prompting guide |
| Videos from an input image: describe the motion, not what the image shows | The image already carries subject, composition and style | Runway, Gen-4 image to video |
| Duration, size and model are tool settings, not prose | Prose can't change them | OpenAI, Sora 2 prompting guide |
| Deep research: goal not steps; scope, dimensions and depth; sources to prefer; report format with citations; response language | A long run can't be steered midway | OpenAI, Deep research guide; OpenAI Forum, Deep research tips |
| Deep research: keep every user detail, mark unsettled dimensions as open, invent no preferences | Invented preferences send the whole run in the wrong direction | OpenAI, Deep research guide |
| Agent tasks: done criteria and stop conditions; name safe actions once; confirmation before irreversible or visible actions; stricter thresholds for paying or deleting than for searching | Without limits an agent may take hard-to-reverse actions; repeated "ask first" stalls safe ones | Anthropic, Prompting best practices for current models; OpenAI, GPT-5 prompting guide; OpenAI, Using GPT-6 and GPT-5.6 |
| Reusable prompts: fixed part constant, variables in marked slots with consistent names, explicit output format | Mixed instructions and inputs get misread | Anthropic, Prompting best practices |
| Tests: specific, verifiable criteria; inputs that mirror real use plus edge cases; a judge different from the producer | A test on easy inputs proves nothing; a producer grading itself is lenient | Anthropic, Define success criteria and build evaluations |

Sources, last checked 2026-10-23:
- Anthropic, [Prompting best practices](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices)
- Anthropic, [Prompting best practices for current models](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-4-best-practices)
- Anthropic, [Define success criteria and build evaluations](https://platform.claude.com/docs/en/test-and-evaluate/develop-tests)
- OpenAI, [Using GPT-6 and GPT-5.6](https://developers.openai.com/api/docs/guides/prompt-guidance-gpt-5p6)
- OpenAI, [GPT-5 prompting guide](https://developers.openai.com/cookbook/examples/gpt-5/gpt-5_prompting_guide) (marked archived)
- OpenAI, [Reasoning best practices](https://developers.openai.com/api/docs/guides/reasoning-best-practices)
- OpenAI, [GPT Image prompting guide](https://developers.openai.com/cookbook/examples/multimodal/image-gen-models-prompting-guide) (marked archived)
- OpenAI, [Sora 2 prompting guide](https://developers.openai.com/cookbook/examples/sora/sora2_prompting_guide) (marked archived)
- OpenAI, [Deep research](https://developers.openai.com/api/docs/guides/deep-research)
- OpenAI Forum, [Three tips for deep research](https://forum.openai.com/public/blogs/exploring-deep-research-three-tips-for-better-ai-assisted-inquiry-2025-04-28)
- Google Cloud, [Gemini image generation best practices](https://docs.cloud.google.com/vertex-ai/generative-ai/docs/multimodal/gemini-image-generation-best-practices) (updated 2026-10-22)
- Google Cloud, [Ultimate prompting guide for Nano Banana](https://cloud.google.com/blog/products/ai-machine-learning/ultimate-prompting-guide-for-nano-banana)
- Google Cloud, [Video generation prompt guide](https://docs.cloud.google.com/vertex-ai/generative-ai/docs/video/video-gen-prompt-guide) (Veo and Gemini Omni, updated 2026-10-22)
- Google Cloud, [Ultimate prompting guide for Veo 3.1](https://cloud.google.com/blog/products/ai-machine-learning/ultimate-prompting-guide-for-veo-3-1)
- Google DeepMind, [Gemini Omni prompt guide](https://deepmind.google/models/gemini-omni/prompt-guide/)
- Midjourney, [Prompt Basics](https://docs.midjourney.com/docs/prompts)
- Runway, [Gen-4 image to video](https://help.runwayml.com/hc/en-us/articles/37327109429011)

When these sources change, review the table and the matching case files in `skills/superprompt/references/cases/`, and update the date. The skill doesn't read this list: at each use it looks up the target's current guidance itself.

## Judging a proposal

Use the questions in [principles.md](principles.md#judging-a-proposal). For superprompt, a change that applies to one kind of prompt belongs in its case file in `references/cases/`; a detail true of only one tool belongs in no file, since the skill looks it up at each use; a rule for recommending a tool belongs in `references/model-choice.md`; and the light path must stay one draft and one approval.
