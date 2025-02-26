## Best Practices

### Data Collections Development

#### Accepted Data  { #accepteddata }

The DDR accepts engineering datasets generated through simulation, hybrid simulation, experimental, and field research methods regarding the impacts of wind, earthquake, and storm surge hazards, as well as debris management, fire, and blast explosions. We also accept social and behavioral sciences (SBE) data encompassing the study of the human dimensions of hazards and disasters. As the field and the expertise of the community evolves we have expanded our focus to include datasets related to COVID-19. Data reports, publications of Jupyter notebooks, code, scripts, lectures, and learning materials are also accepted.

#### Accepted and Recommended File Formats  { #acceptedfileformats }

Due to the diversity of data and instruments used by our community, there are no current restrictions on the file formats users can upload to the DDR. However, for long-term preservation and interoperability purposes, we recommend and promote storing and publishing data in open formats, and we follow the <a href="https://www.loc.gov/preservation/resources/rfs/TOC.html">Library of Congress Recommended Formats</a>.

In addition, we suggest that users look into the <a href="https://datacurationnetwork.org/outputs/data-curation-primers/">Data Curation Primers</a>, which are "peer-reviewed, living documents that detail a specific subject, disciplinary area or curation task and that can be used as a reference to curate research data.  The primers include curation practices for documenting data types that while not open or recommended, are very established in the academic fields surrounding Natural Hazards research such as Matlab and Microsoft Excel.

Below is an adaptation of the list of recommended formats for data and documentation by <a href="https://guides.library.stanford.edu/data-best-practices/format-files">Stanford Libraries.</a> For those available, we include a link to the curation primers:

* <a href="https://github.com/DataCurationNetwork/data-primers/blob/master/Databases%20Data%20Curation%20Primer/databases-data-curation-primer.md">Databases</a>: XML, CSV
* <a href="https://github.com/DataCurationNetwork/data-primers/blob/master/Geodatabase%20Data%20Curation%20Primer/Geodata-Primer.md">Geospatial</a>: SHP, DBF, <a href="https://github.com/DataCurationNetwork/data-primers/blob/master/GeoTIFF%20Data%20Curation%20Primer/geotiff-data-curation-primer.md">GeoTIFF</a>, <a href="https://deepblue.lib.umich.edu/handle/2027.42/145724">netCDF</a>, <a href="https://github.com/DataCurationNetwork/data-primers/blob/master/GeoJSON%20Data%20Curation%20Primer/GeoJSON-data-curation-primer.md">GeoJSON </a> 
* PointCloud: LAS, LAZ, XYZ, PTX
* Moving images: MOV, MPEG, AVI, MXF
* Sounds: WAVE, AIFF, MP3, MXF
* Statistics: ASCII, DTA, <a href="https://github.com/DataCurationNetwork/data-primers/blob/master/SPSS%20Data%20Curation%20Primer/SPSS-data-curation-primer.md#Format-Overview">POR</a>, <a href="https://github.com/DataCurationNetwork/data-primers/blob/master/SAS%20Data%20Curation%20Primer/SAS-data-curation-primer.md">SAS</a>, <a href="https://github.com/DataCurationNetwork/data-primers/blob/master/SPSS%20Data%20Curation%20Primer/SPSS-data-curation-primer.md#Format-Overview">SAV</a>
* Still images: TIFF, JPEG 2000, <a href="https://github.com/DataCurationNetwork/data-primers/blob/master/PDF%20Data%20Curation%20Primer/PDF-data-curation-primer.md">PDF,</a> PNG, GIF, BMP
* <a href="https://github.com/DataCurationNetwork/data-primers/blob/master/Tableau%20Data%20Curation%20Primer/Tableau-data-curation-primer.md">Tabular data</a>: CSV
* Text: XML, <a href="https://github.com/DataCurationNetwork/data-primers/blob/master/PDF%20Data%20Curation%20Primer/PDF-data-curation-primer.md">PDF/A</a>, HTML, ASCII, UTF-8 , 
* CODE:  (tcl files, py files) <a href="https://github.com/DataCurationNetwork/data-primers/blob/master/Jupyter%20Notebook%20Data%20Curation%20Primer/Jupyter%20Notebooks%20Data%20Curation%20Primer.md">Jupyter Notebook</a>
* Seismology: SEED

#### Data Size { #datasize }

Currently we do not pose restrictions on the volume of data users upload to and publish in the DDR. This is meant to accommodate the vast amount of data researchers in the natural hazards community can generate, especially during the course of large-scale research projects.

