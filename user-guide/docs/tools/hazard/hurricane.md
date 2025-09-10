## Hurricane Data Analysis User Guide { #hurricane }

The Hurricane Data Analysis (HDA) is a graphical user interface (GUI) MATLAB program used to convert sensor raw data to physical data. The hurricane Matthew data was collected by deploying a Wireless Sensor Network system on the roof of a Satellite Beach, Florida house. The wireless system measured the pressure distribution over the roof top. The wind speed and wind direction data were obtained from the FCMP tower and Melbourne airport weather station. The pressure data is analyzed by selecting optimum sample period which yielded a steady value for the peak suction pressure. This averaging time was found to be around 300 seconds. The RMS pressure fluctuations are quantified with respect to the 300-second mean pressure. The mean pressure data correlated well with the wind speed data and the mathematical expressions are developed for different segments, before hurricane, during hurricane and after hurricane.

Wireless Sensor Network is an autonomous full-scale hurricane data measurement system with 30 pressure and temperature sensors, and an anemometer to measure pressure, temperature, speed and wind direction respectively. All sensors are connected wirelessly through 3 routers to a base modem, which is connected to the laptop for collecting the data. The data from the laptop was uploaded through a cellular network at five minutes interval to a Box account, which provides cloud storage and file sharing collaboration. The entire wireless sensor network system was monitored using Team Viewer remote desktop application. All the data collected in the Box was then uploaded into the DesignSafe-ci “My Data”, which can be shared with researchers. To perform the analysis a unique graphical user interface (GUI) application was created using MATLAB, which is capable of analyzing the complete data set on a single run. The user can run the GUI code instantly on the cloud and provide plots of the physical data.

### How to Start a Hurricane Data Analysis Interactive Session in the Workspace { #hurricane-start }

<ul>
	<li>Select the Hurricane Data Analysis application from the Simulation tab in the Workspace. 
	<ul>
		<li>You must have [MATLAB license enabled](../analysis/#matlab-user-guide) to use this app.</li>
	</ul>
	</li>
	<li>Select your desired desktop resolution from the dropdown menu.</li>
	<li>Enter a maximum job runtime in the form. </li>
	<li>Enter a job name.</li>
	<li>Enter an output archive location or use the default provided.</li>
	<li>Click Run to start your interactive session.</li>
</ul>
