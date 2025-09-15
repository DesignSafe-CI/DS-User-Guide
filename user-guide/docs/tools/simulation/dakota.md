## Dakota
<a name="dakota-user-guide"></a><!-- old heading name/id -->

The Dakota project delivers both state-of-the-art research and robust, usable software for optimization and uncertainty quantification. Broadly, the Dakota software's advanced parametric analyses enable design exploration, model calibration, risk analysis, and quantification of margins and uncertainty with computational models. The Dakota toolkit provides a flexible, extensible interface between such simulation codes (e.g. OpenSees) and its iterative systems analysis methods, which include:

<ul>
	<li>optimization with gradient and nongradient-based methods;</li>
	<li>uncertainty quantification with sampling, reliability, stochastic expansion, and epistemic methods;</li>
	<li>parameter estimation using nonlinear least squares (deterministic) or Bayesian inference (stochastic);</li>
	<li>and sensitivity/variance analysis with design of experiments and parameter study methods.</li>
</ul>

These capabilities may be used on their own or as components within advanced strategies such as hybrid optimization, surrogate-based optimization, mixed integer nonlinear programming, or optimization under uncertainty.

More detailed information and Dakota user documentation can be found at the [Dakota website](https://dakota.sandia.gov/content/manuals){target="_blank"}.

### How to Submit a Dakota Job in the Workspace

<ul>
	<li>Select the Dakota appication from the Simulation tab in the Workspace.</li>
	<li>Locate your Input Directory (Folder) with your input files that are in the Data Depot and enter this directory in the form.</li>
	<li>Enter the name of your Dakota Drive File located in your Input Directory into the form.</li>
	<li>Enter a comma separated list of modules to load.</li>
	<li>Enter a name for your Dakota Output File.</li>
	<li>Enter a name for your Dakota Input File.</li>
	<li>Enter a name for your Dakota Error File.</li>
	<li>Enter a maximum job runtime in the form. See guidance on form for selecting a runtime.</li>
	<li>Enter a Job name.</li>
	<li>Enter an output archive location or use the default provided.</li>
	<li>Select the number of nodes to be used for your job. Larger data files run more efficiently on higher node counts.</li>
	<li>Click Run to submit your job.</li>
	<li>Check the job status by clicking on the arrow in the upper right of the job submission form.</li>
</ul>
