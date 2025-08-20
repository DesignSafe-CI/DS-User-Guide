# Setting File Paths for DesignSafe 

File paths are needed when using any of the [data transfer methods](/user-guide/managingdata/datatransfer/) that are external to the Data Depot's web-based transfers.  The data stored on DesignSafe resides mostly on the large shared data resource [Corral](https://docs.tacc.utexas.edu/hpc/corral/) located at the University of Texas, Texas Advanced Computing Center (TACC). The Data Depot also provides access to your files that are stored in TACC's Stockyard data resource that is home to the Work file system which is mounted to all compute nodes on the HPC resources. Importantly, Corral services many different projects, not only DesignSafe, and as such utilizes a complex file structure for organization. The purpose of this documentation is to explain how to navitage this complex file structure to locate the directories pertinent to your data transfer needs on DesignSafe. 

There are five main locations for data transfers on DesignSafe: <a href="#mydata">My Data</a>, <a href="#work">Work</a>, <a href="#myprojects">My Projects</a>, <a href="#published-nheri">Published</a>, and <a href="#published-nees">Published (NEES)</a>, they are each presented in detail below. If you have any issues setting the file paths, please create a ticket (<a href="https://designsafe-ci.org/help">https://designsafe-ci.org/help</a>)

## Path to My Data { #mydata }

For <strong>My Data</strong> set Path to <strong>/data/designsafe/mydata/&lt;username&gt;/</strong>. Replace <strong>&lt;username&gt;</strong> with your username. The hostname for the location is data.tacc.utexas.edu.

## Path to Work { #work }

The path to Work operates differently than the four locations described above. Work is a shared file system that is mounted on the compute nodes of all of the HPC systems at TACC. While the four other data locations require authentication to data.tacc.utexas.edu, Work is accessed by first authenticating to one of TACC's HPC systems with hostname <hpc_system_name>.tacc.utexas.edu, replacing <strong><hpc_system_name></strong> with the name of the HPC system to which you want to authenticate.
Once you have authenticated to an HPC system, you will want to execute the change directory command CD $WORK which will set you in your Work file path <strong>/work/numeric_identifier/&lt;username&gt;/<hpc_system_name></strong> where <strong>&lt;username&gt;</strong> is your username and <strong><hpc_system_name></strong> is the name of the HPC system to which you have authenticated.  

## Path to My Projects { #myprojects }

For <strong>My Projects</strong> set Path to <strong>/corral/projects/NHERI/projects/&lt;project-uuid&gt;/</strong>. Replace <strong>&lt;project-uid&gt;</strong> with the project's universally unique identifier (UUID). You can find your project's UUID by clicking the blue text just below the Description of your project <strong>Learn how to transfer data to this project</strong>. The hostname for the location is data.tacc.utexas.edu.

## Path to Published { #published-nheri }

For <strong>Published </strong>DesignSafe projects set Path to <strong>/corral/projects/NHERI/published/&lt;PRJ-XXXX&gt;</strong>. Replace <strong>&lt;PRJ-XXXX&gt;</strong> with the project's number. The hostname for the location is data.tacc.utexas.edu.

## Path to Published (NEES) { #published-nees }

For <strong>Published (NEES)</strong> projects set Path to <strong>/corral/projects/NHERI/public/projects/&lt;NEES-XXXX-XXXX.groups&gt;</strong>. Replace <strong>&lt;NEES-XXXX-XXXX.groups&gt;</strong> with the NEES project number. The hostname for the location is data.tacc.utexas.edu.


