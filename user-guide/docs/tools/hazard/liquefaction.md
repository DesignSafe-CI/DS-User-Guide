## Next Generation Liquefaction { #liquefaction }

ngl_tools is a collection of Jupyter notebooks developed to interact with the NGL database in DesignSafe. The Next Generation Liquefaction (NGL) Project is advancing the state of the art in liquefaction research and working toward providing end users with a consensus approach to assess liquefaction potential within a probabilistic and risk-informed framework. Specifically, NGL’s goal is to first collect and organize liquefaction information in a common and comprehensive database to provide all researchers with a substantially larger, more consistent, and more reliable source of liquefaction data than existed previously. Based on this database, we will create probabilistic models that provide hazard- and risk-consistent bases for assessing liquefaction susceptibility, the potential for liquefaction to be triggered in susceptible soils, and the likely consequences. NGL is committed to an open and objective evaluation and integration of data, models and methods, as recommended in a 2016 National Academies <a href="https://www.nap.edu/catalog/23474/state-of-the-art-and-practice-in-the-assessment-of-earthquake-induced-soil-liquefaction-and-its-consequences">report</a>. The evaluation and integration of the data into new models and methods will be clear and transparent. Following these principles will ensure that the resulting liquefaction susceptibility, triggering, and consequence models are reliable, robust and vetted by the scientific community, providing a solid foundation for designing, constructing and overseeing critical infrastructure projects.

The NGL database is populated through a web GUI at <a href="http://www.nextgenerationliquefaction.org" target="_blank">www.nextgenerationliquefaction.org</a>. The web interface provides limited capabilities for users to interact with data. Users are able to view and download data, but they cannot use the GUI to develop an end-to-end workflow to make scientific inferences and draw conclusions from the data. To facilitate end-to-end workflows, the NGL database is replicated daily to DesignSafe, where users can interact with it using Jupyter notebooks.

Additional information on NGL can be found at:<br>
<a href="https://ngl-tools.readthedocs.io/en/latest/index.html" target="_blank">https://ngl-tools.readthedocs.io/en/latest/index.html</a>

### Connecting to the database in DesignSafe { #liquefaction-connect }

Connecting to a relational database requires credentials, like username, password, database name, and hostname. Rather than requiring users to know these credentials, we have created a Python package that allows users to connect to the database. The lines of code below first imports the ngl_db Python package, and then creates a connection object to the database called cnx.

<pre>import ngl_db
cnx = ngl_db.connect()</pre>

### Notebooks published in DesignSafe { #liquefaction-notebooks }

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

### Understanding the database schema { #liquefaction-dbschema }

The NGL database is organized into tables that are related to each other via keys. To query the database, you will need to understand the organizational structure of the database, called the schema. The database schema is documented at the following URL: <a href="https://nextgenerationliquefaction.org/schema/index.html">https://nextgenerationliquefaction.org/schema/index.html</a>

Figure 1 describes the schema for the SITE table, which is a high level table in the NGL database where users enter information about a particular site they have investigated following an earthquake. The SITE table contains SITE_ID, which is the primary key for the SITE table. Every entry in the SITE table is assigned a unique SITE_ID that identifies the entry. Additional fields include SITE_NAME, SITE_LAT, SITE_LON, SITE_GEOL, SITE_REM, SITE_STAT, and SITE_REVW. The Children column in Figure 1 identifies other tables in the NGL database that have been assigned a foreign key constraint to the SITE_ID field. For example, FLDO is a table containing field observations of liquefaction at a site. The FLDO table has a SITE_ID field, called a foreign key, that identifies the observation as being associated with the site with the same SITE_ID.

![](./liquefaction-1.png)
<strong>Figure 1.</strong> Screenshot of NGL site table schema.
