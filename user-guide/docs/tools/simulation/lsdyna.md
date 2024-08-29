## LS-DYNA User Guide


Ls-Dyna is a general-purpose multi-physics simulation software package. It was originated from DYNA3D, developed by John Hallquist at the Lawrence Livermore National Laboratory in 1976. The software was commercialized as LS-Dyna in 1988 by Livermore Software Technology Corporation and now it is part of Ansys (<a href="http://lsdyna.ansys.com" target="_blank">Ansys</a>).

The main Ls-Dyna capabilities are:

<ul>
	<li>2D and 3D;</li>
	<li>Nonlinear dynamics (implicit and explicit solvers);</li>
	<li>Static and quasi-static analysis;</li>
	<li>Thermal analysis and electromagnetic analysis;</li>
	<li>Computational fluid dynamics:</li>
	<li>Incompressible and compressible solver;</li>
	<li>Fluid-structure interactions;</li>
	<li>Smoothed-particle hydrodynamics;</li>
	<li>Geotechnical and soil-structure interactions;</li>
	<li>Contact algorithms;</li>
	<li>Large library of elements (shell, discrete, solid, etc).</li>
</ul>

### Ls-Dyna on DesignSafe { #ds }

In the Workspace are available the following apps:

<ul>
	<li>LS-PrePost (DCV): Pre-processing and post-processing of models (<i>Use DesignSafe &gt; Tools & Applications &gt; LS-DYNA&gt; LS-PrePost(DCV)</i>);</li>
	<li>LS-Dyna: Actual solver (version 2024R1) – single and double precisions (after activation - <i>Use DesignSafe &gt; Tools & Applications &gt; LS-DYNA&gt; LS-DYNA</i>).</li>
</ul>

### Activate Ls-Dyna on DesignSafe { #activate }

