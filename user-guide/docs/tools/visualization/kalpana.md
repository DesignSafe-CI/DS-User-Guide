## Kalpana
<a name="kaplana-user-guide"></a><!-- old heading name/id -->

Kalpana is a Python library which primarily converts ADCIRC NetCDF output files to GIS-compatible shapefiles. Secondary functions are not available in the DesignSafe application. It was developed by the Coastal and Computational Hydraulics Team at North Carolina State University. More information regarding Kalpana can be found at:
<ul>
	<li>The CCHT website: <a href="https://ccht.ccee.ncsu.edu/kalpana/" target="_blank">https://ccht.ccee.ncsu.edu/kalpana/</a></li>
	<li>The official GitHub repository, which contains the latest release and examples: <a href="https://github.com/ccht-ncsu/Kalpana" target="_blank">https://github.com/ccht-ncsu/Kalpana</a></li>
</ul>

### Submitting a Job

#### On the Web Portal

Generating contours for a single case is simple through the web interface. The following information is required:

<ul>
	<li><b>ADCIRC File.</b> See the reference table below. Generic NetCDF files may also be accepted, if formatted appropriately.</li>
	<li><b>Variable.</b> Preceded by flag --var. The variable of interest from the NetCDF file. See the reference table below.</li>
	<li><b>Contour levels.</b> Preceded by flag --levels. Separated by spaces, the minimum contour, maximum contour, and step size.</li>
	<li><b>Vertical units out.</b> m or ft</li>
	<li><b>Vertical units in.</b> m or ft</li>
	<li><b>Time Steps.</b> Preceded by flag --timesteps. For time-varying files, specific time steps to extract are provided, separated by spaces. Otherwise, all are exported.</li>
</ul>

After this, generic allocation and archiving preferences are available. Since Kalpana is a serial program, it does not make sense to run on multiple nodes. However, additional cores may provide additional memory to process very large files.

<table>
	<caption>Reference Table for Common ADCIRC Files</caption>
	<thead>
		<tr>
			<th>File</th>
			<th>Description</th>
			<th>Variables of Interest</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>fort.63.nc</td>
			<td>Time-dependent water elevation</td>
			<td>depth, zeta</td>
		</tr>
		<tr>
			<td>fort.64.nc</td>
			<td>Time-dependent water velocity</td>
			<td>depth, u-vel, v-vel</td>
		</tr>
		<tr>
			<td>fort.73.nc</td>
			<td>Time-dependent air pressure</td>
			<td>depth, pressure</td>
		</tr>
		<tr>
			<td>fort.74.nc</td>
			<td>Time-dependent wind velocity</td>
			<td>depth, windx, windy</td>
		</tr>
		<tr>
			<td>maxele.63.nc</td>
			<td>Maximum water elevation</td>
			<td>depth, time_of_zeta_max, zeta_max</td>
		</tr>
		<tr>
			<td>maxvel.63.nc</td>
			<td>Maximum water velocity</td>
			<td>depth, time_of_vel_max, vel_max</td>
		</tr>
		<tr>
			<td>maxwvel.63.nc</td>
			<td>Maximum wind velocity</td>
			<td>depth, time_of_wind_max, wind_max</td>
		</tr>
		<tr>
			<td>swan_HS.63.nc</td>
			<td></td>
			<td>swan_HS</td>
		</tr>
		<tr>
			<td>swan_HS_max.63.nc</td>
			<td></td>
			<td>swan_HS_max</td>
		</tr>
		<tr>
			<td>swan_TPS.63.nc</td>
			<td></td>
			<td>swan_TPS</td>
		</tr>
		<tr>
			<td>swan_TPS_max.63.nc</td>
			<td></td>
			<td>swan_TPS_max</td>
		</tr>
		<tr>
			<td>swan_TMM10.63.nc</td>
			<td></td>
			<td>swan_TMM10</td>
		</tr>
	</tbody>
</table>

#### Advanced Functionality with Tapis

To generate shapefiles for an ensemble, or to modify advanced Kalpana settings, submit JSON job requests using TapiPy (<a href="https://github.com/tapis-project/tapipy" target="_blank">https://github.com/tapis-project/tapipy</a>). Descriptions for each flag are available in the Tapis app specification or the source file on GitHub, see function nc2shp (<a href="https://github.com/ccht-ncsu/Kalpana/blob/master/kalpana/export.py" target="_blank">https://github.com/ccht-ncsu/Kalpana/blob/master/kalpana/export.py</a>).