# Breaking Changes Summary

⚠️ **CRITICAL: This refactor introduces extensive breaking changes to documentation anchors**

## Impact Assessment

**Severity: HIGH** - This refactor will break ~70+ existing anchor links across 7 files, significantly impacting external links and internal navigation.

## Files with Breaking Changes

### 🔴 Critical Impact (Complete Restructuring)

#### `/user-guide/docs/curating/bestpractices.md`
- **32 explicit anchors removed** completely
- **3 major sections deleted** entirely  
- Transformed from comprehensive multi-section guide to focused document
- **Impact**: All external links to specific sections will break

#### `/user-guide/docs/curating/policies.md`
- **26 explicit anchors removed** completely
- **5 major section anchors changed** to different topics
- Complete reorganization of policy structure
- **Impact**: Most existing policy links will break

### 🟡 Moderate Impact

#### `/user-guide/docs/curating/metrics.md`
- 3 anchors changed/removed:
  - `#data` → `#data-usage-metrics`
  - `#project` → removed
  - `#publication` → removed

#### `/user-guide/docs/managingdata/datadepot.md`
- Major content reduction (full description → redirect only)
- `#designsafe-data-depot` → `#data-depot`

#### `/user-guide/docs/datadepotrepo/about.md`
- `#community-of-practice` → removed
- `#repository-team` → `#team`

### 🟠 Minor Impact

#### `/user-guide/docs/curating/guides.md`
- 1 HTML anchor removed: `<a name="step4d">`

#### Navigation Structure Changes
- 5 files with main heading changes affecting implicit anchors
- Multiple files restructured from `##` to `#` level headings

## Files with No Breaking Changes ✅

- `/user-guide/docs/curating/faq.md` - All anchors preserved despite content restructuring

## New Files Created 📁

- `/user-guide/docs/data-depot/curate-and-publish.md`
- `/user-guide/docs/data-depot/resources.md`

## Recommendations

1. **Implement redirect strategy** for broken anchor links before deployment
2. **Update internal cross-references** throughout documentation
3. **Audit external documentation** that may reference these anchors
4. **Consider phased rollout** to minimize disruption

## Risk Mitigation

The `bestpractices.md` and `policies.md` files appear to be heavily referenced core documentation (evidenced by their detailed anchor structure). Consider:

- Creating redirect mappings for the most critical anchors
- Updating any official documentation that links to these sections
- Communicating changes to teams that may have bookmarked specific sections

---
**Total Breaking Changes: ~70+ anchors across 7 files**