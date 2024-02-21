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



