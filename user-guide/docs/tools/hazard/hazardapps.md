## Hazard Applications

### Managing Applications { #managing }

#### Requesting New Applications { #managing-request }

DesignSafe regularly adds new software applications in support of natural hazards engineering research. You may contact DesignSafe by <a href="/help/new-ticket/">submitting a help ticket</a> if you would like to request the addition of a software application to the Workspace.

#### Getting Your Own HPC Application { #managing-installing }

For those researchers with larger computational needs on the order of tens of thousands, or even millions of core-hours, or if you have a software application that we don't support in the web portal, you may request your own allocation of computing time on TACC's HPC systems. Your files can still be stored in the Data Depot, allowing you to share your research results with your team members, as well as curate and publish your findings.

#### Commercial/Licensed Applications { #managing-commercial }

The DesignSafe infrastructure includes support for commercial/licensed software. Wile in some cases licenses can be provided by the DesignSafe project itself, not all vendors will make licenses available for larger open communities at reasonable cost. You may contact DesignSafe by <a href="/help/new-ticket/">submitting a help ticket</a> if you have questions regarding a commercial software application.


### Hurricane Data Analysis User Guide { #hurricane }

The Hurricane Data Analysis (HDA) is a graphical user interface (GUI) MATLAB program used to convert sensor raw data to physical data. The hurricane Matthew data was collected by deploying a Wireless Sensor Network system on the roof of a Satellite Beach, Florida house. The wireless system measured the pressure distribution over the roof top. The wind speed and wind direction data were obtained from the FCMP tower and Melbourne airport weather station. The pressure data is analyzed by selecting optimum sample period which yielded a steady value for the peak suction pressure. This averaging time was found to be around 300 seconds. The RMS pressure fluctuations are quantified with respect to the 300-second mean pressure. The mean pressure data correlated well with the wind speed data and the mathematical expressions are developed for different segments, before hurricane, during hurricane and after hurricane.

Wireless Sensor Network is an autonomous full-scale hurricane data measurement system with 30 pressure and temperature sensors, and an anemometer to measure pressure, temperature, speed and wind direction respectively. All sensors are connected wirelessly through 3 routers to a base modem, which is connected to the laptop for collecting the data. The data from the laptop was uploaded through a cellular network at five minutes interval to a Box account, which provides cloud storage and file sharing collaboration. The entire wireless sensor network system was monitored using Team Viewer remote desktop application. All the data collected in the Box was then uploaded into the DesignSafe-ci “My Data”, which can be shared with researchers. To perform the analysis a unique graphical user interface (GUI) application was created using MATLAB, which is capable of analyzing the complete data set on a single run. The user can run the GUI code instantly on the cloud and provide plots of the physical data.

#### How to Start a Hurricane Data Analysis Interactive Session in the Workspace { #hurricane-start }

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




### Next Generation Liquefaction { #liquefaction }

ngl_tools is a collection of Jupyter notebooks developed to interact with the NGL database in DesignSafe. The Next Generation Liquefaction (NGL) Project is advancing the state of the art in liquefaction research and working toward providing end users with a consensus approach to assess liquefaction potential within a probabilistic and risk-informed framework. Specifically, NGL’s goal is to first collect and organize liquefaction information in a common and comprehensive database to provide all researchers with a substantially larger, more consistent, and more reliable source of liquefaction data than existed previously. Based on this database, we will create probabilistic models that provide hazard- and risk-consistent bases for assessing liquefaction susceptibility, the potential for liquefaction to be triggered in susceptible soils, and the likely consequences. NGL is committed to an open and objective evaluation and integration of data, models and methods, as recommended in a 2016 National Academies <a href="https://www.nap.edu/catalog/23474/state-of-the-art-and-practice-in-the-assessment-of-earthquake-induced-soil-liquefaction-and-its-consequences">report</a>. The evaluation and integration of the data into new models and methods will be clear and transparent. Following these principles will ensure that the resulting liquefaction susceptibility, triggering, and consequence models are reliable, robust and vetted by the scientific community, providing a solid foundation for designing, constructing and overseeing critical infrastructure projects.

The NGL database is populated through a web GUI at <a href="http://www.nextgenerationliquefaction.org" target="_blank">www.nextgenerationliquefaction.org</a>. The web interface provides limited capabilities for users to interact with data. Users are able to view and download data, but they cannot use the GUI to develop an end-to-end workflow to make scientific inferences and draw conclusions from the data. To facilitate end-to-end workflows, the NGL database is replicated daily to DesignSafe, where users can interact with it using Jupyter notebooks.

Additional information on NGL can be found at:<br>
<a href="https://ngl-tools.readthedocs.io/en/latest/index.html" target="_blank">https://ngl-tools.readthedocs.io/en/latest/index.html</a>

#### Connecting to the database in DesignSafe { #liquefaction-connect }

Connecting to a relational database requires credentials, like username, password, database name, and hostname. Rather than requiring users to know these credentials, we have created a Python package that allows users to connect to the database. The lines of code below first imports the ngl_db Python package, and then creates a connection object to the database called cnx.