DesignSafe (through TACC) has negotiated with Ansys to allow LS-DYNA access on TACC systems for academic research. Users can submit a ticket (https://www.designsafe-ci.org/help/new-ticket/) requesting LS-DYNA access and are granted access upon verification with Ansys that they have an existing academic departmental license or that you acquire such license.

A <i>Request Activation</i> button is also available in <i>Use DesignSafe &gt; Tools & Applications &gt; LS-DYNA</i>:

![](./imgs/ls-dyna-1.png)

### How to launch LS-Dyna { #launch }

Examples in this guide:

<ul>
	<li>Launching LS-PrePost to generate or visualize model via DesignSafe web portal;</li>
	<li>Launching a single job via DesignSafe web portal;</li>
	<li>Launching batch of jobs via DesignSafe web portal;</li>
	<li>Launching batch of jobs via Command Line Interface.</li>
</ul>

#### Launching LS-Pre/Post { #launch-prepost }

<ul>
	<li>Select the LS-PrePost app at (<i>Use DesignSafe &gt; Simulation &gt; Tools & Applications &gt; LS-DYNA</i>):</li>
</ul>

![](./imgs/ls-dyna-16.png)

<ul>
	<li>Fill the form with the following information:
	<ul>
		<li>Input Directory: that contains the files that you want to work on;</li>
		<li>Queue: the queue your job will be submitted to;</li>
		<li>Maximum Job runtime: The maximum time you expect this job to run for. Note that after this amount of time your job will be killed by the job scheduler;</li>
		<li>Allocation: the project allocation that this job will be used;</li>
		<li>Click on <i>Submit Job</i>;</li>
	</ul>
	</li>
</ul>

![](./imgs/ls-dyna-3.png)

<ul>
	<li>Once ready a new window will pop-up.
	<ul>
		<li>Click on Connect! and start using LS-Dyna Pre/Post.</li>
	</ul>
	</li>
</ul>

![](./imgs/ls-dyna-4.png)

![](./imgs/ls-dyna-5.png)

#### Launching a single job via DesignSafe web portal { #launch-singlejob }

<ul>
	<li>Select LS-DYNA (Serial) from the LS-DYNA app in (<i>Workspace &gt; My Apps &gt; LS-DYNA</i>):</li>
</ul>

![](./imgs/ls-dyna-6.png)

<ul>
	<li>Fill the form with the following information:
	<ul>
		<li>Working directory: that contains the files that you want to work on;</li>
		<li>LS-DYNA Input: provide the input file name;</li>
		<li>Maximum Job runtime: The maximum time you expect this job to run for. Note that after this amount of time your job will be killed by the job scheduler;</li>
		<li>Job name;</li>
		<li>Job output archive location (optional): location where the job output should be archived;</li>
		<li>Node Count: Number of requested process nodes for the job;</li>
		<li>Processors per Node: numbers of cores per node for the job. The total number of cores used is equal to NodeCount x ProcessorsPerNode;</li>
		<li>Click on Run.</li>
	</ul>
	</li>
</ul>

![](./imgs/ls-dyna-7.png)

<ul>
	<li>Follow the Job Status on the right tab.</li>
	<li>When the analysis is completed two options available:
	<ul>
		<li>Launching LS-PrePost again to visualize/extract results;</li>
		<li>Transfer output files via Globus (see details at: <a href="https://www.designsafe-ci.org/rw/user-guides/globus-data-transfer-guide/" target="_blank">https://www.designsafe-ci.org/rw/user-guides/globus-data-transfer-guide/</a>).</li>
	</ul>
	</li>
</ul>

#### Launching batch of jobs via DesignSafe web portal { #launch-batch }

<ul>
	<li>Select LS-DYNA (Parallel) from the LS-DYNA app in (<i>Workspace &gt; My Apps &gt; LS-DYNA</i>):</li>
</ul>

![](./imgs/ls-dyna-8.png)

<ul>
	<li>Fill the form with the following information:
	<ul>
		<li>Working directory: that contains the files that you want to work on;</li>
		<li>Number of Processors: insert the number of processors required to solve each job;</li>
		<li>LS-DYNA Input: provide the input file name. This file should be a text file that lists the names of all jobs to run. All jobs need to be in the same directory (see example file below);</li>
		<li>Maximum Job runtime: The maximum time you expect this job to run for. Note that after this amount of time your job will be killed by the job scheduler;</li>
		<li>Job name;</li>
		<li>Job output archive location (optional): location where the job output should be archived;</li>
		<li>Node Count: Number of requested process nodes for the batch of jobs;</li>
		<li>Processors per Node: numbers of cores per node for the batch of jobs. The total number of cores used is equal to NodeCount x ProcessorsPerNode;</li>
		<li>Click on Run;</li>
	</ul>
	</li>
</ul>

![](./imgs/ls-dyna-9.png)

<p><em>Example Ls-Dyna input file for parallel jobs.</em></p>


![](./imgs/ls-dyna-10.png)

<ul>
	<li>Follow the Job Status on the right tab.</li>
	<li>When the analysis is completed two options available:
	<ul>
		<li>Launching LS-PrePost again to visualize/extract results;</li>
		<li>Transfer output files via Globus (see details at: <a href="https://www.designsafe-ci.org/rw/user-guides/globus-data-transfer-guide/" target="_blank">https://www.designsafe-ci.org/rw/user-guides/globus-data-transfer-guide/</a>).</li>
	</ul>
	</li>
</ul>

#### Launching batch of jobs via Command Line Interface (CLI) { #launch-batchcli }

<ul>
	<li>Connect to Frontera using SSH Client. See TACC's [Data Transfer &amp; Management Guide](https://docs.tacc.utexas.edu/hpc/frontera/):
	<ul>
		<li>Host name: frontera.tacc.utexas.edu;</li>
		<li>Username and Password should be the same ones as for DesignSafe.</li>
	</ul>
	</li>
</ul>

![](./imgs/ls-dyna-11.png)

<ul>
	<li>Transfer LS-Dyna k files to /scratch or /work directory on Frontera (via Globus);</li>
	<li>Generate 3 files:
	<ul>
		<li>A batch file (<em>launcherLs_Dyna.slurm</em>) that contains all the information about the resources that you need for the parallel job and calls input files (see example file below);</li>
		<li>2 python routines to launch pylauncher that is a python-based parametric job launcher:
		<ul>
			<li><em>myparallellines.py</em>: it generates a file with the list of the <i>n</i> jobs that you need to run (see example file below);
			<ul>
				<li>This routine will generate a <em>my_parallel_lines</em> file (for n=4) (see example file below);</li>
			</ul>
			</li>
		</ul>
		</li>
		<li><em>launcher_file.py</em>: it calls the application that allows to submit all the jobs in parallel. The number of cores assigned to each job is specified in cores (34 in this example). The script will call the file generated by <em>myparallellines.py</em> script (see example file below);</li>
	</ul>
	</li>
</ul>

![](./imgs/ls-dyna-12.png)

<p><em>Example batch file for Ls-Dyna via CLI.</em></p>

![](./imgs/ls-dyna-13.png)

<p><em>Example myprallellines.py routine.</em></p>

![](./imgs/ls-dyna-14.png)

<p><em>Example my_parallel_lines file.</em></p>

![](./imgs/ls-dyna-15.png)

<p><em>Example launcher_file.py routine.</em></p>

<ul>
	<li>Launch jobs using SSH client:
	<ul>
		<li><strong>cd</strong> directory_where_your_inputs_are</li>
		<li><strong>sbatch</strong> <em>launcherLs_Dyna.slurm</em> (slurm file)</li>
		<li><strong>squeue</strong> –u user_name (see status of job)</li>
	</ul>
	</li>
	<li>Emails at begin and end of job will be sent to the email address provided in the batch file.</li>
	<li>Once the analysis is completed, output files can be transferred using Globus (or SCP client) and used LS-PrePost (or else) to visualize them.</li>
</ul>
