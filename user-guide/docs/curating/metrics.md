## Metrics

### Data Metrics { #data }

Data metrics are research impact indicators complementary to other forms of evaluation such as number of paper citations, allowing researchers to assess the repercussions and influence of their work.

Metrics available in DesignSafe follow the Make your Data Count  <a href="https://www.projectcounter.org/code-practice-research-data/" target="_blank">Counter Code of Practice for Research Data.</a> This is a community standard to count data usage transparently and in a normalized way. For more information about this approach please visit <a href="https://makedatacount.org/data-metrics-2/" target="_blank">Make your Data Count Metrics</a>.

In Natural Hazards, a research project can encompass more than one data publication which can be produced at different times by different creators and have different DOIs. In DesignSafe, project types are: Other, Experimental, Simulation, Hybrid Simulation, and Field Research. In turn, each has different data publications. Project type "Other" only has one data publication and DOI, while the rest may have more than one data publication and therefore multiple DOIs per project.

<strong>Data Publications:</strong>

Experiment (in Experimental projects)

Mission and Document collection (in Field Research projects)

Simulation (in Simulation projects)

Hybrid Simulation (in Hybrid Simulation projects)

Other-type project (these encompass only one data publication and thus one level of metrics).

Because of the structure of the research projects in DesignSafe we report metrics at the project and at the data publication levels. Metrics at the project level allow researchers to assess the overall impact of the projects because it aggregates the usage of all the data publications. Instead, data publication metrics provide granular information about the usage of each publication that has a DOI within a project.

Data Metrics is a work in progress and we add measurements on an ongoing basis. We started counting Project Metrics in March 2021 And Data Publication Metrics in January 2022.

Below are descriptions of each type of metric and what is counted at the project and at the data publication levels.

### Project Metrics { #project }

<strong>File Preview: </strong>Examining data in any data publication within a project such as clicking on a file name brings up a modal window that allows previewing the files. However, not all data types can be previewed. Among those that can are: text, spreadsheets, graphics and code files. (example extensions: .txt, .doc, .docx, .csv, .xlsx, .pdf, .jpg, .m, .ipynb). Those that can't include binary executables, MATLAB containers, compressed files, and video (eg. .bin, .mat, .zip, .tar, mp4, .mov). Only those files that can be previewed are counted. Users will get a count of all the files that have been previewed in the entire project.

<strong>File Download: </strong>Copying a file to the machine the user is running on, or to a storage device that the machine has access to. This can be done by ticking the checkbox next to a file and selecting "Download" at the top of the project page. With files that can be previewed, clicking "Download" at the top of the preview modal window has the same effect. Downloads are counted per project. We also consider counts when users tick the checkbox next to a document and select "Copy" at the top of the project page. The counts of copying a file from the published project can be to the user's My data, My projects, to Tools and Applications in the Workspace, or to one of the connected spaces (Box, Dropbox, Google Drive). Users will get a count of all the files that have been downloaded in the entire project.

<strong>File Requests: </strong>Total file downloads + total file previews. This is counted and aggregated for all data publications that have a DOI within a project (eg. Simulation, Experiment, Mission, Hybrid simulation and Documents Collection). Users will get a count of all the files that have been requested in the entire project.

<strong>Total Investigations: </strong>File requests + metadata views. Viewing the main project information / metadata in the landing page counts as an investigation of each DOI included in the project. Opening a data publication (eg. simulation, experiment, documents collection, mission, hybrid simulation) counts as one investigation of that specific data publication.Requests and metadata views at the data publication level are counted and aggregated at the project level metrics.

<strong>Project Downloads: </strong>Total downloads of a compressed entire project and its metadata to a user's machine.

### Data Publication Metrics { #publication }

<strong>File Preview:</strong> Examining data from an individual data publication such as clicking on a file name brings up a modal window that allows previewing files. Those file previews are counted. However, not all document types can be previewed. Among those that can are: text, spreadsheets, graphics and code files. (example extensions: .txt, .doc, .docx, .csv, .xlsx, .pdf, .jpg, .m, .ipynb). Those that can't include binary executables, MATLAB containers, compressed files, and video (eg. .bin, .mat, .zip, .tar, mp4, .mov).  Only those files that can be previewed are counted. Users will get a count of all the files that have been previewed in the data publication.

<strong>File Download: </strong>Copying a file to the machine the user is running on, or to a storage device that the machine has access to. This can be done by ticking the checkbox next to a file and selecting "Download" at the top of the project page. With files that can be previewed, clicking "Download" at the top of the preview modal window has the same effect. Downloads are counted per individual files. We also consider counts when users tick the checkbox next to a file and select "Copy" at the top of the project page. The counts of copying a file from the published project can be to the user's My data, My projects, to Tools and Applications in the Workspace, or to one of the connected spaces (Box, Dropbox, Google Drive).

<strong>File Requests: </strong>Total file downloads + total file previews. This is counted for each data publication that has a DOI (eg. Simulation, Experiment, Mission, Hybrid simulation and Documents Collection).

<strong>Session: </strong>All activity during one clock hour from a single IP address and user-agent (a string that identifies the user's browser and operating system.).  This is used as a proxy to define a session to count unique requests and unique investigations.

<strong>Unique Requests: </strong>Any downloads, previews, copies of files, or project downloads from a single data publication (DOI) by a user in a single session counts as 1 Unique Request. This is counted for each data publication with a single DOI including Simulations, Hybrid Simulations, Experiments, Missions, Documents Collection and type Other projects.

<strong>Total Investigations: </strong>File requests + metadata views. Reading the metadata (information about the project and or the data publication) on the landing page counts as an investigation of each data publication with a DOI included in a project. Opening a data publication counts as one investigation of that data publication.

<strong>Unique Investigations: </strong>Any viewing of metadata and any downloads, previews, copies of files or project downloads from a single data publication (DOI) by a user in a single session counts as 1 Unique Investigation. This is counted for each data publication with a single DOI including Simulations, Hybrid Simulations, Experiments, Missions, Documents Collection and type Other projects.

