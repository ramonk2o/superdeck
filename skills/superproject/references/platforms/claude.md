# Claude projects

Used when Claude is a destination: in the architecture (1.3), the instructions (3.1) and the setup guide. Last checked 2026-10-22 in the Anthropic Help Center: [Create and manage projects](https://support.claude.com/en/articles/9519177) and [RAG for Projects](https://support.claude.com/en/articles/11473015-retrieval-augmented-generation-rag-for-projects). Plans, numbers and screens change; check these pages before quoting them, and update this date when you revise the file.

## Creation screen
- The user creates the project with a name and a description. On Team and Enterprise plans, the screen can also set whether the project is private or visible to the organization.
- Claude can't see the project's name or description. Nothing the project needs can live only there; suggest both anyway, because they help the user find the project.
- At the last check, free accounts could create up to five projects.

## Instructions
- Set under "Set project instructions" and applied to every chat in the project.
- No character limit is published. Keep them to what changes how the project acts.

## Project knowledge
- Documents, text files and code can be uploaded, and everything uploaded is used across the project's chats.
- While it fits, project knowledge is loaded whole into the context of every chat, so repetition across files is noise and a risk of conflict.
- As it approaches the context limit, paid plans (Pro, Max, Team and Enterprise at the last check) switch to retrieval on their own: Claude searches the files and reads excerpts. The user can't turn this on or off, and it switches back if the knowledge shrinks.
- Anthropic recommends descriptive file names and citing documents by name in requests, because both improve that search. In the setup guide, include one test request that names a file when the knowledge is large.

## Memory
- Memory from chat history is available on paid plans; each project keeps its own memory summary, separate from chats outside projects.
- Moving a chat into or out of the project controls what goes into that summary.
- The project page has a setting that keeps the project's memory connected to general memory or separate from it; its label and place change, so describe what it does and ask the user to check it.
- Context isn't shared across chats in a project except through project knowledge. Treat memory as a complement: rules go in the instructions and the files.

## Sharing
- Team and Enterprise plans, with "can use" (chat) and "can edit" (change instructions and knowledge) permissions. Only the creator removes a member.
- Archiving a project resets its sharing to private.

## Consequences for the design
- Small projects: every file is read every time, so the file map must avoid overlap more than it needs to save space.
- Large projects: name files descriptively and keep each section self-contained, since the model may see only excerpts.
