# OpenSees

## OpenSees On DesignSafe

The Open System for Earthquake Engineering Simulation (<a href="http://opensees.berkeley.edu/" target="_blank">OpenSees</a>) is a software framework for developing applications to simulate the behavior of structural and geotechnical systems subjected to static and dynamic loading. It has advanced capabilities for modeling and analyzing the nonlinear response of systems using a wide range of material models, elements, and solution algorithms.

The purpose of this documentation is to provide the details to help you understand the capabilities of different OpenSees applications and the different DesignSafe platforms on which they run. The choice of which application and platform to use depends on the size and scope of the job you are trying to run.


### OpenSees Applications

OpenSees was conceptualized, designed, and developed with parallel computing as its core objective. An application designed for parallel computing takes advantage of multiple processors working simultaneously on independent tasks as well as on interdependent ones where the processors can pass information to each other. Within these parallel-computing design concepts, there are <b>3+1 application of OpenSees</b>, each designed with a different objective:

1. <b>OpenSees</b> is the sequential application which runs on a single core with basic computer-resources requirements and is easy to use. It's your starting place and can easily meet most project needs.
1. <b>OpenSeesSP</b> is a parallel application driven by a single processor which distributes a large model to the remaining processors for faster solution strategies. This application allows you to run very large model with ease because it automates the model decomposition with no need for input from the user.
1. <b>OpenSeesMP</b> is the most versatile parallel application. It runs all the processors in parallel, each executing the same script containing individual instructions for each processor. This is the most powerful OpenSees application by giving the user full control of the job. The user can decompose the model manually by assigning different nodes, elements and loads to different processors (automated in OpenSeesSP). Alternatively, the user can assign a different analysis to each processor easily. Because of the inter-processor communication, load-balancing techniques can also be employed in the input script to minimize total run time.
1. <b>OpenSeesPy</b> is a Python library with all the capabilities of both the sequential and parallel OpenSees applications. Because it runs in the Python environment, OpenSeesPy creates a seamless integration of OpenSees into your workflow. This integration includes Python's powerful and versatile graphics libraries so that you can use visualization of your model as well as the component behaviors in building and testing your OpenSees script. Parallel-OpenSeesPy: read the chapter on OpenSeesPy to learn how to handle it in the current version in DesignSafe.

### DesignSafe Platforms

DesignSafe provides different platforms to run the OpenSees applications. These platforms have been designed with scalability in mind -- each platform is optimized for a wide range of project size and scope:

1. The <b>Web Portal</b> provides a simple browser interface where the user can submit jobs by simply uploading an input script, selecting the app and computer resources, and pressing a "submit" button. The current version of the Web Portal supports all three TCL applications.
1. The new <b>Interactive Virtual Machine (VM)</b> provides an Integrated Development Environment (IDE) where the user can run OpenSees interactively at a Linux prompt and respond to errors in the input in real time. With a navigation bar and a basic editor, the IDE makes working in the Linux environment very easy. This Interactive VM supports all OpenSees applications, sequential and parallel, as well as both interpreters, Tcl and Python (OpenSeesPy). The IDE also includes the option of working in a Python Jupyter Notebook.
1. The <b>Jupyter Hub</b> provides a versatile Jupyter-based IDE for developing a complete workflow that integrates pre- and post-processing with the OpenSees analyses interactively via Jupyter Notebooks. The Jupyter Hub can be run in a dedicated VM, which requires no allocation, or in an allocation in HPC. While OpenSeesPy can be run directly in a Python-based Jupyter Notebook, Julia, Matlab, and R can also be used interactively within a Jupyter Notebook to create the OpenSees input files, submit them to HPC, and post-process the results.
1. An <b>HPC allocation</b> allows the user to submit very large jobs to the larger queues available on DesignSafe and TACC.

The choice of OpenSees Application and DesignSafe platform depends on your project needs.


### OpenSees-Project "Size"

As you plan your OpenSees project on DesignSafe, you need to have an idea of the project's "size," which is defined by its scope. The project scope is defined by the size of your model and the type and number of parametric analyses.

Understanding the scope of your project, and how that scope grows in "size", will help you choose the right OpenSees application as well as DesignSafe platform.

