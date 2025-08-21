# Setting File Paths for DesignSafe 

File paths are needed when using any of the [data transfer methods](/user-guide/managingdata/datatransfer/) that are external to the Data Depot's web-based transfers.  The data stored on DesignSafe resides mostly on the large shared data resource [Corral](https://docs.tacc.utexas.edu/hpc/corral/) located at the University of Texas, Texas Advanced Computing Center (TACC). The Data Depot also provides access to your files that are stored in TACC's Stockyard data resource that is home to the Work file system which is mounted to all compute nodes on the HPC resources. Importantly, Corral services many different projects, not only DesignSafe, and as such utilizes a complex file structure for organization. The purpose of this documentation is to explain how to navigate this complex file structure to locate the directories pertinent to your data transfer needs on DesignSafe. 

There are five main locations for data transfers on DesignSafe — [My Data](#mydata), [Work](#work), [My Projects](#myprojects), [Published](#published-nheri), [Published (NEES)](#published-nees) — each presented in detail below.

## Path to My Data { #mydata }

1. Set Path to `/data/designsafe/mydata/<username>/`.
2. Replace `<username>` with your username.
    <br><small>The hostname for the location is data.tacc.utexas.edu.</small>

## Path to Work { #work }

The path to Work operates differently than the other locations described above. Work is a shared file system that is mounted on the compute nodes of all of the HPC systems at TACC.

1. Authenticate to one of TACC's HPC systems with hostname `<hpc_system_name>.tacc.utexas.edu`.
2. Replace `<hpc_system_name>` with the name of the HPC system to which you want to authenticate.
3. Execute the change directory command `CD $WORK` to navigate to your Work file path.
    <br><small>This will set you in your Work file path `/work/numeric_identifier/<username>/<hpc_system_name>` where `<username>` is your username and `<hpc_system_name>` is the name of the HPC system to which you have authenticated.</small>  

## Path to My Projects { #myprojects }

1. Set Path to `/corral/projects/NHERI/projects/<project-uuid>/`.
2. Replace `<project-uuid>` with the project's universally unique identifier (UUID).
    <br><small>You can find your project's UUID by clicking the blue text just below the Description of your project <strong>Learn how to transfer data to this project</strong>. The hostname for the location is data.tacc.utexas.edu.</small>

## Path to Published { #published-nheri }

1. Set Path to `/corral/projects/NHERI/published/<PRJ-XXXX>`.
2. Replace `<PRJ-XXXX>` with the project's number.
    <br><small>The hostname for the location is data.tacc.utexas.edu.</small>

## Path to Published (NEES) { #published-nees }

1. Set Path to `/corral/projects/NHERI/public/projects/<NEES-XXXX-XXXX.groups>`.
2. Replace `<NEES-XXXX-XXXX.groups>` with the NEES project number.
    <br><small>The hostname for the location is data.tacc.utexas.edu.</small>

!!! note
    If you have any issues setting the file paths, please [create a ticket](https://designsafe-ci.org/help){ target="_blank" }.


