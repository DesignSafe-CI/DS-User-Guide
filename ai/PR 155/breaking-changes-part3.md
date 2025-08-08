# Breaking Changes - Part 3

## `/user-guide/docs/datadepotrepo/about.md`

### Changed Anchors (Different ID for Same Content)
- `#community-of-practice` → *removed entirely*
  - Was: "## Community of Practice"
  - Now: *section completely removed*
  - This implicit anchor is now lost

### Missing Anchors (Removed Without Replacement)
- `#repository-team`
  - Was: "## Repository Team"
  - Now: "## Team"
  - Implicit anchor changed from `#repository-team` to `#team`

## `/user-guide/docs/managingdata/datadepot.md`

### Missing Anchors (Removed Without Replacement)
- `#browsing`
  - Was: "### Browsing, Upload, and Download { #browsing }"
  - Now: *entire content removed, replaced with redirect*

- `#sharing`
  - Was: "### Data Sharing, Collaboration, Curation & Publication { #sharing }"
  - Now: *entire content removed, replaced with redirect*

### Changed Anchors (Different ID for Same Content)
- `#designsafe-managing-data` → `#managing-your-data`
  - Was: "## DesignSafe Managing Data"
  - Now: "# Managing Your Data"
  - Implicit anchor changed from `#designsafe-managing-data` to `#managing-your-data`

## `/user-guide/docs/managingdata/datatransfer.md`

### Changed Anchors (Different ID for Same Content)
- `#data-transfer` → `#transferring-your-data`
  - Was: "## Data Transfer"
  - Now: "# Transferring Your Data"
  - Implicit anchor changed from `#data-transfer` to `#transferring-your-data`

- `#recommended-largedatatransfer` → `#recommended-largedatatransfer`
  - Was: "#### Recommended Large Data Transfer Methods { #recommended-largedatatransfer }"
  - Now: "### for Large Datasets { #recommended-largedatatransfer }"
  - Explicit anchor preserved, so this is NOT breaking

- `#recommended-normaldatatransfer` → `#recommended-normaldatatransfer`
  - Was: "#### Recommended Normal Data Transfer Methods { #recommended-normaldatatransfer }"
  - Now: "### for Normal Datasets { #recommended-normaldatatransfer }"
  - Explicit anchor preserved, so this is NOT breaking

- `#globus-data-transfer-guide` → `#globus`
  - Was: "### Globus Data Transfer Guide { #globus }"
  - Now: "## Globus { #globus data-subtitle="Data Transfer Guide" }"
  - Explicit anchor preserved, so this is NOT breaking

- `#globus-cli-automated-transfer-guide` → `#globuscli`
  - Was: "### Globus CLI Automated Transfer Guide { #globuscli }"
  - Now: "## Globus CLI { #globuscli data-subtitle="Automated Data Transfer Guide" }"
  - Explicit anchor preserved, so this is NOT breaking

- `#cyberduck-data-transfer-guide` → `#cyberduck`
  - Was: "### Cyberduck Data Transfer Guide { #cyberduck }"
  - Now: "## Cyberduck { #cyberduck data-subtitle="Data Transfer Guide" }"
  - Explicit anchor preserved, so this is NOT breaking

- `#command-line-data-transfer-guide` → `#cli`
  - Was: "### Command-Line Data Transfer Guide { #cli }"
  - Now: "## Command Line Interface { #cli data-subtitle="Data Transfer Guide" }"
  - Explicit anchor preserved, so this is NOT breaking

- `#cli-step3-scp` → `#cli-step3-scp`
  - Was: "##### scp { #cli-step3-scp }"
  - Now: "#### `scp` { #cli-step3-scp data-subtitle="Secure Copy Protocol" }"
  - Explicit anchor preserved, so this is NOT breaking