<pre>import ngl_db
cnx = ngl_db.connect()</pre>

#### Notebooks published in DesignSafe { #liquefaction-notebooks }

Jupyter notebooks for this project are located in two different places. One of them is Community Data, which is available via the Next-Generation Liquefaction app in the Tools &amp; Applicaitons section of the Workspace. That app points <a href="https://jupyter.designsafe-ci.org/user/sjbrande/tree/CommunityData/NGL">here</a>. In addition, we have published a number of notebooks in the published area. These notebooks have been assigned a digital object identifier and can be cited as indicated below. The notebooks in Community Data are maintained more frequently.

<ol>
	<li>
	Brandenberg, S. J. , and Zimmaro, P. (2019). “‘Next Generation Liquefaction (NGL) Partner Dataset - Sample Queries’, in Next Generation Liquefaction (NGL) Partner Dataset - Sample Queries DesignSafe-CI, 10.17603/ds2-xvp9-ag60 <a href="https://doi.org/10.17603/ds2-xvp9-ag60">link</a>
	</li>
	<li>
	Brandenberg, S. J. , and Zimmaro, P. (2019). “‘Next Generation Liquefaction (NGL) Partner Dataset Cone Penetration Test (CPT) Viewer’, in Next Generation Liquefaction (NGL) Partner Dataset Cone Penetration Test (CPT) Viewer DesignSafe-CI, 10.17603/ds2-99kp-rw11 <a href="https://doi.org/10.17603/ds2-99kp-rw11">link</a>
	</li>
	<li>
	Brandenberg, S. J. , and Zimmaro, P. (2019). “‘Next Generation Liquefaction (NGL) Partner Dataset - Surface Wave Viewer’, in Next Generation Liquefaction (NGL) Partner Dataset - Surface Wave Viewer. DesignSafe-CI, 10.17603/ds2-cmn0-h864 <a href="https://doi.org/10.17603/ds2-cmn0-h864">link</a>
	</li>
	<li>
	Zimmaro, P. , and Brandenberg, S. J. (2019). “‘Next Generation Liquefaction (NGL) Partner Dataset - Invasive Geophysical Test Viewer’, in Next Generation Liquefaction (NGL) Partner Dataset - Invasive Geophysical Test Viewer. DesignSafe-CI, 10.17603/ds2-tq39-kp49 <a href="https://doi.org/10.17603/ds2-tq39-kp49">link</a>
	</li>
	<li>
	Lee, A. , Fisher, H. , Zimmaro, P. , and Brandenberg, S. J. (2019). “‘Next Generation Liquefaction (NGL) Partner Dataset - Boring Log Viewer’, in Next Generation Liquefaction (NGL) Partner Dataset - Boring Log Viewer. DesignSafe-CI, 10.17603/ds2-sj7t-av93 <a href="https://doi.org/10.17603/ds2-sj7t-av93">link</a>
	</li>
	<li>
	Brandenberg, S. J. , Zimmaro, P. , Lee, A. , Fisher, H. , and Stewart, J. P. (2019). “‘Next Generation Liquefaction (NGL) Partner Dataset’, in Next Generation Liquefaction (NGL) Partner Dataset DesignSafe-CI, 10.17603/ds2-2xzy-1y96 <a href="https://doi.org/10.17603/ds2-2xzy-1y96">link</a>
	</li>
</ol>

#### Understanding the database schema { #liquefaction-dbschema }

The NGL database is organized into tables that are related to each other via keys. To query the database, you will need to understand the organizational structure of the database, called the schema. The database schema is documented at the following URL: <a href="https://nextgenerationliquefaction.org/schema/index.html">https://nextgenerationliquefaction.org/schema/index.html</a>

Figure 1 describes the schema for the SITE table, which is a high level table in the NGL database where users enter information about a particular site they have investigated following an earthquake. The SITE table contains SITE_ID, which is the primary key for the SITE table. Every entry in the SITE table is assigned a unique SITE_ID that identifies the entry. Additional fields include SITE_NAME, SITE_LAT, SITE_LON, SITE_GEOL, SITE_REM, SITE_STAT, and SITE_REVW. The Children column in Figure 1 identifies other tables in the NGL database that have been assigned a foreign key constraint to the SITE_ID field. For example, FLDO is a table containing field observations of liquefaction at a site. The FLDO table has a SITE_ID field, called a foreign key, that identifies the observation as being associated with the site with the same SITE_ID.

![](./liquefaction-1.png)
<strong>Figure 1.</strong> Screenshot of NGL site table schema.

### SCEC BBP Ground Motion Portal User Guide { #scec }


The SCEC Broadband Platform is a software system that can generate 0-100 Hz seismograms for historical and scenario earthquakes in California, Eastern North America, and Japan using several alternative computational methods. The SCEC Broadband Platform is a collaborative software development project involving SCEC researchers, research engineers, graduate students, and the SCEC/CME software development group. SCEC scientific groups have contributed modules to the Broadband Platform including rupture generation, low- and high-frequency seismogram synthesis, non-linear site effects, and visualization. These complex scientific codes have been integrated into a system that supports easy on-demand computation of broadband seismograms. The SCEC Broadband Platform is designed to be used by both scientific and engineering researchers with some experience interpreting ground motion simulations.

