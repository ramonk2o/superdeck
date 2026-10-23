# Gemini notebooks

Used when Gemini is a destination: in the architecture (1.3), the instructions (3.1) and the setup guide. Last checked 2026-10-22 in Google's help centers: [Organize your projects with notebooks in Gemini Apps](https://support.google.com/gemini/answer/16972047), [Notebooks in Gemini Apps](https://support.google.com/gemininotebook/answer/17003757), [Gemini Notebook plans](https://support.google.com/gemininotebook/answer/16213268), [Add sources to your notebook](https://support.google.com/notebooklm/answer/16215270), [Gemini Notebook FAQ](https://support.google.com/notebooklm/answer/16269187), [About the transition from Gems to skills](https://support.google.com/gemini/answer/18560919), and Google's [prompt design strategies](https://ai.google.dev/gemini-api/docs/prompting-strategies). This area of the product changes fast; check these pages before quoting them, and update this date when you revise the file.

## What the destination is
- A notebook groups chats, custom instructions and sources about one subject. It is created from the Gemini side panel ("New notebook") and is the same notebook in the Gemini Notebook app (the app earlier called NotebookLM): sources, instructions and renames made in one app sync to the other.
- **Gems:** at the last check, Google was retiring Gems and converting them into Gemini skills (personal accounts in November 2026, Workspace business accounts in March 2027, education accounts in June 2027). Design a new project as a notebook. When the user asks for a Gem, say this in one line and propose a notebook; when they are porting a Gem, read its instructions and files as an existing project. Gemini skills are reusable instructions invoked in any chat, not projects, and are outside this skill.

## Creation screen
- The user gives the notebook a name (and an emoji) and can start with a prompt. At the last check there was no description field, so suggest a name only.
- Whether the model sees the notebook's name isn't documented; don't rely on it.

## Instructions
- Custom instructions are set in the notebook's settings and are one set for both apps.
- No character limit is published.
- Grounding differs by app: in Gemini, answers use the notebook's sources and may also use web search and other tools; in Gemini Notebook, chat answers use only the sources. Say in the instructions when the web is allowed and when only the sources count, so both apps behave as intended.

## Sources
- Sources can be files from the device (PDF, documents, spreadsheets, images, audio, text and Markdown), Google Drive files, websites and pasted text. A notebook can't use another notebook as a source.
- Limits per notebook depend on the Google AI plan. At the last check: 50 sources on the standard plan, 100 on Plus, 300 on Pro, and 500 or 600 on Ultra; each source up to 500,000 words or 200 MB.
- Sources from Google Drive sync automatically, so knowledge files kept as Google Docs stay current when edited. Comments and footnotes in Google files aren't imported.
- With many sources, the notebook retrieves the most relevant parts for each question, so descriptive names and self-contained sections matter here as on the other platforms.

## Memory and activity
- Notebook memory (using past notebook chats), auto-saved chats, adding existing chats and adding Drive files all require the user's Keep Activity setting to be on. Without it, the notebook still answers from its sources and instructions.

## Sharing
- Notebooks can be shared from Gemini Notebook. At the last check, shared notebooks weren't listed in Gemini, and a notebook containing Gemini chats couldn't be shared. If the project will be shared, recommend creating and sharing it in Gemini Notebook and settling this before the team starts chatting.

## Availability
- Rolled out gradually from April 2026: first on the web for paid Google AI plans, then mobile and free users. Not available to users under 18. Availability for Workspace and education accounts depended on the account and the admin at the last check; ask the user to confirm they see notebooks before designing for them.

## Writing instructions for Gemini
- Google recommends direct, concise instructions without persuasive or emphatic language, ambiguous terms defined, and one structure used consistently: Markdown headings or XML-style tags, not both.
- Put the role, the constraints and the output format first.
- Gemini models tend toward short, direct answers; if the project needs a conversational or detailed style, say so explicitly.

## Consequences for the design
- Knowledge files can live in Google Drive as Google Docs when the team edits them often; otherwise Markdown files work as in the other platforms.
- State the web-versus-sources rule in the instructions; it is the main behavior that differs between the two apps.