1. The <b>Model Size</b> affects the size of the system of equations that must be solved (the matrix that needs to be inverted) as well as the number of nonlinear state determinations which can be iterative. <br>
Here are a few items that affect Model Size:
    <ul>
        <li>Model dimensions (1-3).</li>
        <li>Number of DOFs per node (1-6): This is controlled by the types of elements being used, as well as the model dimensions. Quadrilateral elements, for example, only have translational dofs at the nodes, while beam-column elements have both translations and rotations. However, quad elements have at least 4 nodes, while beam-column elements have two.</li>
        <li>Total number of nodes and elements.</li>
        <li>Type of elements being used: elastic elements require fewer resources that nonlinear or highly-discretized elements and sections. </li>
        <li>Element discretization: force-formulation B-C elements have at least 4 integration points. Displacement-formulation B-C elements need more elements per structural element.</li>
        <li>Sections: Fiber sections require more memory and processing times.</li>
        <li>Materials: Some material formulations store and update a large number of internal variables. Each instance of this material has its own memory requirements. Also, some materials require more iterations than others.</li>
        <li>Memory management: Some OpenSees objects may not have the most optimized memory management system.</li>
    </ul>


1. The <b>Analysis Parametrization</b> is defined by the different configurations being analyzed, which defines how many times you need to run an OpenSees analysis, and how:
    <ul>
        <li> <b>Model Parametrization</b>: Variations of a model characteristics, such as building configuration, soil-layer discretization, material properties, etc.</li>
        <li> <b>Loading Parametrization</b>: Variations of loading, such number of earthquake ground motions or different wind-load incident angles.</li>
        <li> <b>Type of Parametrization</b>: The type of parametrization determines how the analyses will be run. Are the values in the variation of each parameter dependent or independent of each other? <br>
            --> If the input values of a parameter set are <b>independent</b> of each other the analyses can be run concurrently in <b>parallel</b>. An example of this case is found in earthquake-engineering applications when a system is subjected to a suite of ground motions. <br>
            --> In optimization problems trying to find a local minimum, for example, the input-parameter values of one analysis are <b>dependent</b> on the results of a previous analysis. In this case the analyses need to run <b>sequentially</b>. Many studies can be a combination of these two types or parametrization.
        </li>
    </ul>



### Decision Matrix for OpenSees Applications

The following figure provides the decision matrix: a visual tool for quick assessment of which OpenSees application is best suited for different run configurations, and why. The choice is based on the size of your model as well as the number and type of parametric analyses, as described below.

![](./DecisionMatrixForOpenSeesApplications.jpg)

Choose the right OpenSees application to make the best use of resources such as modeler time, run time, and computer resources.


### Decision Matrix for DesignSafe Platform for OpenSees

The following table provides a comparison of all the ways you can run OpenSees on the DesignSafe CI execution platforms and configurations. Each platform has different interfaces for you to interact with OpenSees. Items in the table are placed in order of complexity and recommendation.

![](./DecisionMatrixForOpenSeesOnDesignSafeCI.jpg)
### Running OpenSees at the Linux Terminal

Several DesignSafe platforms allows you to run OpenSees directly in Linux.
This section is dedicated to providing more details on the actual process of running OpenSees in the Linux terminal.

#### Basic Linux Commands

Here are the basic commands you <b>may</b> need.<br>
However, for case of the platforms that have the integrated Jupyter environment, the Interactive-VM and Jupyter Hub, most of these actions can be easily performed in the navigation panel within the workspace.
```
    mkdir dirname : make a new directory
    cd dirname : change directory
    pwd : returns current directory
    ls : list files 
    cp origFile newFile : copy a file
    mv origFile newFile : move a file
    rm filename : remove a file
    wc –l directoryname : how many files in a directory 
    wc –l filename : how many lines in a file 
```

##### Command to run OpenSees Applications at Linux Prompt

<small>
<table width=100%>
<tr><th>Application</th><th>TCL</th><th>Python</th></tr>
<tr><td style="white-space:normal">OpenSees Interactively</td><td style="white-space:normal">OpenSees</td><td style="white-space:normal">python<br>>>import openseespy.opensees as ops </td></tr>
<tr><td style="white-space:normal">OpenSees Script</td><td style="white-space:normal">OpenSees filename.tcl</td><td style="white-space:normal">python filename.py</td></tr>
<tr><td style="white-space:normal">OpenSeesSP</td><td style="white-space:normal">mpiexec -np NP OpenSeesSP filename.tcl </td><td style="white-space:normal">mpiexec -np NP python filename.py </td></tr>
<tr><td style="white-space:normal">OpenSeesMP</td><td style="white-space:normal">mpiexec -np NP OpenSeesMP filename.tcl </td><td style="white-space:normal">mpiexec -np NP python filename.py </td></tr>
</table>
</small>



