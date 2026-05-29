# Policies

## Changes to Policies

Our policies are regularly reviewed and updated as needed. Users will be notified in advance when policies will be updated.

## Continuity of Access

As an NSF funded project, DesignSafe is subject to renewal every 5 years. As a requirement of the award, there is a contingency plan to transfer all the DDR published data, metadata, and corresponding DOIs, including those belonging to tombstones, to a new awardee - should one be selected - without interruption of services and access to data. The data transfer plan is confirmed and updated in the Operations Project Execution Plan that we present annually to the NSF.

If the NSF and/or other community stakeholders discontinue the NHERI program or a subsequent data repository, we will continue to preserve the published data and provide access through TACC, DesignSafe’s host at the University of Texas at Austin. TACC has formally committed to preserving the data with landing pages and corresponding DOIs indefinitely. TACC’s User Services team and curators will attend to users’ requests and help tickets related to the data. Because TACC is constantly updating its high-performance storage resources and security mechanisms, data will be preserved at least at the same preservation level that is currently available. Since DOIs are supported through the University of Texas Libraries, and web services and data reside within TACC’s managed resources, access to data will not be interrupted. [Fedora](https://fedorarepository.org/) is now part of TACC’s software suite and we will continue its maintenance. Like all systems at TACC, we will revisit its versioning and continuity and make decisions based on state-of-the-art practices. If resources become too constrained, TACC will continue to keep an archive copy on [Ranch](https://tacc.utexas.edu/systems/ranch/), with online landing pages, for as long as TACC remains a viable entity.

## Data Embargoes

A data embargo is a period of time during which a dataset has a DOI but is not made broadly accessible, awaiting review and acceptance by a journal publication. Many researchers request a DOI (digital object identifier) for their dataset prior to its publication to include in papers submitted to journals for review. 

DDR  does not provide data embargoes because a DOI is a digital identifier that points to a permanent location on the web. Datasets need to be fully curated in order to be granted a DOI. If datasets are not published, the DOI in the references is not a working DOI and directs to an error page. Users should publish their datasets prior to submitting their papers including the formal dataset citation so that the citation works properly if reviewers want to evaluate the dataset.  In addition, DDR does not offer capabilities for enabling single or double blind peer review. 

DDR continues working with users to:

* Provide access to reviewers via My Project before the dataset is published. There is no DOI involved and the review is not anonymous.
* Help users curate and publish their datasets so they are publicly available for reviewers in the best possible form.
* Provide amends and versioning so that prompt changes can be made to data and metadata upon receiving feedback from the reviewers or at any other time.

## Data Preservation

Data preservation encompasses activities carried out by all the stakeholders including authors and curators, and across all stages of the data lifecycle from data management planning to data curation, publication and long-term archiving. The [Dataset Quality Policy](#dataset-quality) describes all the requirements that users must comply with.

Data in the (DDR) is preserved according to state-of-the art digital library and storage industry standards and best practices. DesignSafe is implemented within the reliable, secure, and scalable storage infrastructure at the [Texas Advanced Computing Center (TACC)](https://tacc.utexas.edu/), with 25 years of experience and innovation in High Performance Computing. TACC has operated a digital data archive continuously since 1986 - currently implemented in the [Corral](https://www.tacc.utexas.edu/systems/corral) data management system and the [Ranch](https://www.tacc.utexas.edu/systems/ranch) tape archive. Corral and Ranch hold the data for the DDR and hundreds of other research data collections. These storage resources are reliable, secure, monitored 24/7, and under a rigorous maintenance and update schedule, operated in production by a large team of professional staff. Public user guides document the capabilities and hardware. Between those systems there are multiple layers of data protection and reliability, including snapshots, server redundancy, de-clustered RAID, end to end checksums and replication to the tape archive.

A dedicated [Fedora](https://duraspace.org/fedora/) 5.x digital repository, considered a standard for digital libraries, assures the authenticity and integrity of the data by maintaining descriptive, fixity, preservation, and provenance metadata for each published dataset. Fedora was chosen as a repository because the flexibility of its data model allows managing the structure of the DDR’s different data types. Fedora supports nested container layouts which are mapped directly to the metadata in the corresponding DDR data types. Within Fedora, the Dublin Core and PROV standards are applied to describe the structure, provenance and contents of the datasets.

The dataset preservation workflow is as follows. Once a dataset is curated and the user has agreed to the last step in the publication process, publication files are hashed for fixity - integrity, and file formats are identified for long term preservation. This information is added to a manifest file. Ingestion of metadata - mapped to standards - from the web-visible storage into Fedora takes place under automated control when the publication workflow executes. All publication files are stored on Corral, and each file path is also recorded on the manifest file that is preserved within Fedora. The data files, along with the metadata and manifests, are packaged using the GNU tar utility and transmitted to Ranch. When a new version of a collection is created, the tarball on the tape archive is amended to include the versioned files and their SHA512 manifest, namespaced to prevent overwriting previous versions, along with an updated metadata file.

Each published dataset has a [digital object identifier (DOI)](/user-guide/curating/bestpractices/) that provides a persistent link to the published data. The DOI is available in the dataset's landing page, along with the citation and corresponding metadata.

80% of the published data files are open formats and 10% of the proprietary formats have been converted to open formats. At the moment DDR is committed to preserve data in the format in which it is submitted and versioned (e.g. during post-publication revisions in which authors are required to convert data to open formats and version their datasets). DDR requests the necessary authorizations from users to conduct further preservation actions. These permissions are granted through our [Data Publication Agreement](/user-guide/curating/policies/#data-publication-agreement), which authors acknowledge and have the choice to agree to at the end of the publication workflow and prior to receiving a DOI for their dataset. The agreement includes permissions to migrate datasets to new systems, and to transfer custody of the published datasets to another institution if needed.

DDR does not conduct re-appraisals or deaccessions, and does not delete data. In cases of tombstones, data is withdrawn from public access but it is not deleted.

This preservation environment and our policies and best practices allow us to maintain all data in secure conditions at all times, comply with [NDSA Preservation Level 3](https://ndsa.org/publications/levels-of-digital-preservation/) and meet some requirements for NDSA Preservation Level 4, maintain representation and descriptive information about each dataset, and be ready at any time to transfer custody of published data and metadata in an orderly and validated fashion.

Through ample curation best-practices documentation in the [User Guides](/user-guide/) and curatorial guidance available through office hours, help tickets and dataset reviews prior to and post publication, DDR partners with, and encourages authors to work towards long term sustainability of their datasets.

The DDR has been operational since 2016 and is currently supported by the NSF through March of 2027. During this award period, the DDR will continue collecting and preserving natural hazards research data as well as supporting preservation of and access [to legacy data and the accompanying metadata](/data/browser/public/nees.public) from the Network for Earthquake Engineering Simulation (NEES). The [Continuity of Access Policy](/user-guide/curating/policies/#continuity-of-access) provides details about long-term preservation and access of the DDR datasets in relation to eventual changes in custody.

## Dataset Quality

DDR is a self-publication repository which means that authors are ultimately responsible for the quality of the data that they share with the world. However,  we understand that producing and sharing quality data is a collaborative effort between researchers and the DDR and we partner with users to publish [FAIR](https://www.go-fair.org/fair-principles/) (Findable, Accessible, Interoperable, and Reusable) resources. In consultation with the larger NHERI network we are continuously observing and defining [best practices](/user-guide/curating/bestpractices/) that emerge from our community's understanding and standards. These are communicated through onboarding instructions in the curation and publication pipeline, our policies and  best practices recommendations,  our guidance during [virtual office hours](https://www.designsafe-ci.org/facilities/virtual-office-hours/), and through our help ticketing system. 

We address data quality from a variety of perspectives:

Metadata quality: Metadata is fundamental to data explainability and reuse. To support metadata quality we provide onboarding descriptions of all metadata elements, indicate which ones are required, and suggest how to complete them. [Requirements for core metadata elements](/user-guide/curating/policies/#metadata-schema-and-requirements) are automatically reinforced during the publication pipeline, and the dataset will not be published if requirements are not met. While we do not enforce filling non-required metadata fields available for each data type because they are not generalizable to all datasets, we encourage users to complete all fields when applicable.

Dataset content quality: Different groups in the NHERI network have developed guidelines for data quality assurance, including [StEER](https://www.steer.network/resources), [CONVERGE](https://converge.colorado.edu/data/data-management) and [RAPID](https://rapid.designsafe-ci.org/using-rapid/publishing-guidelines). In turn, each [NHERI Experimental Facility](https://designsafe-ci.org/facilities/experimental/) has methods and criteria in place for ensuring the quality of the data they generate from experiments. Most of the data curated and published in the DDR are related to peer-reviewed research projects and papers, speaking to the relevance and standards of their design and outputs. Still, the community acknowledges that opportunities for detailed quality assessment often emerge after publication. Because work in many projects continues after publication, both for the data producers and reusers, the community can version datasets.

Dataset completeness: We understand data completeness as the presence of all relevant files that enable reproducibility, understandability, and reuse. This includes data files as well as readme files, data dictionaries and data reports. The DDR complies with data completeness by requesting users to include data and documentation in the corresponding data model categories. This assures that all relevant components of a data type (field research, experiment, research software, simulation and hybrid simulation)  are present. During the publication process the system verifies that those categories have data assigned to them. The View Data Diagram link on the landing page reflects the data categories  present in each dataset which helps users navigate large and complex datasets.

Dataset quality statement: We ask users to include a brief statement if and about how they verify the quality and completeness of their data including processes such as validation, calibration, performance evaluation, resolution, transformations, etc. 

File formats: A quality dataset is one that is interoperable, which means that data and metadata can be reused, integrated, exchanged and processed across different platforms and by open software. It is important to note that the majority of the file formats created and used by researchers in this field comply with the Library of Congress recommended formats. These recommendations encompass Excel and Matlab files that, while proprietary, are regularly used and ubiquitous in the engineering field. To facilitate access to those files DesignSafe offers users the possibility to access Matlab within Tools and Applications. We encourage users to publish their data in open formats, to describe the structure of their data when published in binary formats, and share the method/script/software used to read in the files. If deemed necessary, researchers can publish data both in their original format (proprietary and binary) and reformatted to an open format. In this case, users have to provide information about the proprietary format, which software produced it and how they converted the files to open formats.

Dataset publication review: Data curators review new publications on a regular basis. These reviews show how the community understands and uses the data models and the metadata fields, and allow verifying the overall quality of the published datasets. If curation problems that cannot be automatically detected are identified (e.g. insufficient or unclear descriptions, file or category misplacement, etc.) the dataset authors are contacted and work along with the curator on amending and/or versioning their datasets.  

Statement of data quality: We ask that data producers include information in the data descriptions indicating if and how they verified the quality of their data. Some quality control activities may have been performed on the instrumentation or system within which the data originates. Examples of QC are: checks to detect and fix errors, complete missing values, correct inconsistencies, verification to assure annotation accuracy, data standardization, data deduplication, data performance evaluation, data validation, image correction, data calibration, metadata correction and enhancement.

In turn, when data has been published as is, we encourage users to indicate this in their descriptions. This is frequent for data coming from heavily instrumented experiments or large simulations.

Research software: Prior to publishing software, researchers must test that it functions correctly, document its provenance using the CodeMeta schema available in the publication pipeline, and provide clear instructions on why and how to use it.

Identifying and meeting data quality: The quality of the data publications in DDR is described in three levels of curation. These levels have to do with the functionalities and services provided by the DDR, and with the curation training and experience of the researchers. Below are the characteristics of the three curation levels:

    1. **Curation Level 1**
        Complies with the minimum metadata requirements in the platform and assigns data to all the required categories within the selected data type. The system checks for minimum length of description, presence of metadata requirements, and completeness of files within each category. At ingest, file formats are identified and a checksum is calculated for each. Data is deposited as is. Upon a curator's evaluation, datasets curated at this level may need to be reviewed and versioned to levels 2 or 3.
    2. **Curation Level 2**
        Level 1 plus more than the minimum metadata requirements and descriptions are completed. A Data Report or Readme is included. Related Work and/or Referenced Data and Software have been added when appropriate. Naming conventions are consistent and explanatory, and file tags are added to improve findability within the dataset. File formats are compliant with the DDR's recommendations.
    3. **Curation Level 3**
        Added to level 2, when proprietary file formats are involved (frequent in Field Research publications due to the new and sophisticated equipment used by researchers), files have been reformatted to open formats.

In cases in which the curators review publications and notice that the dataset does not comply with data quality requirements, DDR abides by the [Tombstone policy](#tombstone) and may permanently remove the dataset from public availability.

## Data Documentation

DDR requires the submission of ample documentation as part of the dataset publication. For this, the data models present categories such as Data Report (Experiments and Simulations), Planning Documents and Document Collection (Field Research), where users publish information that provides context and technical provenance for the dataset publication. If a dataset is published under Other, researchers should also upload a report, and the Research Software data model requires a readme file and a Code Meta file as part of the package.

Understanding the details of how data was acquired makes data reproducible and reusable. Experimental researchers in our community frequently write extensive data reports including details of how the experiment was conducted. Similarly, field researchers create planning documents to record their data gathering strategies and logistics, and produce reports about the rationale and results of the data they collected that they publish as a Document Collection. In turn, Simulation and Machine Learning researchers also need to explain their methodology, as well as the software and sometimes the hardware they used to make their data understandable. Thus, the way in which the data was obtained - its technical provenance - is clear to other researchers that want to reuse it.

To be comprehensive, these reports need to contain data dictionaries that explain the meaning of the measured elements, the variables considered, or the labels of the column headers if they are presenting tabular data.

How the data is organized and the meaning of its file naming convention should also be clarified so that others can easily navigate and access the data they need. In addition, the data report should contain information about how the data was processed for publication, or if it was published as is. See [Writing Effective Data Reports](/user-guide/curating/bestpractices/#writing-effective-data-reports) in the best practices section.

## Data Publication Agreement

This agreement must be read and accepted by the user prior to publishing a dataset:

/// html|blockquote

This submission represents my original work and meets the [Policies](/user-guide/curating/policies) and [Best Practices](/user-guide/curating/bestpractices) established by the DesignSafe.

I grant the Data Depot Repository (DDR) all required permissions and licenses to make the work I publish available for archiving and continued access. These permissions include allowing DesignSafe to:

1. Disseminate the content in a variety of distribution formats according to the DDR Policies and Best Practices.
2. Promote and advertise the content publicly in DesignSafe.
3. Store, transfer, copy, or convert files to open formats to ensure their future preservation and accessibility.
4. Modify the dataset interface representation for improved usability.
5. Exchange and or incorporate metadata or documentation in the content into public access catalogues.
6. Transfer data and metadata with respective unique digital object identifier (DOI) to another institution for long-term accessibility if needed for continuous access.

I understand the type of license I choose to distribute my data, and I guarantee that I am entitled to grant the rights contained in them.

I understand that after publication, my dataset may be reviewed by a curator who can recommend amending or versioning to comply with the [Dataset Quality Policy](/user-guide/curating/policies/#dataset-quality). Failure to do so may result in the application of a [tombstone.](/user-guide/curating/policies/#tombstone)

I agree that when this submission is made public with a DOI, this DOI will not be discarded, even if the dataset is [tombstoned](/user-guide/curating/policies/#tombstone). If the dataset requires versioning, this will be published under the same DOI and former versions will also be accessible on the landing page.

I warrant that I am lawfully entitled and have full authority to license the content submitted, as described in this agreement. None of the above supersedes any prior contractual obligations with third parties that require any information to be kept confidential.

If applicable, I warrant that I am following the IRB agreements in place for my research and following the [Protected Data Policy](/user-guide/curating/policies/#protected-data).

I understand that using the DDR to publish datasets is entirely voluntary and that I am solely responsible for all possible confidentiality, privacy, data quality and data content issues that may arise from the publication. These terms do not supersede any prior third party contractual obligations to confidentiality or proprietary information.

///

## Data Types

We accept engineering and social and behavioural sciences research conducted in the context of natural hazards regarding the impacts of wind, earthquake, storm surge, wildfires, and sustainable materials management. In the area of engineering, the primary focus is on data generated through simulation, hybrid simulation, experimental, machine learning, and field research methods. We also accept civil engineering datasets that study the foundation of structures. In social and behavioural sciences (SBE), accepted datasets and research instruments encompass the study of the human dimensions of hazards and disasters. As of 2025 we accept research software publications.

We also publish data reports, presentations, survey instruments, questionnaires and protocols related to research in the context of natural hazards. All publications should be documented and understandable on their own, and should merit having a citation including a DOI. While we encourage linking datasets to contextual information and to related papers published elsewhere, the publication package including metadata and supporting documentation when applicable, should suffice for another person to understand it and reuse it.

For the reasons stated above we do not accept supplementary materials, notes, or future plans as publications.

Users whose publication packages do not match the criteria explained above will be notified whenever possible before publication so that they can remove their data. If a noncompliant dataset is published with a DOI, we will abide by the [Tombstone Policy](/user-guide/curating/policies/#tombstone), and a curator will work with the user to find a repository adequate for their needs. As the field and the expertise of the community evolves we may expand the data types accepted.

## Data Usage Agreement

Users who access, preview, download or reuse data and metadata from the DesignSafe Data Depot Repository (DDR) agree to the following norms. If some or any of these norms are not followed, we will notify the user of the infringement and may cancel their DesignSafe account.

* Use of the data includes, but is not limited to, viewing parts or the whole of the content; comparing with data or content in other datasets; verifying research results, and using any part of the content in other projects, publications, or other related work products.
* Users will not use the data in any way prohibited by applicable laws, distribution licenses, and permissions explicit in the dataset publication landing page.
* The data are provided “as is,” and its use is at the users' risk. While the DDR promotes data and metadata quality, the datasets authors and publishers do not guarantee that:

    1. the materials are accurate, complete, reliable or correct;
    2. any defects or errors will be corrected;
    3. the materials and accompanying files are free of viruses or other harmful components; or
    4. the results of using the data will meet the user’s requirements.

* Use of data in the DDR abides by  DesignSafe's  Personal Data Privacy Policy. The DDR does not gather IP addresses about public users that preview or download files from the DDR. The system logs file actions completed by registered users in the DDR including previewing, downloading or copying published data to My Data or My Projects. This  information is only used in aggregate for metrics purposes and is not linked to the user’s identity.
* Users should not obtain personal information associated with DDR data that results in directly or indirectly identifying research subjects, individuals, or organizations with the aid of other information acquired elsewhere.
* Users will not hold the DDR or the data authors liable for any and all losses, costs, expenses, or damages arising from use of DDR data or any other violation of this agreement, including infringement of licenses, intellectual property rights, and other rights of people or entities contained in the data.
* Users are responsible for complying with the restrictions outlined by the dataset's authors in their publications' landing pages and by this agreement, but they are not responsible for any restrictions not otherwise explicitly described here  or in the landing pages.



## Dataset Sizes

Currently we do not impose restrictions on the size of the datasets that can be published. This approach recognizes the necessity of comprehensive data collection and the increasingly large sizes of datasets in natural hazards research. Largest published datasets in DDR are ~5 TB. However, we recommend researchers to be selective and to publish data that is relevant to research reproducibility and that is adequately organized and described so that other researchers interested in reusing the data can find what they need. For datasets larger than 1 TB we suggest that users include research software (ex. Jupyter Notebook) to access, visualize, or subset the dataset. 

## DOIs and Data Citation

DOIs are assigned to Document Collection, Mission, Simulation, Hybrid Simulation, and Experiments as well as to the Other and Research Software data types. Thus, each published dataset has a distinct DOI and corresponding citation that can be copied or downloaded in standard formats. DOIs rely on the [DataCite schema](https://schema.datacite.org/) for complete citation information.

The DDR abides by and promotes the [Joint Declaration of Data Citation Principles](https://force11.org/info/joint-declaration-of-data-citation-principles-final/) amongst its users. For researchers publishing data in DDR, we enable referencing papers that cite the published dataset, and data or software reused for the production of the dataset by providing Related Work and Referenced Data and Software fields. For researchers reusing data from DDR, we encourage and facilitate citing the published datasets using the DOI and the citation language available in their corresponding  landing page. When imputed by authors, both Related Works and Referenced Data and Software information is sent by our pipeline to DataCite so that credits are accounted for as  citations to the published dataset or as citations to  the resources that were reused. 

The expectations of DDR and the responsibilities of users in relation to compliance with data citation are included in the DesignSafe Terms of Use, the [Data Usage Agreement](#data-usage-agreement), and the [Data Publication Agreement](#data-publication-agreement). In the event that we note or are notified that citation policies are not followed, we will ask the authors to include the corresponding citations, all of which is possible after publication by amending the publicationHowever, since it is not easy to know with certainty if users comply with data citation, our approach is to educate our community by reinforcing citation in a positive way. For this we implement outreach strategies to stimulate data citation. Through FAQs, Q&As, webinars, and via emails, we regularly train our users on data citation best practices. And, by tracking and publishing citation  information we demonstrate the value of the datasets and further stimulate publishing and citing data.

## File Formats

The natural hazards research community utilizes diverse research methods to generate and record data in open and proprietary formats, and there is continuous [update of equipment](https://rapid.designsafe-ci.org/equipment-portfolio/) used in the field. To encourage data publication DDR does not have a hard file format restriction policy but we ask our users to convert proprietary file formats to open formats when possible. To guide users to file formats for preservation the DDR follows the [Library of Congress Recommended Format Statement](https://www.loc.gov/preservation/resources/rfs/TOC.html). A list of [recommended file formats](/user-guide/curating/bestpractices/#recommended-file-formats) is published in the Best Practices section. Upon ingestion in the DDR, file format identification information of all the datasets is extracted and stored in the Fedora repository, allowing preservation action decisions to be made when needed.

We also accept proprietary formats such as Excel and Matlab that are widely used by this community for teaching and research, which, as indicated by the LOC Recommended Format Statement, are "a de facto standard for a profession or supported by multiple tools". In the case of Excel and Matlab files, they should not include formulas. Conversion from proprietary to open formats, however, can present challenges. Matlab and Excel formats allow saving complex data structures, and cannot be converted to a `.csv` or a text file without losing clarity and simplicity for handling and reusing the data. Researchers in our field have noted that in many cases, to enable further analysis, it is important to preserve files in the format in which they are generated by instruments such as scanners and drones. However, files from the latest-generation instruments may only be converted by other proprietary software, which limits their reuse. In light of this, we allow users to publish data in both proprietary and open formats, and they should specify the instrument with which data was captured, which files are original and which are converted, and how they were processed.

Many data recording instruments used by this community output data in binary format. For publication, data producers should convert the bin files to open formats and/or include information about their structure, the software that they use to read or extract information for reuse, and how. It is also possible to publish custom-made scripts for reading in data along with the dataset.

## Metadata

Up to date, there is no standard metadata schema to describe natural hazards data. DDR developed metadata to describe natural hazards datasets through a combination of data models, standard metadata schemas, and expert contributed terms.  Embedded in the data models are named categories and elements that experts in the NHERI network deemed important for data explainability. The categories represent the structure of the research method used to generate the dataset and the elements are corresponding information components that authors need to fill out. The metadata elements for each data model are shown in [Metadata Schema and Requirements](#metadatareqs).

To form the metadata schema of the different project types in DDR, the category names and elements are combined with widely-used standards. These are: [Dublin Core](https://www.dublincore.org/specifications/dublin-core/usageguide/2001-04-12/generic/#relation) for description of the dataset project, [DDI (Data Documentation Initiative)](https://ddialliance.org/introduction-to-ddi) for social and behavioral science datasets, [DataCite](https://schema.datacite.org/) for DOI assignment and citation, [CodeMeta](https://codemeta.github.io) for research software and PROV-O to record the structure of the datasets. During the data publication process metadata is ingested to the Fedora repository and mapped to its data model so that relationships between data files and categories are substantiated. Users can download the metadata in json format from the datasets landing page. DataCite metadata can be accessed by users in standardized format from the dataset citation. 

To further describe datasets, the curation interface offers the possibility to add predefined and custom file tags. Predefined file tags are specialized terms provided by the natural hazard community and custom tags are made by the datasets authors. While use of tags is optional, it is highly recommended as tags improve the browsing experience. The lists of predefined tags are evolving for each data model, continuing to be expanded, updated, and corrected as we gather feedback and observe how researchers use them in their publications.

Due to variations in their methodology, researchers may not need all the categories and terms available to describe and represent their datasets. We have identified a core set of required metadata that allows proper data representation, explainability, and citation. If required elements are not  completed during the curation and publication process, the pipeline will not proceed.

### Metadata Dictionaries

{%
  include-markdown '../dictionary.md'
  heading-offset=2 
  start="<!--content-start-->"
%}

## Licenses

As an open repository, DDR offers licenses which pose less demands on reusers and are more effective enabling reproducible science. All the licenses were selected after discussions within our community. Noting that datasets are not copyrightable materials, but works such as reports, instruments, presentations, and research software are, DDR provides licensing options to accommodate the variety of research outputs that are accepted in the DDR. To map to data producers' different preferences for attribution we offer licenses for data and works that expect attribution as well as public domain licenses.

During the publication process users have the option of selecting one license that best fits their needs and standards per publication. Available Licenses for Publishing Datasets in DDR are:

### Datasets

If you are publishing **data**, such as **simulation**, **reconaissance**, or **experimental data**, choose between:

/// html | section.grid
//// html | div
///// html | article.card--plain
      markdown: block

#### [Open Data Commons Attribution (ODC-By)](https://opendatacommons.org/licenses/by/summary/) { #odc-by }

* You allow others to freely share, reuse, and adapt your data/database.
* You expect to be attributed for any public use of the data/database.

/////

_Recommended for Datasets._

////
//// html | div
///// html | article.card--plain
      markdown: block

#### [Open Data Commons Public Domain Dedication and License (PDDL)](https://opendatacommons.org/licenses/pddl/summary/) { #pddl }

* You allow others to freely share, modify, and use this data/databse for any purpose without any restrictions.
* You do not expect to be attributed.

/////
////
///

### Works

If you are publishing **papers**, **presentations**, **learning objects**, **workflows**, **designs**, **etc**, choose between:

/// html | section.grid
//// html | div
///// html | article.card--plain
      markdown: block

#### [Creative Commons Attribution (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/) { #cc-by }

* You allow others to freely share, reuse, and adapt your work.
* You expect to be attributed for any public use of your work.
* You retain your copyright. 

/////

_Recommended for reports, instruments, learning objects, etc. This license requires attribution._

////
//// html | div
///// html | article.card--plain
      markdown: block

#### [Creative Commons Public Domain Dedication (CC0 1.0)](https://creativecommons.org/publicdomain/zero/1.0/) { #cc0 }

* You allow others to freely share, modify, and use this work for any purpose without restrictions.
* You do not expect to be attributed for it.
* You relinquish any rights to the work.

/////

_Carefully read and consider this license, as it does not require attribution._

////
///

### Software

If you are publishing **research software**, choose<!-- between-->:

/// html | section
//// html | div
///// html | article.card--plain
      markdown: block

#### [The 3-Clause BSD License (BSD-3-Clause)](https://opensource.org/license/bsd-3-clause) { #bsd3c }

* You allow others to redistribute and reuse the software in source and binary forms, with or without modification.
* You retain your copyright.
* You expect to be attributed.
* Your name cannot be used to endorse or promote products derived from this software without their specific written permission.
* You distribute the software as is and will not be liable of any consequence of the use of the software by others.

/////
////
///

### Reusing Licensed Datasets

DDR requires that users reusing data from others in their projects do so in compliance with the terms of the resource's original license.

The expectations of DDR and the responsibilities of users with respect to licenses are included in the [DesignSafe Terms of Use](/account/terms-conditions/), the [Data Usage Agreement](/user-guide/curating/policies/#data-usage-agreement), and the [Data Publication Agreement](/user-guide/curating/policies/#data-publication-agreement). In the event that we note or are notified that the licensing policies and best practices are not followed, we will notify the user of the infringement and will apply the [Tombstone](/user-guide/curating/policies/#tombstone) policy.

## Metadata Schema and Requirements { #metadatareqs }

For each project type, the metadata elements shown below are marked as required (\*), recommended (&), or generated by the repository system (!).

Many fields are only recommended because users may not always have the information needed to complete them. (For example, researchers may not have been awarded a grant to conduct research toward a dataset and therefore not have information to input.) We strongly encourage users to complete as many recommended fields as possible. Note that once you begin filling a recommended field, its corresponding sub-fields become required.

Consult the full metadata [Dictionaries](/user-guide/dictionary/) for more details.

<style id="dict-tree-style">
/* To align "view full metadata" link with tree title if wrapped */
.dict-tree small { display: block; translate: 1em; }
/* To add space to bottom of card (typically provided by its content) */
.dict-tree.card--plain { padding-bottom: var(--global-space--pattern-pad); }
/* To add space above list */
.dict-tree.card--plain > ul { margin-top: 1em; }
/* To remove space below list (added by Core-Styles card) */
.dict-tree.card--plain ul { margin-bottom: 0; }
/* To remove space added by Core-Styles to card */
.dict-tree.card--plain li { margin-top: 0; }
</style>

/// html | section.grid

//// details | **Experimental Research Project** <small>([view full dictionary](/user-guide/dictionary/#experimental))</small>
    attrs: {class: dict-tree card--plain}
    open: True

* Project Title \*
* PIs \*
* Participant Institution !
* Project Type \*
* Description \*
* Natural Hazard Type &
* Award Info &
* //// details | Report &

    * Title \*
    * Description \*

  ////
* ///// details | Experiment \*

    * Publisher !
    * DOI !
    * Experiment Title \*
    * Author (PIs/Team Members) \*
    * Experiment Description \*
    * Date of Publication !
    * Dates of Experiment \*
    * Experimental Facility &
    * Experiment Type \*
    * Equipment Type \*
    * Model Configuration \*
    * Sensor Information \*
    * Event \*
    * Related Work &
    * License \*

  /////
* ///// details | Analysis &

    * Analysis Title \*
    * Description \*
    * Referenced Data &

  /////

////
//// details | **Simulation Research Project** <small>([view full dictionary](/user-guide/dictionary/#simulation))</small>
    attrs: {class: dict-tree card--plain}
    open: True

* Project Title \*
* PIs \*
* Participant Institution !
* Project Type \*
* Description \*
* //// details | Report &

    * Title \*
    * Description \*

  ////
* ///// details | Simulation \*

    * Simulation Title \*
    * Author (PIs/Team Members) \*
    * Publisher !
    * Date of Publication !
    * License \*
    * Related Work &
    * Award Info &
    * Keywords \*
    * Description \*
    * Simulation Type \*
    * Simulation Model \*
    * Simulation Input \*
    * Simulation Output \*
    * Referenced Data and Software &

  /////
* ///// details | Analysis &

    * Analysis Title \*
    * Description \*

  /////

////
//// details | **Hybrid Simulation Research Project** <small>([view full dictionary](/user-guide/dictionary/#hybrid))</small>
    attrs: {class: dict-tree card--plain}
    open: True

* Project Title \*
* PIs \*
* Participant Institution !
* Project Type \*
* Natural Hazard Type \*
* Award Info &
* Description \*
* Keywords \*
* Event &
* //// details | Report &

    * Report Title \*
    * Description \*

  ////
* ///// details | Hybrid Simulation \*

    * Hybrid Simulation Title \*
    * Hybrid Simulation Type \*
    * Facility &
    * Related Work &
    * Referenced Data and Software &
    * //// details | Global Model \*

        * Global Model Title \*
        * Description \*

      ////
    * //// details | Master Simulation Coordinator \*

        * Master Simulation Coordinator Title \*
        * Application and Version \*
        * Substructure Middleware \*

      ////
    * //// details | Simulation Substructure \*

        * Simulation Substructure Title \*
        * Application and Version \*
        * Description \*

      ////
    * //// details | Experiment Substructure \*

        * Experiment Substructure Title \*
        * Description \*
        * Experimental Output \*

      ////
  /////

////
//// details | **Field Research Project** <small>([view full dictionary](/user-guide/dictionary/#field))</small>
    attrs: {class: dict-tree card--plain}
    open: True

* Project Title \*
* PI/Co-PI(s) \*
* Project Type \*
* Description \*
* Award - Funding Agency \*
* Keywords \*
* Natural Hazard Type \*
* Natural Hazard Event \*
* Natural Hazard Date \*
* Natural Hazard Location \*
* ///// details | Documents Collection &

    * Title \*
    * Facility &
    * Author(s) \*
    * Date of Publication !
    * DOI !
    * Publisher !
    * License \*
    * Description \*
    * Related Work &
    * Referenced Data and Software &
    * Keywords \*

  /////
* ///// details | Mission \*

    * Mission Title \*
    * Mission Event &
    * Facility &
    * Author(s) \*
    * Date(s) of Mission \*
    * Mission Site Location &
    * Date of Publication !
    * DOI !
    * Publisher !
    * License \*
    * Description \*
    * Related Work &
    * Referenced Data and Software &
    * //// details | Social Sciences Collection

        * Collection Title \*
        * Unit of Analysis &
        * Mode(s) of Collection &
        * Sampling Approach(es) &
        * Sample Size &
        * Date(s) of Collection \*
        * Data Collector(s) \*
        * Collection Site Location &
        * Equipment \*
        * Restriction &
        * Collection Description \*

      ////
    * //// details | Engineering/Geosciences Collection \*

        * Collection Title \*
        * Observation Type \*
        * Date(s) of Collection \*
        * Data Collector(s) \*
        * Collection Site Location &
        * Equipment \*
        * Collection Description \*

      ////
    * //// details | Research Planning Collection &

        * Collection Title \*
        * Collection Description \*

      ////
  /////

////
//// details | **Other** <small>([view full dictionary](/user-guide/dictionary/#other))</small>
    attrs: {class: dict-tree card--plain}
    open: True

* DOI !
* Dataset Title \*
* Author(s) \*
* Facility
* Data Type \*
* Description \*
* Publisher !
* Date of Publication !
* License \*
* Related Work &
* Referenced Data and Software &
* Award &
* Natural Hazard Event &
* Keywords \*

////

///

## Personal Data Privacy

This policy explains what information DesignSafe collects through the use of DDR and how we treat that information. While the DDR website may contain links to other websites, applications and/or software, we are not responsible for the privacy practices of these third parties. Users should read through their practices before clicking or using them.

The DesignSafe DDR is hosted at the University of Texas at Austin, Texas Advanced Computing Center (TACC). A DesignSafe user account is a TACC user account. When registering for an account, TACC collects users' name, email address, institution, and country of citizenship. Additionally, after account approval and subsequent login to DesignSafe, DesignSafe collects your Natural Hazard Interests, Technical Domain, Professional Level and Research Activities.

When users publish data or other products as authors and co-authors, their names, email address, and institution become publicly available in the dataset's landing page. This facilitates establishing contact with authors about the particulars of their datasets publications.

When a user accesses DesignSafe, the web server software generates log files of the IP address of their computer and the user-agent, which contains minimal information about their browser and operating system. If the user is logged to DesignSafe, their username is also recorded. When a user downloads a file from the DDR, our software collects the aforementioned data and accompanying download data such as the time of the download and files downloaded. The aforementioned data is available to DesignSafe web programmers and data analysts to help diagnose problems, manage the repository, respond to users requests and measure datasets usage.

Data collected during downloads, views, or copies of published datasets are used solely in aggregate to comply with [Make Data Count](https://makedatacount.org/learn-about-us/)) usage reporting standards. This information is processed and made publicly available in the datasets landing pages as [Unique Requests](/user-guide/curating/metrics#unique-requests) and [Unique Investigations](/user-guide/curating/metrics#unique-investigations) for purposes of showing the datasets usage. All data is retained in the logs and DDR's internal database as needed for business purposes. We do not share any personally identifiable information we collect or develop about users to any third parties for any purpose, unless required by law. Any reports we may share externally use unidentifiable, aggregated data.

DesignSafe only uses first-party cookies for authentication. We use cookies so that users don't have to re-authenticate every time they refresh the page and no PII is stored in those cookies. There are Google Analytics cookies that collect metrics about visitors, but the personally identifying pieces like IP addresses are anonymized. Users browsing habits are not tracked for advertising or marketing purposes.

Users are required to use [Multi-Factor Authentication (MFA)](https://docs.tacc.utexas.edu/basics/mfa/) as an additional security measure when logging to DDR. DDR has security measures to prevent loss of the data and information. See the [DesignSafe Cyber Security Policy](/user-guide/tools/advanced/cybersecurity/) for more details.

## Project Types / Data Models

To publish their datasets users should select a project type that best represents the research method that they used to generate their dataset. Project types facilitate data curation and enable a uniform publication experience and representation of natural hazards datasets. Project types are based on six data models encompassing: experimental, simulation, field research, hybrid simulation, research software, and other datasets as well as lists of specialized vocabulary. Loosely based on the [Core Scientific Metadata Model](http://icatproject-contrib.github.io/CSMD/), the first four models were designed in collaboration with natural hazards researchers considering the [community's use of different research methods and workflows](https://www.youtube.com/watch?v=iYzvYi-SY8Q), and [the need to document the processes](https://www.youtube.com/watch?v=xUyFJwZmyqM) from which data derives using professional terms.

Data models are implemented as interactive functions in the DDR web interface and include onboarding  instructions that guide the researchers through the curation and publication tasks. As researchers move through curating and publishing, the interactive features reinforce data and metadata completeness and thus enhance the quality of the datasets. The process will not move forward if requirements for metadata are not fulfilled or if key files are missing.

Data models are reviewed and improved upon regularly for changes or additions. 

## Protected Data

Protected data are information subject to regulations under relevant privacy and data protection laws, such as [HIPAA](https://www.hhs.gov/hipaa/for-professionals/privacy/laws-regulations/index.html), [FERPA](https://studentprivacy.ed.gov/faq/what-ferpa) and [FISMA](https://csrc.nist.gov/projects/risk-management/detailed-overview), as well as human subjects data containing [Personally Identifiable Information (PII)]https://cloud.wikis.utexas.edu/wiki/spaces/utldigitalstewardship/pages/43060649/Identifying+and+removing+personally+identifiable+information+PII) and data containing [sensitive information](https://en.wikipedia.org/wiki/Information_sensitivity). 

In the DDR protected data issues are considered at the onset of the curation and publication process and before data is uploaded to the repository. Researchers working with human subjects data are prompted to respond if they are working with protected data at the moment of selecting the Field Research project type to curate and publish their data. If the answer is yes, then a curator will contact them to discuss options and procedures.

Considerations about protected data emerge both during data management prior to and during curation and publication stages . 

### Managing Protected Data

Managing protected data in the DDR involves complying with the data storage and publication procedures approved by the authors' Institutional Review Board (IRB) or equivalent body regarding human subjects research.

Protected data should be anonymized before uploading to DDR. 

DesignSafe My Data and My Projects are secure spaces to store  protected data as long as it is not under HIPAA, FERPA or FISMA regulations. If data needs to comply with these regulations, researchers must evaluate the need to use [TACC‘s Protected Data Service](https://www.tacc.utexas.edu/protected-data-service). Very sensitive data, PII data prior to anonymization, and data that will never be anonymized can also be stored and processed within TACC's Protected Data Service. Researchers requiring this service are welcome to send a [ticket](http://www.designsafe-ci.org/help/new-ticket) or join [curation office hours](https://www.designsafe-ci.org/facilities/virtual-office-hours/)

Note that the responsibility to maintain datasets within TACC’s Protected Data Service  lies on the authors. 

### Publishing Protected Data

Do not publish HIPAA, FERPA, FISMA, PII data, data including sensitive information, and any related documentation (reports, planning documents, field notes, etc.) data unless you have obtained the proper informed consents, and have abided by the permissions and requirements established by your IRB. 

Protected data can only be published if identifying information is removed. No direct identifiers and up to three indirect identifiers are allowed. Direct identifiers include items such as participant names, participant initials, facial photographs, home addresses, phone number, email, vehicle identifiers, biometric data, names of relatives, social security numbers and dates of birth or other dates specific to individuals. Indirect identifiers are identifiers that, taken together, could be used to deduce someone’s identity. Examples of indirect identifiers include gender, household and family compositions, places of birth, or year of birth/age, ethnicity, general geographic indicators like postal code, socioeconomic data such as occupation, education, workplace or annual income.

Researchers should also publish the documentation showing the IRB resolution.  If a researcher has obtained consent from the subjects to publish PII, it should be clearly stated in the publication description. In this way users can clearly understand the restrictions imposed on the protected data. 

Providing that any form of protected information is removed, the corresponding research instruments such as questionnaires and surveys should be published along with the data so that other users understand the data provenance. 

If a researcher needs to restrict public access to data because it includes HIPAA, FERPA, or other sensitive information, or if de-identification precludes the data from being meaningful, it is possible to publish the dataset as Restricted. The Restricted dataset publication will include metadata,  a summary or aggregation of the data,  as well as corresponding research instruments and code book if applicable. IRB documentation should be also included.  In cases where the authors wish to share the datasets with other researchers under certain conditions, they can consult with the DDR curator  and publish those conditions. Users interested in the restricted dataset can contact the project PI and other members through their published email address to request access to the data and to discuss the conditions for its reuse. Note that the responsibility of maintaining and managing a restricted dataset lies on the authors

For an example of restricted access and conditions see the following dataset: 

Errett, N., C. Hartwell, J. Randazza, G. Bratman, D. Eisenman, B. Ellis, E. Goodsell, C. Levy (2023). "An Exploratory Study of Perspectives from Forest Therapy Guides in a Wildfire Affected Community.", in Forest therapy as a trauma-informed approach to disaster recovery \[Version 2\]. DesignSafe-CI. [https://doi.org/10.17603/ds2-sffr-0489](https://doi.org/10.17603/ds2-sffr-0489)

In DDR, data with granular geographical locations including images that capture humans that are not the focus of the research and would not fall under the purview of an IRB (e.g. StreetView, Geolocated imagery) are  considered sensitive and its publication needs to be discussed with the data curator. For example, researchers conducting field observations may capture human subjects in their documentation including work crews, passersby, or people affected by the disaster. If camera instruments capture people that are in the observed areas incidentally, we recommend that their faces and any [PII](https://www.technology.pitt.edu/help-desk/how-to-documents/guide-identifying-personally-identifiable-information-pii) is anonymized/blurred before publishing. In the case of images of team members, make sure they are comfortable with making their images public. Do not include roofing/remodeling records containing any form of PII. When those are public records, researchers should point to the site from which they are obtained using the Referenced Data and Software field. 

It is the user’s responsibility to adhere to these policies and the standards and resolution of their IRB. DesignSafe will not be held liable for any violation regarding improper publication of protected data. User uploads that we are notified of that violate this policy may be removed from the DDR with or without notice, and the user may be asked to suspend their use of the DDR and other DesignSafe resources. We may also contact the user’s IRB and/or other respective institution with any cases of violation, which could incur in an active audit of the research project, so users should review their institution’s policies regarding publishing with protected data before using DesignSafe and DDR. For clarification purposes researchers should contact DDR through a [help ticket](http://www.designsafe-ci.org/help/new-ticket) or join [curation office hours](https://www.designsafe-ci.org/facilities/virtual-office-hours/) any time across the curation of this type of data .

## Publication Granularity  

Based on the way in which research methods and projects are implemented in the natural hazards community, the DDR’s data model structure considers  a research project type at the top level, and the possibility to publish one or more dataset within each project. The exception to this policy is  project type Other which allows only one dataset publication with a DOI. In addition users can publish Research Software and Document Collections including reports and survey instruments, as stand alone publications with their own DOI. The former within any project type, and the latter only within the Field Research type. 

To enhance contextual information by pointing to the relations of the published datasets, users can link between internal and external datasets, corresponding publications and software, and other references through the fields Related Work and Referenced Data and Software. 

## Publishing Research Software

The following definition from the Journal of Open Source Software (JOSS) applies to the Research Software that can be published in the DDR.

> ...software that: solves complex modeling problems in a scientific context (physics, mathematics, biology, medicine, social science, neuroscience, engineering); supports the functioning of research instruments or the execution of research experiments; extracts knowledge from large data sets; offers a mathematical library; or similar.

Research software in DDR can be published within the:

* Project type Research Software when it is maintained in Github.
    * The software should be maintained and available as the latest release in a GitHub repository from where it is pulled for publication in the DDR.
* Project type Other, if it is not maintained in Github.

Below are the requirements for publishing research software in the DDR:

* Research software should be open source, which includes being distributed with an open source license. The software license offered in the Data Depot is the 3-Clause BSD License.
* If the research software uses libraries/dependencies, their respective licenses should allow reuse without restrictions.
* Within the publication package a [CodeMeta file (in `json` format)](https://codemeta.github.io/codemeta-generator/) with information that allows for attribution, dissemination, reuse, and interoperability of the research software should be included.
* Also include a `Readme` file that explains how to install and use the software.
* Prior to publishing, users agree that the software is functional and works according to the instructions provided in the readme file.
* Research software should be self contained. While it should be possible to use the software with published data in DesignSafe or within DesignSafe Tools and Applications, it should not be written such that it is dependent on absolute file paths in DesignSafe data publications or on external file systems.
* Research software publications should not include datasets. Instead datasets that are used by the research software for training, testing, validation, etc. should be published as a stand-alone datasets and linked to the research software publication via the Related Work/linked entry available in the curation form. In turn, a dataset can be related to the research software publication via the Referenced Data and Software/cites entry available in the curation form.
* The citation and DOI obtained should be included in the GitHub repo and [add the DesignSafe citation with DOI to the GitHub repo](/user-guide/curating/bestpractices/#adding-citation-to-github-repo).
* For guidance on publishing good quality research software, see [Research Software Best Practices](/user-guide/curating/bestpractices/#research-software).

What does not qualify as research software:

* Minor 'utility' packages, including 'thin' API clients, and single-function packages are not research software.
* Exploratory visualizations or basic scripting tools to analyze data are not considered research software. These can be published along with their respective datasets.

## Publishing Additional Datasets

DDR enables publishing datasets subsequently within a project, and each dataset will bear a unique citation and DOI. This feature is necessary due to the timing of research projects involving multiple experiments,  simulations, and field research missions which happen over time. These datasets may involve different teams, and require the publication of different documents or datasets at different time intervals.

While users may publish more than one dataset in a project at one time, subsequent publications are  enabled for Experimental, Simulation, Hybrid Simulation, and Field research projects. Project types Other and Research Software do not allow subsequent publications.

Within My Project, users can upload new data, and add a new simulation, hybrid simulation, mission, document collection, or experiment to their published project. Curating and publishing the new dataset follows the same pipeline as publishing the previous dataset/s. Once the new dataset is curated, users should go to Publication Preview and follow the green button  "publish additional datasets". All project's datasets can be amended and versioned individually.

## Timely Data Publication

As an NSF-funded platform we expect researchers to publish in a timely manner. Recommended time limits for publishing different project types were crafted considering time required for curating the data as well as the urgency with which field research datasets are required by users.

Recommended Publishing Timeline for Different Data Types:

| Project/Data Type | Recommended Publishing Timeline |
| --- | --- |
| Experimental | Up to 12 months from completion of experiment |
| Simulation | Up to 12 months from completion of simulations |
| Reconnaissance: Immediate Post-Disaster | Up to 3 months from returning from the field |
| Reconnaissance: Follow-up Research | Up to 6 months from returning from the field |

For guidelines specific to RAPID reconnaissance data, see [Using RAPID: Publishing Guidelines](https://rapid.designsafe-ci.org/using-rapid/publishing-guidelines). 

## Tombstone

A tombstone is a landing page that shows the citation of a dataset that has been withdrawn from public access. Withdrawal of datasets can be caused because of research retraction, because the data is not compliant with the accepted Data Types, or upon post-publication review because it does not meet with one or more curation [Policies](/user-guide/curating/policies) or [Best Practices](/user-guide/curating/bestpractices). In the latter case the curator reviewing the dataset will first alert the author/s to improve their publication within 30 days, upon which the dataset will be tombstoned. A tombstone dataset landing page contains the citation and the DOI is resolvable, but the DOI metadata is no longer indexed in DataCite Commons and will not be found unless someone knows the exact DOI string.