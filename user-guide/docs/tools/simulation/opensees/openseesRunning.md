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
