# MATLAB
<a name="matlab-user-guide"></a>

DesignSafe is able to provide access to the popular licensed software MATLAB to academic researchers via our license with Mathworks. You can request access to our licensed MATLAB, and we first verify that you are a researcher at an academic institution before providing you access.

We provide two MATLAB applications in the Workspace:

<ul>
	<li>MATLAB
	<ul>
		<li>For lighter workloads not working with large datasets, this MATLAB application runs on TACC's DesignSafe VM (Virtual Machine).</li>
		<li>It runs as an interactive MATLAB 2018b session on a virtual machine.</li>
	</ul>
	</li>
	<li>MATLAB Batch
	<ul>
		<li>For heavier workloads and large datasets, this MATLAB application runs on TACC's HPC resources.</li>
		<li>It is a non-interactive application to run &#42;.m scripts.</li>
		<li>These sessions run on single node with 64 cores on Stampede2.</li>
		<li>Different versions of MATLAB are available in this mode.</li>
	</ul>
	</li>
</ul>

NOTE: Because MATLAB is an interactive program that you access in a GUI, you will not have the same responsiveness as running on your local laptop. We provide MATLAB as a convenience to interacting with your data in the Data Depot without having to download it to your local system, and also the version running on HPC resources is great for large datasets or heavy workloads that are too much for your laptop.

## How to Start a MATLAB Interactive Session in the Workspace { #start }

MATLAB that runs on VM

<ul>
	<li>Select the MATLAB application from the Data Processing tab in the Workspace.</li>
	<li>Select MATLAB from the dropdown menu.</li>
	<li>Select your desired desktop resolution from the dropdown menu.</li>
	<li>Enter a maximum job runtime in the form. While this field is required in the form it is not actually used, simply enter any time using the time format shown.</li>
	<li>Enter a job name.</li>
	<li>Enter an output archive location or use the default provided.</li>
	<li>Click Run to start your interactive session.</li>
</ul>

## How to Submit a MATLAB Batch job in the Workspace { #submit }

MATLAB Batch that runs on HPC

<ul>
	<li>Select the MATLAB application from the Data Processing tab in the Workspace.</li>
	<li>Select MATLAB (Batch 20XXa/b) version corresponding to your *.m script from the dropdown menu.</li>
	<li>Locate the directory containing your data files in the Data Depot and follow the onscreen directions to enter this as your Working Directory.</li>
	<li>Select your batch MATLAB script name. This file should reside in the Working Directory.</li>
	<li>Enter a maximum job runtime in the form. See guidance on form for selecting a runtime.</li>
	<li>Enter a job name.</li>
	<li>Enter an output archive location or use the default provided.</li>
	<li>Click Run to submit your job to stampede queue.</li>
</ul>
