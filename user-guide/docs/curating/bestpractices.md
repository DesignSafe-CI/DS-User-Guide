# Best Practices for Data Curation and Publication 

## Curation Quality 

Curation quality involves ensuring the accuracy, completeness, consistency, and reliability of your dataset.  In the DDR, curation quality policies as well as the curation and publication interactive functions are geared towards ensuring excellence in data publications. Each data publication is unique; it reflects and provides evidence of the research work of individuals and teams. It is the user's responsibility to publish data that is up to the best standards of their profession, and the DDR's  commitment is to help them achieve these standards.In addition, the following best practices are highly recommended to assure that a dataset is curated towards reusability and reproducibility:

* Check for completeness of data transfer. Sometimes users upload folders with large numbers of files, and transfers get interrupted so everything in the folder may not get transferred. Please check that all folders contain all the files intended.
* Use quality control methods to review the data for errors or to improve its fitness to the research application. Methods may involve: calibration, validation, normalization, resizing, improved resolution, cleaning, transformation to open formats, noise reduction, sub-sampling, performance testing, consolidation, further documentation, etc. Always include an explanation of the quality control methods you used in the data report or readme file so that other users are aware of the quality control methods employed. 
* When publishing tabular data include a data dictionary in the data report to explain the meaning of the column fields. 
* Data dictionaries are also useful to clarify acronyms, abbreviations or codes for measurements used in your data or documentation.
* It is possible to publish both raw and curated data. Raw data comes directly from experiment recording instruments (camera, apps, sensors, scanners, etc). When raw data is corrected, calibrated, reviewed, edited or post-processed in any way for publication, it is considered curated. Some researchers want to publish their raw data along with their curated data. For those who wish to publish both, carefully consider the necessity of publishing both sets, and how another researcher might use them. Always clarify whether your data is raw or curated in the description, by adding a tag to label the files, or in a data report and include information about the method used to curate it.
* Researchers generate enormous amounts of images and other file types. While there are no restrictions on the number of files in a project, it is important to be selective as to not overwhelm users. Make sure that all images have a purpose and are illustrative of a process or a function, and avoid redundancy. Use file tags to describe them, this is to make sure users know what you want to highlight. The same approach should be applied for other data formats.
* Researchers that publish large amounts of files (for example as simulation outputs or field research collections) should consider publishing scripts/tools that allow selection/visualization/post-processing of files of interest so users can review and subset  data.
* When publishing scripts/code, always include a readme file that explains clearly how to use the scripts.
* Before publishing scripts and notebooks, always make sure your code works properly.



### AI-Ready Curation Quality

AI Ready curation quality  is about ensuring data is clean, organized, structured, unbiased, and includes necessary contextual information to support AI workflows effectively leading to secure and meaningful outcomes. Overall, it points to achieving research reproducibility. DDR's policies and best practices cover many of the requirements to publish AI ready data, and we notice via citations that many types of published datasets in DDR are used in AI applications. There are additional recommendations for datasets specifically created to train particular ML models and or benchmarks and testbeds to be used in many applications. In those cases, beyond following all the applicable policies and best practices to publish a quality dataset, researchers should also:

* Reference the public model used to train the data in the field Reference Data or Software.  
* Document in the data report the results of the trained model including the model's performance under the published dataset. If the results are published in a paper, reference the paper in Related Work. 
* Reference any data if/that was reused to generate the training/benchmark dataset.

The concept is that AI ready data involves showcasing a network of resources that includes: the data, the model and the performance of the model/results. The following are examples of datasets published in DDR that comply with AI readiness.



