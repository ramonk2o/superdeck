# Handoff

Used in Phase 3, after Gate 2. Ask how the user wants to build the deck, showing only the options available in the session, with a recommendation.

## Options

**1. Claude's Slides** (when the session offers this artifact type)
- An editable deck inside Claude, with a link to share; exports to .pptx and PDF.
- Recommend it as the default when there is no mandatory corporate template.

**2. .pptx file** (PowerPoint skill)
- For when a corporate template must be used, the file must be delivered to the client, or it will be edited in PowerPoint.
- If the user has a .pptx template, ask for the file before building.

**3. Google Slides**
- If there is a Google Drive connector with permission to create files, create it there.
- If there isn't, offer a .pptx, which Google Slides opens normally.

**4. Prompt for an external tool** (Gamma, Canva, another slide AI)
- Generate a complete, self-contained prompt from the Production plan: context, audience, global rules and, slide by slide, title, visual, data and text.
- Warn that chart data must be checked afterwards, because external tools often alter it.

**5. Script to assemble by hand**
- Deliver the Production plan formatted as a checklist, slide by slide, ready for the user to follow in the program they prefer.

## Handoff rules
- The Production plan is the specification. Don't rewrite titles, add slides, swap visuals or invent data. If something isn't possible in the chosen tool, ask before adapting.
- Pass everything that was decided on to the build: global rules, identity, the content of each slide and the speaker notes.
- After building, check the result against the plan: every slide present, exact titles, correct data, highlight in the right place. Point out any difference.
- Adjustments requested after the build that change content (not just appearance) must also be recorded in the script and the plan, so they remain the source of truth.
