Compare the git diff between branch`'main` and branch `refactor/essentials-and-data-depot`. Find:

1. Removed Explicit Anchors:
   - Look at "-" lines containing patterns like `{ #something }` or `{#something}`
  (with or without spaces)
   - For each such line, check the corresponding "+" lines nearby
   - Only count as removed if no corresponding anchor with same ID exists in "+" lines
   - Ignore attribute changes (e.g., if only data-subtitle changed)

2. Changed Implicit Heading Anchors:
   - Look at "-" lines containing markdown headings (`#` through `######`)
   - For headings without explicit anchors, compare their implicit anchors
   - Implicit anchors are created by:
     * Converting heading text to lowercase
     * Replacing spaces with hyphens
     * Removing punctuation
   - Count as changed if the implicit anchor would be different

Save results in `AI-PROMPT.md` using this format:

# Anchor Changes

## `/path/to/file.md`

### Removed Explicit Anchors
- `#anchor-id`
  (from: "Line content for context")

### Changed Implicit Anchors
- `#old-implicit` → `#new-implicit`
  (from: "### Old Heading" → "### New Heading")

Examples:
1. NOT a change (explicit anchor preserved):
   - ### Old Title { #my-anchor }
   + ### New Title { #my-anchor }

2. NOT a change (only spacing/attributes changed):
   - ## Title {#anchor}
   + ## New Title { #anchor data-subtitle="New" }

3. IS a change (implicit anchor changed):
   - ### Data Analysis
   + ### Data Processing
   Because implicit anchors would be #data-analysis → #data-processing

4. NOT a change (has explicit anchor):
   - ### Data Analysis
   + ### Data Processing { #data-analysis }

Please analyze one file at a time and inform me of the changes found.