However, for data curation and publication purposes users need to consider the sizes of their data for its proper reuse. Publishing large amounts of data requires more curation work (organizing and describing) so that other users can understand the structure and contents of the dataset. In addition, downloading very large projects may require the use of [Globus](../../managingdata/datatransfer#globus).  We further discuss data selection and quality considerations in the Data Curation section.

---

### Data Curation

Data curation involves the organization, description, quality control, preservation, accessibility, and ease of reuse of data, with the goal of making your data publication <a href="https://www.go-fair.org/fair-principles/">FAIR</a> with assurance that it will be useful for generations to come.

Extensive support for data curation can be found in the <a href="#curation-publication-guides">Data Curation and Publication User Guides</a> and in <a href="https://www.youtube.com/playlist?list=PL2GxvrdFrBlkwHBgQ47pZO-77ZLrJKYHV">Data Curation Tutorials</a>. In addition, we strongly recommend that users follow the step by step onboarding instructions available in the My Projects curation interface. <a href="#nheri-virtual-office-hours">Virtual Office Hours</a> are also available twice a week.

Below we highlight general curation best practices.

#### Managing and Sharing Data in My Projects { #managingdata }

All data and documentation collected and generated during a research project can be uploaded to My Project from the inception of the project. Within My Project, data are kept private for sharing amongst team members and for curation until published. Using My Project to share data with your team members during the course of research facilitates the progressive curation of data and its eventual publication.

However, when conducting human subjects research, you must follow and comply with the procedures submitted to and approved by your Institutional Review Board (IRB) as well as your own ethical commitment to participants for sharing protected data in My Project.

Researchers working at a NHERI EF will receive their bulk data files directly into an existing My Project created for the team.

For all other research performed at a non-NHERI facility, it will be the responsibility of the research team to upload their data to the DDR.

There are different ways to upload data to My Project:

* Do not upload folders and files with special characters in their filenames. In general, keep filenames meaningful but short and without spacing. See file naming convention recommendations in the <a href="#organization">Data Organization and Description</a>
* Select the Add button, then File upload to begin uploading data from your local machine. You can browse and select files or drag and drop files into the window that appears.  
* Connect to your favorite cloud storage provider. <a href="/user-guide/managingdata/datatransfer/#cloud">We currently support integration with Box,  Dropbox, and Google Drive.</a> 
* You can also copy data to and from My Data.  
* You may consider zipping files for purpses of uploading: however, you should unzip them for curation and publication purposes.  
* For uploads of files bigger than 2 Gigabytes and or more than 25 files, consider using Globus, CyberDuck and  Command Line Utilities. Explanations on how to use those applications are available in our <a href="/user-guide/managingdata/datatransfer/">Data Transfer Guide.</a>

Downloading several individual files via our web interface could be cumbersome, so DesignSafe offers a number of alternatives. First, users may interact with data in the Workspace using any of the available tools and applications without the need to download; for this, users will need a DesignSafe account. Users needing to download a large number of files from a project may also use <a href="/user-guide/managingdata/datatransfer/#globus">Globus</a>. When feasible, to facilitate data download from their projects users may consider aggregating data into larger files.

Be aware that while you may store all of a project files in My Project, you may not need to publish all of them. During curation and publication you will have the option to select a subset of the uploaded files that you wish to publish without the need to delete them.

More information about the different Workspaces in DesignSafe and how to manage data from one to the other can be found <a href="/user-guide/managingdata/datatransfer/">here</a>.

#### Selecting a Project Type { #selectingprojecttype }

Depending on the research method pursued, users may curate and publish data as "Experimental", "Simulation", "Hybrid Simulation," or "Field Research" project type. The Field Research project type accommodates "Interdisciplinary Datasets" involving engineering and/or social science collections.

Based on <a href="#policies">data models</a> designed by experts in the field, the different project types provide interactive tools and metadata forms to curate the dataset so it is complete and understandable for others to reuse. So for example,users that want to publish a simulation dataset will have to include files and information about the model or software used, the input and the output files, and add a readme file or a data report.

Users should select the project type that best fits their research method and dataset.  If the data does not fit any of the above project types, they can select project type" Other." In project type "Other" users can curate and publish standalone reports, learning materials, white papers, conference proceedings, tools, scripts, or data that does not fit with the research models mentioned above.

#### Working in My Project { #working }

Once the project type is selected, the interactive interface in My Project will guide users through the curation and publication steps through detailed onboarding instructions.

My Project is a space where users can work during the process of curation and publication and after publication to publish new data products or to analyze their data. 

Because My Project is a shared space, it is recommended that teams select a data manager to coordinate file organization, transfers, curation, naming, etc.

After data is published users can still work on My Project for progressive publishing of new experiments, missions or simulations within the project, to version and/or to edit or amend the existing publication. See amends and versions in this document.

#### General Research Data Best Practices { #bestpractices }

Below we include general research data best practices but we strongly recommend to review the available <a href="https://datacurationnetwork.org/outputs/data-curation-primers/">Data Curation Primers</a> for more specific directions on how to document and organize specific research data types.

##### Proprietary Formats { #bestpractices-formats }

Excel and Matlab are two proprietary file formats highly used in this community. Instead of Excel spreadsheet files, it is best to publish data as simple csv so it can be used by different software. However,  we understand that in some cases (e.g. Matlab, Excel) conversion may distort the data structures. Always retain an original copy of any structured data before attempting conversions, and then check between the two for fidelity. In addition, in the DDR it is possible to upload and publish both the proprietary and the converted version, especially if you consider that publishing with a proprietary format is convenient for data reuse.

##### Compressed Data { #bestpractices-compresseddata }

Users that upload data as a zip file should unzip before curating and publishing, as zip files prevent others from directly viewing and understanding the published data. If uploading compressed files to "My Data" , it is possible to unzip it using [the extraction utility available in the workspace](https://www.designsafe-ci.org/workspace/extract){target=_blank} before copying data to My Project for curation and publication.

##### Simulation Data { #bestpractices-simulationdata }

In the Data Depot's Published directory there is a [best practices document](https://doi.org/10.17603/ds2-wsqp-fw44){:target="_blank"} for publishing simulation datasets in DesignSafe. The topics addressed reflect the numerical modeling community needs and recommendations, and are informed by the experience of the working group members and the larger DesignSafe expert cohort while conducting and curating simulations in the context of natural hazards research. These best practices focus on attaining published datasets with precise descriptions of the simulations’ designs, references to or access to the software involved, and complete publication of inputs and if possible all outputs. Tying these pieces together requires documentation to understand the research motivation, origin, processing, and functions of the simulation dataset in line with FAIR principles. These best practices can also be used by simulation researchers in any domain to curate and publish simulation data in any repository.

##### Geospatial Data { #bestpractices-geospatial }

We encourage the use of open Geospatial data formats. Within DS Tools and Applications we provide two open source software for users to share and analyze geospatial data. QGIS can handle most open format datasets and HazMapper, is capable of visualizing geo-tagged photos and GeoJSON files. To access these software users should  get an account in DesignSafe.

Understanding that ArcGIS software is widespread in this community  in the DDR it is possible to upload both proprietary and recommended geospatial data formats. When publishing feature and raster files it is important to make sure that all of the relevant files for reuse such as the projection file and header file are included in the publication for future re-use. For example, for shapefiles it is important to publish all .shp (the file that contains the geometry for all features), .shx (the file that indexes the geometry) and .dbf (the file that stores feature attributes in a tabular format) files.

##### Point Cloud Data { #bestpractices-pointcloud }

It is highly recommended to avoid publishing proprietary point cloud data extensions.  Instead, users should consider publishing post-processed and open format extension data such as las or laz files. In addition, point cloud data publications may be very large. In DS, we have Potree available for users to view point cloud datasets. Through the Potree Convertor application, non-proprietary point cloud files can be converted to a potree readable format to be visualized in DesignSafe.

##### Jupyter Notebooks { #jupyter }

More and more researchers are publishing projects that contain Jupyter Notebooks as part of their data. They can be used to provide sample queries on the published data as well as providing digital data reports.  As you plan for publishing a Jupyter Notebook, please consider the following issues:

1. The DesignSafe publication process involves copying the contents of your project at the time of publication to a read only space within the Published projects section of the Data Depot (i.e., this directory can be accessed at NHERI-Published in JupyterHub). Any future user of your notebook will access it in the read only Published projects section. Therefore, any local path you are using while developing your notebook that is accessing a file from a private space (e.g., "MyData", "MyProjects") will need to be replaced by an absolute path to the published project. Consider this example: you are developing a notebook in PRJ-0000 located in your "MyProjects" directory and you are reading a csv file living in this project at this path: `/home/jupyter/MyProjects/PRJ-0000/Foo.csv`. Before publishing the notebook, you need to change the path to this csv file to `/home/jupyter/NHERI-Published/PRJ-0000/Foo.csv`.
1. The published area is a read-only space. In the published section, users can run notebooks, but the notebook is not allowed to write any file to this location. If the notebook needs to write a file, you as the author of the notebook should make sure the notebook is robust to write the file in each user directory. <a href="https://doi.org/10.17603/ds2-v310-qc53">Here</a> is an example of a published notebook that writes files to user directories. Furthermore, since the published space is read-only, if a user wants to revise, enhance or edit the published notebook they will have to copy the notebook to their mydata and continue working on the copied version of the notebook located in their mydata. To ensure that users understand these limitations, we require a readme file be published within the project that explains how future users can run and take advantage of the Jupyter Notebook.
1. Jupyter Notebooks rely on packages that are used to develop them (e.g., numpy, geopandas, ipywidgets, CartoPy, Scikit-Learn). For preservation purposes, it is important to publish a requirement file including a list of all packages and their versions along with the notebook as a metadata file.

#### Data Organization and Description { #organization }

In My Projects, users may upload files and or create folders to keep their files organized; the latter is common when projects have numerous files. However, browsing through an extensive folder hierarchy on the web may be slower on your local computer, so users should try to use the smallest number of nested folders necessary and if possible, none at all, to improve all users’ experience.

Except for project type "Other" which does not have categories, users will categorize their files or folders according to the corresponding project type. Categories describe and highlight the main components of the dataset in relation to the research method used to obtain it. Each category has a form that needs to be filled with metadata to explain the methods and characteristics of the dataset, and there are onboarding instructions on what kind of information is suitable for each metadata field. In turn, some of these fields are required, which means that they are fundamental for the clarity of the project's description. The best way to approach data curation in My Project, is to organize the files in relation to the data model of choice and have the files already organized and complete before categorizing and tagging. While curating data in My Project, do not move, rename or modify files that have been already categorized. In particular, do not make changes to categorized files through an SSH connection or through Globus. If you need to, please remove the category, deselect the files, and start all over.

Within the different project types, there are different layers for describing a dataset. At the project level, it is desirable to provide an overview of the research, including its general goal and outcomes, what is the audience, and how the data can be reused. For large projects we encourage users to provide an outline of the scope and contents of the data. At the categories level, the descriptions need to address technical and methodological aspects involved in obtaining the data.

In addition, users can tag individual files or groups of files for ease of data comprehension and reuse by others. While categories are required, tagging is not, though we recommend that users tag their files because it helps other users to efficiently identify file contents in the publication interface. For each project type the list of tags are agreed upon terms contributed by experts in the field of NH. If the tags available do not apply, feel free to add custom tags and submit tickets informing the curation team about the need to incorporate them in the list. We heard from our users that the list of tags per category reaffirms them of the need to include certain types of documentation to their publication.

To enhance organization and description of projects type "Other," users can group files in folders when needed and use file tags. However, it is always best to avoid overly nesting and instead use the file tags and descriptions to indicate what are the groupings.

File naming conventions are often an important part of the work of organizing and running large scale experimental and simulation data. File names make it possible to identify files by succintly expressing their content and their relations to other files. File naming conventions should be established during the research planning phase, they should be meaningful -to the team and to others- and they should be kept short. When establishing a file naming convention, researchers should think about the key information elements they want to convey for others to identify tiles and group of files. The meaning and components of file naming conventions should be documented in a Data Report or readme file so that others can understand and identify files as well. Users should consider that in DesignSafe you will be able to describe files with tags and descriptions when you curate them. File naming conventions should not have spaces or special characters, as those features may cause errors within the storage systems. See this Stanford University Libraries best practices<a href="https://guides.library.stanford.edu/data-best-practices"> for file naming convention. </a>

The following are good examples of data organization and description of different project types:

* Experimental
	* <a href="https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-3197">Progressive Damage and Failure of Wood-Frame Coastal Residential Structures Due to Hurricane Surge and Wave Forces.</a>
	* <a href="https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-2141">CFS-NHERI: Seismic Resiliency of Repetitively Framed Mid-rise cold-Formed Steel Buildings.</a>

* Simulation
	* <a href="https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-2972">Modeling and Analysis of Steel Frame Building Systems</a>
	* <a href="https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-2968">Texas FEMA Hurricane Winds and Surge</a>

* Hybrid Simulation
	* <a href="https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-1634">Aeroelastic Real-Time Hybrid Simulation - A New Concept for Wind Engineering Testing </a>

* Field Research
	* <a href="https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-3333">Expert Survey on Community Resilience Testbed Use and Development (Social Science)</a>
	* <a href="https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-2440">Ridgecrest, CA Earthquake Sequence, July 4 and 5, 2019.</a> (Engineering)

* Interdisciplinary Field Research
	* <a href="https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-2656">A Longitudinal Community Resilience Focused Technical Investigation of the Lumberton, North Carolina Flood of 2016 (in progress).</a>

* Other
	* <a href="https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-3285">Contribution to Cold Formed Steel Seismic Design within CFS-NHERI Project.</a>
	* <a href="https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-2289">Global Academic Hazards and Disaster research Centers Data</a>

#### Project Documentation { #documentation }

NH datasets can be very large and complex, so we require that users submit a data report or a readme file to publish along with their data to express information that will facilitate understanding and reuse of your project. This documentation may include the structure of the data, a data dictionary, information of where everything is, explanation of the file naming convention used, and the methodology used to check the quality of the data. The data report in this <a href="https://doi.org/10.17603/ds2-5aej-e227">published dataset</a> is an excellent example of documentation.

To provide connections to different types of information about the published dataset, users can use the Related Work field. We provide different types of tags that explain their relation to the dataset. To connect to information resources that provide contextual information about the dataset (events or organizations) use the tag "context". To link to other published datasets in the DDR use the tag "link Dataset", and to connect to published papers that cite the dataset use the tag "is cited by". Importantly, users should add the DOI of these different information types in http format (if there is no DOI add a URL). The latter information is sent to DataCite, enabling exchange of citation counts within the broader research ecosystem through permanent identifiers. Related Works can be added after the dataset was published using the amends pipeline. This is useful when a paper citing the dataset is published after the publication of the dataset.

When applicable, we ask users to include information about their research funding in the Awards Info fields.

#### Data Quality Control { #quality }

Each data publication is unique; it reflects and provides evidence of the research work of individuals and teams. Due to the specificity,  complexity, and scope of the research involved in each publication, the DDR cannot complete quality checks of the contents of the data published by users. It is the user's responsibility to publish data that is up to the best standards of their profession, and our commitment is to help them achieve these standards. In the DDR, data and metadata quality policies as well as the curation and publication interactive functions are geared towards ensuring excellence in data publications. In addition, below we include general data content quality recommendations:

Before publishing, use applicable methods to review the data for errors (calibration, correction, validation, normalization, completeness checks) and document the process so that other reusers are aware of the quality control methods employed. Include the explanation about the quality control methods you used in the data report or readme file.

Include a data dictionary or a readme file to explain the meaning of data fields.

Researchers in NH generate enormous amounts of images. While we are not posing restrictions on the amount of files, in order to be effective in communicating their research users being selective with the images chosen to publish is key.  For example, making sure they have a purpose, are illustrative of a process or a function, and using file tags to describe them. The same concept can be applied for other data formats.

It is possible to publish raw and curated data. Raw data is that which comes directly from the recording instruments (camera, apps, sensors, scanners, etc). When raw data is corrected, calibrated, reviewed, edited or post-processed in any way for publication, it is considered curated. Some researchers want to publish their raw data as well as their curated data. For users who seek to publish both, consider why it is necessary to publish both sets and how another researcher would use them. Always clarify whether your data is raw or curated in the description or in a data report/readme file including the method used to post-process it.

#### Managing Protected Data in the DDR { #protectedddr }

Users that plan to work with human subjects should have their IRB approval in place prior to storing, curating, and publishing data in the DDR. We recommend following the recommendations included in the CONVERGE series of<a href="https://converge.colorado.edu/resources/check-sheets/ethical-considerations/"> check sheets</a> that outline how researchers should manage/approach the lifecycle data that contain personal and sensitive information; these check sheets have also been published in the<a href="https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-2946"> DDR</a>.

At the moment of selecting a Field Research project, users are prompted to respond if they will be working with human subjects. If the answer is yes, the DDR curator is automatically notified and gets in touch with the project team to discuss the nature and conditions of the data and the IRB commitments.

DesignSafe My Data and My Projects are secure spaces to store raw protected data as long as it is not under HIPAA, FERPA or FISMA regulations. If data needs to comply with these regulations, researchers must contact DDR through a <a href="http://www.designsafe-ci.org/help/new-ticket">help ticket</a> to evaluate the need to use <a href="https://www.tacc.utexas.edu/protected-data-service">TACC‘s Protected Data Service</a>. Researchers with doubts are welcome to send a <a href="http://www.designsafe-ci.org/help/new-ticket">ticket</a> or join <a href="https://www.designsafe-ci.org/learning-center/training/">curation office hours</a>.

Projects that do not include the study of human subjects and are not under IRB purview may still contain items with Personally Identifiable Information (PII). For example, researchers conducting field observations may capture human subjects in their documentation including work crews, passersby, or people affected by the disaster. If camera instruments capture people that are in the observed areas incidentally, we recommend that their faces and any <a href="https://www.technology.pitt.edu/help-desk/how-to-documents/guide-identifying-personally-identifiable-information-pii">Personally Identifiable Information</a> should be anonymized/blurred before publishing. In the case of images of team members, make sure they are comfortable with making their images public. Do not include roofing/remodeling records containing any form of PII. When those are public records, researchers should point to the site from which they are obtained using the Referenced Data and or Related Work fields. In short, users should follow all other protected data policies and best practices outlined further in this document.

#### Metadata Requirements { #metadatareqs }

Metadata is information that describes the data in the form of schemas. Metadata schemas provide a structured way for users to share information about data with other platforms and individuals. Because there is no standard schema to describe natural hazards engineering research data, the DDR developed data models containing elements and controlled terms for categorizing and describing NH data. The terms have been identified by experts in the NH community and are continuously expanded, updated, and corrected as we gather feedback and observe how researchers use them in their publications.

So that DDR metadata can be exchanged in a standard way, we map the fields and terms to widely-used, standardized schemas. The schemas are: <a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/">Dublin Core</a> for description of the research data project, <a href="https://ddialliance.org/products/overview-of-current-products">DDI (Data Documentation Initiative)</a> for social science data, and <a href="https://datacite.org/dois.html">DataCite</a> for DOI assignment and citation. We use the <a href="https://www.w3.org/2001/sw/wiki/PROV">PROV</a> schema to connect the different components of multi-part data publications.

Due to variations in research methods, users may not need to use all the metadata elements available to describe their data. However, for each project type we identified a required set that represents the structure of the data, are useful for discovery, and will allow proper citation of data. To ensure the quality of the publications, the system automatically checks for completeness of these core elements and whether data files are associated with them. If those elements and data are not present, the publication does not go through. For each project type, the metadata elements including those that are required and recommended are shown below.

<table border="1" width="100%">
<tr valign="top">
<td><b>Experimental Research Project</b><br>
<a href="#experimental_1">View Metadata Dictionary</a></b>

<ul>
	<li>DOI<sup>†</sup></li>
	<li>Project Title</li>
	<li>Author (PIs/Team Members)&#42;</li>
	<li>Participant Institution&#42;</li>
	<li>Project Type&#42;</li>
	<li>Description</li>
	<li>Publisher<sup>†</sup></li>
	<li>Date of Publication<sup>†</sup></li>
	<li>Licenses</li>
	<li>Related Works&#42;<sup>$</sup></li>
	<li>Award&#42;</li>
	<li>Keywords</li>
	<li>Experiment&#42;
	<ul>
		<li>Report</li>
		<li>DOI<sup>†</sup></li>
		<li>Experiment Title</li>
		<li>Author (PIs/Team Members)&#42;</li>
		<li>Experiment Description</li>
		<li>Date of Publication<sup>†</sup></li>
		<li>Dates of Experiment</li>
		<li>Experimental Facility</li>
		<li>Experiment Type</li>
		<li>Equipment Type&#42;</li>
		<li>Model Configuration&#42;</li>
		<li>Sensor Information&#42;</li>
		<li>Event&#42;</li>
		<li>Experiment Report<sup>$</sup></li>
	</ul>
	</li>
	<li>Analysis&#42;<sup>$</sup>
	<ul>
		<li>Analysis Title</li>
		<li>Description</li>
		<li>Referenced Data&#42;</li>
	</ul>
	</li>
</ul>

	
</td>
<td><b>Simulation Research Project</b><br>
<a href="#simulation_1">View Metadata Dictionary</a></b>

<ul>
	<li>DOI<sup>†</sup></li>
	<li>Project Title</li>
	<li>Author (PIs/Team Members)&#42;</li>
	<li>Participant Institution&#42;</li>
	<li>Project Type&#42;</li>
	<li>Description</li>
	<li>Publisher<sup>†</sup></li>
	<li>Date of Publication<sup>†</sup></li>
	<li>Licenses</li>
	<li>Related Works&#42;<sup>$</sup></li>
	<li>Award&#42;</li>
	<li>Keywords</li>
	<li>Simulation&#42;
	<ul>
		<li>Report</li>
		<li>Simulation Title</li>
		<li>Author (PIs/Team Members)&#42;</li>
		<li>Description</li>
		<li>Simulation Type</li>
		<li>Simulation Model</li>
		<li>Simulation Input&#42;</li>
		<li>Simulation Output&#42;</li>
		<li>Referenced Data&#42;</li>
		<li>Simulation Report<sup>$</sup></li>
	</ul>
	</li>
	<li>Analysis&#42;<sup>$</sup>
	<ul>
		<li>Analysis Title</li>
		<li>Description</li>
		<li>Referenced Data&#42;</li>
	</ul>
	</li>
</ul>

</td></tr>

<tr valign="top">

<td><b>Hybrid Simulation Research Project</b><br>
<a href="#hybrid_1">View Metadata Dictionary</a></b>

<ul>
	<li>DOI<sup>†</sup></li>
	<li>Project Title</li>
	<li>Author (PIs/Team Members)&#42;</li>
	<li>Participant Institution&#42;</li>
	<li>Project Type&#42;</li>
	<li>Description</li>
	<li>Publisher<sup>†</sup></li>
	<li>Date of Publication<sup>†</sup></li>
	<li>Licenses</li>
	<li>Related Works&#42;<sup>$</sup></li>
	<li>Award&#42;</li>
	<li>Keywords</li>
	<li>Hybrid Simulation&#42;
	<ul>
		<li>Report</li>
		<li>Global Model
		<ul>
			<li>Global Model Title</li>
			<li>Description</li>
		</ul>
		</li>
		<li>Master Simulation Coordinator
		<ul>
			<li>Master Simulation Coordinator Title</li>
			<li>Application and Version</li>
			<li>Substructure Middleware</li>
		</ul>
		</li>
		<li>Simulation Substructure&#42;
		<ul>
			<li>Simulation Substructure Title</li>
			<li>Application and Version</li>
			<li>Description</li>
		</ul>
		</li>
		<li>Experiment Substructure&#42;
		<ul>
			<li>Experiment Substructure Title</li>
			<li>Description</li>
		</ul>
		</li>
	</ul>
	</li>
</ul>

</td>

<td><b>Field Research Project</b><br>
<a href="#field">View Metadata Dictionary</a></b>

<ul>
	<li>Project Title</li>
	<li>PI/Co-PI(s)&#42;</li>
	<li>Project Type</li>
	<li>Description</li>
	<li>Related Work(s)&#42;<sup>$</sup></li>
	<li>Award(s)&#42;<sup>$</sup></li>
	<li>Keywords</li>
	<li>Natural Hazard Event</li>
	<li>Natural Hazard Date</li>
	<li>Documents Collection&#42;<sup>$</sup>
	<ul>
		<li>Author(s)&#42;</li>
		<li>Date of Publication<sup>†</sup></li>
		<li>DOI<sup>†</sup></li>
		<li>Publisher<sup>†</sup></li>
		<li>License(s)&#42;</li>
		<li>Referenced Data&#42;<sup>$</sup></li>
		<li>Description</li>
	</ul>
	</li>
	<li>Mission&#42;
	<ul>
		<li>Mission Title</li>
		<li>Author(s)&#42;</li>
		<li>Date(s) of Mission</li>
		<li>Mission Site Location</li>
		<li>Date of Publication</li>
		<li>DOI<sup>†</sup></li>
		<li>Publisher<sup>†</sup></li>
		<li>License(s)<span style="font-size: 10.8333px;">&#42;</span></li>
		<li>Mission Description</li>
		<li>Research Planning Collection<span style="font-size: 10.8333px;">&#42;<sup>$</sup></span>
		<ul>
			<li>Collection Title</li>
			<li>Data Collector(s)<span style="font-size: 10.8333px;">&#42;</span></li>
			<li>Referenced Data&#42;<sup>$</sup></li>
			<li>Collection Description</li>
		</ul>
		</li>
		<li>Social Sciences Collection&#42;
		<ul>
			<li>Collection Title</li>
			<li>Unit of Analysis<sup>$</sup></li>
			<li>Mode(s) of Collection<sup>&#42;$</sup></li>
			<li>Sampling Approach(es)<sup>&#42;$</sup></li>
			<li>Sample Size<sup>$</sup></li>
			<li>Date(s) of Collection</li>
			<li>Data Collector(s)&#42;</li>
			<li>Collection Site Location</li>
			<li>Equipment&#42;</li>
			<li>Restriction<sup>$</sup></li>
			<li>Referenced Data&#42;<sup>$</sup></li>
			<li>Collection Description</li>
		</ul>
		</li>
		<li>Engineering/Geosciences Collection&#42;
		<ul>
			<li>Collection Title</li>
			<li>Observation Type&#42;</li>
			<li>Date(s) of Collection</li>
			<li>Data Collector(s)&#42;</li>
			<li>Collection Site Location</li>
			<li>Equipment&#42;</li>
			<li>Referenced Data&#42;<sup>$</sup></li>
			<li>Collection Description</li>
		</ul>
		</li>
	</ul>
	</li>
</ul>


</td></tr>

	

<tr valign="top"><td><b>Other</b><br>
<a href="#other_1">View Metadata Dictionary</a></b>

<ul>
	<li>DOI<sup>†</sup></li>
	<li>Project Title</li>
	<li>Author(s)&#42;</li>
	<li>Data Type</li>
	<li>Description</li>
	<li>Publisher<sup>†</sup></li>
	<li>Date of Publication<sup>†</sup></li>
	<li>License(s)</li>
	<li>Related Works&#42;<sup>$</sup></li>
	<li>Award&#42;</li>
	<li>Keywords</li>
</ul>

</td></tr></table>

---

### Data Publication

#### Protected Data { #protecteddata }

Protected data in the  Data Depot Repository (DDR) are generally (but not always) included within interdisciplinary and social science research projects that study human subjects, which always need to have approval from an Institutional Review Board (IRB). We developed a data model and onboarding instructions <a href="https://converge.colorado.edu/data/data-publication">in coordination with our CONVERGE partners</a> to manage this type of data within our curation and publication pipelines. Additionally, CONVERGE has a series of <a href="https://converge.colorado.edu/resources/check-sheets/ethical-considerations/">check sheets</a> that outline how researchers should manage data that could contain sensitive information; these check sheets have also been published in <a href="http://doi.org/10.17603/ds2-7r74-1021">the DDR</a>.

Natural Hazards also encompasses data that have granular geographical locations and images that may capture humans that are not the focus of the research/would not fall under the purview of an IRB. See both the Privacy Policy within our <a href="https://www.designsafe-ci.org/account/terms-conditions/">Terms of Use</a>,

Data de-identification, specially for large datasets, can be tasking. Users working with the RAPID facility may discuss with them steps for pre-processing before uploading to DesignSafe.

To publish protected data researchers should pursue the following steps and requirements:

1. Do not publish <a href="https://www.hhs.gov/hipaa/for-professionals/privacy/laws-regulations/index.html">HIPAA</a>, <a href="https://studentprivacy.ed.gov/faq/what-ferpa">FERPA</a>, <a href="https://csrc.nist.gov/projects/risk-management/fisma-background">FISMA</a>, PII data or <a href="https://en.wikipedia.org/wiki/Information_sensitivity">sensitive information</a> in the DDR.  </li>
1. To publish protected data and any related documentation (reports, planning documents, field notes, etc.) it must be processed to remove identifying information. No direct identifiers and up to three indirect identifiers are allowed. <strong>Direct identifiers</strong> include items such as participant names, participant initials, facial photographs (unless expressly authorized by participants), home addresses, phone number, email, vehicle identifiers, biometric data, names of relatives, social security numbers and dates of birth or other dates specific to individuals. Indirect identifiers are identifiers that, taken together, could be used to deduce someone’s identity. Examples of <strong>indirect identifiers</strong> include gender, household and family compositions, places of birth, or year of birth/age, ethnicity, general geographic indicators like postal code, socioeconomic data such as occupation, education, workplace or annual income.  </li>
1. Look at the de-identification resources below to find answers for processing protected data.  </li>
1. If a researcher has obtained consent from the subjects to publish PII (images, age, address), it should be clearly stated in the publication description and with no exceptions the IRB documentation including the informed consent statement, should be also available in the documentation.  </li>
1. If a researcher needs to restrict public access to data because it includes HIPAA, FERPA, PII or other sensitive information, or if de-identification precludes the data from being meaningful, it is possible to publish only metadata about the data in the landing page along with descriptinve information a bout the dataset. The dataset will show as Restricted.  </li>
1. IRB documentation should be included in the publication in all cases so that users clearly understand the restrictions imposed for the protected data. In addition, authors may publish the dataset instrument, provided that it does not include any form of protected information.  </li>
1. Users interested in restricted data can contact the project PI or designated point of contact through their published email address to request access to the data and to discuss the conditions for its reuse.  </li>
1. The responsibility of maintaining and managing a restricted dataset for the long term lies on the authors, and they can use <a href="https://www.tacc.utexas.edu/protected-data-service">TACC's Protected Data Services</a> if they see fit.  </li>
1. Please contact DDR through a <a href="http://www.designsafe-ci.org/help/new-ticket">help ticket</a> or join <a href="https://www.designsafe-ci.org/learning-center/training/">curation office hours</a> prior to preparing this type of publication.  </li>

##### De-identification Resources { #protecteddata-deidentification }

The NISTIR 8053 publication <a href="https://nvlpubs.nist.gov/nistpubs/ir/2015/NIST.IR.8053.pdf">De-Identification of Personal Information</a> provides all the definitions and approaches to reduce privacy risk and enable research.

Another <a href="https://www.nist.gov/itl/applied-cybersecurity/privacy-engineering/collaboration-space/focus-areas/de-id">NIST resource</a> including de-identification tools.

John Hopkins Libraries Data Services <a href="https://dataservices.library.jhu.edu/resources/applications-to-assist-in-de-identification-of-human-subjects-research-data/">Applications to Assist in De-identification of Human Subjects Research Data</a>.

#### Reusing Data Resources in your Publication { #reusingdata }

Researchers frequently use data, code, papers or reports from other sources in their experiments, simulations and field research projects as input files, to integrate with data they create, or as references, and they want to republish them. It is a good practice to make sure that this data can be reused appropriately and republished as well as give credit to the data creators. Citing reused sources is also important to provide context and provenance to the project. In the DDR you can republish or reference reused data following the next premises:

<ol>
	<li dir="ltr">
	If you use external data in a specific experiment, mission or simulation, cite it in the Referenced Data field.
	</li>
	<li dir="ltr">
	Use the Related Work field at project level to include citations for the data you reused as well as your own publication related to the data reuse.
	</li>
	<li dir="ltr">
	Include the cited resource title and corresponding DOI in https format; this way, users will be directed to the cited resource. 
	</li>
	<li dir="ltr">
	Be aware of the reused data original license. The license will specify if and how you can modify, distribute, and cite the reused data.
	</li>
	<li dir="ltr">
	If you have reused images from other sources (online, databases, publications, etc.), be aware that they may have copyrights. We recommend using <a href="http://guides.library.ubc.ca/c.php?g=698822&amp;p=4965735">these instructions</a> for how to use and cite them. 
	</li>
</ol>

#### Timely Data Publication  { #timelypublication }

Although no firm timeline requirements are specified for data publishing, researchers are expected to publish in a timely manner. Recommended timelines for publishing different types of research data (i.e., Experimental, Simulation, and Reconnaissance) are listed in Table 1.

Guidelines specific to RAPID reconnaissance data can be found at <a href="https://rapid.designsafe-ci.org/media/filer_public/b3/82/b38231fb-21c9-41f8-b658-f516dfee87c8/rapid-designsafe_curation_guidelines_v3.pdf">rapid.designsafe-ci.org/media/filer_public/b3/82/b38231fb-21c9-41f8-b658-f516dfee87c8/rapid-designsafe_curation_guidelines_v3.pdf</a><br>

##### Table 1. Recommended Publishing Timeline for Different Data Types { #table1 }

<table border="1" width="100%">
	<tbody>
		<tr>
			<td>
			<b>Project/Data Type</b>
			</td>
			<td>
			<b>Recommended Publishing Timeline</b>
			</td>
		</tr>
		<tr>
			<td>
			Experimental
			</td>
			<td>
			12 months from completion of experiment
			</td>
		</tr>
		<tr>
			<td>
			Simulation
			</td>
			<td>
			12 months from completion of simulations
			</td>
		</tr>
		<tr>
			<td>
			Reconnaissance: Immediate Post-Disaster
			</td>
			<td>
			3 months from returning from the field
			</td>
		</tr>
		<tr>
			<td>
			Reconnaissance: Follow-up Research
			</td>
			<td>
			6 months from returning from the field
			</td>
		</tr>
	</tbody>
</table>

#### Public Accessibility Delay { #accessibilitydelay }

Some journals require that researchers submitting a paper for review inlcude the corresponding dataset DOI in the manuscript. Data accessibility delay or embargo refers to time during which a dataset has a DOI but it is not made broadly accessible, awaiting for the review to be accepted by a journal paper.

In August 25, 2022 the Office of Science and Technology Policy issued a <a href="https://www.whitehouse.gov/wp-content/uploads/2022/08/08-2022-OSTP-Public-access-Memo.pdf" target="_blank"> memorandum with policy guidelines </a> to “ensure free, immediate and equitable access to federally funded research.” In the spirit of this guidance, DesignSafe has ceased offering data accessibility delays or embargos. DesignSafe continues working with users to:

<ul>
	<li dir="ltr">
	Provide access to reviewers via My Projects before the dataset is published. There is no DOI involved and the review is not annonymous.
	</li>
	<li dir="ltr">
	Help users curate and publish their datasets so they are publicly available for reviewers in the best possible form.
	</li>
	<li dir="ltr">
	Provide amends and versioning so that prompt changes can be made to data and metadata upon receiving feedback from the reviewers or at any other time.
	</li>
</ul>

In addition, DesignSafe Data Depot does not offer capabilities for enabling single or double blind peer review.


#### Licensing { #licensing }

Within DesignSafe, you will choose a license to distribute your material. The reason for offering licences with few restrictions, is that by providing less demands on reusers, they are more effective at enabling reproducible science. We offere licenses with few to no restrictions. By providing less demands on reusers, they are more effective at enabling reproducible science. Because the DesignSafe Data Depot is an open repository, the following licenses will be offered:

<ul>
	<li>For datasets: ODC-PDDL and ODC-BY</li>
	<li>For copyrightable materials (for example, documents, workflows, designs, etc.): CC0 and CC-BY</li>
	<li>For code: GPL</li>
</ul>

You should select appropriate licenses for your publication after identifying which license best fits your needs and institutional standards. Note that datasets are not copyrightable materials, but works such as reports, instruments, presentations and learning objects are.

<strong>Please select only one license per publication with a DOI. </strong>


Available Licenses for Publishing Datasets in DesignSafe

##### DATASETS { #licensing-datasets }

If you are publishing data, such as simulation or experimental data, choose between:

<table class="tg" style="width: 100%; padding-bottom: 15px;">
	<tr>
		<td><strong>Open Data Commons Attribution</strong>
		<div style="color: #158600;">Recommended for datasets</div>
		</td>
	</tr>
	<tr><td>
		<ul>
			<li>You allow others to freely share, reuse, and adapt your data/database.</li>
			<li>You expect to be attributed for any public use of the data/database.</li>
		</ul>

		Please read the <a href="https://opendatacommons.org/licenses/by/summary/" target="_blank">License Website</a>
	</td></tr></table>
	

<table>
	<tr>
		<td><strong>Open Data Commons Public Domain Dedication</strong>
		<div style="color: orange;">Consider and read carefully</div>
		</td>
	</tr>

	<tr><td>

		<ul>
			<li>You allow others to freely share, modify, and use this data/database for any purpose without any restrictions.</li>
			<li>You do not expect to be attributed for it.</li>
		</ul>


		Please read the <a href="https://opendatacommons.org/licenses/pddl/summary/" target="_blank">License Website</a>
		</td>
	</tr>
</table>

##### WORKS { #licensing-works }

If you are publishing papers, presentations, learning objects, workflows, designs, etc, choose between:

<table class="tg" style="width: 100%; padding-bottom: 15px;">
<tr>
<td class="tg-0lax" valign="top">
<tr>
<td><strong>Creative Commons Attribution </strong>
<div style="color: #158600;">Recommended for reports, instruments, learning objects, etc.</div>
</td>
</tr>
<tr><td>
			<ul>
				<li>You allow others to freely share, reuse, and adapt your work.</li>
				<li>You expect to be attributed for any public use of your work.</li>
				<li>You retain your copyright.</li>
			</ul>

			Please read the <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">License Website</a>
			</td>
</tr></table>


<table>
<tr>
<td><strong>Creative Commons Public Domain Dedication</strong>
<div style="color: orange;">Consider and read carefully</div>
</td>
</tr>
<tr><td>
<ul>
<li>You allow others to freely share, modify, and use this work for any purpose without any restrictions.</li>
<li>You do not expect to be attributed for it.</li>
<li>You give all of your rights away.</li>
</ul>
Please read the <a href="https://creativecommons.org/publicdomain/zero/1.0/" target="_blank">License Website</a>
</td>
</tr>
</table>

##### SOFTWARE { #licensing-software }

If you are publishing community software, scripts, libraries, applications, etc, choose the following:

<table>
<tr> <td><strong>GNU General Public License</strong></td> </tr>
<tr><td>
<ul>
<li>You give permission to modify, copy, and redistribute the work or any derivative version.</li>
<li>The licensee is free to choose whether or not to charge a fee for services that use this work.</li>
<li>They cannot impose further restrictions on the rights imposed by this license.</li>
</ul>
Please read the <a href="http://www.gnu.org/licenses/gpl.html" target="_blank">License Website</a>
</td></tr>
</table>

#### Subsequent Publishing { #publishing }

With the exception of Project Type Other, which is a one time publication, in the DDR it is possible to publish datasets or works subsequently. A project can be conceived as an umbrella where reports or learning materials, code, and datasets from distinct experiments, simulations, hybrid simulations or field research missions that happen at different time periods, involve participation of distinct authors, or need to be released more promptly, can be published at different times. Each new product will have its own citation and DOI, and users may select a different license if that is appropriate for the material, (e.g. a user publishing a data report will use a Creative Commons license, and an Open Data Commons license to publish the data). The subsequent publication will be linked to the umbrella project via the citation, and to the other published products in the project through metadata.

After a first publication, users can upload more data and create a new experiment/simulation/hybrid simulation or mission and proceed to curate it. Users should be aware that momentarily they cannot publish the new product following the publication pipeline. After curation and before advancing through the Publish My Project button, they should write a help ticket or attend curation office hours so that the DDR team can assist and publish the new product.

#### Amends and Version Control  { #amends }

Once a dataset is published users can do two things to improve and or / continue their data publication: amends and version control. Amends involve correcting certain metadata fields that do not incur major changes to the existing published record, and version control includes changes to the data. Once a dataset is published, however, we do not allow title or author changes. If those changes need to be made due to omission or mistake, users have to submit a Help ticket and discuss the change with the data curator. If applicable, changes will be done by the curation team.

Amends include:

<ul>
<li>Improving descriptions: often after the curator reviews the publicationn, or following versioning, users need to clarify or enhance descriptions.</li>
<li>Adding related works: when papers citing a dataset are published we encourage users to add the references in Related Works to improve data understandibility and cross-referencing and citation count.</li>
<li>Changing the order of authors: even though DDR has interactive tools to set the order of authors in the publication pipeline, users further require changes after publication due to oversight.</li>
</ul>

Version control includes:

<ul>
<li>Adding or deleting files to a published dataset.</li>
<li>Documenting the nature of the changes which will publicly show in the landing page.</li>
<li>Descriptions of the nature of the changes are displayed for users to see what changed and stored as metadata.</li>
<li>In the citation and landing pages, different versions of a dataset will have the same DOI and different version number. </li>
<li>The DOI will always resolve to the latest version of the data publication. </li>
<li>Users will always be able to access previous versions through the landing page.</li>
</ul>

When implementing amend and version take the following into consideration:

<b data-stringify-type="bold">Amend</b> is only going to update the latest version of a publication (if there is only one version that will be the target). Only the specified fields in the metadata form will be updated. The order of authors must be confirmed before the amendments can be submitted.

<b data-stringify-type="bold">Version</b> will create a new published version of a project. This pipeline will allow you to select a new set of files to publish, and whatever is selected in the pipeline is what will be published, nothing else. Additionally, the order of authors can be updated.

<b data-stringify-type="bold">Important</b>: Any changes to the project’s metadata will also be updated (this update is limited to the same fields allowed in the Amend section), so there is no need to amend a newly versioned project unless you have made a mistake in the latest version.

#### Leave Data Feedback { #feedback }

We welcome feedback from users about the published datasets. For this, users can click on the "Leave Feedback" button at the top of the data presentation on the data publication landing pages. We suggest that feedback is written in a positive, constructive language. The following are examples of feedback questions and concerns:

<ul>
	<li>Questions about the dataset that are not answered in the published metadata and or documentation.</li>
	<li>Missing documentation.</li>
	<li>Questions about the method/instruments used to generate the data.</li>
	<li>Questions about data validation.</li>
	<li>Doubts/concerns about data organization and or inability to find desired files.</li>
	<li>Interest in bibliography about the data/related to the data.</li>
	<li>Interest in reusing the data.</li>
	<li>Comments about the experience of reusing the data.</li>
	<li>Request to access raw data if not published.</li>
	<li>Congratulations.</li>
</ul>

#### Marketing Datasets { #marketing }

Datasets take a lot of work to produce; they are important research products. By creating a complete, organized, and clearly described publication in DDR, users are inviting others to reuse and cite their data.  Researchers using published data from DDR must cite it using the DOI, which relies on the <a href="http://schema.datacite.org/">DataCite schema</a> for accurate citation. For convenience, users can retrieve a formatted citation from the published data landing page. It is recommended to insert the citations in the reference section of the paper to facilitate citation tracking and count.

When using social media or any presentation platform to communicate research, it is important to include the proper citation and DOI on the presentations, emails, tweets, professional blog posts, etc.. A researcher does not actually need to reuse a dataset to cite it, but rather may cite it to point/review something about a dataset (e.g., how it was collected, its uniqueness, certain facts, etc.). This is similar to the process of citing other papers within a literary review section.

---

### Data Preservation { #datapreservation }

In the Data Depot Repository (DDR) data preservation is achieved through the combined efforts of the NH community that submits data and metadata following policies and best practices, and the DDR's administrative responsibilities and technical capabilities. The following data preservation best practices ensure preservation of the data from the moment in which researchers plan their data projects and for the long term after the data is published.

Depositing your data and associated research project materials in the DDR meets NSF requirements for data management. See our <a href="../managingdata/#data-management-plan-guidance">Data Management Plan</a>.


Follow the curation and publication onboarding instructions and steps -documented in the <a href="#curation-publication-guides">Data Curation and Publication Guides</a> - to ensure that your data curation and publication process is smooth and that your public datasets are well organized, complete, and understandable to others.


To facilitate long term access to your published data, when possible, we recommend using open file formats. Open file formats facilitate interoperability between datasets and with applications, which in turn facilitates long term access to the datasets. <!-- The Data Curation and Publication Best Practices have information about [file formats](/user-guide/curating/bestpractices/#acceptedfileformats). -->


DDR data is stored in high performance storage (HPC) resources deployed at the <a href="https://www.tacc.utexas.edu" target="_blank">Texas Advanced Computing Center</a>. These storage resources are reliable, secure, monitored 24/7, and under a rigorous maintenance and update schedule.


While you are uploading and working with your data in DDR, your data is safe and geographically replicated in <a href="https://www.tacc.utexas.edu/systems/corral" target="_blank">Corral,</a> TACC's storage and data management resource.


DDR operates a dedicated open source <a href="https://duraspace.org/fedora/">Fedora</a> 5.x digital repository. Once the dataset is curated and the user has agreed to the last step in the publication process, the data and the metadata that the user has been inputting throughout the curation processare sent to Fedora where each published dataset contains linkages between datastreams, versions, metadata, and system metadata. At ingest, Fedora metadata records are created and publication binaries are bundled with a hash (fixity) and stored on Corral in a secure location that is recorded on the metadata (<a href="https://wiki.lyrasis.org/display/FEDORA38/Fedora+Digital+Object+Model" target="_blank">See Fedora data model</a>). For each individual file, Fedora generates and maintains preservation metadata in the standard <a href="https://www.loc.gov/standards/premis/" target="_blank">PREMIS </a>format.


In the case of the DDR, file system replication is automatic. Ingestion of data from the web-visible storage into Fedora takes place under automated control when the publication workflow executes. The Fedora repository and database is likewise replicated as well as backed up on an automated schedule. Metadata preservation is assured through the backup of Fedora's metadata database. In case of failure where data is compromised, we can restore the system from the replication.


Both the front-end copies and the Fedora repositories are in systems that implement de-clustered RAID and have sufficient redundancy to manage up to 3 drive failures for a single file stripe. The file system itself is mirrored daily between two datacenters. The primary data is also periodically backed up to a tape archive for a third copy, in a third datacenter. The database that manages metadata in Fedora is also quiesced, snapshotted, and backed to tape on a regular automated schedule.


The underlying storage systems for the DDR are managed in-house at TACC. All the storage systems used by DesignSafe are shared multi-tenant systems, hosting many projects concurrently in addition to DesignSafe – the front-end disk system currently has ~20PB of data, with the <a href="https://www.tacc.utexas.edu/systems/ranch" target="_blank">tape archive </a>containing roughly 80PB. These systems are operated in production by a large team of professional staff, in conjunction with TACC’s supercomputing platforms. Public user guides document the capabilities and hardware, and internal configuration management is managed via Redmine, visible only to systems staff.


This preservation environment allows maintaining data in secure conditions at all times, before and after publication, comply with <a href="https://ndsa.org/publications/levels-of-digital-preservation/">NDSA Preservation Level 1</a>, attain and maintain the required representation and descriptive information about each file, and be ready at any time to transfer custody of published data and metadata in an orderly and validated fashion. Fedora has <a href="https://github.com/fcrepo-exts/fcrepo-import-export">export capabiiities</a> for transfer of data and metadata to another Fedora repository or to another system.


Each published dataset has a <a href="#curation-publication-faq">digital object identifier (DOI)</a> that provides a persistent link to the published data. The DOI is available in the dataset landing page, along with all the required metadata and documentation.

To learn about our commitment to data preservation, please read our <a href="#data-preservation/">Digital Preservation Policy</a>.