More can be found on the <a href="https://www.scec.org/" title="SCEC Website" target="_blank">SCEC website</a>.

#### How to Start a SCEC BBP Ground Motion Portal Interactive Jupyter Notebook Session in the Workspace { #scec-start }

<ul>
	<li>Select the SCEC BBP Ground Motion Portal application from the Partner Data Apps tab in the Workspace.</li>
	<li>Click Launch SCEC BBP Ground Motion Portal to start your interactive session.</li>
</ul>


### TPU Wind Databases User Guide { #tpu }

This is a link to a collection of aerodynamic databases for isolated and non-isolated low-rise and tall buildings from wind tunnel tests by the Tokyo Polytechnic University, The School of Architecture &amp; Wind Engineering. <em><strong>Clicking the link will leave DesignSafe and take you to the TPU website.</strong></em>

<i>The available collections are:</i>

<b>Aerodynamic Database of High-rise Buildings</b><br>
The objective is to provide structural design engineers with wind tunnel test data of wind loads on high-rise buildings.22 models of high-rise buildings were tested. Contours of statistical values of local wind pressure coefficients, graphs of statistical values of area averaged wind pressure coefficients on the wall surfaces and time series data of point wind pressure coefficients for 394 test cases are shown. These data can be used to calculate local wind pressures,area averaged wind pressure coefficie on wall surfaces, and even wind induced dynamic responses of high-rise buildings.

<b>Wind Pressure Database for High-rise Building with Adjacent Building</b><br>
The objective is to provide structural design engineers with wind tunnel test data of local wind pressures on a high-rise building under interference. The considered experimental model comprised two buildings: the pressure model, referred to as the principal building, and the other model, referred to as the interfering building. Five types of interfering buildings were considered, all with the same cross section as the principal building but with different heights. All interfering buildings were orientated with their on-face normal to the principal building and were placed at 37 different upstream configurations with respect to the principal building. A total of 72 wind directions were considered, from 0 degree to 355 degree in 5 degree steps. 8640 experimental cases of building arrangements and wind directions were tested. The aerodynamic database based on the results of the present study will help practical designers in preliminary design of building claddings and will be useful in accurately estimating cladding loads on tall buildings due to interference. The aerodynamic database can be provided by mean, rms and peak pressure coefficients on wall surfaces and time series data of point wind pressure coefficients.

<b>Aerodynamic Database of Low-rise Buildings without Eaves</b><br>
The objective is to provide structural design engineers with wind tunnel test data of wind loads on low-rise buildings. 116 models of gable-, hop- and flat-roofed low-rise buildings were tested. 4,176 contours of statistical values of local wind pressure coefficients, 700 graphs of statistical values of area averaged wind pressure coefficients on the roof or wall surfaces and time series data of point wind pressure coefficients for 812 test cases are shown. These data can be used to calculate local wind pressures, area averaged wind pressure coefficient on roof or wall surfaces, and even wind induced dynamic responses of low-rise buildings.

<b>Aerodynamic Database of Gable-roof Low-rise Buildings with Varied Eaves</b><br>
To study the effects of varied eaves on wind loads on gable-roofed low-rise buildings, a series of wind pressure measurement wind tunnel tests were taken for gabled-roof buildings with slope of 26.7* with 3 kinds of eaves (Type A, B, C), eave height of models varied in 60, 120, 180cm. 12 test cases are included in the database from which the local wind pressures, area averaged wind pressure coefficients and wind pressure coefficient time series on roof or wall surfaces and some more detailed information can be queried.

<b>Aerodynamic Database of Non-isolated Low-rise Buildings</b><br>
A series of pressure measurement wind tunnel tests were taken for 3 types of low-rise buildings (flat roof, gable roof and hipped models) surrounded by similar low-rise buildings. Its objective is to investigate the interference effect of regular, staggered, random, with 8 different area density CA (0.1, 0.15, 0.20, 0.25, 0.30, 0.40, 0.50, 0.60) and the heights of target building and surrounding building models are all varied in 60, 120, 180cm. 111 test cases are included in the database from which the local wind pressures, area averaged wind pressure coefficients and wind pressure coefficient time series on roof or wall surfaces and some more detailed information can be queried.

### VORTEX-Winds: DEDM-HR User Guide { #vortex }

This is a link to the Database-Enabled Design Module for High-Rise (DEDM-HR) buildings. Navigate to the web application developed by the NatHaz Modeling Laboratory, Univ. of Notre Dame which seamlessly pools databases of multiple high frequency base balance measurements through wind tunnel tests/experiments from geographically dispersed locations and merges them together to expand the number of available building configurations for preliminary design under winds. <strong><em>Clicking the link will leave DesignSafe and take you to the TPU website.</em></strong>


