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