##### Running OpenSees Parallel Applications
<p>The parallel OpenSees applications require the MPI, which has been preinstalled in the VM. <br>
The Tcl-Interpreter OpenSees applications (OpenSees-Express, OpenSeesSP, and OpenSeesMP) are compiled executable programs. The MPI, therefore, will run NP processes of this executable.<br>
OpenSeesPy, on the other hand, is a python library that has been pre-installed in the VM and is called within the python environment. In this case, therefore, the MPI will run NP Python processes and each process will call its own Python library. In addition, all three OpenSees applications are integrated into a single library, OpenSeesPy.</p>

#### Examples

The following examples give you the command to executed as well as a demonstration of the Interaction with OpenSees:

##### Run Sequential Applications: OpenSees in the TCL interpreter

command: <b><i>OpenSees</i></b>
<br>

```
    (base) jovyan@3cd0f33abec1:~/work$ OpenSees


            OpenSees -- Open System For Earthquake Engineering Simulation
                    Pacific Earthquake Engineering Research Center
                            Version 3.5.1 64-Bit

        (c) Copyright 1999-2016 The Regents of the University of California
                                All Rights Reserved
        (Copyright and Disclaimer @ http://www.berkeley.edu/OpenSees/copyright.html)


        OpenSees > wipe
        OpenSees > model BasicBuilder -ndm 2 -ndf 3
        OpenSees > exit
    (base) jovyan@3cd0f33abec1:~/work$ OpenSees
```

##### Run Sequential Applications: OpenSeesPy in the Python interpreter

command: <b><i>python</i></b>
<br>

```
    (base) jovyan@3cd0f33abec1:~/work$ python
    Python 3.10.6 | packaged by conda-forge | (main, Aug 22 2022, 20:35:26) [GCC 10.4.0] on linux
    Type "help", "copyright", "credits" or "license" for more information.
    >>> import openseespy.opensees as ops
    >>> ops.wipe()
    >>> ops.model('BasicBuilder','-ndm',2,'-ndf',3)
    >>> exit()
    Process 0 Terminating
    (base) jovyan@3cd0f33abec1:~/work$

```


##### Run Parallel Applications: OpenSeesMP in the TCL interpreter

command: <b><i>mpiexec -np NP OpenSeesMP inputFile.tcl</i></b><br>
<small><i>NP=number of processes</i></small>
<br>

```
    (base) jovyan@3cd0f33abec1:~/work$ mpiexec -np 3 OpenSeesMP simpleMP.tcl


            OpenSees -- Open System For Earthquake Engineering Simulation
                    Pacific Earthquake Engineering Research Center
                            Version 3.5.1 64-Bit

        (c) Copyright 1999-2016 The Regents of the University of California
                                All Rights Reserved
    (Copyright and Disclaimer @ http://www.berkeley.edu/OpenSees/copyright.html)


    pid 1 of 3
    pid 0 of 3
    pid 2 of 3
    tclLibUnits.tcl
    tclLibUnits.tcl
    tclLibUnits.tcl
    pid 0 source Ex4.Portal2D.build.InelasticSection.scr.tcl
    pid 0 source Ex4.Portal2D.analyze.Dynamic.EQ.Uniform.scr.tcl
    pid 1 source Ex4.Portal2D.build.InelasticSection.scr.tcl
    pid 1 source Ex4.Portal2D.analyze.Dynamic.EQ.Uniform.scr.tcl
    pid 2 source Ex4.Portal2D.build.InelasticSection.scr.tcl

    .....

    pid 0 inFiles: ./GMfiles/RSN31_PARKF_C08050.at2
    pid 0 file read
    pid 0 OpenSeesMP
    pid 0 count 4 check 1 goRun 0
    pid 0 done infile: ./GMfiles/RSN31_PARKF_C08050.at2
    pid 0 ALL DONE!!!
    Process Terminating 0
    (base) jovyan@3cd0f33abec1:~/work$ 
```


##### Run Parallel Applications: OpenSeesMP in the Python interpreter (OpenSeesPy)

