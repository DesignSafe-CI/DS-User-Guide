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
