## OpenSees Applications

There are three OpenSees Applications: One <b>sequential application</b> (OpenSees) and two <b>parallel applications</b> (OpenSeesSP and OpenSeesMP). The parallel applications are run through an MPI (message passing interface), which enables data exchange between nodes and processors. All of these applications can be run in either Tcl or Python (OpenSeesPy) and they are all available on DesignSafe.

The purpose of this documentation is to help you understand the capabilities of each application and so you can select the one best suited to your task. Using the right application will optimize your OpenSees run-time leveraging both script-building time and analysis time. The selection of OpenSees application is based on the size of your model and the type of analyses and parametrization you will be doing.

Here is a quick description of each OpenSees Application. A more detailed description of each is provided in subsequent sections: 
<ol style="margin-top:-20px;">
<li> <b>OpenSees-EXPRESS</b>: This Sequential application is ideal to run small sequential scripts on DesignSafe resources freeing up your own machine. This is your starting point with any OpenSees analysis and can easily meet your needs.</li>
<li> <b>OpenSeesSP</b>: In this 'Single Parallel Interpreter' application one processor reads the input script and builds the model. Once the analysis command is called, this main processor will then partition the model sub-domains and assigns one subdomain to each of the remaining processors (aka Domain Decomposition) so that the state determination and solution of the system of equations (Gaussian Elimination) can be done in parallel. The parallelization of this application is done automatically by OpenSees with no additional scripting commands (just need to use parallel solvers). This application is intended for large models subjected to few parametric analyses.</li>
<li> <b>OpenSeesMP</b>: This 'Multiple Parallel Interpreters' application is intended for running parametric analyses with small to large models. The parallelization of this application is controlled by the input script, thus giving the user full control, and responsibility. Parallelization in OpenSeesMP applies to both the domain decomposition (optional) and the analysis runs. The manual control of the parallelization -- assigning different jobs to different processors -- requires additional scripting commands. Because the user has full control of the parallelization, it can be optimized with load-balancing solutions. This application is ideal for parametric analyses, as well as for special cases of large models.</li>
<li> <b>OpenSeesPy</b>: This Python library is not a self-executable "application" like the others. The three OpenSees applications integrate the Tcl interpreter, OpenSeesPy is a single python library with the same functionality all the others, but needs to be integrated into Python. This feature, however, makes it versatile because it allows users to add more features to their python environment by importing additional libraries.</li>
</ol>



