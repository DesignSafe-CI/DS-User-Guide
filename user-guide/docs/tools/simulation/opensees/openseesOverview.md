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


