## SWbatch
<a name="swbatch-user-guide"></a>

<code>SWbatch</code> is a user-friendly, web-based application for performing batch-style surface wave inversions using the Dinver module of the open-source software <a href="http://geopsy.org/" rel="nofollow">Geopsy</a>. <code>SWbatch</code> allows the user to rapidly and conveniently invert experimental dispersion data considering multiple inversion parameterizations to address the problem’s non-uniqueness and multiple trials per parameterization to address the problem’s nonlinearity as detailed in the SWinvert workflow (Vantassel and Cox, 2020). To facilitate the potentially large amounts of pre- and post-processing required when performing batch surface-wave inversions a Python package, <code>SWprepost</code>, (Vantassel, 2020) has been released open-source. More information about <code>SWprepost</code> can be found on its <a href="https://github.com/jpvantassel/swprepost">GitHub</a> page.

If you use <code>SWbatch</code> in your research we ask that you please cite the following:

<blockquote>
Vantassel, J.P., Gurram, H., and Cox, B.R., (2020). jpvantassel/swbatch: latest (Concept). Zenodo. <a href="https://doi.org/10.5281/zenodo.3840546" rel="nofollow">https://doi.org/10.5281/zenodo.3840546</a>
</blockquote>

<blockquote>
Vantassel, J.P., Cox, B.R., (2020). SWinvert: A workflow for performing rigorous 1D surface wave inversions. Geophysical Journal International <a href="https://doi.org/10.1093/gji/ggaa426" rel="nofollow">https://doi.org/10.1093/gji/ggaa426</a>
</blockquote>

<em>Note: For software, version specific citations should be preferred to general concept citations, such as that listed above. To generate a version specific citation for <code>SWbatch</code>, please use the citation tool for that specific version on the <code>SWbatch</code> <a href="https://zenodo.org/badge/latestdoi/240935736" rel="nofollow">archive</a>.</em>

### Getting Started { #start }

There are two ways of using <code>SWbatch</code>:

<ol>
	<li>As part of a developed Jupyter workflow called SWinvert. (Recommended)</li>
	<li>Or directly through the DesignSafe-CI Research Workbench.</li>
</ol>

#### Instructions for using the Jupyter Workflow { #start-jupyter }

<ol>
	<li>Visit the <code>SWprepost</code> <a href="https://github.com/jpvantassel/swprepost">GitHub</a> and follow the <code>Getting Started</code> instructions. The advanced example walks you through using the <code>SWinvert</code> surface wave inversion Jupyter workflow. (30 minutes)</li>
	<li>Login to <a href="https://www.designsafe-ci.org/" rel="nofollow">DesignSafe</a>. Transfer the advanced example and follow the instructions provided therein to repeat the tutorial. This time be sure to use the computational power of <code>SWbatch</code> to perform the inversion rather than viewing the results provided. Be sure to remove the previous inputs and results before running your inversion with <code>SWbatch</code>. Note more detailed instructions for completing this step are provided in the Jupyter notebook. (20 minutes, excludes inversion runtime)</li>
	<li>Upload your own experimental dispersion data and repeat the workflow. Be sure to remove the previous inputs and results before running your inversion with <code>SWbatch</code>. (20 minutes, excludes inversion runtime)</li>
	<li>Enjoy!</li>
</ol>

#### Instructions for using the DesignSafe-CI Research Workbench { #start-ds }

<ol>
	<li>Visit the <code>SWprepost</code> <a href="https://github.com/jpvantassel/swprepost">GitHub</a> and follow the <code>Getting Started</code> instructions. This will introduce you to <code>SWprepost</code> and the <code>SWinvert</code> workflow, which is required before proceeding to step 2 in these instructions. (30 minutes)</li>
	<li>Login to <a href="https://www.designsafe-ci.org/" rel="nofollow">DesignSafe</a>. Create a directory for your inversion, inside of which mimic the directory structure of the advanced example you completed as part of the previous step. Place your <code>.target</code> and <code>.param</code> files in the appropriate directories. (45 minutes)</li>
	<li>Launch <code>SWbatch</code>, by going to <code>Research Workbench&gt;Workspace&gt;Simulation&gt;SWbatch</code> on DesignSafe and following the instructions provided there. (30 minutes, excludes inversion runtime)</li>
	<li>To see the status of your simulation refer to the <code>Job Status</code> bar. When your job is complete use the <code>View</code> button to view your inversion results. (5 minutes)</li>
	<li>Enjoy!</li>
</ol>