Del-Castillo-Negrete, C., B. Pachev, P. Arora, E. Valseth, C. Dawson (2023). "Alaska 1m Surge Events - Nome, Red Dog Dock, Unalakleet (1992 - 2022)", in Alaska Storm Surge Events. DesignSafe-CI. [https://doi.org/10.17603/ds2-4rnb-j321](https://doi.org/10.17603/ds2-4rnb-j321)



Massey, C., D. Townsend, B. Rosser, R. Morgenstern, K. Jones, B. Lukovic, J. Davidson (2021). "Version 2.0 of the landslide inventory for the Mw 7.8 14 November 2016, Kaikōura Earthquake", in V2.0 Landslide inventory for the Mw7.8 14 November 2016, Kaikōura Earthquake, New Zealand. DesignSafe-CI. [https://doi.org/10.17603/ds2-1ftv-hm22](https://doi.org/10.17603/ds2-1ftv-hm22)



## Curating Various Types of Research Data

### Proprietary Formats

Many instruments used in natural hazards research involve proprietary file formats. Many of those files can be converted to open formats within their corresponding software prior to uploading to DDR.  In turn, Excel and Matlab are proprietary file formats that are frequently used in this community for analysis purposes. Instead of Excel spreadsheet files, it is best to publish data in CSV format so it can be used by different software. However, in some cases conversion may distort the data structures and thus the files cannot be converted. Always retain an original copy of any structured data before attempting conversions, and check between the two for fidelity. Additionally, it is possible to upload and publish both the proprietary and the converted version in the DDR, especially if you consider that publishing with a proprietary format is convenient for data reuse.

When publishing proprietary files that are ubiquitous in the field, please refer to the following Data Curation Primers. 

* [Matlab](https://deepblue.lib.umich.edu/handle/2027.42/154686)
* [Excel](https://github.com/DataCurationNetwork/data-primers/blob/main/Excel%20Data%20Curation%20Primer/Excel%20Data%20Curation%20Primer.md)

### Compressed Data

Users that upload data as a zip file should unzip before curating and publishing, as zip files prevent others from directly viewing and making sense of the published data and the repository. If uploading compressed files to My Data, it is possible to unzip it using the extraction [utility](https://www.designsafe-ci.org/rw/workspace/#!/extract-0.1u1) available in the workspace before copying data to My Project for curation and publication.

### Simulation Data

When curating and publishing simulation datasets researchers should follow this [best practices document](https://doi.org/10.17603/ds2-wsqp-fw44). The document addresses the needs and recommendations of the numerical modeling community, and is informed by the experience of engineers that  conduct simulations. These best practices focus on attaining published datasets with precise descriptions of the simulation' design, access to the software used, and when possible, the complete publication of inputs and all outputs. Tying these pieces together requires documentation to understand the research motivation, origin, processing, and functions of the simulation dataset in line with FAIR principles. 

### Geospatial Data

We encourage the use of [recommended Geospatial data formats](https://www.loc.gov/preservation/resources/rfs/geo-carto.html). Within the Data Depot [Tools and Applications](https://www.designsafe-ci.org/use-designsafe/tools-applications/) we provide open source software for users to share and analyze geospatial data. [QGIS](https://www.designsafe-ci.org/use-designsafe/tools-applications/gis-tools/qgis/) accommodates most open format datasets, and [HazMapper](https://www.designsafe-ci.org/use-designsafe/tools-applications/gis-tools/hazmapper/) is capable of visualizing geo-tagged photos and GeoJSON files. To access this software, users should create an account in DesignSafe.

Understanding that ArcGIS software is widespread in this community, it is possible to upload both proprietary and recommended geospatial data formats in the DDR. When publishing feature and raster files, it is important to make sure that all the relevant files for reuse–such as the projection and header files are included in the publication. For example, for shapefiles it is important to publish all .shp (the file that contains the geometry for all features), .shx (the file that indexes the geometry) and .dbf (the file that stores feature attributes in a tabular format) files.

### Point Cloud Data

It is recommended to avoid publishing proprietary point cloud data extensions. Instead, users should consider publishing post-processed and open format data such as las or laz files. In addition, point cloud data publications may be very large and therefore of difficult access if not displayed on a map. In [Tools and Applications](https://www.designsafe-ci.org/use-designsafe/tools-applications/), we have Potree available for users to view point cloud datasets. Through the Potree Convertor application, non-proprietary point cloud files can be converted to a Potree readable format for visualization in DesignSafe.

### Jupyter Notebooks

As you plan for publishing a Jupyter Notebook, please consider the following issues:

1. The DesignSafe publication process involves copying the contents of your project at the time of publication to a read only space within the Published projects section of the Data Depot (i.e., this directory can be accessed at NHERI-Published in JupyterHub). Any future user of your notebook will access it in the read-only Published projects section. Therefore, any local path you are using while developing your notebook that is accessing a file from a private space (e.g., "MyData", "MyProjects") will need to be replaced by an absolute path to the published project. Consider this example: you are developing a notebook in PRJ-0000 located in your "MyProjects" directory and you are reading a csv file living in this project at this path: `/home/jupyter/MyProjects/PRJ-0000/Foo.csv`. Before publishing the notebook, you need to change the path to this csv file to `/home/jupyter/NHERI-Published/PRJ-0000/Foo.csv`.
2. The published area is a read-only space. In the published section, users can run notebooks, but the notebook is not allowed to write any file to this location. If the notebook needs to write a file, the author of the notebook must make sure that it can write to a file in each user directory ([example of a published notebook that writes files to user directories](https://doi.org/10.17603/ds2-v310-qc53)). Since the published space is read-only, if a user wants to revise, enhance or edit the published notebook they will have to copy the notebook to their My data and continue working on the copied version of the notebook located in their My data. A readme file must be published within the project that explains how future users can run and take advantage of the Jupyter Notebook.
3. Jupyter Notebooks rely on packages that are used to develop them (e.g., numpy, geopandas, ipywidgets, CartoPy, Scikit-Learn). For preservation purposes, it is important to publish a requirements file including a list of all packages and their versions along with the notebook as a metadata file.

## Organizing and Naming Files

The DDR data models  provide categories for users to organize their data in a standardized way. Categories highlight the main components of the dataset in relation to the research method used. Each category has a form that must be filled with metadata to describe and represent its characteristics, and there are onboarding instructions on what kind of information is suitable for each metadata field. Once you have categorized the files do not make changes to categorized files through an SSH connection or through Globus. If you need to, please remove the category, deselect the files, and start over.

Under each category, corresponding files are represented as a list to facilitate accessibility of the dataset. However, curation of large datasets may require further organization of files into folders, which can be done prior to uploading the data or in My Project. In doing so it is best to avoid extensively nested folders, as browsing through folder hierarchies on the web slows the computer and confuses the user as to the location of the files. 

To avoid excessive nesting and improve navigation, users can come up with a file naming convention schema, ideally during the research planning phase and prior to gathering the data. Well-constructed folder and file names make it possible to identify files by succinctly expressing their content and their relations to other files, considering the key information they want to convey to others.

/// details | Naming Convention **Ideas**
    type: tip

* Project acronym, is good for branding the data
* Location/spatial coordinates
* Type of data
* Type of structure tested
* Simulation or experiment type
* Test/run number and parameters/conditions
* Natural hazard
* Damage type
* Version number of file

///
/// details | Naming Convention **Recommendations**
    type: tip

* File naming should be meaningful, both to the team and to others, and should be kept short. 
* Consider the folder name as complementary to the file naming convention
* File names should not have spaces, periods, accents, or special characters, as those features may cause errors within the storage systems.
* Always leave the three letter file extension. 
* The meaning and components of file naming conventions should be documented in the Data Report so that others can identify files. 
* Do not repeat filenames or folder names across different experiments, collections and missions, or simulations, as this is confusing for other users. Always include another piece of information to distinguish files and folders across groupings. 

///

## Recommended File Formats

For long-term preservation and interoperability purposes, we recommend and promote storing and publishing data in open formats. Below is an adaptation of the list of recommended formats for data and documentation by [Stanford Libraries.](https://guides.library.stanford.edu/data-best-practices/format-files) For those available, we include a link to the  [Data Curation Primers](https://datacurationnetwork.org/outputs/data-curation-primers/) which are peer-reviewed documents that can be used as guidelines to curate research data:

* [Databases](https://github.com/DataCurationNetwork/data-primers/blob/master/Databases%20Data%20Curation%20Primer/databases-data-curation-primer.md): XML, CSV
* [Geospatial](https://github.com/DataCurationNetwork/data-primers/blob/master/Geodatabase%20Data%20Curation%20Primer/Geodata-Primer.md): SHP, DBF, [GeoTIFF](https://github.com/DataCurationNetwork/data-primers/blob/master/GeoTIFF%20Data%20Curation%20Primer/geotiff-data-curation-primer.md), [netCDF](https://deepblue.lib.umich.edu/handle/2027.42/145724), [GeoJSON](https://github.com/DataCurationNetwork/data-primers/blob/master/GeoJSON%20Data%20Curation%20Primer/GeoJSON-data-curation-primer.md)
* PointCloud: LAS, LAZ, XYZ, PTX
* Moving images: MOV, MPEG, AVI, MXF
* Sounds: WAVE, AIFF, MP3, MXF
* Statistics: ASCII, DTA, [POR](https://github.com/DataCurationNetwork/data-primers/blob/master/SPSS%20Data%20Curation%20Primer/SPSS-data-curation-primer.md#Format-Overview), [SAS](https://github.com/DataCurationNetwork/data-primers/blob/master/SAS%20Data%20Curation%20Primer/SAS-data-curation-primer.md), [SAV](https://github.com/DataCurationNetwork/data-primers/blob/master/SPSS%20Data%20Curation%20Primer/SPSS-data-curation-primer.md#Format-Overview)
* Still images: TIFF, JPEG 2000, [PDF,](https://github.com/DataCurationNetwork/data-primers/blob/master/PDF%20Data%20Curation%20Primer/PDF-data-curation-primer.md) PNG, GIF, BMP
* [Tabular data](https://github.com/DataCurationNetwork/data-primers/blob/master/Tableau%20Data%20Curation%20Primer/Tableau-data-curation-primer.md): CSV
* Text: XML, [PDF/A](https://github.com/DataCurationNetwork/data-primers/blob/master/PDF%20Data%20Curation%20Primer/PDF-data-curation-primer.md), HTML, ASCII, UTF-8 ,
* CODE: (tcl files, py files) [Jupyter Notebook](https://github.com/DataCurationNetwork/data-primers/blob/master/Jupyter%20Notebook%20Data%20Curation%20Primer/Jupyter%20Notebooks%20Data%20Curation%20Primer.md)
* Seismology: SEED

## Tagging

Users can tag folders and  files for ease of data comprehension and reuse by others. While tagging is not required,  we recommend it because it helps others to identify file contents in the dataset landing page. The list of tags available are agreed upon terms contributed by experts in the field. If the tags available do not apply, feel free to add custom tags, and you may also submit tickets informing the curation team about the need to incorporate them in the list.  Using tags to clarify the file function is also a way of avoiding excessive folder nesting.



## Writing Helpful Titles, Keywords, and Descriptions

Well-written titles, keywords, and descriptions are key for understanding, discovery, and marketing of your research. Here are some tips to craft ones:

### Project Level Titles

Except for the data type "Other," the Data Depot Repository (DDR) requires titles at both the project level and the dataset level (mission, experiment, simulation, hybrid simulation). The dataset level title serves as the primary citation title, while the project title functions as a complementary secondary title. The citation format is shown below:

Author/s (year of publication). "Dataset Title", in Project title 

Example Citation:

Stark, N., M. Gardner, M. Grilliot, A. Lyda, K. Dedinsky, J. Mueller, C. Pezoldt, J. Hubler, C. Castro-Bolinaga, A. Schueller, W. Zhan, M. Haefeli, S. Burghardt, M. Wondolowski, S. Holberg, M. Hassan, J. Parker, J. Laurel-Castillo, L. Eggensberger, E. Nichols, H. Herndon, P. Wang, M. Olabarrieta Lizaso, B. Raubenheimer, Y. Hashash, S. ADUSEI, N. Jafari (2025). "NEER/GEER: Hurricanes Helene & Milton Dataset", in Multidisciplinary Pre, During and Post Storm Data Collection. DesignSafe-CI. [https://doi.org/10.17603/ds2-m8h3-5802](https://doi.org/10.17603/ds2-m8h3-5802)

### Project Level Titles

* Remember that this is the sub-title of the dataset citation.
* Keep titles short, between 50 and 60 characters long.
* Use descriptive words that point to the key themes and characteristics of the research project.
* Do not repeat the title of the dataset.
* Do not repeat the title of a paper, which could create confusion.
* Avoid using or spelling out acronyms. 

### Dataset Level Titles

* Remember that this is the title that will be featured in the citation. 
* Keep titles short,  between 50 and 60 characters long.
* Use descriptive words that point to the key themes and characteristics of the dataset.
* Do not repeat the title of the research project, or use “Dataset for:…(title of research project)
* Do not repeat the title of a paper to avoid duplication of DOIs or use "Replication Dataset for:...(title of the paper). 
* Avoid using or spelling out acronyms. 

### Keywords

* Remember that other researchers use keywords to find datasets in the Data Depot or online. 
* When applying keywords, researchers must think about how others would search for this particular dataset.
* When applicable, use keywords to indicate the type of hazard, research method, technology, problem addressed, and purpose. 
* Repeating words used in the description and titles as keywords increases the chances that the dataset will be discovered. 

Consult the CONVERGE [check sheet](https://nam12.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdoi.org%2F10.17603%2Fds2-swvc-sb26&data=05%7C02%7C%7C1b416aed89164d4c732208dd15356da6%7C31d7e2a5bdd8414e9e97bea998ebdfe1%7C0%7C0%7C638690041410632335%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=mfzeZFnF2WjcJA9ePOq6h%2BqjYSZAeSS1H77VDO7g4bk%3D&reserved=0) for guidance in choosing helpful keywords. 

### Descriptions

Except for Data type "Other", DesignSafe requires descriptions at the project level and at the dataset level (mission, experiment, simulation, hybrid simulation). Both descriptions are complementary. The project level description addresses the high level objectives of the research, who participates, why the research is unique, how many datasets will be published and who will benefit from it. The dataset level description focuses on the scope and content of the dataset and how it was obtained. Below are general recommendations that apply to both descriptions.  

\* Minimum 200 words, max 300 for each level

### Project Level Descriptions

* Begin with a general statement that provides context to the study by which the dataset was created (e.g., The system under investigation…). 
* Mention the type(s) of hazard being studied (wind, earthquake, wildfire,  multi-hazard, etc.). 
* Address the research problem that the data is helping to solve.
* Do not copy the abstract of the paper, as that describes the research results and not the dataset itself.
* Address who will benefit from reusing the data and how (reproducibility, generating new studies, validation, Machine Learning, etc.)?
* Use language that can reach experts as well as broader audiences.
* Use words that you think will help or are used by others to find datasets like yours online. Repeat these words across the title, descriptions, and keywords to increase online discoverability.
* Avoid using acronyms if possible. Spell out the full acronym if you must.

### Dataset Level Descriptions

* Datasets should be described as a standalone research output, so they can be understood independently from related research products such as a published paper or research code.Focus on describing the dataset. You may begin the text with "This dataset…"
* Provide an overview of the methodology by which the dataset was obtained.
* Provide a very brief overview of the scope and contents of the dataset and how it is organized. 
* Indicate if the data was quality controlled - you may go into more detail in the Data Report. 
* Keep descriptions concise and engaging, further details about the dataset should be introduced in a Data Report.
* Use language that can reach experts as well as layperson audiences.
* Use words that you consider will help or are used by others to find datasets like yours online. 
* Repeat these words across the title, description, and keywords to increase online discoverability.
* Avoid using acronyms if possible. Spell out the full acronym if you must.
## Reusing and Citing Resources in the Datasets Landing Pages

### Reusing Data and Software

In their projects, researchers frequently reuse data as input files, for validation, or to integrate with the data that they collect. They also reuse open software and may modify it for their purposes. To make sure that data and software can be reused, modified, and shared appropriately, researchers should always look into and proceed according to what is stated in the resource license. Licenses are standard ways for content creators to grant permissions to others to reuse their work under certain conditions. The license will, for example, indicate if the creators want to be attributed with a citation. In that regard, it is a good practice to always provide the citation of the software and data that was reused, even if the author does not require it. This is because authorship is part of the resource's provenance and to give credit to the creators.

### Citing Papers and Reused Data and Software

DDR offers possibilities to cite different types of resources that provide context, cite, or were used to create a new data publication.  Located in the curation forms, those are:

- **Related Work**: to cite data, papers, websites, reports or presentations that provide context, have a direct relationship to, or cite the published dataset. Those resources could be external to DDR or published in DDR. The type of connection between the resource and the published dataset has to be selected by the user as: context (informs the published dataset), link (points to a resource that is complementary to, derives from, or is derived from the published dataset) and is cited by (the work references the published dataset) 
- **Referenced Data and Software**: to cite data or software that have been reused to create the published dataset.

Note that:

* There could be more than one Related Work and Referenced Data or Software per published dataset.  
* Related Works and Referenced Data or Software can be added at any time during or after the dataset's publication. In the former case, it can be done through Amends or Versioning.
* In the form researchers should include the cited resource title and corresponding DOI in https format; this way, other users will be directed to the cited resource.
* When using a DOI, the platform will submit this information to a third party (Cross-Ref via DataCite) that will assign the citations to the corresponding resources so that authors are credited appropriately.
* In order to reuse images from other sources (online, databases, publications, etc.), users should look into their rights and licensing restrictions and follow them appropriately.  Users should also follow [instructions on how to cite the images](https://guides.library.ubc.ca/images/citing).

## Rights

DDR publishes data and other types of materials, some of which such as reports, presentations, and learning materials are protected under the [U.S. Copyright law](https://www.copyright.gov/title17/). The U.S. Copyright Office considers that [information that is discovered as opposed to created does not have copyrights](https://www.copyright.gov/title17/). This applies to a majority of datasets published in DDR which are conceived as a collection of facts.

Data may not, however, be only facts. That could be the case of certain types of field notes, answers from human subject interviews, or photographs. In turn, databases or other systems in which data is organized may be protected, but the data within will not be. In addition, [anything created solely by AI cannot be copyrighted](https://www.copyright.gov/ai/ai_policy_guidance.pdf). For updated information about this important topic see the University of Texas Libraries Copyright Issues in AI.

As an open repository committed to responsible access, we offer different licenses under which authors can share their data  publicly, and establish the conditions in which it can be reused by others. Options offered in the DDR are [Creative Commons licenses](https://creativecommons.org/share-your-work/cclicenses/) (with attribution or public domain) and [Open Data licenses](https://opendatacommons.org/licenses/) (with and without attribution). The first ones involve creative work under copyright law, and the latter are designed specifically for data. All licensing choices in DesignSafe involve the least restrictive conditions under which data and works can be shared and reused.  In general, any creative work such as papers, reports, presentations, social science research instruments, learning objects,  and posters can be shared under a Creative Commons license while for data it is best to choose an Open Data license. When consulting with our community, most expressed that they want to be attributed, which means that reusers of data should add the dataset citation in the reference section of the papers they publish using the data. Please refer to the [Licenses documentation](/user-guide/curating/policies/#licenses), and visit us during our [Virtual Office Hours](https://www.designsafe-ci.org/facilities/virtual-office-hours/) to discuss any doubts in choosing the right license with the data curator.

## Amends and Versioning

Once a dataset is published, users can amend or version their data publications. Amends involve correcting certain metadata fields that do not incur changes to the existing data files. Versioning involves amends and or changes to the data. These actions can be performed by the authors through My Project. 

Amends include:

* Improving descriptions and adding keywords: after the curator reviews the publication, or following versioning, users may need to clarify or enhance descriptions and keywords.
* Improve or add metadata: Adding information in a non-required field, or changing, improving already completed fields.
* Changing the order of authors: even though DDR has interactive tools to set the order of authors in the publication pipeline, users may require changes after publication.
* Add Funders and Awards: It is always important to provide credit to the agencies that fund the research that allows creating the data. 
* Adding Related Works: when papers citing a dataset are published, we encourage users to add the references in Related Works (option: is cited by) to improve data understandability, cross-referencing, and citation count. Other related works inform contextual, informing the 
* Adding Referenced Data and Software: when other datasets and or research software was used to create the published dataset.



Version control includes:

* Adding or deleting files to a published dataset.
* Documenting the nature of the changes which will publicly show in the landing page.
* Descriptions of the nature of the changes are displayed for users to see what changed and stored as metadata.
* Any changes to the project’s metadata will also be updated (this update is limited to the same fields allowed in the Amend section), so there is no need to amend a newly versioned project unless you have made a mistake in the latest version.

Versioning has these implications for the project’s DOI:

* In the citation and landing pages, different versions of a dataset will have the same DOI and different version number.
* The DOI will always resolve to the latest version of the data publication.
* Users will always be able to access previous versions through the landing page.

When implementing amends and versioning, consider the following:

* Amend will only update the latest version of a publication (if there is only one version that will be the target). Only the specified fields in the metadata form will be updated. The order of authors must be confirmed before the amendments can be submitted.
* Once a dataset is published, major changes to the title or author changes are not permitted. If changes must be made due to omission or a mistake, users should submit a Help ticket and discuss the change with the data curator. If applicable, changes will be made by the curation team.




## Leaving Data Feedback

Users can click a “Leave Feedback” button on the projects’ landing pages to provide comments on any publication. This feedback is transformed into a ticket and forwarded to the curation team for any needed actions, including contacting the authors. In addition, it is possible for users to message the authors directly as their contact information is available via the authors field in the datasets landing pages. However, leaving the feedback in the form allows tracking of the issues raised. The following are examples of feedback questions and concerns:

* Questions about the dataset that are not answered in the published metadata and or documentation.
* Missing documentation.
* Questions about the method/instruments used to generate the data.
* Questions about data validation.
* Doubts/concerns about data organization and or inability to find desired files.
* Interest in bibliography about the data/related to the data.
* Interest in reusing the data.
* Comments about the experience of reusing the data.
* Request to access raw data if not published.
* Requests to access restricted data if the authors authorize it. 
* Issues related to published code that is not working properly.
* Congratulations.
