# Breaking Changes Analysis - Part 2

## `/user-guide/docs/curating/policies.md`

### Missing Anchors (Removed Without Replacement)
- `#mission`
  - Was: "#### Mission { #mission }"
  - Breaking: Explicit anchor completely removed with heading content

- `#history`
  - Was: "#### History { #history }"
  - Breaking: Explicit anchor completely removed with heading content

- `#community`
  - Was: "#### Community { #community }"
  - Breaking: Explicit anchor completely removed with heading content

- `#repositoryteam`
  - Was: "#### Repository Team { #repositoryteam }"
  - Breaking: Explicit anchor completely removed with heading content

- `#norms`
  - Was: "#### Community Norms for DDR { #norms }"
  - Breaking: Explicit anchor completely removed with heading content

- `#norms-curators`
  - Was: "##### For users curating and publishing data in DDR: { #norms-curators }"
  - Breaking: Explicit anchor completely removed with heading content

- `#norms-users`
  - Was: "##### For users using data published in DDR: { #norms-users }"
  - Breaking: Explicit anchor completely removed with heading content

- `#types`
  - Was: "#### Data Types { #types }"
  - Breaking: Explicit anchor completely removed with heading content

- `#size`
  - Was: "#### Data Size { #size }"
  - Breaking: Explicit anchor completely removed with heading content

- `#formats`
  - Was: "#### Data Formats { #formats }"
  - Breaking: Explicit anchor completely removed with heading content

- `#management`
  - Was: "#### Data Management Plan { #management }"
  - Breaking: Explicit anchor completely removed with heading content

- `#models`
  - Was: "#### Data Models { #models }"
  - Breaking: Explicit anchor completely removed with heading content

- `#metadata`
  - Was: "#### Metadata { #metadata }"
  - Breaking: Explicit anchor completely removed with heading content

- `#dataquality`
  - Was: "#### Metadata and Data Quality { #dataquality }"
  - Breaking: Explicit anchor completely removed with heading content

- `#assistance`
  - Was: "#### Curation and Publication Assistance { #assistance }"
  - Breaking: Explicit anchor completely removed with heading content

- `#protecteddata`
  - Was: "#### Protected Data { #protecteddata }"
  - Breaking: Explicit anchor completely removed with heading content

- `#publishing`
  - Was: "#### Subsequent Publishing { #publishing }"
  - Breaking: Explicit anchor completely removed with heading content

- `#timely`
  - Was: "#### Timely Data Publication { #timely }"
  - Breaking: Explicit anchor completely removed with heading content

- `#peerreview`
  - Was: "#### Peer Review { #peerreview }"
  - Breaking: Explicit anchor completely removed with heading content

- `#accessiblity`
  - Was: "#### Public Accessibility Delay { #accessiblity }"
  - Breaking: Explicit anchor completely removed with heading content

- `#licenses`
  - Was: "#### Data Licenses { #licenses }"
  - Breaking: Explicit anchor completely removed with heading content

- `#citation`
  - Was: "#### Data Citation { #citation }"
  - Breaking: Explicit anchor completely removed with heading content

- `#agreement`
  - Was: "#### Data Publication Agreement { #agreement }"
  - Breaking: Explicit anchor completely removed with heading content

- `#datausage`
  - Was: "#### Data Usage Agreement { #datausage }"
  - Breaking: Explicit anchor completely removed with heading content

- `#versioncontrol`
  - Was: "#### Amends and Version Control { #versioncontrol }"
  - Breaking: Explicit anchor completely removed with heading content

- `#feedback`
  - Was: "#### Leave Data Feedback { #feedback }"
  - Breaking: Explicit anchor completely removed with heading content

- `#impact`
  - Was: "#### Data Impact { #impact }"
  - Breaking: Explicit anchor completely removed with heading content

- `#continuity`
  - Was: "#### Continuity of Access { #continuity }"
  - Breaking: Explicit anchor completely removed with heading content

### Changed Anchors (Different ID for Same Content)
- `#governance` → `#continuity-of-access`
  - Was: "### Governance"
  - Now: "## Continuity of Access"

- `#data-collections-development` → `#data-embargoes`
  - Was: "### Data Collections Development" 
  - Now: "## Data Embargoes"

- `#data-curation` → `#data-preservation`
  - Was: "### Data Curation"
  - Now: "## Data Preservation"

- `#data-publication-and-usage` → `#dataset-quality`
  - Was: "### Data Publication and Usage"
  - Now: "## Dataset Quality"

- `#data-preservation` → `#data-publication-agreement`
  - Was: "### Data Preservation"
  - Now: "## Data Publication Agreement"

### New Anchors Added
- `#changes-to-policies` (new heading "## Changes to Policies")
- `#data-types` (new heading "## Data Types")
- `#data-usage-agreement` (new heading "## Data Usage Agreement")
- `#dataset-sizes` (new heading "## Dataset Sizes")
- `#dois-and-data-citation` (new heading "## DOIs and Data Citation")
- `#file-formats` (new heading "## File Formats")
- `#metadata` (new heading "## Metadata")
- `#licenses` (new heading "## Licenses")
- `#research-software` (new heading "## Research Software")
- `#metadatareqs` (new heading "## Metadata Schema and Requirements { #metadatareqs }")
- `#personal-data-privacy` (new heading "## Personal Data Privacy")
- `#project-types-data-models` (new heading "## Project Types / Data Models")
- `#protected-data` (new heading "## Protected Data")
- `#publication-granularity` (new heading "## Publication Granularity")
- `#subsequent-publishing` (new heading "## Subsequent Publishing")
- `#timely-data-publication` (new heading "## Timely Data Publication")
- `#tombstone` (new heading "## Tombstone")

## `/user-guide/docs/data-depot/curate-and-publish.md`

### File Status
- **New File**: This is a completely new file, so no anchors are broken, but it creates new implicit anchors:
  - `#what-is-data-curation` (from "# What is Data Curation?")

## `/user-guide/docs/data-depot/resources.md`

### File Status
- **New File**: This is a completely new file, so no anchors are broken, but it creates new implicit anchors:
  - `#resources-for-users` (from "# Resources for Users")
  - `#frequently-asked-questions` (from "## Frequently Asked Questions")
  - `#data-management-plan` (from "## Data Management Plan")
  - `#data-and-intellectual-property` (from "## Data and Intellectual Property")
  - `#support-and-contact-information` (from "## Support and Contact Information")
  - `#designsafe-office-hours` (from "## DesignSafe Office Hours")
  - `#resources-for-protected-data` (from "## Resources for Protected Data")
  - `#exemplary-datasets` (from "## Exemplary Datasets")

## `/user-guide/docs/datadepot.md`

### Changed Content
- **Massive Content Reduction**: The file went from a full description of the Data Depot to just:
```markdown
# Data Depot

{% include-markdown './redirect.md' %}

- **Data Depot** section of the navigation
```

### Missing Anchors (Content Completely Removed)
- `#designsafe-data-depot` → `#data-depot`
  - Was: "# DesignSafe Data Depot"
  - Now: "# Data Depot"
  - The implicit anchor changes from `#designsafe-data-depot` to `#data-depot`

**Impact**: All content describing My Data, HPC Work, My Projects, etc. was removed, so any links referencing specific sections of this content would break.