command: <b><i>mpiexec -np NP python inputFile.py</i></b><br>
<small><i>NP=number of processes</i></small>
<br>
```
    (base) jovyan@3cd0f33abec1:~/work$ mpiexec -np 3 python simpleMP.py
    pid 0 of 3
    pid 2 of 3
    pid 1 of 3
    pyLibUnits.tcl.py
    pyLibUnits.tcl.py
    pid 2 sourced pyLibUnits.tcl.py
    pyLibUnits.tcl.py
    ....
    pid 0 inFiles: ./GMfiles/RSN122_FRIULI.A_A-COD000.at2
    pid 0 file read
    pid 0 OpenSeesMP
    pid 0 count 2 check 2 goRun 0
    pid 0 ALL DONE!!!
    Process 0 Terminating
    Process 0 Terminating
    Process 0 Terminating
    (base) jovyan@3cd0f33abec1:~/work$ 
```
</ul>

### References &amp; Resources

#### OpenSees Docs:

The OpenSees documentation is now managed in RST format in GitHub. Because not all the content has been transferred, you can use a search engine to search to the following pages:
<ul style="margin-top:-20px;">
	<li> <a href = "https://opensees.berkeley.edu/" target="_blank">OpenSees Main Page</a></li>
	<li> <a href = "https://opensees.github.io/OpenSeesDocumentation/" target="_blank">Latest Official OpenSees Documentation</a>. This documentation contains the documentation for new and updated contributions to OpenSees. You will need to refer to other documentation for older content.</li>
	<li> <a href = "https://openseespydoc.readthedocs.io/en/latest/" target="_blank">OpenSeesPy Documentation</a>. This documentation contains 99.9% of the content from the wiki, as well as updated content. This is the best documentation on the Force Beam-Column element integration options. Even though the commands are formatted for OpenSeesPy, the additional content applies to the TCL applications as well.</li>
	<li> <a href = "https://opensees.berkeley.edu/wiki/index.php/Main_Page" target="_blank">OpenSees Wiki</a>. This documentation was written in 2009, it has the most content, not always the latest</li>
	<li> <a href = "https://opensees.berkeley.edu/OpenSees/manuals/usermanual/index.html" target="_blank">OpenSees Command Language Manual</a>. This is the first OpenSees documentation, it has some useful recommendations</li>
	<li> The official <b>OpenSeesDays</b> was an annual workshop organized by the OpenSees Development Team in the early days. <a href="https://opensees.berkeley.edu/workshop/OpenSeesDays.html" target="_blank"> Click here to access some archived content</a>. You can also search YouTube for more content.
</ul>

##### OpenSeesPy Documentation

<p>All the documentation for OpenSees-Tcl applies to OpenSeesPy, the only thing that changes is the format. Here are some links to the OpenSeesPy documentation as well as some useful videos.</p>
<ul style="margin-top:-20px;">
    <li> You can find the <a href="https://openseespydoc.readthedocs.io/en/latest/" target="_blank"> OpenSeesPy Documentation here</a>. The documentation contains most of the content from the OpenSees Wiki.</li>
    <li> Refer to the <a href="https://openseespydoc.readthedocs.io/en/latest/src/parallelcmds.html" target="_blank">Parallel Commands</a> Chapter for additional instructions on how to run OpenSeesMP and OpenSeesSP commands.</li>
    <li> View Dr. Minjie Zhu's, the main developer of OpenSeesPy, presentation on YouTube on <a href="https://www.youtube.com/watch?v=C26IYKaRZJQ&t=163s" target="_blank" >Minjie Zhu & OpenSeesPy at the OpenSees Support Group</a></li>
    <li> View Dr. Minjie Zhu's, the main developer of OpenSeesPy, presentation on YouTube: <a href="https://youtu.be/vjGm2kM5Ihc?si=jb97Xs6SSD3mE6gO" target="_blank">Dr. Zhu Minjhe on Introduction to Parallel Computing in OpenSeesPy</a></li>
</ul>

