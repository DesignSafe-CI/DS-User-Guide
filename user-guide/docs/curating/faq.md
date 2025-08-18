<!-- NOTE: Not enabled in navigation -->

# Frequently Asked Questions

<style id="faq-style">
summary {
    font-weight: var(--medium);
}
details {
    margin-block: 1em;
}
</style>

## Selecting Files & Data { #selecting }

/// details | What are the best file formats for data publications?

For long-term preservation purposes it is best to publish data in interoperable and open formats. For example, instead of Excel spreadsheet files -which are proprietary- it is best to convert them to CSV for publication. And, instead of Matlab files -also proprietary- it is best to publish data as simple txt (ascii) so it can be used by many different software. However, be aware that conversion may distort the data structure, so retain an original copy of any structured data (e.g. Matlab, Excel files) before attempting conversions and then check between the two for fidelity. In addition, you may publish both the proprietary and the open format, and/or consult the Data Curation Primers to find out how to better curate research data.

///
/// details | What does DesignSafe recommend for zip files?

If you uploaded your data as zip files, you should unzip before publishing. Zip files prevent others from directly viewing and understanding your data in the cloud. You may upload zip files to your "MyData" and unzip them using the [Extract utility](https://www.designsafe-ci.org/workspace/extract){ target="_blank" } before copying them to your project.

///
/// details | My project has many individual files. It will be cumbersome for a user to download them one by one. What do you suggest?

Through the web interface, downloading a lot of individual files is cumbersome. However, DesignSafe offers a number of solutions for this issue. First, users may interact with data in the cloud, without the need to download, using Matlab scripts as well as Jupyter notebooks. In this case, users may find downloading large quantities of data to be unnecessary. If users want to download a large number of files from a project, we recommend that they use Globus or include zip files for your data files. However, if you include zip files you should include the unzipped files in your project as well. If you wish to make your data easy to download, it is best to aggregate small individual files into a smaller number of larger files when feasible.

///
/// details | Should I publish raw data?

Raw data is that which comes directly from the recording instruments (camera, apps, sensors, scanners, etc.). When raw data is corrected, calibrated, reviewed, edited, or post-processed in any way for publication, it is called curated. Some researchers want to publish their raw data as well as their curated data; if this is your case, consider why it is necessary to publish both sets, and how another researcher would use it. Always clarify whether your data is raw or curated in the description or in a readme file, and use applicable methods to review the data for errors before publishing.

///
/// details | I will publish a large collection of images. What do I need to consider?

Be selective with the images you choose to publish. Make sure they have a purpose and are illustrative of a process or a function. Use file tags to describe them. If the images include team members make sure they are comfortable with making their images public. If images include people that have been affected by the natural hazard, you should procure their authorization to make their pictures public.

///
/// details | What type of Data projects can be published in DesignSafe?

We have multiple data models and you may publish project types as "Experimental", "Simulation", "Hybrid Simulation", "Field Research" and "Other". Using the "Field Research" data model, you can publish both Engineering/Geosciences collections as well as Social Sciences collections. Stand-alone reports, presentations, software and white papers, as well as datasets that do not fit with the rest of the project types can be published in the project type "Other".

///
/// details | How should I select data to be published in a project?

While right now there is no limit to the amount of files that can be published in DesignSafe, the comprehension and reuse potential of the data should be important considerations when selecting what data can be published. This goes with the possibility to clearly describe the data and establish and document its completeness and validity. For all project types, you have the option to select a subset of the files uploaded to My Project that you wish to publish without the need to delete them from the Working Directory.

///
/// details | What should I consider before publishing Jupyter Notebooks?

Please refer to our Jupyter User Guide document to find information on how to publish a Jupyter Notebook.

///

## Organizing & Describing Your Dataset { #organizing }

/// details | How should I organize the data files to be published in a project?

For each type of project publication, the best way to organize your data is to map them to the organizational schema provided by the data models available for each research type (simulation, experimental, hybrid simulation and field research). These models were designed by experts and represent the main data and documentation components required for others to understand and reuse your dataset.

///
/// details | Can I organize my data files into a hierarchy of folders in DesignSafe?

DesignSafe offers methods for categorizing (organizing) and tagging (describing) your files. To enhance organization and description of large and complex projects, users can group files in folders. However, it is always best to avoid overly nesting because browsing through an extensive folder hierarchy on the web is slower than on your local computer. So to improve the user experience, you should try to use the smallest number of nested folders necessary. Instead, you may use categories, descriptions, and tags to indicate what the groupings are. This provides a method for users to identify and search your files efficiently.

///
/// details | How should I describe the dataset organization in a project type "Other"?

In project type Other you will be able to tag individual files for ease of data understandability and reuse. If you publish many files and need to organize them in folders, we suggest providing a description of the organizational structure and naming convention that you use in your dataset in a "readme" file or a report. This file can simply be a text file or pdf file.

///
/// details | Why do you require a report/readme in all of your data publications?

The "Experimental", "Simulation", "Hybrid Simulation", and "Field Research" project types provide a representation of the structure of the datasets. Still, you may need to clarify the meaning of the fields of your datasets, the functions of your files and their naming convention, the way you decided to organize them, or describe other reuse characteristics of your data. Providing a report/readme file and/or a data dictionary associated with your data is an ideal way to express this information.

///
/// details | How can I provide more contextual information about my published dataset?

To enhance the knowledge surrounding your dataset, you can use the "Related Work" field at the project level to point to web-pages, publications, or datasets that are published within or outside DesignSafe and that you consider relevant to point to in your publication. For example, you may point to a separate published project in DesignSafe, or provide the title and DOI of an article that relates to your data. You may also use the description fields in the data model to include specific parameters or facts that you want to highlight (e.g. wind speed during a hurricane, earthquake magnitude, damage types, etc.). Adding tags, both from a controlled list available or by including a custom one, helps other users to find the files that they need within the data landing page.

///
/// details | How can I convey the quality of my data publication?

Data quality, as entailed by the metadata, concerns the completeness of the data documentation and the validity and integrity of the data content. Following DesignSafe curation and documentation best practices, as well as the onboarding instructions on the curation and publication interfaces, and adding a data report or data dictionary enables publishing a complete dataset that others will understand. In addition, in the documentation and/or data description, it is important to clarify the processes conducted to assure the completeness and validity of the data content.

///
/// details | I have another published work that is related to the project I am now planning to publish. How can I relate them?

On the project landing page under Edit Project there is a "Related Work" field where you have the option to include one or more associated projects and publications to your current project. Here, you can provide the title as well as a link to that project or publication. This link can be a DOI or a URL for any content found inside or outside of DesignSafe. For DOIs, please make sure you are adding the entire DOI address starting with "http" to correctly link the webpage to the related project.

///

## Publishing { #publishing }

/// details | Which license is appropriate for my publication?

Licenses indicate the conditions in which you, as a data creator, want the data to be used by others. Due to the variety of resources published in DesignSafe, we provide [four different types of open licenses](/user-guide/curating/policies/#licenses). These cover datasets, software, materials with intellectual property rights, and the different ways in which you want your work to be attributed.

///
/// details | What is a DOI?

A Digital Object Identifier (DOI) is a unique alphanumeric string assigned by a registration agency (the International DOI Foundation) to identify a resource and provide a persistent link to its location on the Internet. You can find a registered resource by its DOI using the "Resolve a DOI Name" function at: [http://www.doi.org/](http://www.doi.org/){target="_blank"}. In addition, you may find the citation information for that DOI in DataCite at [https://search.datacite.org/](https://search.datacite.org/){target="_blank"}.

///
/// details | What is the relation between a DOI and a data citation?

The DOI is a component of a citation for a work that is stored online. Therefore, it provides access to the permanent URL and the cited resource.

///
/// details | I have multiple experiments/simulations/missions to publish under one project. How should I do it?

Projects with multiple experiments/simulations/missions (publication units) can be published sequentially over a large period of time. After one publication unit is completed, you may resume uploading files and will be able to publish another unit within the same project.  Each may have different authors and will receive individual DOIs.

///
/// details | If the project type is "Experimental"/ "Simulation"/ "Field Research", how can I assign relevant authors to each experiment/simulation/mission?

While creating experiments/simulations/missions, you have the option to assign authors to each one. Additionally, after successfully creating the publication, you can click on "Add (Experiment/Simulation/Mission)" on the Curation Directory page and then edit the authors and their order within the corresponding experiment/simulation/mission found in the inventory list.

///
/// details | How can I control the order of the authors for the published project and its citation?

In the publication pipeline under "Order Authors" you will be able to arrange the order of authors for each publication using the arrow icons on the screen. This author order will be used in the citation that includes the DOI.

///
/// details | How can I give credit to DesignSafe?

Please include the citation of the marker paper in the references/bibliography section of your publication. This is more effective than you providing in-text acknowledgements.

> Rathje, E., Dawson, C. Padgett, J.E., Pinelli, J.-P., Stanzione, D., Adair, A., Arduino, P., Brandenberg, S.J., Cockerill, T., Dey, C., Esteva, M., Haan, Jr., F.L., Hanlon, M., Kareem, A., Lowes, L., Mock, S., and Mosqueda, G. 2017. "DesignSafe: A New Cyberinfrastructure for Natural Hazards Engineering," ASCE Natural Hazards Review, doi:10.1061/(ASCE)NH.1527-6996.0000246.

///

## Data Reuse { #datareuse }

/// details | How can I contribute to the reuse of data?

Datasets take a lot of work to produce; they are important research products. By creating a complete, clean, and clearly described data publication you are already inviting others to use and cite your data. Always cite your datasets and those of others that you have reused in the reference section of your papers using the citation language and DOI provided on DesignSafe, and encourage your peers and students to do the same. If you use social media or a presentation platform to talk about your research, always include the proper citation and DOI on your materials (ppts, abstracts, emails, etc.). Note that a researcher does not actually need to reuse a dataset to cite it, but rather may cite a dataset to reference something of note in the dataset (e.g., how it was collected, its uniqueness, etc.). This is similar to the process of citing other papers.

///
/// details | How do I cite a dataset in a paper?

A dataset is cited using the same format used to cite a journal article or a conference proceeding in the reference section of a paper. Conveniently, you should use the citation language and DOI provided by DesignSafe in the data publication’s landing page.

///
/// details | I reuse data from other sources in my project. How should I credit the data creators in my publication?

Frequently you reuse data from other sources in your research and sometimes you even want to re-publish it; it is important to make sure if and how you can do so. In addition, it is always good practice to give credit to the data creators. Please be aware of the following:

1. Be aware of the reused data original license and conditions of usage. The license will specify if and how you can modify, distribute, and cite the reused data.
1. If permitted you may also republish the reused data. This is feasible when the reused dataset is not very large. Else see 3 below.
1. If you reuse data from other sources in your experiments or in your field research, you can point to it from the Referenced Data Title box so others can know about its provenance.
1. In projects type Other, you can point to the reused data from the Related Work box.
1. If you have reused images from other sources (online, databases, publications, etc.), be aware that they may have copyrights. We recommend citing them according to [UBC Library Research Guides](https://guides.library.ubc.ca){target="_blank"}.

///
/// details | Are there any conditions regarding the usage of data published in DesignSafe?

Yes, users that download and reuse data agree to the [Data Usage Agreement](/user-guide/curating/policies/#data-usage-agreement). Those conditions outline the responsibilities of and expectations for data usage including aspects of data licensing, citation, privacy and confidentiality, and data quality.

///
