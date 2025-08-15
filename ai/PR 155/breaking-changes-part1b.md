# Breaking Changes Analysis - Part 1b

## `/user-guide/docs/curating/faq.md`

### Changed Anchors (Different ID for Same Content)
- `#selecting` → `#selecting` (No change - preserved)
- `#organizing` → `#organizing` (No change - preserved)  
- `#publishing` → `#publishing` (No change - preserved)
- `#datareuse` → `#datareuse` (No change - preserved)

**Analysis**: All major section anchors remain unchanged. The file was restructured from Q&A format to collapsible details format, but the main section headings and their explicit anchors `{ #selecting }`, `{ #organizing }`, `{ #publishing }`, and `{ #datareuse }` were preserved.

**No Breaking Changes Detected** - All existing anchor references will continue to work.

## `/user-guide/docs/curating/guides.md`

### Changed Anchors (Different ID for Same Content)
- `#experimental-step1` → `#experimental-step1` (No change - preserved)
- `#step2` → `#step2` (No change - preserved)
- `#step3` → `#step3` (No change - preserved)
- `#step4` → `#step4` (No change - preserved)
- `#step5` → `#step5` (No change - preserved)
- `#step6` → `#step6` (No change - preserved)
- `#step7` → `#step7` (No change - preserved)
- `#step8` → `#step8` (No change - preserved)
- `#simulation` → `#simulation` (No change - preserved)
- `#simulation-step1` → `#simulation-step1` (No change - preserved)
- `#simulation-step2` → `#simulation-step2` (No change - preserved)
- `#simulation-step3` → `#simulation-step3` (No change - preserved)
- `#simulation-step4` → `#simulation-step4` (No change - preserved)
- `#simulation-step5` → `#simulation-step5` (No change - preserved)
- `#simulation-step6` → `#simulation-step6` (No change - preserved)
- `#simulation-step7` → `#simulation-step7` (No change - preserved)
- `#simulation-step8` → `#simulation-step8` (No change - preserved)
- `#hybrid` → `#hybrid` (No change - preserved)
- `#fieldresearch` → `#fieldresearch` (No change - preserved)
- `#fieldresearch-step1` → `#fieldresearch-step1` (No change - preserved)
- `#fieldresearch-step2` → `#fieldresearch-step2` (No change - preserved)
- `#fieldresearch-step3` → `#fieldresearch-step3` (No change - preserved)
- `#fieldresearch-step4` → `#fieldresearch-step4` (No change - preserved)
- `#fieldresearch-step5` → `#fieldresearch-step5` (No change - preserved)
- `#fieldresearch-step6` → `#fieldresearch-step6` (No change - preserved)
- `#fieldresearch-step7` → `#fieldresearch-step7` (No change - preserved)
- `#fieldresearch-step8` → `#fieldresearch-step8` (No change - preserved)
- `#other-step1` → `#other-step1` (No change - preserved)
- `#other-step2` → `#other-step2` (No change - preserved)
- `#other-step3` → `#other-step3` (No change - preserved)
- `#other-step4` → `#other-step4` (No change - preserved)

### Missing Anchors (Removed Without Replacement)
- `<a name="step4d"> </a>` - This HTML anchor was completely removed from the fieldresearch section

**Analysis**: Most anchors were preserved, but one HTML anchor (`<a name="step4d"> </a>`) was removed without replacement. This could break any direct links to `#step4d`.

## `/user-guide/docs/curating/metrics.md`

### Changed Anchors (Different ID for Same Content)
- `#data` → `#data-usage-metrics` 
  - Was: "### Data Metrics { #data }"
  - Now: "## Data Usage Metrics" (implicit anchor from heading)
- `#project` → Missing (heading completely removed)
  - Was: "### Project Metrics { #project }"
  - Now: Heading removed entirely
- `#publication` → Missing (heading completely removed)  
  - Was: "### Data Publication Metrics { #publication }"
  - Now: Heading removed entirely

### New Anchors Added
- `#unique-requests` - New explicit anchor on "Unique Requests" definition
- `#unique-investigations` - New explicit anchor on "Unique Investigations" definition

**Breaking Changes Summary:**
1. `#data` anchor changed to `#data-usage-metrics` 
2. `#project` anchor completely removed (section deleted)
3. `#publication` anchor completely removed (section deleted)

# Summary

**Files with Breaking Changes:**
- `/user-guide/docs/curating/guides.md` - 1 HTML anchor removed
- `/user-guide/docs/curating/metrics.md` - 3 anchor changes/removals

**Files with No Breaking Changes:**  
- `/user-guide/docs/curating/faq.md` - All anchors preserved despite content restructuring

**Total Breaking Changes: 4**
- 1 HTML anchor removal
- 3 heading anchor changes/removals in metrics.md