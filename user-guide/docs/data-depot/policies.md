# Policies

## Changes to Policies

Our policies are regularly reviewed and updated as needed. Users will be notified in advance when policies will be updated.

## Continuity of Access

As an NSF funded project, DesignSafe is subject to renewal every 5 years. As a requirement of the current award, there is a contingency plan to transfer all the DDR data, metadata, and corresponding DOIs to a new awardee - should one be selected - without interruption of services and access to data. The portability plan is confirmed and updated in the Operations Project Execution Plan that we present annually to the NSF.

If the NSF and/or other community stakeholders discontinue the NHERI program or a subsequent data repository, we will continue to preserve the published data and provide access through TACC, DesignSafe’s host at the University of Texas at Austin. TACC has formally committed to preserving the data with landing pages and corresponding DOIs indefinitely. TACC’s User Services team and curators will attend to users’ requests and help tickets related to the data. Because TACC is constantly updating its high-performance storage resources and security mechanisms, data will be preserved at the same preservation level that is currently available. Since DOIs are supported through the University of Texas Libraries, and web services and data reside within TACC’s managed resources, access to data will not be interrupted. [Fedora](https://fedorarepository.org/) is now part of TACC’s software suite and we will continue its maintenance as our preservation repository. Like all systems at TACC, we will revisit its versioning and continuity and make decisions based on state-of-the-art practices. If resources become too constrained, TACC will continue to keep an archive copy on [Ranch](https://tacc.utexas.edu/systems/ranch/), with landing pages on online storage, for as long as TACC remains a viable entity.

## Data Embargoes

A data embargo is a period of time during which a dataset has a DOI but is not made broadly accessible, awaiting review and acceptance by a journal publication. Many researchers request a DOI (digital object identifier) for their dataset prior to its publication to include in papers submitted to journals for review. 

DDR  does not provide data embargoes because a DOI is a digital identifier that points to a permanent location on the web. Datasets need to be fully curated in order to be granted a DOI. If datasets are not published, the DOI in the references is not a working DOI and directs to an error page. Users should publish their datasets prior to submitting their papers including the formal dataset citation so that the citation works properly if reviewers want to evaluate the dataset.  In addition, DDR does not offer capabilities for enabling single or double blind peer review. 

DDR continues working with users to:

* Provide access to reviewers via My Project before the dataset is published. There is no DOI involved and the review is not anonymous.
* Help users curate and publish their datasets so they are publicly available for reviewers in the best possible form.
* Provide amends and versioning so that prompt changes can be made to data and metadata upon receiving feedback from the reviewers or at any other time.

## Data Preservation

Data preservation encompasses activities carried out by all the stakeholders involved in the lifecycle of data, from data management planning to data curation, publication and long-term archiving. We have [guidance and functionalities](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?pli=1&tab=t.0#heading=h.yd85kbcdlgs9)  in place to address the preservation of data prior to and once data  is submitted to the DDR.

Data in the (DDR) is preserved according to state-of-the art digital library standards and best practices. DesignSafe is implemented within the reliable, secure, and scalable storage infrastructure at the [Texas Advanced Computing Center (TACC)](https://tacc.utexas.edu/), with more than 20 years of experience and innovation in High Performance Computing. TACC has operated a digital data archive continuously since 1986 - currently implemented in the [Corral](https://www.tacc.utexas.edu/systems/corral) data management system and the [Ranch](https://www.tacc.utexas.edu/systems/ranch) tape archive -, with capacity of approximately half an exabyte. Corral and Ranch hold the data for the DDR and hundreds of other research data collections. These storage resources are reliable, secure, monitored 24/7, and under a rigorous maintenance and update schedule, operated in production by a large team of professional staff. Public user guides document the capabilities and hardware, and internal configuration management is managed via Redmine, visible only to systems staff. Between those systems there are multiple layers of data protection and reliability, including snapshots, server redundancy, distributed RAID, and replication to the tape archive.

Within the storage infrastructure a dedicated [Fedora](https://duraspace.org/fedora/) 5.x digital repository, considered a standard for digital libraries, assures the authenticity and integrity of the published datasets by maintaining provenance, fixity, and preservation metadata in accordance to [standard schemas](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?pli=1&tab=t.0#heading=h.los5k5wdc37k) and the relationships between data and corresponding metadata for each published research project. Specifically, Fedora was chosen as a repository because the flexibility of its model allows managing the structure of the DDR’s different project types .

The DDR-Fedora workflow is as follows. Once a dataset is curated and the user has agreed to the last step in the publication process, published files are hashed for fixity - integrity- and file formats are identified - preservation using OPF-FIDO. The integrity and preservation information about each file is added to a manifest file. Files are stored on Corral in a secure location that is also recorded on the manifest file. Ingestion of metadata from the web-visible storage into Fedora takes place under automated control when the publication workflow executes. At that point, user contributed metadata is mapped to the standard descriptive and data citation schemas DublinCore, DDI, and DataCite, and data model metadata for each project type is mapped to PROV to reflect the relations between different components of the datasets and to the research project.  The manifest file and the metadata that the user has been inputting throughout the curation process is sent to Fedora. For each individual file, Fedora maintains preservation metadata in the standard [PREMIS](https://www.loc.gov/standards/premis/) format.

Both the front-end copies and the Fedora repositories are in systems that implement de-clustered RAID and have sufficient redundancy to manage up to 3 drive failures for a single file stripe. The file system itself is mirrored daily between two datacenters. The primary data is also periodically backed up to the tape archive for a third copy. The database that manages metadata in Fedora is also quiesced, snapshotted, and backed to tape on a regular automated schedule.In case of failure where data is compromised, the system can be restored from the replication.

The underlying storage systems for the DDR are managed in-house at TACC. All the storage systems used by DesignSafe are shared multi-tenant systems, hosting many projects concurrently in addition to DesignSafe – the front-end disk system currently has ~20PB of data, with the [tape archive](https://www.tacc.utexas.edu/systems/ranch) containing roughly 80PB. This preservation environment allows maintaining data in secure conditions at all times, before and after publication, comply with [NDSA Preservation Level 1](https://ndsa.org/publications/levels-of-digital-preservation/), attain and maintain the required representation and descriptive information about each file, and be ready at any time to transfer custody of published data and metadata in an orderly and validated fashion. 

Each published dataset has a [digital object identifier (DOI)](https://github.com/DesignSafe-CI/DS-User-Guide/blob/mesteva-datadepotrepo-updates/user-guide/docs/curating/bestpractices.md#curation-publication-faq) that provides a persistent link to the published data. The DOI is available in the dataset landing page, along with all the required metadata and documentation.

While at the moment DDR is committed to preserve data in the format in which it is submitted, we procure the necessary authorizations from users to conduct further preservation actions as well as to transfer the data to other organizations if applicable. These permissions are granted through our [Data Publication Agreement](https://www.designsafe-ci.org/user-guide/curating/policies/#agreement), which authors acknowledge and have the choice to agree to at the end of the publication workflow and prior to receiving a DOI for their dataset.

The DDR has been operational since 2016 and is currently supported by the NSF from October 1st, 2020 through September 30, 2025. During this award period, the DDR will continue to preserve the natural hazards research data published since its inception  as well as supporting preservation of and access to legacy data and the accompanying metadata from the Network for Earthquake Engineering Simulation (NEES), a NHERI predecessor, dating from 2005. The legacy data comprising 33 TB, 5.1 million files,2 and their metadata was transferred to DesignSafe in 2016 as part of the conditions of the [original grant](https://www.nsf.gov/pubs/2014/nsf14605/nsf14605.htm) . See NEES data [here](https://www.designsafe-ci.org/data/browser/public-legacy/). Our [Continuity of Access Policy](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?pli=1&tab=t.0#heading=h.v8cx1phb2nth) presents the preservation and access alternatives that can be implemented at the end of the award period.

## Dataset Quality

DDR is a self-publication repository which means that authors are ultimately responsible for the quality of the dataset that they share with the world. However,  we understand that producing and sharing quality datasets  is a collaborative effort between researchers and the DDR and we partner with users to publish [FAIR](https://www.go-fair.org/fair-principles/) (Findable, Accessible, Interoperable, and Reusable) datasets. In consultation with the larger NHERI network we are continuously observing and defining [best practices](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?tab=t.0#heading=h.yd85kbcdlgs9) that emerge from our community's understanding and standards. These are communicated through onboarding instructions in the curation and publication pipeline, our policies and  best practices recommendations,  our guidance during virtual office hours, and through our help ticketing system. 

We address data quality from a variety of perspectives:

Metadata quality: Metadata is fundamental to data explainability and reuse. To support metadata quality we provide onboarding descriptions of all metadata elements, indicate which ones are required, and suggest how to complete them. [Requirements for core metadata elements](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?tab=t.0#heading=h.fs1mjdamsvw3) are automatically reinforced during the publication pipeline, and the dataset will not be published if requirements are not met. 

Dataset content quality: Different groups in the NHERI network have developed guidelines for data quality assurance, including [StEER](https://www.steer.network/resources), [CONVERGE](https://converge.colorado.edu/data/data-management) and [RAPID](https://rapid.designsafe-ci.org/using-rapid/publishing-guidelines). In turn, each [NHERI Experimental Facility](https://designsafe-ci.org/facilities/experimental/) has methods and criteria in place for ensuring the quality of the data they generate from experiments. Most of the data curated and published in the DDR are related to peer-reviewed research projects and papers, speaking to the relevance and standards of their design and outputs. Still, the community acknowledges that opportunities for detailed quality assessment often emerge after publication. Because work in many projects continues after publication, both for the data producers and reusers, the community can version datasets.

Dataset completeness: We understand data completeness as the presence of all relevant files that enable reproducibility, understandability, and reuse. This may include readme files, data dictionaries and data reports, as well as data files. The DDR complies with data completeness by recommending and requesting users to include required data to fulfill the corresponding data model categories. During the publication process the system verifies that those categories have data assigned to them. The View Data Diagram link on the landing page reflects the data categories  present in each dataset. 

Dataset quality statement: We ask users to include a brief statement if and about how they verify the quality and completeness of their data including processes such as validation, calibration, performance evaluation, resolution, transformations, etc. 

Dataset publication review: Data curators review new publications on a regular basis. These reviews show how the community understands and uses the data models and the metadata fields, and allows verifying the overall quality of the published datasets. If curation problems that cannot be automatically detected are identified (e.g. insufficient or unclear descriptions, file or category misplacement, etc.) the dataset authors are contacted and work along with the curator on amending and or versioning their datasets.  

Statement of data quality: We ask that data producers include a statement of dataset quality indicating if and how they verified the data quality, or if they published the raw data as is. 

Meeting the dataset quality requirement: In cases in which the authors do not comply with these data quality requirements, DDR abides by the [Tombstone policy](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?tab=t.0#heading=h.253ecanf6gfm) and may permanently remove the dataset. 



## Data Publication Agreement

This agreement must be read and accepted by the user prior to publishing a dataset:

This submission represents my original work and meets the policies and requirements established by the DesignSafe. I grant the Data Depot Repository (DDR) all required permissions and licenses to make the work I publish available for archiving and continued access. These permissions include allowing DesignSafe to:

1. Disseminate the content in a variety of distribution formats according to the DDR Policies and Best Practices.
2. Promote and advertise the content publicly in DesignSafe.
3. Store, translate, copy, or re-format files in any way to ensure their future preservation and accessibility.
4. Modify the dataset interface representation for improved usability.
5. Exchange and or incorporate metadata or documentation in the content into public access catalogues.
6. Transfer data and metadata with respective unique digital object identifier (DOI)  to another institution for long-term accessibility if needed for continuous access.

I understand the type of license I choose to distribute my data, and I guarantee that I am entitled to grant the rights contained in them. I agree that when this submission is made public with a DOI, this DOI cannot be discarded, even if the dataset is [tombstoned](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?tab=t.0#heading=h.mijsiryl16dx). If the dataset requires revision, a new version of the dataset will be published under the same DOI.

I warrant that I am lawfully entitled and have full authority to license the content submitted, as described in this agreement. None of the above supersedes any prior contractual obligations with third parties that require any information to be kept confidential.

If applicable, I warrant that I am following the IRB agreements in place for my research and following the [Protected Data Policy](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?tab=t.0#heading=h.gr7h4hq8k2fp). 

I understand that using the DDR to publish datasets is entirely voluntary and that I am solely responsible for all possible confidentiality, privacy, data quality and data content  issues that may arise from the publication. These terms do not supersede any prior third party contractual obligations to confidentiality or proprietary information. 

## Data Types

We accept engineering and social and behavioural sciences datasets, reports, research software and presentations derived from research conducted in the context of natural hazards regarding the impacts of wind, earthquake, storm surge, wildfires, and sustainable materials management. Specifically in the area of engineering, the primary focus is on data generated through simulation, hybrid simulation, experimental, machine learning, and field research methods. In social and behavioural sciences (SBE), accepted datasets and research instruments encompass the study of the human dimensions of hazards and disasters and we expanded our focus to include datasets related to COVID-19. Users who submit datasets that do not match the accepted data types will be notified whenever possible before publication so that they can remove their data. If a noncompliant dataset is published with a DOI, we will abide by the [Tombstone Policy](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?tab=t.0#heading=h.253ecanf6gfm), and a curator will work with the user to find a repository adequate for their needs. As the field and the expertise of the community evolves we may expand the data types accepted.

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

In the DDR DOIs are assigned at the Mission, Simulation, Hybrid Simulation, and Experiment levels as well as to the Other type of publication. Thus, each published dataset has a distinct DOI and corresponding citation. DOIs rely on the [DataCite schema](https://schema.datacite.org/) for complete citation information.

The DDR abides by and promotes the [Joint Declaration of Data Citation Principles](https://force11.org/info/joint-declaration-of-data-citation-principles-final/) amongst its users. For researchers publishing data in DDR, we enable referencing papers that cite the published dataset, and data or software reused for the production of the dataset by providing Related Work and Referenced Data and Software fields. For researchers reusing data from DDR, we encourage and facilitate citing the published datasets using the DOI and the citation language available in their corresponding  landing page. When imputed by authors, both Related Works and Referenced Data and Software information is sent by our pipeline to DataCite so that credits are accounted for as  citations to the published dataset or as citations to  the resources that were reused. 

The expectations of DDR and the responsibilities of users in relation to compliance with data citation are included in the DesignSafe Terms of Use, the [Data Usage Agreement](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?tab=t.0#heading=h.ng2qd9najkd9), and the [Data Publication Agreement](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?tab=t.0#heading=h.nkcxboxktn36). In the event that we note or are notified that citation policies are not followed, we will ask the authors to include the corresponding citations, all of which is possible after publication by amending the publicationHowever, since it is not easy to know with certainty if users comply with data citation, our approach is to educate our community by reinforcing citation in a positive way. For this we implement outreach strategies to stimulate data citation. Through FAQs, Q&As, webinars, and via emails, we regularly train our users on data citation best practices. And, by tracking and publishing citation  information we demonstrate the value of the datasets and further stimulate publishing and citing data.

## File Formats

The natural hazards research community utilizes diverse research methods to generate and record data in open and proprietary formats, and there is continuous [update of equipment](https://rapid.designsafe-ci.org/equipment-portfolio/) used in the field. To encourage data publication DDR does  not have a hard file format restriction policy but we ask our users to convert proprietary file formats to open formats when possible.

The DDR follows the [Library of Congress Recommended Format Statement](https://www.loc.gov/preservation/resources/rfs/TOC.html) and has [recommended file formats](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?tab=t.0#heading=h.sw4razcnwdhp) to guide conversion from proprietary formats to open formats for long term preservation. Conversion from proprietary to open formats, however, can present challenges. Matlab, for example, allows saving complex data structures, yet not all of the files stored can be converted to a csv or a text file without losing some clarity and simplicity for handling and reusing the data. In addition, some proprietary formats such as jpeg and excel have been considered standards for research and teaching for the last two decades.  In attention to this, we allow users to publish the data in both proprietary and open formats. We keep file format identification information of all the datasets in the Fedora repository.

## Metadata

Up to date, there is no standard metadata schema to describe natural hazards data. DDR developed metadata to describe natural hazards datasets through a combination of data models, standard metadata schemas, and expert contributed terms.  Embedded in the data models are named categories and elements that experts in the NHERI network deemed important for data explainability. The categories represent the structure of the research method used to generate the dataset and the elements are corresponding information components that authors need to fill out. The metadata elements for each data model are shown in [Metadata Schema and Requirements](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?tab=t.0#heading=h.fs1mjdamsvw3).

To form the metadata schema of the different project types in DDR, the category names and elements are combined with widely-used standards. These are: [Dublin Core](https://www.dublincore.org/specifications/dublin-core/usageguide/2001-04-12/generic/#relation) for description of the dataset project, [DDI (Data Documentation Initiative)](https://ddialliance.org/introduction-to-ddi) for social and behavioral science datasets, [DataCite](https://schema.datacite.org/) for DOI assignment and citation, and PROV-O to record the structure of the datasets. During the data publication process  metadata is ingested to the Fedora repository and mapped to its data model so that  relationships between data files and categories are substantiated. Users can download the metadata in json format from the datasets landing page. DataCite metadata can be accessed by users in standardized format from the dataset citation. 

To further describe datasets, the curation interface offers the possibility to add predefined and custom file tags. Predefined file tags are specialized terms provided by the natural hazard community and custom tags are made by the datasets authors. While use of tags is optional, it is highly recommended as tags improve the browsing experience. The lists of predefined tags are evolving for each data model, continuing to be expanded, updated, and corrected as we gather feedback and observe how researchers use them in their publications.

Due to variations in their methodology, researchers may not need all the categories and terms available to describe and represent their datasets. We have identified a core set of required metadata that allows proper data representation, explainability, and citation. If required elements are not  completed during the curation and publication process, the pipeline will not proceed.

## Licenses

DDR provides users with licensing options to accommodate the variety of research outputs that are published on the DDR including datasets, reports, survey instruments, presentations, learning materials, and research software. The licenses were selected after discussions within our community. 

As an open repository, DDR offers licenses with few - expect attribution - to no restrictions - do not expect attribution -  which provide less demands on reusers and are more effective enabling reproducible science. 

During the publication process users have the option of selecting one license per publication with a DOI after identifying which license best fits their needs and institutional standards. Note that datasets are not copyrightable materials, but works such as reports, instruments, presentations and learning objects are. Available Licenses for Publishing Datasets in DDR are: 

### Datasets

If you are publishing data, such as simulation, reconaissance, or experimental data, choose between:

!!! tip "[Open Data Commons Attribution (ODC-By)](https://opendatacommons.org/licenses/by/summary/)"

    * You allow others to freely share, reuse, and adapt your data/database.
    * You expect to be attributed for any public use of the data/database.

    <small>Recommended for Datasets.</small>

!!! tip "[Open Data Commons Public Domain Dedication and License (PDDL)](https://opendatacommons.org/licenses/pddl/summary/)"

    * You allow others to freely share, modify, and use this data/databse for any purpose without any restrictions.
    * You do not expect to be attributed.

### Works

If you are publishing papers, presentations, learning objects, workflows, designs, etc, choose between:

!!! tip "[Creative Commons Attribution (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/)"

    * You allow others to freely share, reuse, and adapt your work.
    * You expect to be attributed for any public use of your work.
    * You retain your copyright. 

    <small>Recommended for reports, instruments, learning objects, etc. This license requires attribution.</small>

!!! tip "[Creative Commons Public Domain Dedication (CC0 1.0)](https://creativecommons.org/publicdomain/zero/1.0/)"

    * You allow others to freely share, modify, and use this work for any purpose without restrictions.
    * You do not expect to be attributed for it.
    * You relinquish any rights to the work.

    <small>Carefully read and consider this license, as it does not require attribution.</small>

## Software

DDR requires that users reusing data from others in their projects do so in compliance with the terms of the resource's original license.

The expectations of DDR and the responsibilities of users with respect to licenses are included in the [DesignSafe Terms of Use](https://www.designsafe-ci.org/account/terms-conditions/), the [Data Usage Agreement](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?pli=1&tab=t.0#heading=h.ng2qd9najkd9), and the [Data Publication Agreement](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?pli=1&tab=t.0#heading=h.nkcxboxktn36). In the event that we note or are notified that the licensing policies and best practices are not followed, we will notify the user of the infringement and will apply the [Tombstone](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?pli=1&tab=t.0#heading=h.253ecanf6gfm) policy.

## Metadata Schema and Requirements

For each project type, the metadata elements including those that are required and recommended are shown below. Consult the full [metadata dictionaries](https://www.designsafe-ci.org/user-guide/dictionary/) for more details.

### Experimental Research Project

[View Metadata Dictionary](https://www.designsafe-ci.org/user-guide/dictionary/#experimental)

* DOI
* Project Title
* Author (PIs/Team Members)\*
* Participant Institution\*
* Project Type\*
* Description
* Publisher†
* Date of Publication†
* Licenses
* Related Works\*$
* Award\*
* Keywords
* Experiment\*

* Report
* DOI†
* Experiment Title
* Author (PIs/Team Members)\*
* Experiment Description
* Date of Publication†
* Dates of Experiment
* Experimental Facility
* Experiment Type
* Equipment Type\*
* Model Configuration\*
* Sensor Information\*
* Event\*
* Experiment Report$

* Analysis\*$

* Analysis Title
* Description
* Referenced Data\*

### Simulation Research Project

[View Metadata Dictionary](https://www.designsafe-ci.org/user-guide/dictionary/#simulation)

* DOI†
* Project Title
* Author (PIs/Team Members)\*
* Participant Institution\*
* Project Type\*
* Description
* Publisher†
* Date of Publication†
* Licenses
* Related Works\*$
* Award\*
* Keywords
* Simulation\*

* Report
* Simulation Title
* Author (PIs/Team Members)\*
* Description
* Simulation Type
* Simulation Model
* Simulation Input\*
* Simulation Output\*
* Referenced Data\*
* Simulation Report$

* Analysis\*$

* Analysis Title
* Description
* Referenced Data\*

### Hybrid Simulation Research Project

[View Metadata Dictionary](https://www.designsafe-ci.org/user-guide/dictionary/#hybrid)

* DOI†
* Project Title
* Author (PIs/Team Members)\*
* Participant Institution\*
* Project Type\*
* Description
* Publisher†
* Date of Publication†
* Licenses
* Related Works\*$
* Award\*
* Keywords
* Hybrid Simulation\*

* Report
* Global Model

* Global Model Title
* Description

* Master Simulation Coordinator

* Master Simulation Coordinator Title
* Application and Version
* Substructure Middleware

* Simulation Substructure\*

* Simulation Substructure Title
* Application and Version
* Description

* Experiment Substructure\*

* Experiment Substructure Title
* Description

### Field Research Project

[View Metadata Dictionary](https://www.designsafe-ci.org/user-guide/dictionary/#field)

* Project Title
* PI/Co-PI(s)\*
* Project Type
* Description
* Related Work(s)\*$
* Award(s)\*$
* Keywords
* Natural Hazard Event
* Natural Hazard Date
* Documents Collection\*$

* Author(s)\*
* Date of Publication†
* DOI†
* Publisher†
* License(s)\*
* Referenced Data\*$
* Description

* Mission\*

* Mission Title
* Author(s)\*
* Date(s) of Mission
* Mission Site Location
* Date of Publication
* DOI†
* Publisher†
* License(s)\*
* Mission Description
* Research Planning Collection\*$

* Collection Title
* Data Collector(s)\*
* Referenced Data\*$
* Collection Description

* Social Sciences Collection\*

* Collection Title
* Unit of Analysis$
* Mode(s) of Collection\*$
* Sampling Approach(es)\*$
* Sample Size$
* Date(s) of Collection
* Data Collector(s)\*
* Collection Site Location
* Equipment\*
* Restriction$
* Referenced Data\*$
* Collection Description

* Engineering/Geosciences Collection\*

* Collection Title
* Observation Type\*
* Date(s) of Collection
* Data Collector(s)\*
* Collection Site Location
* Equipment\*
* Referenced Data\*$
* Collection Description

### Other

[View Metadata Dictionary](https://www.designsafe-ci.org/user-guide/dictionary/#other)

* DOI†
* Project Title
* Author(s)\*
* Data Type
* Description
* Publisher†
* Date of Publication†
* License(s)
* Related Works\*$
* Award\*
* Keywords

## Personal Data Privacy

This policy explains what information DesignSafe collects through the use of DDR and how we treat that information. While the DDR website may contain links to other websites, applications and/or software, we are not responsible for the privacy practices of these third parties. Users should read through their practices before clicking or using them.

The DesignSafe DDR is hosted at the University of Texas at Austin, Texas Advanced Computing Center (TACC). A DesignSafe user account is a TACC user account. When registering for an account, TACC collects users' name, email address, institution, and country of citizenship. Additionally, after account approval and subsequent login to DesignSafe, DesignSafe collects your Natural Hazard Interests, Technical Domain, Professional Level and Research Activities.

When users publish data or other products as authors and co-authors, their names, email address, and institution become publicly available in the dataset's landing page. This facilitates establishing contact with authors about the particulars of their datasets publications.

When a user accesses DesignSafe, the web server software generates log files of the IP address of their computer and the user-agent, which contains minimal information about their browser and operating system. If the user is logged to DesignSafe, their username is also recorded. When a user downloads a file from the DDR, our software collects the aforementioned data and accompanying download data such as the time of the download and files downloaded. The aforementioned data is available to DesignSafe web programmers and data analysts to help diagnose problems, manage the repository, respond to users requests and measure datasets usage.

Data collected during downloads, views, or copies of published datasets are used solely in aggregate to comply with [Make Data Count](https://makedatacount.org/data-metrics-2/) usage reporting standards. This information is processed and made publicly available in the datasets landing pages as [Unique Requests and Unique Investigations](https://docs.google.com/document/d/1a1KSeyezPCwjDIHBSP2EEwauWFUKy_RiVVqKVepUAUA/edit?tab=t.0#heading=h.i3ia0vyyhe1x) for purposes of showing the datasets usage. All data is retained in the logs and DDR's internal database as needed for business purposes. We do not share any personally identifiable information we collect or develop about users to any third parties for any purpose, unless required by law. Any reports we may share externally use unidentifiable, aggregated data.

DesignSafe only uses first-party cookies for authentication. We use cookies so that users don't have to re-authenticate every time they refresh the page and no PII is stored in those cookies. There are Google Analytics cookies that collect metrics about visitors, but the personally identifying pieces like IP addresses are anonymized. Users browsing habits are not tracked for advertising or marketing purposes.

Users are required to use [Multi-Factor Authentication (MFA)](https://docs.tacc.utexas.edu/basics/mfa/) as an additional security measure when logging to DDR. DDR has security measures to prevent loss of the data and information. See the [DesignSafe Cyber Security Policy](https://www.designsafe-ci.org/user-guide/tools/advanced/cybersecurity/) for more details.

## Project Types / Data Models

To publish their datasets users should select a project type that best represents the research method that they used to generate their dataset. Project types facilitate data curation and enable a uniform publication experience and representation of natural hazards datasets. Project types are based on five data models encompassing: experimental, simulation, field research, hybrid simulation, research software, and other datasets as well as lists of specialized vocabulary.  Loosely based on the [Core Scientific Metadata Model](http://icatproject-contrib.github.io/CSMD/), these models were designed in collaboration with natural hazards researchers considering the [community's use of different research methods and workflows](https://www.youtube.com/watch?v=iYzvYi-SY8Q), and [the need to document the processes](https://www.youtube.com/watch?v=xUyFJwZmyqM) from which data derives using professional terms. 

Data models are implemented as interactive functions in the DDR web interface and include onboarding  instructions that guide the researchers through the curation and publication tasks. As researchers move through curating and publishing, the interactive features reinforce data and metadata completeness and thus enhance the quality of the datasets. The process will not move forward if requirements for metadata are not fulfilled or if key files are missing.

Data models are reviewed and improved upon regularly for changes or additions. 

## Protected Data

Protected data are information subject to regulations under relevant privacy and data protection laws, such as [HIPAA](https://www.hhs.gov/hipaa/for-professionals/privacy/laws-regulations/index.html), [FERPA](https://studentprivacy.ed.gov/faq/what-ferpa) and [FISMA](https://csrc.nist.gov/projects/risk-management/detailed-overview), as well as human subjects data containing [Personally Identifiable Information (PII)](https://security.utexas.edu/policies/irusp#definitions) and data  containing [sensitive information](https://en.wikipedia.org/wiki/Information_sensitivity). 

In the DDR protected data issues are considered at the onset of the curation and publication process and before data is uploaded to the repository. Researchers working with human subjects data are prompted to respond if they are working with protected data  at the moment of selecting field research and other project types to curate and publish their data. If the answer is yes  a curator will get  in touch with them to discuss options and procedures.

Considerations about protected data emerge both during data management prior to and during curation and publication stages . 

### Managing Protected Data

Managing protected data in the DDR involves complying with the data storage and publication procedures approved by the authors' Institutional Review Board (IRB) or equivalent body regarding human subjects research.

Protected data should be anonymized before uploading to DDR. 

DesignSafe My Data and My Projects are secure spaces to store  protected data as long as it is not under HIPAA, FERPA or FISMA regulations. If data needs to comply with these regulations, researchers must evaluate the need to use [TACC‘s Protected Data Service](https://www.tacc.utexas.edu/protected-data-service). Very sensitive data, PII data prior to anonymization, and data that will never be anonymized can also be stored and processed within [TACC's Protected Data Service](https://www.tacc.utexas.edu/protected-data-service). Researchers requiring this service are welcome to send a [ticket](http://www.designsafe-ci.org/help/new-ticket) or join [curation office hours](https://www.designsafe-ci.org/learning-center/training/)

Note that the responsibility to maintain datasets within TACC’s Protected Data Service  lies on the authors. 

### Publishing Protected Data

Do not publish HIPAA, FERPA, FISMA, PII data, data including sensitive information, and any related documentation (reports, planning documents, field notes, etc.) data unless you have obtained the proper informed consents, and have abided by the permissions and requirements established by your IRB. 

Protected data can only be published if identifying information is removed. No direct identifiers and up to three indirect identifiers are allowed. Direct identifiers include items such as participant names, participant initials, facial photographs, home addresses, phone number, email, vehicle identifiers, biometric data, names of relatives, social security numbers and dates of birth or other dates specific to individuals. Indirect identifiers are identifiers that, taken together, could be used to deduce someone’s identity. Examples of indirect identifiers include gender, household and family compositions, places of birth, or year of birth/age, ethnicity, general geographic indicators like postal code, socioeconomic data such as occupation, education, workplace or annual income.

Researchers should also publish the documentation showing the IRB resolution.  If a researcher has obtained consent from the subjects to publish PII, it should be clearly stated in the publication description. In this way users can clearly understand the restrictions imposed on the protected data. 

Providing that any form of protected information is removed, the corresponding research instruments such as questionnaires and surveys should be published along with the data so that other users understand the data provenance. 

If a researcher needs to restrict public access to data because it includes HIPAA, FERPA, or other sensitive information, or if de-identification precludes the data from being meaningful, it is possible to publish the dataset as Restricted. The Restricted dataset publication will include metadata,  a summary or aggregation of the data,  as well as corresponding research instruments and code book if applicable. IRB documentation should be also included.  In cases where the authors wish to share the datasets with other researchers under certain conditions, they can consult with the DDR curator  and publish those conditions. Users interested in the restricted dataset can contact the project PI and other members through their published email address to request access to the data and to discuss the conditions for its reuse. Note that the responsibility of maintaining and managing a restricted dataset lies on the authors

For an example of restricted access and conditions see the following dataset: 

Errett, N., C. Hartwell, J. Randazza, G. Bratman, D. Eisenman, B. Ellis, E. Goodsell, C. Levy (2023). "An Exploratory Study of Perspectives from Forest Therapy Guides in a Wildfire Affected Community.", in Forest therapy as a trauma-informed approach to disaster recovery \[Version 2\]. DesignSafe-CI. [https://doi.org/10.17603/ds2-sffr-0489](https://doi.org/10.17603/ds2-sffr-0489)

In DDR, data with granular geographical locations including images that capture humans that are not the focus of the research and would not fall under the purview of an IRB (e.g. StretView, Geolocated imagery) are  considered sensitive and its publication needs to be discussed with the data curator. For example, researchers conducting field observations may capture human subjects in their documentation including work crews, passersby, or people affected by the disaster. If camera instruments capture people that are in the observed areas incidentally, we recommend that their faces and any [PII](https://www.technology.pitt.edu/help-desk/how-to-documents/guide-identifying-personally-identifiable-information-pii) is anonymized/blurred before publishing. In the case of images of team members, make sure they are comfortable with making their images public. Do not include roofing/remodeling records containing any form of PII. When those are public records, researchers should point to the site from which they are obtained using the Referenced Data and Software field. 

It is the user’s responsibility to adhere to these policies and the standards and resolution of their IRB. DesignSafe will not be held liable for any violation regarding improper publication of protected data. User uploads that we are notified of that violate this policy may be removed from the DDR with or without notice, and the user may be asked to suspend their use of the DDR and other DesignSafe resources. We may also contact the user’s IRB and/or other respective institution with any cases of violation, which could incur in an [active audit](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/institutional-review-boards-frequently-asked-questions#IRBProcedures) of the research project, so users should review their institution’s policies regarding publishing with protected data before using DesignSafe and DDR. For clarification purposes researchers should contact DDR through a [help ticket](http://www.designsafe-ci.org/help/new-ticket) or join [curation office hours](https://www.designsafe-ci.org/learning-center/training/) any time across the curation of this type of data .

## Publication Granularity  

Based on the way in which research methods and projects are implemented in the natural hazards community, the DDR’s data model structure considers  a research project type at the top level, and the possibility to publish one or more dataset within each project. The exception to this policy is  project type Other which allows only one dataset publication with a DOI. In addition users can publish Research Software and Document Collections including reports and survey instruments, as stand alone publications with their own DOI. The former within any project type, and the latter only within the Field Research type. 

To enhance contextual information by pointing to the relations of the published datasets, users can link between internal and external datasets, corresponding publications and software, and other references through the fields Related Work and Referenced Data and Software. 

## Subsequent Publishing

DDR enables  publishing datasets subsequently within a project, and each dataset will bear a unique DOI. This arises from the longitudinal and tiered structure of some research projects such as experiments and field research missions which may happen over time, may involve different teams, and may require the publication of different types of resources ( software, documentation, or subsequent datasets). While users may publish more than one dataset at the same time, subsequent publications are enabled in My Project where users can create new experiments, simulations, missions, document collections, or hybrid simulations and publish them over time. Project type Other does not allow subsequent publishing. 

## Timely Data Publication

As an NSF-funded platform we expect researchers to publish in a timely manner. Recommended time limits for publishing different project types were crafted considering time required for curating the data as well as the urgency with which field research datasets are required by users.

Recommended Publishing Timeline for Different Data Types

| Project/Data Type | Recommended Publishing Timeline |
| --- | --- |
| Experimental | Up to 12 months from completion of experiment |
| Simulation | Up to 12 months from completion of simulations |
| Reconnaissance: Immediate Post-Disaster | Up to 3 months from returning from the field |
| Reconnaissance: Follow-up Research | Up to 6 months from returning from the field |

Guidelines specific to RAPID reconnaissance data can be found [here](https://rapid.designsafe-ci.org/media/filer_public/b3/82/b38231fb-21c9-41f8-b658-f516dfee87c8/rapid-designsafe_curation_guidelines_v3.pdf). 

## Tombstone

A tombstone is a landing page that describes a dataset that has been removed from public access. Removal of datasets can be caused because of research retraction, because the data is not compliant with the accepted Data Types, or upon curation review because it does not meet with one or more Curation Policy or Best Practices. In the latter case the curator reviewing the dataset will first alert the author/s to improve their publication within 30 days, upon which the dataset will be tombstoned. A tombstoned landing page contains the data citation and the DOI, but the dataset is not accessible.
