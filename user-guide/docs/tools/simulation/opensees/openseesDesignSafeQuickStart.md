<script>
    function toggleDiv(DivLabel) {
        const el = document.getElementById(DivLabel);
        el.hidden = ( ! el.hidden );
    }
    function showDiv(DivLabel) {
        const el = document.getElementById(DivLabel);
        el.hidden = false;
    }
    function hideDiv(DivLabel) {
        const el = document.getElementById(DivLabel);
        el.hidden = true;
    }
</script>

<style>
    summary {
        cursor: pointer;
        font-weight: bold;
    }

    /* WARNING: Id `#quick-start` is set in doc that includes this one */
    /* FAQ: The ` li` is required because `theme.css` sets its `list-style` */
    #quick-start ~ ol li:not(
        #instructions ~ ol li
    ) {
        list-style: upper-alpha;
    }
</style>

The **Open System for Earthquake Engineering Simulation** ([OpenSees](https://opensees.berkeley.edu/){:target="_blank"}) is a software framework for simulating the static and dynamic response of structural and geotechnical systems. It has advanced capabilities for modeling and analyzing the nonlinear response of systems using a wide range of material models, elements, and solution algorithms. One sequential (**OpenSees EXPRESS**) and two parallel interpreters (**OpenSeesSP** and **OpenSeesMP**) are available on DesignSafe.

This **WebPortal** provides direct access to all OpenSees applications on DesignSafe. This portal is recommended for small to moderate-sized projects. You do not need an HPC allocation to submit jobs here.

Use this WebPortal in one of the these three ways, listed here in order of scalability:

1. Select [**"Interactive VM for OpenSees"**](/user-guide/tools/simulation/opensees/opensees/#opensees-express){:target="_blank"} to run OpenSees, OpenSeesMP, and OpenSeesSP for both Tcl and Python interpreters, at the terminal prompt for real-time interactivity with your model. Here you can edit and test your script in an integrated environment before submitting the full job to the HPC system. (<small><font color="blue"><button style="background: none!important;border: none;padding: 0!important;font-family: arial, sans-serif;color: #069;text-decoration: none;cursor: pointer;" onclick='toggleDiv("OSinter_deets")'>specs</button></font></small>)

    <div id="OSinter_deets" hidden>

    The following resources are shared with concurrent users, as there is only one Interactive-VM.

    - Number of Nodes = 1 (Nodes are like computers)
    - Number of Cores = 24 (Cores are the processors).
    - RAM = 48GB
    - Maximum Job duration = 48hr

    </div>

2. Submit your sequential [**OpenSees-Express**](/user-guide/tools/simulation/opensees/opensees/#opensees-express){:target="_blank"} job directly to a dedicated Virtual Machine (VM) and your TCL script will be uploaded and run immediately. (<small><font color="blue"><button style="background: none!important;border: none;padding: 0!important;font-family: arial, sans-serif;color: #069;text-decoration: none;cursor: pointer;" onclick='toggleDiv("OSexprees_deets")'>specs</button></font></small>)

    <div id="OSexprees_deets" hidden>

    The following resources are shared with concurrent users, as there is only one OpenSees-VM.

    - Number of Nodes = 1 (Nodes are like computers)
    - Number of Cores = 24 (Cores are the processors).
        HOWEVER, OpenSees-Express is a sequential application, so it only uses on Core per Job.
    - RAM = 48GB
    - Maximum Job duration = 48hr

    </div>

3. Submit your parallel [**OpenSeesSP**](/user-guide/tools/simulation/opensees/opensees/#openseesmp){:target="_blank"} or [**OpenSeesMP**](/user-guide/tools/simulation/opensees/openseesMP/){:target="_blank"} job directly to the HPC and your TCL script will be uploaded and submitted to the small queue on [**Frontera**](https://frontera-portal.tacc.utexas.edu/user-guide/running/){:target="_blank"}. (<small><font color="blue"><button style="background: none!important;border: none;padding: 0!important;font-family: arial, sans-serif;color: #069;text-decoration: none;cursor: pointer;" onclick='toggleDiv("OSmpsp_deets")'>specs</button></font></small>)

    <div id="OSmpsp_deets" hidden>

    The 1 or 2 nodes you select are not shared with other users. You have full access to the processors specify and all memory on that node.

    - Maximum number of Nodes per Job = 2 (Nodes are like computers)
    - Maximum number of Cores per Node = 56 (Cores are the processors)
    - RAM = 192 GB/Node
    - Maximum Job duration = 48hr
        If you plan submit more than one job, use only the number of Nodes & Cores you need
        and stay within the following limits:

        - Maximum number of Nodes per user = 24
        - Maximum number of Jobs per user = 20
        - Users are limited to a maximum of 50 running and 200 pending Jobs in all queues at one time

    </div>

<!-- TODO: Use `<details>` -->
<!-- FAQ: After DesignSafe-CI/DS-User-Guide#1: `/// details | Instructions` -->
<!-- https://facelessuser.github.io/pymdown-extensions/extensions/blocks/plugins/details/ -->

#### Instructions

1. Determine the appropriate application for your task. Refer to the [DesignSafe User Guide](/user-guide/tools/simulation/opensees/opensees/#opensees-applications_1){:target="_blank"} for detailed help.
2. <u>Select your application</u> from the pull-down menu.
3. Fill-out the application-specific input form that gets generated (not all applications require all the input):
    - **Input Directory**: Directory containing all input files. This directory will be cloned to the HPC workspace and, once the job is complete, will be placed in the output location you specify below. <br> You can drag the link for the directory from the Data Browser on the left, or click the 'Select Input' button and then select the directory.
    - **Input Script**: The filename of the main OpenSees TCL script to execute. This file should reside in the Input Directory specified.
    - **Maximum job runtime**: In HH:MM:SS format. The maximum time you expect this job to run for, it does not include the time in queue. After this amount of time your job will be killed by the job scheduler. Shorter run times result in shorter queue wait times. Run-time limitations are platform-dependent and shown in the specs above, which are typically 48hr
    - **Job name**: This name is useful when you submit more than one job. It is used by the Job-Status side bar as well as in the name of the output location.
    - **Job output archive location (optional)**: Specify a location where the job output should be archived. By default, job output will be archived at: {username}/archive/jobs/${YYYY-MM-DD}/${JOB_NAME}-${JOB_ID}. This archive will contain the clone of the Input Directory from the time the job was submitted as well as any new files created by the OpenSees runs. You will need to move the relevant output files into your data directory once the job is finished.
    - HPC jobs only (OpenSeesSP and OpenSeesMP):<br> Your job will be run on HPC Compute Nodes, which are equivalent to computers. Each node has its own memory and a maximum number of processors. The specs on these compute resources depend on the HPC systems being used. Each job is assigned its own compute nodes, giving you access to all the memory and processors on each node.
        - **Node count**: Number of requested process nodes for the HPC job. Nodes are equivalent to computers. Default number of nodes is 2, which is the maximum for the small queue in Frontera. Be conservative to not exceed per-user limits if you plan to submit many jobs.
        - **Processors Per Node**: Number of processors (cores) <u>per node</u> for the HPC job. _TotalProcesses=NodeCount x ProcessorsPerNode_.<br> _Note:_ Data-intensive models may require more **memory** per run. In this case, reduce the number of processors per node. If memory is not an issue, you can use the maximum.
4. Press **"Run"**
5. <u>Monitor</u> your submission in the Job Status sidebar.
6. Once the job is marked Finished, click <u>"More info"</u> and <u>"View Output"</u>. This will take you to the "job output archive location" you had defined, within the DataDepot:
    1. Open the **.err file** to review all echoed data from the OpenSees run.
    2. **Move results data** out of the archive folder and into your data folder. _Copy the .err file over, as well._
