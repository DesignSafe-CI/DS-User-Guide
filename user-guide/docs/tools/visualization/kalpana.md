## Kalpana User Guide

!!! note
	Kalpana is **temporarily unavailable**. It is being updated.

Kalpana is a python script that converts ADCIRC output files to GIS compatible shapefiles. The code accepts NetCDF formatted ADCIRC outputs for maximum water levels and wind speeds (maxele.63.nc and maxwvel.63.nc) and converts these to polyline/polygon shapefiles.

More information regarding Kalpana can be found at: <a href="https://ccht.ccee.ncsu.edu/how-to-run-kalpana/" target="_blank">https://ccht.ccee.ncsu.edu/how-to-run-kalpana/</a>.

### How to Submit a Kalpana Job in the Workspace

You will have to fill out a form to submit your job that asks multiple information as follows:

<ol>
<li><b>Working Directory:</b><br>
	This is the directory that contains the ADCIRC simulation NetCDF file to be converted. You can either drag and drop the directory from Data depot browser on the left or use select button.<br>
	 </li>
<li><b>File type:</b><br>
	The Kalpana software on DesignSafe is capable to convert two NetCDF file types.<br>
	(a) maxele.63.nc for maximum water levels,<br>
	(b) maxwvel.63.nc for maximum wind speeds.<br>
	 </li>
<li><b>Vector shape:</b><br>
	Vector shape can be selected from a dropdown menu to be (a) polyline or (b) polygon.<br>
	 </li>
<li><b>Contour type and Contour information:</b><br>
	If you select contourrange for contour type, the contour information should be provided in this format 'min max interval' (e.g. '0 5 0.5').<br>
	 <br>
	If you select contourlevel for contour type, the contour information should be provided as a custom set of contour levels (e.g. '0 1 2 3 4 5 6 7 8 9 10 11 12'). Please note that the selection of contour values depends on the range of your simulation output.</li>
</ol>

Next enter a job name and an output archive location or use the default provided. Now, click Run to submit your job.

![](./imgs/kalpana-1.png){: class="align-center" }

You can track the status of your job to the right side of the same page. The status will change from “Pending” to “Staged”, “Submitting” and “Running”. These processes usually take about 1 to 2 minutes.

Once the status changed to “FINISHED”, you can find the outputs in data depot by navigating to the archived location. If not specified by the user, the job output including the converted shapefile can be found at: My Data / archive / jobs / ${YYYY-MM-DD} / ${JOB_NAME}-${JOB_ID}


