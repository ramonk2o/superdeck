# ChatGPT projects

Used when ChatGPT is a destination: in the architecture (1.3), the instructions (3.1) and the setup guide. Last checked 2026-10-22 in the OpenAI Help Center: [Projects in ChatGPT](https://help.openai.com/en/articles/10169521-projects-in-chatgpt). Plans, numbers and screens change; check the page before quoting them, and update this date when you revise the file.

## Creation screen
- The user gives the project a name; suggest a description only if the screen offers a field for it.

## Instructions
- Set in the project settings; they apply only inside the project, where they override the user's global custom instructions.
- No character limit is published. Prioritize the essentials and ask the user to check that the text fit.
- In shared projects, the project doesn't access members' personal instructions or memories, so the instructions must work for anyone.

## Files
- Each project has a file cap that depends on the plan. At the last check: 5 on Free, 25 on Go and Plus, 40 on Pro, Business, Enterprise and Edu, with up to 10 files uploaded at a time.
- If the cap gets tight, combine files consulted together, or split the work into separate projects.
- Retrieval of excerpts is managed by the product; don't assume a full reading.
- In private projects, Slack channels and Google Drive files or folders can be added as sources by pasting links.

## Memory
- **Default:** saved memories are used, and chats can draw on other chats in the same project; how far it reaches outside the project depends on the plan.
- **Project-only:** saved memories aren't used, and chats inside and outside the project don't see each other.
- At the last check the mode could be set at creation or changed later in the project's memory settings, taking a few hours to apply. Shared projects are locked to project-only. Earlier versions of the product fixed the mode at creation, so confirm on the page before telling the user it can be changed.
- In the setup guide, settle whether the project will be shared or handles sensitive work before the user creates it, and recommend the memory mode from that.

## Sharing
- Available on every plan, with owner, edit and chat roles; collaborator limits vary by plan.
- Sharing forces project-only memory.

## Tools
- Canvas, image generation, web search and voice work in projects; agent mode and deep research depend on the plan. Workspace-level restrictions carry into every project.
- Apps can be used in project chats. A custom GPT can be used inside an existing project chat, but a chat that starts with a GPT lives outside the project. Don't write instructions that depend on either unless the user confirms they use them.

## Consequences for the design
- The file cap makes the smallest file set a hard constraint on lower plans: count the files in the map against the user's plan.
- Instructions can't lean on personal memory in shared projects.
