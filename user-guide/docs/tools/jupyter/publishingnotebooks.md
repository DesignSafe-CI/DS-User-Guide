<h3 style="font-size: 25px; margin-bottom: 7px;">Publishing Notebooks</h3>

<hr style="margin-top: 0px;">

	<p>More and more researchers are publishing projects that contain Jupyter Notebooks as part of their data. They can be used to provide sample queries on the published data as well as providing digital data reports.</p>

<p>As you plan for publishing a Jupyter Notebook, please consider the following issues:</p>

<ol>
	<li>The DesignSafe publication process involves copying the contents of your project at the time of publication to a read only space within the Published projects section of the Data Depot (i.e., this directory can be accessed at NHERI-Published in JupyterHub). Any future user of your notebook will access it in the read only Published projects section. Therefore, any local path you are using while developing your notebook that is accessing a file from a private space (e.g., “MyData”, “MyProjects”) will need to be replaced by an absolute path to the published project.<br>
	 <br>
	Consider this example: you are developing a notebook in PRJ-0000 located in your “MyProjects” directory and you are reading a csv file living in this project at this path: `/home/jupyter/MyProjects/PRJ-0000/Foo.csv`. Before publishing the notebook, you need to change the path to this csv file to `/home/jupyter/NHERI-Published/PRJ-0000/Foo.csv`.<br>
	 </li>
	<li>The published area is a read-only space. In the published section, users can run notebooks, but the notebook is not allowed to write any file to this location. If the notebook needs to write a file, you as the author of the notebook should make sure the notebook is robust to write the file in each user directory. <a href="https://www.google.com/url?q=https://doi.org/10.17603/ds2-v310-qc53&amp;sa=D&amp;source=editors&amp;ust=1619556119520000&amp;usg=AOvVaw2bPVEnx13syCJOhIOvawMi" target="_blank">Here is an example of a published notebook</a> that writes files to user directories. Furthermore, since the published space is read-only, if a user wants to revise, enhance or edit the published notebook they will have to copy the notebook to their mydata and continue working on the copied version of the notebook located in their mydata. To ensure that users understand these limitations, we require a readme file be published within the project that explains how future users can run and take advantage of the Jupyter Notebook.<br>
	 </li>
	<li>Jupyter Notebooks rely on packages that are used to develop them (e.g., numpy, geopandas, ipywidgets, CartoPy, Scikit-Learn). For preservation purposes, it is important to publish a requirement file including a list of all packages and their versions along with the notebook as a metadata file.</li>
</ol>

