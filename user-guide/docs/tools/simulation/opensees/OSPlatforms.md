## OpenSees Platforms

### Running OpenSees on DesignSafe

There are several ways you can run OpenSees on DesigSafe. The variety of DesignSafe platforms and interfaces allow you to work with evolving levels of scalability:
<ol style="margin-top:-20px;">
<li>Start developing and testing your OpenSees input files in the NEW small-scale <b>Interactive Virtual Machine (VM)</b>:
    <ul style="margin-top:-5px;">
        <li>All OpenSees applications (<i>OpenSees</i>, <i>OpenSeesMP</i>, <i>OpenSeesSP</i>, and <i>OpenSeesPy</i>) have been pre-installed and can be run interactively in a user-friendly environment with an integrated terminal window, file editor, and easy navigation.</li>
    </ul>
</li>

<li>Once you are ready to scale up your job, submit it to a not-so-small-scale HPC system (2 nodes on Frontera) for better performance and efficiency:
    <ul style="margin-top:-5px;">
        <li>The <b>DesignSafe Web Portal</b> allows you to submit medium-sized jobs to DesignSafe quickly via a simple-to-use web interface.</li>
    </ul>
</li>

<li>Integrate the OpenSees analyses into your workflow by submitting OpenSees Jobs to HPC via <b>Jupyter Hub</b>:
    <ul style="margin-top:-5px;">
        <li>Prepare your OpenSees input file interactively, submit it to HPC, and post-process the results within a single <b>Jupyter Notebook</b>. Control your allocation credentials directly in the Notebook.</li>
    </ul>
</li>


<li>For jobs that require much more powerful compute resources and you have obtained an HPC allocation:
    <ul style="margin-top:-5px;">
        <li>Work directly on HPC within <b>TACC</b> in a Linux environment. There you will find tools to automate submission of large and complex jobs.</li>
    </ul>
</li>

</ol>
### The Interactive Virtual Machine (Interactive-VM)

<p> The Interactive Virtual Machine is a new platform intended to help you in the early stages of building your OpenSees Model by providing you direct interactivity with OpenSees for both Sequential and Parallel applications for immediate feedback for each line of input.</p>
<p>This NEW dedicated VM has been built for OpenSees. All OpenSees applications (OpenSees, OpenSeesSP, OpenSeesMP, and OpenSeesPy) have been pre-installed and can be run interactively in a user-friendly environment with an integrated terminal window, file editor, and file-tree navigation. This VM has limited shared resources and is intended for building and testing your OpenSees script.
</p>
<p>
Interactivity allows you to monitor the analysis in real time. The workspace, with its multiple tabs, allows you to run your OpenSees in one tab while editing a file in another. Direct interaction to OpenSees via a <b>Linux terminal</b> allows you to check your model as you develop it, as you have immediate access to warning, errors, or echoed data.
</p>

#### Connecting to the Interactive-VM

