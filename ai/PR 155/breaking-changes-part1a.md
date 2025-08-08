# Breaking Changes Analysis - Part 1a

## `/user-guide/docs/curating/bestpractices.md`

### Missing Anchors (Removed Without Replacement)

- `#accepteddata`
  - Was: "#### Accepted Data  { #accepteddata }"
  - The entire "Accepted Data" section was removed completely

- `#acceptedfileformats`
  - Was: "#### Accepted and Recommended File Formats  { #acceptedfileformats }"
  - The section was restructured and moved to "## Recommended File Formats" without preserving the old anchor

- `#datasize`
  - Was: "#### Data Size { #datasize }"
  - The entire "Data Size" section was removed completely

- `#managingdata`
  - Was: "#### Managing and Sharing Data in My Projects { #managingdata }"
  - The entire section was removed completely

- `#selectingprojecttype`
  - Was: "#### Selecting a Project Type { #selectingprojecttype }"
  - The entire section was removed completely

- `#working`
  - Was: "#### Working in My Project { #working }"
  - The entire section was removed completely

- `#bestpractices`
  - Was: "#### General Research Data Best Practices { #bestpractices }"
  - The entire section was removed completely

- `#bestpractices-formats`
  - Was: "##### Proprietary Formats { #bestpractices-formats }"
  - Content was restructured into "### Proprietary Formats" without preserving the old anchor

- `#bestpractices-compresseddata`
  - Was: "##### Compressed Data { #bestpractices-compresseddata }"
  - Content was restructured into "### Compressed Data" without preserving the old anchor

- `#bestpractices-simulationdata`
  - Was: "##### Simulation Data { #bestpractices-simulationdata }"
  - Content was restructured into "### Simulation Data" without preserving the old anchor

- `#bestpractices-geospatial`
  - Was: "##### Geospatial Data { #bestpractices-geospatial }"
  - Content was restructured into "### Geospatial Data" without preserving the old anchor

- `#bestpractices-pointcloud`
  - Was: "##### Point Cloud Data { #bestpractices-pointcloud }"
  - Content was restructured into "### Point Cloud Data" without preserving the old anchor

- `#jupyter`
  - Was: "##### Jupyter Notebooks { #jupyter }"
  - Content was restructured into "### Jupyter Notebooks" without preserving the old anchor

- `#organization`
  - Was: "#### Data Organization and Description { #organization }"
  - The entire section was removed completely

- `#documentation`
  - Was: "#### Project Documentation { #documentation }"
  - The entire section was removed completely

- `#quality`
  - Was: "#### Data Quality Control { #quality }"
  - The entire section was removed completely

- `#protectedddr`
  - Was: "#### Managing Protected Data in the DDR { #protectedddr }"
  - The entire section was removed completely

- `#metadatareqs`
  - Was: "#### Metadata Requirements { #metadatareqs }"
  - The entire section was removed completely

- `#protecteddata`
  - Was: "#### Protected Data { #protecteddata }"
  - The entire section was removed completely

- `#protecteddata-deidentification`
  - Was: "##### De-identification Resources { #protecteddata-deidentification }"
  - The entire section was removed completely

- `#reusingdata`
  - Was: "#### Reusing Data Resources in your Publication { #reusingdata }"
  - The entire section was removed completely

- `#timelypublication`
  - Was: "#### Timely Data Publication  { #timelypublication }"
  - The entire section was removed completely

- `#table1`
  - Was: "##### Table 1. Recommended Publishing Timeline for Different Data Types { #table1 }"
  - The entire section was removed completely

- `#accessibilitydelay`
  - Was: "#### Public Accessibility Delay { #accessibilitydelay }"
  - The entire section was removed completely

- `#licensing`
  - Was: "#### Licensing { #licensing }"
  - The entire section was removed completely

- `#licensing-datasets`
  - Was: "##### DATASETS { #licensing-datasets }"
  - The entire section was removed completely

- `#licensing-works`
  - Was: "##### WORKS { #licensing-works }"
  - The entire section was removed completely

- `#licensing-software`
  - Was: "##### SOFTWARE { #licensing-software }"
  - The entire section was removed completely

- `#publishing`
  - Was: "#### Subsequent Publishing { #publishing }"
  - The entire section was removed completely

- `#amends`
  - Was: "#### Amends and Version Control  { #amends }"
  - Content was restructured but the old anchor was not preserved

- `#feedback`
  - Was: "#### Leave Data Feedback { #feedback }"
  - Content was restructured into "## Leaving Data Feedback" without preserving the old anchor

- `#marketing`
  - Was: "#### Marketing Datasets { #marketing }"
  - The entire section was removed completely

- `#datapreservation`
  - Was: "### Data Preservation { #datapreservation }"
  - The entire section was removed completely

### Changed Anchors (Different ID for Same Content)

- `#data-collections-development` → content removed
  - Was: "### Data Collections Development"
  - The implicit anchor `#data-collections-development` is lost as the heading was completely removed

- `#data-curation` → content reorganized
  - Was: "### Data Curation"
  - The entire section structure was completely reorganized, so the implicit anchor is effectively lost

- `#data-publication` → content removed
  - Was: "### Data Publication"
  - The entire section was removed completely

## Summary

This represents a major restructuring of the bestpractices.md file. The document was transformed from a comprehensive multi-section guide to a more focused document with different organization. Almost all explicit anchors (`{ #anchor-name }`) were removed, and many sections were either completely eliminated or significantly restructured without preserving the original anchor names.

The impact is severe as this appears to be a heavily referenced document based on the detailed anchor structure that was in place. Any external links pointing to specific sections of this document will be broken.