- `#cli-step3-rsync` → `#cli-step3-rsync`
  - Was: "##### rsync { #cli-step3-rsync }"
  - Now: "#### `rsync` { #cli-step3-rsync data-subtitle="Remote Synchronization" }"
  - Explicit anchor preserved, so this is NOT breaking

- `#data-depots-browser-based-data-transfer-guide` → `#datadepotbrowser`
  - Was: "### Data Depot's Browser-Based Data Transfer Guide { #datadepotbrowser }"
  - Now: "## Data-Depot Web Browser { #datadepotbrowser data-subtitle="Data Transfer Guide" }"
  - Explicit anchor preserved, so this is NOT breaking

- `#jupyterhubs-browser-based-data-transfer-guide` → `#jupyterhubbrowser`
  - Was: "### JupyterHub's Browser-Based Data Transfer Guide { #jupyterhubbrowser }"
  - Now: "## JupyterHub Web Browser { #jupyterhubbrowser data-subtitle="Data Transfer Guide" }"
  - Explicit anchor preserved, so this is NOT breaking

## `/user-guide/docs/managingdata/datamanagementplan.md`

### Changed Anchors (Different ID for Same Content)
- `#data-management-plan-guidance` → `#data-management-plan-template`
  - Was: "# Data Management Plan Guidance"
  - Now: "# Data Management Plan Template"
  - Implicit anchor changed from `#data-management-plan-guidance` to `#data-management-plan-template`

## `/user-guide/docs/managingdata/experimentalfacilitychecklist.md`

### Changed Anchors (Different ID for Same Content)
- `#experimental-facility-checklist` → `#experimental-facility-checklist`
  - Was: "## Experimental Facility Checklist"
  - Now: "# Experimental Facility Checklist { data-subtitle="An Onboarding Checklist for Data Curation" }"
  - Implicit anchor remains the same, so this is NOT breaking

### Missing Anchors (Removed Without Replacement)
- `#onboarding`
  - Was: "### DesignSafe-EF Onboarding Checklist for Data Curation { #onboarding }"
  - Now: *removed entirely, content moved to main heading*

- `#phase1`
  - Was: "### Phase 1 - Before arriving to the Experimental Facility (EF): { #phase1 }"
  - Now: "## Phase 1: Before the Experimental Facility { #phase1 }"
  - Explicit anchor preserved, so this is NOT breaking

- `#phase2`
  - Was: "### Phase 2 - At the EF: { #phase2 }"
  - Now: "## Phase 2: While at the Experimental Facility { #phase2 }"
  - Explicit anchor preserved, so this is NOT breaking

- `#phase3`
  - Was: "### Phase 3 – After the EF: { #phase3 }"
  - Now: "## Phase 3: After the Experimental Facility { #phase3 }"
  - Explicit anchor preserved, so this is NOT breaking

- `#comments`
  - Was: "### General Comments { #comments }"
  - Now: "## General Comments { #comments }"
  - Explicit anchor preserved, so this is NOT breaking

## `/user-guide/docs/managingdata/settingpathtodesignsafe.md`

### Changed Anchors (Different ID for Same Content)
- `#setting-path-to-designsafe-on-corral` → `#setting-path-to-designsafe-on-corral`
  - Was: "## Setting Path to DesignSafe on Corral"
  - Now: "# Setting Path to DesignSafe on Corral"
  - Implicit anchor remains the same, so this is NOT breaking

- `#mydata`, `#myprojects`, `#published-nheri`, `#published-nees`
  - Was: "### Path to My Data { #mydata }" etc.
  - Now: "## Path to My Data { #mydata }" etc.
  - Explicit anchors preserved, so these are NOT breaking

## `/user-guide/docs/overview.md`

### Changed Anchors (Different ID for Same Content)
- `#documentation-overview` → `#overview-of-designsafe`
  - Was: "## Documentation Overview"
  - Now: "# Overview of DesignSafe"
  - Implicit anchor changed from `#documentation-overview` to `#overview-of-designsafe`