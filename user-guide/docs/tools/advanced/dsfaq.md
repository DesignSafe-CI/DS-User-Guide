# Frequently Asked Questions

<style id="faq-style">
summary {
    font-weight: var(--medium);
}
details {
    margin-block: 1em;
}
</style>

An Expanding Collection of the Most Frequently Asked Questions

---

## FAQ Categories { #categories }

- [Users and Accounts](#faq-users)
- [Training](#faq-training)
- [Data Depot](#faq-datadepot)
- [Tools & Applications](#faq-workspace)
- [MATLAB](#faq-matlab)
- [Jupyter](#faq-jupyter)
- [OpenSees](#faq-opensees)
- [ADCIRC](#faq-adcirc)
- [OpenFOAM](#faq-openfoam)
- [ParaView](#faq-paraview)
- [Experimental Facilities](#faq-ef)
- [Data Curation &amp; Publication](/user-guide/curating/faq/)

///

---

## Users and Accounts { #faq-users }

/// details | Who can be a DesignSafe User?

Any natural hazards researcher or practitioner that wants an environment to store, analyze, curate, publish, and discover data with a community of peers.

///
/// details | How do I get a DesignSafe Account?

Navigate to and then follow the directions to submit the [registration request](https://www.designsafe-ci.org/account/register/){ target="_blank" }, and then follow the instructions in the email you receive to complete setting up your account, and then you will be able to [log in to DesignSafe](https://www.designsafe-ci.org/){ target="_blank" }. Note that a DesignSafe account is a TACC user account, so you will sometimes see emails from TACC and URLs that take you to the TACC domain tacc.utexas.edu.

///
/// details | I forgot my password. How do I reset it?

Go to https://accounts.tacc.utexas.edu/forgot_password and you will be prompted to enter your username or email address that is associated with your user account, and you will receive an email with a password reset link.

///
/// details | I'm getting an Authentication Failed error. What should I do?

If you are confident that you have entered the correct password for your account, then it is likely that your account has become Deactivated. Accounts are deactivated when more than 120 days have passed since you last logged in. To reactivate your account, log in at accounts.tacc.utexas.edu and request an activation link via https://accounts.tacc.utexas.edu/activate. You will receive an email at the email address associated with your user account with instructions for account reactivation.

///
/// details | Why should I get a DesignSafe Account?

With an account, you can:

- Run analysis or simulations with a variety of applications on High-Performance Computing (HPC) systems in [Tools & Applications](https://www.designsafe-ci.org/workspace/){ target="_blank" }
- Store your data in the [Data Depot](https://www.designsafe-ci.org/data/){ target="_blank" }
- Collaborate and publish your work with other researchers in [My Projects](/data/browser/projects/){ target="_blank" }
- Access data from other researchers in the [Published](/data/browser/public/){ target="_blank" } directory

///
/// details | How can I become more involved in DesignSafe?

Upon receiving your new user account, you will be sent an email to join our [Slack team](https://www.designsafe-ci.org/community/slack-online-collaboration/){ target="_blank" } to participate in discussions and give your input on the site.

///

---

## Training { #faq-training }

/// details | Does DesignSafe provide training on how to use the Data Depot and the applications in Tools & Applications?

[Upcoming training opportunities](https://www.designsafe-ci.org/learning-center/training/){ target="_blank" } are posted in the DesignSafe Learning Center, announced via email, and posted on DesignSafe Slack. Webinars covering DesignSafe features are hosted roughly monthly during the academic year.

///
/// details | Are training webinars recorded and available to view online?

Webinars are recorded and made available on our [YouTube Channel](https://www.youtube.com/@DesignSafe){ target="_blank" }.

///

---

## Data Depot { #faq-datadepot }

/// details | What data can I upload to the Data Depot?

There are no restrictions on file types for the data that you upload to the Data Depot. We do have special handling procedures for [Managing Protected Data](/user-guide/curating/bestpractices/#protecteddata){ target="_blank" } such as regulated/secure/PHI/PII/IRB/human-subjects data, so do not upload these data types directly into the Data Depot. All other types of data that you need to perform your research is welcomed and encouraged!


///
/// details | How can I transfer data to/from my computer and the Data Depot?

Explore the [Data Transfer Guides](/user-guide/managingdata/datatransfer/) to see our recommended methods based on the amount of data you are transferring.

///
/// details | What is My Projects?

[My Projects](https://www.designsafe-ci.org/data/browser/projects/){ target="_blank" } is a place where you can curate and publish data with other collaborators. Data models are integrated to help you easily curate your data. You do not need to be the PI to create a project, so Experimental Facilities can create projects for their users.

///
/// details | Can I easily copy data from my Cloud Data Provider (Dropbox, Box, etc)?

Explore the [Cloud Storage Transfer](/user-guide/managingdata/datatransfer/#cloud) user guide to see which providers we currently connect with for direct data transfer.

///
/// details | How do I add Designsafe's Box app to my company's/university's whitelist?

This will require contacting your IT department to make sure your company/university is using a whitelist for Box apps. If they are, give them Designsafe's client id: <i>gh3tntr70zh1lxf3po7y893rkje696zp</i>.

///
/// details | Where can I find the NEES Public Data that was available in the NEEShub?

The Published directory in the Data Depot holds the [NEES Public Data](https://www.designsafe-ci.org/data/browser/public-legacy/){ target="_blank" }. Projects published using DesignSafe will be hosted there as well. The DOIs for the NEES Public Data point to the Data Depot.

///

---

## Tools & Applications { #faq-workspace }

/// details | I don't see the application I need in the Tools & Applications. How can I use my application?

There are a couple of different approaches that can be taken. If this is an open source application that is used by many researchers throughout this research community, then we can work with you to determine if it is a candidate to be added to the Tools & Applications in the portal. [Please submit a ticket](https://www.designsafe-ci.org/help/new-ticket/){ target="_blank" } to start the conversation. Another approach is that you could [request an allocation](/user-guide/tools/advanced/hpcallocations){ target="_blank" } on one of TACC's HPC resources, and then you would log directly into the HPC system to run your application.

///

---

## MATLAB { #faq-matlab }

/// details | Do I need to provide my own license to run MATLAB?

No, you don’t need to provide your own license to run MATLAB in the Discovery Workspace. Our license with MathWorks allows for academic use and you can be from any academic institution. We have a process whereby you request access to MATLAB and we then verify you are an academic user prior to adding you to the license. Simply click on MATLAB in the Discovery Workspace to start the process of requesting access.

///
/// details | Who can use MATLAB on DesignSafe?

Our license with MathWorks allows for academic use and you can be from any academic institution. We have a process whereby you request access to MATLAB and we then verify you are an academic user prior to adding you to the license. Simply click on MATLAB in the Discovery Workspace to start the process of requesting access.

///
/// details | Why won’t my MATLAB job start and it gets stuck at Staging Inputs?

If you are starting up with a folder that has a large number of files and/or a significant number of MB’s, the startup may take too long and time out. Try opening MATLAB with an empty or smaller folder and then once in MATLAB you can switch directories.

///
/// details | Where did my MATLAB job output go?

If you do not specify a location, the default output is shown in the grayed-out text in the Job Output Archive Location field in the job submission form, which is your My Data/Archive/Jobs/YYYY-MO-DD/JobName folder.

///

---

## Jupyter { #faq-jupyter }

/// details | What is Jupyter?

The Jupyter Notebook is a web application that allows you to create and share documents that contain live code, equations, visualizations and explanatory text. A more detailed description including a list of more than 40 supported programming languages can be found on the [Jupyter website](http://jupyter.org/){ target="_blank" }.

///
/// details | What do people do with Jupyter?

Many people use Jupyter in a similar fashion as they use MATLAB to analyze and plot their data. We will be sharing example Jupyter Notebooks soon that you can copy into your My Data and customize for your research. We also provide [Jupyter training](https://designsafe-ci.org/user-guide/tools/jupyterhub/).

///

---

## OpenSees { #faq-opensees }

/// details | What research is enabled by OpenSees?

The Open System for Earthquake Engineering Simulation (OpenSees) is a software framework for simulating the seismic response of structural and geotechnical systems.<br>
A more detailed description can be found on the [OpenSees website](http://opensees.berkeley.edu/index.php){ target="_blank" }.

///
/// details | What versions of OpenSees are available on DesignSafe?

OpenSeesMP and OpenSeesSP are both available in the Discovery Workspace and use TACC’s HPC resources. These are recommended for longer-running jobs. OpenSees Express performs analysis using a single Tcl script and runs on a virtual machine instead of an HPC system to avoid queue time.

///
/// details | What is OpenSees Express?

OpenSees Express performs analysis using a single Tcl script, and runs on a virtual machine instead of an HPC system to avoid queue time.

///
/// details | Where did my OpenSees job output go?

If you do not specify a location, the default output is shown in the grayed-out text in the Job Output Archive Location field in the job submission form, which is your My Data/Archive/Jobs/YYYY-MO-DD/JobName folder.

///

---

## ADCIRC { #faq-adcirc }

/// details | What research is enabled by ADCIRC?

ADCIRC is a system of computer programs for solving time dependent, free surface circulation and transport problems in two and three dimensions. These programs utilize the finite element method in space allowing the use of highly flexible, unstructured grids. Typical ADCIRC applications have included:

- prediction of storm surge and flooding
- modeling tides and wind driven circulation
- larval transport studies
- near shore marine operations
- dredging feasibility and material disposal studies

A more detailed description can be found on the [ADCIRC website](http://adcirc.org/){ target="_blank" }.

///
/// details | Where did my ADCIRC job output go?

If you do not specify a location, the default output is shown in the grayed-out text in the Job Output Archive Location field in the job submission form, which is your My Data/Archive/Jobs/YYYY-MO-DD/JobName folder.

///

---

## OpenFOAM { #faq-openfoam }

/// details | What research is enabled by OpenFOAM?

OpenFOAM has an extensive range of features to solve anything from complex fluid flows involving chemical reactions, turbulence and heat transfer, to acoustics, solid mechanics and electromagnetics.<br>
A more detailed description can be found on the [OpenFOAM website](http://openfoam.com/){ target="_blank" }.

///
/// details | Where did my OpenFOAM job output go?

If you do not specify a location, the default output is shown in the grayed-out text in the Job Output Archive Location field in the job submission form, which is your My Data/Archive/Jobs/YYYY-MO-DD/JobName folder.

///

---

## ParaView { #faq-paraview }

/// details | What data analysis and visualization capabilities are enabled by ParaView?

ParaView is an open-source data analysis and visualization application. ParaView users can quickly build visualizations to analyze their data using qualitative and quantitative techniques.

A more detailed description can be found on the [ParaView website](http://www.paraview.org/paraview-guide/){ target="_blank" }.

///
/// details | Where did my ParaView job output go?

If you do not specify a location, the default output is shown in the grayed-out text in the Job Output Archive Location field in the job submission form, which is your My Data/Archive/Jobs/YYYY-MO-DD/JobName folder.

///

---

## Experimental Facilities { #faq-ef }

/// details | What Experimental Facilities are available to the natural hazards engineering community?

You can explore the NSF NHERI Program [Experimental Facilities](/facilities/experimental/) on our website. Research instruments at the facilities include wind tunnels, shake tables, centrifuges, wave pools, and mobile shaker trucks.

///
/// details | How can I learn more about the research capabilities and how to gain access to the Experimental Facilities?

Each facility hosts [workshops](/learning-center/training/) to provide prospective users with the knowledge of a facility's capabilities and discuss details toward developing research proposals, such as to the [NSF Engineering for Natural Hazards Program](https://www.nsf.gov/funding/pgm_summ.jsp?pims_id=505177){ target="_blank" }.

///