The Interactive-VM is found on DesignSafe in the same Web Portal as OpenSees: [Tools & Applications > Simulation > OpenSees](https://www.designsafe-ci.org/use-designsafe/tools-applications/simulation/opensees/).
<ol>
    <li>Once you have reached the OpenSees page, select the first option in the portal's OpenSees-Application menu: "Interactive VM for OpenSees...": option with the latest version of OpenSees.<i>(Figure 1)</i></li>
    <li>Once you have made the selection, the following simple form will appear. There is no need to edit the Job name. <i>(Figure 2)</i></li>
    <li>Click the Launch button and WAIT a few seconds for the job to be set up and a new window pops up <i>(Figure 3)</i></li>
    <li>Click the Connect button and a you will be redirected to the Interactive-VM Environment  <i>(Figure 4, see the next section)</i></li>
    <li>Go back to the original tab and press the Close button <i>(Figure 3)</i></li>
    <li>You can go through this process again to re-connect to the VM. If the original VM has not been terminated, you will be placed in the same workspace you had left.</li>
</ol>


<small><i><b>Figure 1</b>: Select Interactive-VM</i><br></small>
![OpenSeesIVM](./OpenSeesVMImages/selectIVM.JPG){ width=75% , align=center}<br><br>
<small><i><b>Figure 2</b>: Web Form for Interactive-VM</i><br></small>
![OpenSeesIVM](./OpenSeesVMImages/Form_IVM.JPG){ width=75% , align=center}<br><br>
<small><i><b>Figure 3</b>: Connect to Interactive-VM</i><br></small>
![OpenSeesIVMconnect](./OpenSeesVMImages/Form_IVMconnect.JPG){ width=75% , align=center}<br>


#### The Interactive-VM Environment & Workflow

Once you have started your instance of the OpenSees VM, you will be redirected to the Jupyter-Lab Launcher environment in your browser. Here you can interact with your data as well as your analysis processes.
Here are the step necessary to run OpenSees in the Interactive-VM <i>(Figure 4)</i>:
<ol style="margin-top:-3px;">
    <li><b>Navigate</b>: Navigate within the DataDepot to your working/current directory where your main script is, or will be, found. The path in the navigation window defines the working path for any process you start while there.</li>
    <li><b>Upload Files</b>: Upload files from your local machine to the current directory.</li>
    <li><b>File Editor</b>: Double-click on a file in the Navigation space to edit it in the basic editor in a new tab.</li>
    <li><b>Run OpenSees</b>:
        <ul>
            <li style="list-style:none;"><b>a.</b> Run OpenSees in the <b>Linux Terminal</b>: this is where you run OpenSees, OpenSeesSP, OpenSeesMP, or OpenSeesPy. (See section on Running OpenSees at the Linux Terminal)</li>
            <li style="list-style:none;"><b>b.</b> Run OpenSeesPy in a <b>Jupyter Notebook</b>: Jupyter Notebooks allow you to develop interactive workflows with integrated widgets and graphics. </li>
            <li style="list-style:none;"><b>c.</b> Interactive <b>Python Console</b>: Run OpenSeesPy interactively without the weight of additional graphics capabilities.</li>
        </ul>
    </li>
    <li><b>Post-Process</b>: You can use the Jupyter Notebook to process and visualize your analysis results.</li>
</ol>

<small><i><b>Figure 4</b>: Interactive-VM Environment</i><br></small>
![OpenSeesIVMworkflow](./OpenSeesVMImages/OpenSeesIVMworkflow.JPG){ width=75% , align=center}<br>

##### Interactive-VM Specifications

The specifications for the Interactive VM are given below. This VM is a shared resource: there is only one instance of it and all users connected to it share the same processors and RAM.
Because of these limitations, the VM is intended for building and testing your OpenSees script and its workflow before scaling up in DesignSafe.<br>

<li> Specifications:
    <ul>
    <li>Number of Nodes = 1 (Nodes are like computers)</li>
    <li>Number of Cores = 24 (Cores are the processors).</li>
    <li>RAM = 48GB</li>
    <li>Maximum Job duration = 48hr</li>
    <li>The VM is shut down after 24 hours of inactivity</li>
    </ul>
</li>

### Running OpenSees via DesignSafe Web Portal

<p>Submitting your OpenSees Job to the HPC system via DesignSafe's WebPortal allows you to scale up your project easily through a simple web-form submittal. The Web Portal provides two access points, one for sequential analyses, one for parallel ones:
    <ul>
        <li><b>OpenSees Express VM</b> provides a faster user experience than the Interactive-VM once your input script has been tested and runs with no errors. OpenSees-Express also runs on a different dedicated virtual machine which has the specifications as the interactive-VM: a shared 24-core 48 GB node (=virtual computer). </li>
        <li><b>OpenSeesSP and OpenSeesMP</b> jobs are submitted to the small 2-node partition in the HPC system. The significant upgrade to more Nodes (2), processors/node (56), memory/node (192GB) and not having to share these resources is worth the extra scripting required and the wait in the queue.<br>
        <i> Save time by testing your parallel-analyses algorithm in the <b>Interactive-VM</b>. It has limited resources, but you receive immediate feedback on errors so you can iterate quickly to fix them.</i></li>

    </ul>
</p>
<p> Being able to submit multiple jobs simultaneously via the simple web form makes the <b>DesignSafe Web Portal</b> the ideal solution for most projects (<i>see below for user limits on multiple jobs</i>). The only significant drawback is the fact that you do not have access to the results until the analysis is finished. Wait times in the queue can seem an inconvience, but the ability to run many analysis in parallel effectively reduces the total job time.</p>

#### File Management when running the Web-Portal Jobs

<p>Job submission via the Web Portal is easy and efficient because it only requires you to fill out a web form and press the run button. All the keyboarding work from that point on is done for you via automation. Understanding what is happening behind the courtain will help you plan your script and data management.</p>
<p>Because file I/O is fastest closest to the CPU, the input directory you specify in your job-submittal form gets cloned to the compute node that will run OpenSees. During the OpenSees run all the output and recorder files you defined in your input script will be written in that location. Once the OpenSees job is finished, the entire folder that was cloned, with the additional output files, will be moved to the output folder you specify in your job-submittal form. </p>
<p>A few important notes about the file management:
    <ol>
        <li>You will not have access to the analysis data until the job is complete.</li>
        <li>ALL the files found in the input directory will be cloned and placed into the output directory</li>
        <li>The files will not be returned to their original location your input directory</li>
        <li>If you specify the same directory for your input and output, the output will be placed in a subdirectory of your input directory, using the same files structure</li>
        <li>Copying files into your output directory will overwrite existing data. This will be an issue, for example, when you specify the same directory for your input and output, and run multiple jobs with these same directories</li>
        <li>Using the default directory structure, where files are placed into your archive folder and the directory name includes the job metadata, is the best way to maintain data integrity</li>
        <li>If you can make changes to your input script and directory after job submittal, remember that the original ones have been cloned in the first step</li>
        <li>ALL files necessary for your OpenSees run must be located within the input directory</li>
        <li>To avoid having to manage a lot of data, make sure your input directory contains only relevant files</li>
        <li>Do not forget to copy the relevant files back into your working directory</li>
    </ol>
</p>

#### Using the DesignSafe WebPortal
<p>Before starting your project, make sure you read the File-Management section as it will help you plan your file and data structure</p>
<p>Follow these steps to run your OpenSees job via the WebPortal:
    <ol style="margin-top:-20px;">
        <li>Import script and all input files to DataDepot </li>
        <li>Navigate to the Web Portal
            <ul>https://www.designsafe-ci.org/</ul>
            <ul>log in or create an account in DesignSafe</ul>
            <ul>Use DesignSafe >> Tools & Applications >> Simulation >> OpenSees <i>(Figure 1)</i></ul>
        </li>
        <li>Select OpenSees Application <i>(Figure 2)</i>:
            <ol>
                <li>OpenSees-Express: Sequential Application</li>
                <li>OpenSees-MP and OpenSeesSP: Parallel Applications</li>
                <li>If more than one option, use the one with the newest version of OpenSees</li>
            </ol>
        </li>
        <li>Fill out Web Form <i>(OpenSees-Express: Figure 3 and OpenSeesMP: Figure 4)</i><br>
            <small><i>Each input parameter is explained in detail in a separate section</i></small>
            <ul>
                <li>Specify input directory <i>(read section on File Management)</i></li>
                <li>Specify main input script</li>
                <li>Decide maximum run time -- job gets killed at this runtime</li>
                <li>Specify output directory <i>(read section on File Management)</i></li>
                <li>Name your job -- add a unique identifier to the metadata-rich default name, especially if you are running multiple jobs</li>
                <li>If using a parallel application, select number of nodes and processors</li>
            </ul>
        </li>
        <li>Click Run to submit job</li>
        <li>Pause for a second for the system to receive the request.</li>
        <li>Check Job Status in the Job-Status sidebar, click the refresh button if needed. Note: this information is limited to where the job is in the process, from submitted to finished <i>(Figure 5)</i></li>
        <li>Once the job is Finished, click the "More info" button in the Jobs Status bar for more details on the job </li>
        <li>If the job Finished successfully, click "View" the output <i>(Figure 6)</i><br>
            The system takes you to the DesignSafe Data Depot, in the output folder you had specified in the input form <i>(Figure 7)</i>
            <ol>
                <li style="list-style:none;"><b>A.</b> Open the ".err" file for details on analysis run. Scroll to different parts of this file to check all key parts of the job: <i>(see the very-busy Figure 8)</i>, or <a href="./PostWebSubmitImages/CheckErrFile.jpg" target="_blank">Click here for full-page view of it</a>
                    <ol type="i">
                        <li>The top lines provide details on the job. These may be useful if there are issues in loading the project</li>
                        <li>Scroll to start of OpenSees, check:
                            <ul>
                                <li>No errors in start up of OpenSees</li>
                                <li>Program echoes what you requested. <i>Remember: echoing too much data, especially at each time step, will slow your analyses significantly. Do it when debugging your model!</i></li>
                            </ul>
                        </li>
                        <li>Scroll carefully through all the analysis output to check for Warnings & Errors</li>
                        <li>Scroll to the end to check if your “All Done!” has been echoed by all processes</li>
                        <li>Confirm that there are no termination error at the end of the script</li>
                    </ol>
                </li>
                <li style="list-style:none;"><b>B.</b> Examine the Output and Recorder files to make sure you have all the output you need and expect <i>(Figure 9)</i></li>
            </ol>
        </li>
        <li>Move relevant output files from Archive into final DataDepot location: .err file and all recorder files</li>
        <li>Post-process</li>
    </ol>
</p>



<small><i><b>Figure 1</b>: Navigate to OpenSees</i><br></small>
![OpenSeesIVM](./WebSubmitImages/selectOpenSees.JPG){ width=75% , align=center}<br><br>

<small><i><b>Figure 2</b>: Select OpenSees Application</i><br></small>
![OpenSeesIVM](./WebSubmitImages/selectOpenSeesApp.JPG){ width=75% , align=center}<br><br>


<small><i><b>Figure 3</b>: Sample Form for OpenSees-Express</i><br></small>
![OpenSeesIVM](./PostWebSubmitImages/SampleForm_OpenSeesXpress.jpg){ width=75% , align=center}<br><br>
<small><i><b>Figure 4</b>: Sample Form for OpenSeesMP</i><br></small>
![OpenSeesIVM](./PostWebSubmitImages/SampleForm_OpenSeesMP.jpg){ width=75% , align=center}<br><br>


<small><i><b>Figure 5</b>: Checking Job Status</i><br></small>
![Checking .err file](./PostWebSubmitImages/JobStatusCheck.JPG){ width=75% , align=center}<br><br>

<small><i><b>Figure 6</b>: Job-Status Window</i><br></small>
![Checking .err file](./PostWebSubmitImages/moreInfoWindow.JPG){ width=75% , align=center}<br><br>

<small><i><b>Figure 7</b>: .err Echo File</i><br></small>
![Checking .err file](./PostWebSubmitImages/errFile.JPG){ width=75% , align=center}<br><br>

<small><i><b>Figure 8</b>: Checking the .err file after job is Finished</i><br></small>
![Checking .err file](./PostWebSubmitImages/CheckErrFile.jpg){ width=75% , align=center}<br><br>

<small><i><b>Figure 9</b>: Check Output Files</i><br></small>
![Checking .err file](./PostWebSubmitImages/outputFiles.JPG){ width=75% , align=center}<br><br>



##### Web Portal Form Input Parameters

Here is a list and description of all the form input parameters for the Web Form <i>(Figure 1 and 2)</i>.<br>
Note: not all applications require all the input:<br>
OpenSees-Express: Figure 1 and OpenSeesMP: Figure2
    <ul>
        <li><b>Input Directory</b>: Directory containing all input files. This directory will be cloned to the HPC workspace and, once the job is complete, will be placed in the output location you specify below. <br>
        You can drag the link for the directory from the Data Browser on the left, or click the 'Select Input' button and then select the directory.</li>
        <li><b>Input Script</b>: The filename of the main OpenSees TCL script to execute. This file should reside in the Input Directory specified.</li>
        <li><b>Maximum job runtime</b>: In HH:MM:SS format. The maximum time you expect this job to run for, it does not include the time in queue. After this amount of time your job will be killed by the job scheduler. Shorter run times result in shorter queue wait times. Run-time limitations are platform-dependent and shown in the specs above, which are typically 48hr</li>
        <li><b>Job name</b>: The pre-filled name contains useful job metadata already. We recommend you add a descriptive identifier to it if you submit more than one job. This name is used by the Job-Status side bar as well as in the name of the default output location. </li>
        <li><b>Job output archive location (optional)</b>: Specify a location where the job output should be archived. By default, job output will be archived at: {username}/archive/jobs/${YYYY-MM-DD}/${JOB_NAME}-${JOB_ID}. 
        This archive will contain the clone of the Input Directory from the time the job was submitted as well as any new files created by the OpenSees runs. You will need to move the relevant output files into your data directory once the job is finished.</li>
        <li>HPC jobs only (OpenSeesSP and OpenSeesMP):
            <ul>
                <li><b>Node count</b>: Number of requested process nodes for the HPC job. Nodes are equivalent to computers. Default number of nodes is 2, which is the maximum for the small queue in Frontera. Be conservative to not exceed per-user limits if you plan to submit many jobs.</li>
                <li><b>Processors Per Node</b>: Number of processors (cores) <b>per node</b> for the HPC job. <i>TotalProcesses=NodeCount x ProcessorsPerNode</i>. There is no real need to go with less than the maximum allowed.</li>
            </ul>
        </li>
    </ul>


<small><i><b>Figure 1</b>: Sample Form for OpenSees-Express</i><br></small>
![OpenSeesIVM](./PostWebSubmitImages/SampleForm_OpenSeesXpress.jpg){ width=75% , align=center}<br><br>
<small><i><b>Figure 2</b>: Sample Form for OpenSeesMP</i><br></small>
![OpenSeesIVM](./PostWebSubmitImages/SampleForm_OpenSeesMP.jpg){ width=75% , align=center}<br><br>

##### Web-Portal Specifications

Sequential and parallel jobs are sent to different systems:
    <ul style="margin-top:-20px;">
        <li><b>OpenSees-Express</b> jobs are sent to a dedicated VM and are run immediately after upload.
            <ul>
            <li>Number of Nodes = 1 (Nodes are like computers)</li>
            <li>Number of Cores = 24 (Cores are the processors).</li>
            <li>RAM = 48 GB</li>
            <li>Maximum Job duration = 48hr</li>
            </ul>
        </li>
        <li><b>OpenSeesSP and OpenSeesMP</b> jobs are sent to the small queue in the HPC environment (currently Frontera). The jobs are run as soon as they reach the top of the queue.
            <ul>
                <li> Resources for each job:
                    <ul>
                    <li>Number of Nodes = 2 (Nodes are like computers)</li>
                    <li>Number of Cores = 56 (Cores are the processors)</li>
                    <li>RAM =192 GB/Node</li>
                    <li>Maximum Job duration = 48hr</li>
                    <li><a href="https://www.tacc.utexas.edu/portal/system-status/frontera" target="_blank">Click here</a> to view the status of the queue in real-time -- look at the "small" queue on Frontera (or the system associated with your)</li>
                    <li><a href="https://frontera-portal.tacc.utexas.edu/user-guide/running/" target="_blank">Click here</a> to learn more about running jobs on the Frontera compute nodes.</li>
                    </ul>
                </li>
                <li> If you plan to submit more than one job, keep in mind the following limits on the Frontera small queue:
                    <ul>
                        <li>Maximum number of Nodes per user = 24
                        <li>Maximum number of Jobs per user = 20 on Frontera
                        <li>Users are limited to a maximum of 50 running and 200 pending Jobs in all queues at one time
                    </ul>
                </li>
            </ul>
        </li>
    </ul>



### Integrate OpenSeesPy directly into Jupyter Notebook

Jupyter-Hub environment is user friendly and .... 
you can query OpenSees Model interactively

<li>Access OpenSeesPy in <b>Jupyter Hub</b>:
    <ul>
        <li>Jupyter Hub provides an alternative for OpenSeesPy, in addition to the Interactive-VM</li>
        <li>Instead of being a stand-alone application, OpenSeesPy is a python library. This features means that it can be integrated into your python workflow with ease. Because the Python ecosystem is evolving and growing, it allows you to integrate pre- and post-processing capabilities into OpenSees.</li>
        <li>The simplest and most useful feature of being able to integrate OpenSeesPy and Python is the integrated graphics. (Tcl requires OpenSees to be compiled with the Tk library).</li>
        <li>OpenSeesPy allows you to query the domain in real-time. You can ask for nodal coordinates, element connectivity and nodal displacement in real time -- hence you can easily draw your deformed shape IN REAL TIME using either the Matplotlib or the Plotly libraries.</li>
        <li>There are two Jupyter Hub services: one that runs on a shared VM, and one that runs in the HPC system, thus requiring an HPC allocation.</li>
        <li>You can publish your notebooks in DesignSafe for public access.</li>
        <li>In the Jupyter Hub, you can run OpenSeesPy in a Jupyter Notebook, the Python Console, as well as the Linux terminal.</li>
        <li>Jupyter Hub is a shared resource -- it is implemented in a unique node in DesignSafe</li>
        <li>You will need to pip install OpenSeesPy each time you run it in Jupyter Hub.</li>
    </ul>
</li>
### Submit OpenSees Jobs to HPC via Jupyter Notebook

This option allows you to integrate python for pre- and post-processing your analyses and visualize results.
Send jobs to HPC, will need allocation


<li>Jupyter Hub's integration with a variety of interpretive languages allows you to integrate OpenSees into your workflow.</li>
<li>Jupyter Hub's integration with a variety of interpretive languages allows you to integrate OpenSees into your workflow.</li>
<li>Prepare your OpenSees input file interactively, submit it to HPC, and post-process the results within a single <b>Jupyter Notebook</b>.</li>
<li>Jupyter Notebooks as well as interactive consoles are available for many interpretive languages: <b>Python, Matlab, Julia, and R</b>.</li>
<li>There are two Jupyter Hub services: one that runs on a shared VM, and one that runs in the HPC system, thus requiring an HPC allocation.</li>
<li>You can publish your notebooks in DesignSafe for public access.</li>
<li>Jupyter Hub is a shared resource -- it is implemented in a unique node in DesignSafe</li>
### Running OpenSees on HPC-TACC

All OpenSees applications can be accessed directly in the HPC environment.
