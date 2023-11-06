## ADCIRC User Guide

ADCIRC (ADvanced CIRCulation model) is a system of computer programs often used in Coastal Engineering Storm Surge research for solving time dependent, free surface circulation and transport problems in two and three dimensions. These programs utilize the finite element method in space allowing the use of highly flexible, unstructured grids. SWAN (Simulating WAves Nearshore) adds shallow water modeling. Typical research topics include:

<ul>
	<li>prediction of storm surge and flooding</li>
	<li>modeling tides and wind driven circulation</li>
	<li>larval transport studies</li>
	<li>near shore marine operations</li>
	<li>dredging feasibility and material disposal studies</li>
</ul>

Multiple configurations and versions of ADCIRC are available in the Workspace:

<ul>
	<li>ADCIRC
	<ul>
		<li>ADCIRC is a highly developed computer program for solving the equations of motion for a moving fluid on a rotating earth. These equations have been formulated using the traditional hydrostatic pressure and Boussinesq approximations and have been discretized in space using the finite element (FE) method and in time using the finite difference (FD) method.</li>
		<li>This version of the application is ideal for smaller simulations, and runs on a single node on Stampede2. Runtimes are subject to current wait times in the Stampede2 job queue.</li>
	</ul>
	</li>
	<li>PADCIRC
	<ul>
		<li>This is the Parallel version of the ADCIRC application and uses multiple nodes on TACC's Stampede2 or Lonestar6 HPC resource and is ideal for larger simulations. Runtimes are subject to current wait times in the HPC job queues.</li>
	</ul>
	</li>
	<li>PADCIRC SWAN
	<ul>
		<li>The use of the unstructured mesh version of SWAN resolves several issues previously associated with the coupling of wave and circulation models. The tightly coupled SWAN + ADCIRC paradigm allows both wave and circulation interactions to be solved on the same unstructured mesh resulting in a more accurate and efficient solution technique. </li>
		<li>This version of the application uses multiple nodes on TACC's Stampede2 or Lonestar6 HPC resource and is ideal for larger simulations. Runtimes are subject to current wait times in the HPC job queues.</li>
	</ul>
	</li>
</ul>

More detailed information and ADCIRC user documentation can be found at the <a href="http://adcirc.org/" target="_blank">ADCIRC website</a>.  

<hr>

### How to submit an ADCIRC Job in the Workspace

<ul>
	<li>Select the appropriate ADCIRC application from the Simulation tab in the Workspace.</li>
	<li>Locate your Input Directory (Folder) with your input files that are in the Data Depot and follow the onscreen directions to enter this directory in the form.</li>
	<li>For the Parallel versions, enter your Mesh File into the form (usually fort.14 file).</li>
	<li>Enter a maximum job runtime in the form. See guidance on form for selecting a runtime.</li>
	<li>Enter a job name.</li>
	<li>Enter an output archive location or use the default provided.</li>
	<li>For the Parallel versions, select the number of nodes to be used for your job. Larger data files run more efficiently on higher node counts.</li>
	<li>Click Run to submit your job.</li>
	<li>Check the job status by clicking on the arrow in the upper right of the job submission form.</li>
</ul>

 
---

