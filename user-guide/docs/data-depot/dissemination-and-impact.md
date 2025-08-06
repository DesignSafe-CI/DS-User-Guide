### Data Dissemination and Impact

Data metrics indicate research impact, allowing researchers to assess the repercussions and influence of their work. Citation and usage metrics are included, and are visible on the landing page of each dataset publication. 

Except for projects categorized as “Other,” a project can encompass more than one dataset publication in the Data Depot Repository (DDR). Different creators may produce projects at different times, and have different DOIs. We report metrics per published dataset with a DOI. 

#### Data Usage Metrics

Usage metrics published in the DDR follow the Make Data Count (MDC) [Counter Code of Practice for Research Data](https://www.projectcounter.org/code-practice-research-data/). This is a community standard to count data usage transparently and in a normalized way. (For more information about this approach please visit [Make Data Count Metrics](https://makedatacount.org/learn-about-us/#section-1).) Towards normalization, a session is an important concept to understand.

Session: All data usage activity during one clock hour from a single IP address and user-agent (a string that identifies the user's browser and operating system.). This is used as a proxy for distinct users to count unique requests and unique investigations.

Descriptions of each usage metric reported by DDR are below.

- **File Preview**: Examining data from an individual data publication (clicking on a file name, for example) brings up a modal window that previews the files. Those file previews are counted. However, not all document types can be previewed. Text files, spreadsheets, graphics, and code files can be previewed (e.g. .txt, .doc, .docx, .csv, .xlsx, .pdf, .jpg, .m, .ipynb). Binary executables, MATLAB containers, compressed files, and video files cannot be previewed (eg. .bin, .mat, .zip, .tar, mp4, .mov). Only previewable files are counted. Users will see a count of all the files that have been previewed in the data publication.
- **File Download**: Copying a file to the user’s machine, or to a storage device that the machine has access to. This can be done by ticking the checkbox next to a file and selecting "Download" at the top of the project page. With files that can be previewed, clicking "Download" at the top of the preview modal window has the same effect. Downloads are counted on an individual file basis. We also consider counts when users tick the checkbox next to a file and select "Copy" at the top of the project page. The counts of copying a file from the published project can be to the user's My Data or My Projects to Tools and Applications in the Workspace, or to one of the connected spaces (Box, Dropbox, Google Drive).
- **Total Requests**: Total file downloads + total file previews. This is counted for each data publication that has a DOI (eg. Simulation, Experiment, Mission, Hybrid simulation , Documents Collection and Project Type Other).
- **Unique Requests**{#unique-requests}: Sessions in which one or more files are downloaded or previewed. Any downloads, previews, copies of files, or project downloads from a single data publication (DOI) by a user in a single session counts as one Unique Request. This is counted for each data publication with a single DOI including Simulations, Hybrid Simulations, Experiments, Missions, Documents Collection and Project Type Other. 
- **Unique Investigations**{#unique-investigations}: Sessions in which any project or publications metadata is viewed, or one or more files is downloaded or previewed. Any viewing of metadata as well as any downloads, previews, copies of files, or project downloads from a single data publication (DOI) by a user in a single session counts as one Unique Investigation. This is counted for each data publication with a single DOI including Simulations, Hybrid Simulations, Experiments, Missions, Documents Collection and type Other projects.

Usage metrics are displayed in the citation modal underneath “Download Citation” as “Unique Requests” and “Unique Investigations.” Clicking on “Details” to the right enables a modal window that displays the metrics, including their definitions, in aggregates and per quarter for researchers to assess impact over time. 

Usage metrics date back to January 2022 and are updated monthly.

#### Interpreting Data Metrics

Dataset citations and usage are complementary metrics. The former account for the creation, reference to, or reuse of datasets as demonstrated in a publication. Similarly to web page hits and downloads of resources, the latter represents the attention to particular resources on the web. We aggregate and inform users of citations and datasets on a quarterly basis on the [DesignSafe Impact](https://designsafe-ci.org/use-designsafe/impact/) page. Both aggregated and individual metrics can be considered as they evolve over time and in context with similar data types, hazard types, and discipline. 

#### Citation Metrics

Dataset citations are references to a dataset in published materials including journal papers, books and chapters, conference proceedings, and thesis and dissertations. Citation counts per a dataset's DOI varies depending on the source providing the information. The DDR uses the Data [Citation Index from Clarivate](https://clarivate.com/academia-government/scientific-and-academic-research/research-discovery-and-referencing/web-of-science/data-citation-index/) as a source of citations. Clarivate only harvests citations from the reference section of peer-reviewed publications. Google Scholar, on the other hand, harvests citations and mentions from any part of a publication available via the Web. This includes presentations, bulletins, and reports, making it too difficult to automate the count of precise citations.

Two types of citations are counted: platform citations and dataset citations. 

Platform citations are citations to marker papers written about DesignSafe such as:

Rathje, E., Dawson, C. Padgett, J.E., Pinelli, J.-P., Stanzione, D., Adair, A., Arduino, P., Brandenberg, S.J., Cockerill, T., Dey, C., Esteva, M., Haan, Jr., F.L., Hanlon, M., Kareem, A., Lowes, L., Mock, S., and Mosqueda, G. 2017. “DesignSafe: A New Cyberinfrastructure for Natural Hazards Engineering,” ASCE Natural Hazards Review, doi:10.1061/(ASCE)NH.1527-6996.0000246.

Dataset citation counts appear in the citation modal beneath the Download Citation links. They include citations to original or reused datasets, reports, survey instruments, poster presentations, and meeting proceedings published in the DDR.

![](https://lh7-rt.googleusercontent.com/docsz/AD_4nXe-nm1trTn5yB0MQRdu5fMDrQuCYlWpYUqu_-zOOH2XNtdBpPTqCLpdsWthkzJxi-DXAzDO89OjrbrrftCmASAQL2lEPuiGQ3KYjQgyOVEirNjZMXvfEcN7rThIWrtfdpBb4ciiOQ?key=5Dna0b-2yhoGiwcpYmzxUA)

Original citations are from papers in which a researcher cites their own data in the DDR as a part of the original research project, and data reuse is a citation to datasets available in DesignSafe after the original project is over. 

Citations are updated through the last month of the prior quarter. 



#### Marketing Datasets

Datasets take a lot of work to produce; they are important research products. By creating a complete, organized, and clearly described publication in DDR, users are inviting others to reuse and cite their data. Researchers using published data from DDR must cite it using the DOI, which relies on the [DataCite schema](http://schema.datacite.org/) for accurate citation. For convenience, users can retrieve a formatted citation from the published data landing page. It is recommended to insert the citations in the reference section of the paper to facilitate citation tracking and count.

When using social media or any presentation platform to communicate research, it is important to include the proper citation and DOI on the presentations, emails, tweets, professional blog posts, etc.. A researcher does not actually need to reuse a dataset to cite it, but rather may cite it to point/review something about a dataset (e.g., how it was collected, its uniqueness, certain facts, etc.). This is similar to the process of citing other papers within a literary review section.