#### References on Parallel-Computing Fundamentals:
<ul style="margin-top:-20px;">
    <li><a href="https://hpc.llnl.gov/documentation/tutorials/introduction-parallel-computing-tutorial" target="_blank">Introduction to Parallel Computing Tutorial</a> provides a good overview on what is parallel computing and how to design programs for it. It introduces you to the often-quoted-by-Frank Amdahl's Law</li>
    <li><a href="https://hpc.llnl.gov/documentation/tutorials/introduction-parallel-computing-tutorial#%23SPMD-MPMD" target="_blank">SPMD and MPMD</a> is the chapter in above document that talks about the difference between Single-Program and Multiple-Program Multiple Data computing -- the difference in design between OpenSeesSP and OpenSeesMP.</li>
</ul>

#### References on Parallel Computing with OpenSees by Dr. Frank McKenna
<ul style="margin-top:-20px;">
    <li>Detailed document on <a href="https://opensees.berkeley.edu/OpenSees/parallel/TNParallelProcessing.pdf/" target="_blank">Using the OpenSees Interpreter on Parallel Computers</a> This is a complete, detailed, and yet succint document.</li>
    <li>Slides from the 2013 OpenSees-Parallel workshop: <a href="https://opensees.berkeley.edu/OpenSees/workshops/parallel/ParallelOpenSees.pdf" target="_blank">Introduction to OpenSees Parallel Classes and Applications</a></li>
    <li>Slides from the 2013 OpenSees-Parallel workshop: <a href="https://opensees.berkeley.edu/OpenSees/workshops/parallel/OpenSeesSP.pdf" target="_blank">OpenSeesSP</a></li>
    <li>Slides from the 2013 OpenSees-Parallel workshop: <a href="https://opensees.berkeley.edu/OpenSees/workshops/parallel/OpenSeesMP.pdf" target="_blank">OpenSeesMP</a></li>
    <li>All Slides from the <a href="ttps://opensees.berkeley.edu/OpenSees/workshops/parallel/Agenda_files/slide0003.htm/" target="_blank">OpenSees-Parallel workshop</a></li>
    <li>Video recording from Dr. Frank McKenna's 2013 workshop: <a href="https://www.youtube.com/watch?v=Pl87Msn0g58/" target="_blank">Dynamic Load Balancing With OpenSeesMP</a></li>
    <li>There are many additional resources on-line, especially YouTube videos</li>
</ul>


#### DesignSafe Tutorial: OpenSees &amp; DesignSafe, October 31, 2018
<p>The following video tutorial by Dr. Maria Giovanna Durante provides excellent content on running OpenSees on DesignSafe. </p>
<p>Because we continue to improve our platform, some practical examples on how to run OpenSees on DesignSafe have changed. However, the content on the parallel OpenSees and the way you can integrate it into your workflow are still relevant.</p>

<div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item"
          src="https://www.youtube.com/embed/upMaiz79h7E"
          frameborder="0"
          allowfullscreen></iframe>
</div>
Slides of content presented in the tutorial above
<ul style="margin-top:-20px;">
	<li><a href="/media/filer_public/34/e9/34e9dd3c-e954-4a78-9376-e65d1b793277/openseesexpress.pdf" target="_blank">OpenSees-EXPRESS Slides</a></li>
	<li><a href="/media/filer_public/1d/58/1d58638b-6cd4-48a1-b1b8-ce7313986e4e/openseessp.pdf" target="_blank">OpenSeesSP Slides</a></li>
	<li><a href="/media/filer_public/c4/d6/c4d6aaef-5035-4506-9c4b-256fdaa47d0f/openseesmp.pdf" target="_blank">OpenSeesMP Slides</a></li>
</ul>


##### Examples in Community Data

<ul style="margin-top:-20px;">
	<li>OpenSees-EXPRESS:
	<ul>
		<li><a href="https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community//app_examples/opensees/OpenSeesEXPRESS" target="_blank">input directory</a></li>
		<li>input TCL file: freeFieldEffective.tcl</li>
	</ul>
	</li>
	<li>OpenSeesSP:
	<ul>
		<li><a href="https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community//app_examples/opensees/OpenSeesSP" target="_blank">input directory</a></li>
		<li>input TCL file: RigidFrame3D.tcl</li>
		<li>resources: 1 Node, 2 Processors   </li>
	</ul>
	</li>
	<li>OpenSeesMP:
	<ul>
		<li><a href="https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community//app_examples/opensees/OpenSeesMP" target="_blank">input directory</a></li>
		<li>input TCL file: parallel_motion.tcl</li>
		<li>resources: 1 Node, 3 Processors  </li>
	</ul>
	</li>
</ul>
