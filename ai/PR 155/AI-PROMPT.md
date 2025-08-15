# Finding Breaking Changes to Document Anchors

Find anchor/heading changes between branch `refactor/essentials-and-data-depot` and `main` that could break URLs. Follow these steps:

1. From `AI-DIFF.diff`, identify changed files by looking at:
   ```diff
   diff --git a/path/to/file b/path/to/file
   ```
   lines at the start of each file's changes

2. For each file, check these changes:

   a. Explicit Anchors Gone:
      - Markdown: `{ #something }` or `{#something}` removed/changed
      - HTML: `id="something"` or `name="something"` removed/changed 
      - Reference-style: `[something]: #anchor` removed/changed
   
   b. Implicit Anchors Lost/Changed:
      - Find removed or modified headings (`#` through `######`)
      - A heading that is removed completely = lost implicit anchor
      - For modified headings, remember heading IDs are:
        * Text in lowercase
        * Spaces as single hyphens
        * No punctuation (except `-` `_`)
        * No duplicate hyphens
        * Duplicates get `-1`, `-2`, etc.
      
   c. File Moves:
      - Renamed/moved = all anchors affected
      - Deleted = all anchors gone

Optional Step 3 - Impact Analysis:
- Once you have list of lost/changed anchors and moved files
- You can search other `.md` files for references:
  * `[text](#old-anchor)`
  * `[text](path/to/file#old-anchor)` 
  * `[text](path/to/old/file.md)`
  * `<a href="#old-anchor">`
  * `{% include ... #old-anchor %}`
  * HTML `id="old-anchor"` or `name="old-anchor"`
  * `{ref="path#old-anchor"}`

4. Save results to `AI-OUTPUT.md` using this format:

# Breaking Changes

## `/path/to/file.md`

### Missing Anchors (Removed Without Replacement)
- `#anchor-id`
  - Was: "Original line showing anchor in context"
  - Referenced by:
    * `/docs/file1.md`: `[link](#anchor-id)`
    * `/docs/file2.md`: `[link](path/to/file.md#anchor-id)`

### Changed Anchors (Different ID for Same Content)
- `#old-heading` → `#new-heading`
  - Was: "### Old Heading"
  - Now: "### New Heading" 
  - Referenced by:
    * `/docs/file3.md`: `[link](#old-heading)`

### Moved Content (File Renamed/Moved/Deleted)
- `/old/path.md` → `/new/path.md`
  - Referenced by:
    * `/docs/file4.md`: `[link](/old/path.md)`

## Examples

1. Breaking - Explicit anchor removed:
   ```diff
   - ## Data Types { #types }
   + ## Data Types
   ```

2. Breaking - Implicit anchor changed:
   ```diff
   - ## Data Analysis
   + ## Data Processing
   ```
   (`#data-analysis` → `#data-processing`)

3. Not Breaking - Explicit preserves old implicit:
   ```diff
   - ## Data Analysis
   + ## Data Processing { #data-analysis }
   ```

4. Not Breaking - Only attributes changed:
   ```diff
   - ## Title { #id }
   + ## New Title { #id data-subtitle="New" }
   ```

5. Breaking - Heading removed entirely:
   ```diff
   - ### Data Collections Development
   ```
   (`#data-collections-development` anchor is lost)
