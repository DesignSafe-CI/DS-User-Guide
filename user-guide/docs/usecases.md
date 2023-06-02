# Use Case Products

DesignSafe provides a wide variety of resources that allow researchers to effectively share, find, analyze, and publish data; perform numerical simulations and utilize high performance computing (HPC); and integrate diverse datasets.  

To help users fully embrace DesignSafe functionalities, we have developed a suite of Use Cases that demonstrate how DesignSafe is being used to advance natural hazards research.  Practical products, examples, and scripts developed as part of these Use Cases are provided at the links below.  The different simulation codes, tools, and DesignSafe resources used in each Use Case are also indicated.

<b> General Use Cases </b><br/>

* [**Damage Tagging of Field Images**](#haan) (Taggit, HazMapper)
* [**Machine Learning and AI Resources**](#vantassel_and_zhang) (Jupyter, Interactive Data Analytics, HPC)

<b> Geohazard Use Cases </b>

* [**Data Analysis using Next Generation Liquefaction (NGL) Database**](#brandenberg) (NGL, Jupyter, SQL, Interactive Data Analytics)
* [**Landslide Runout Simulations**](#kumar) (MPM, Jupyter, Paraview, HPC)

<b> Hurricane and Windstorm Use Cases </b>

* [**Large-Scale Ensemble Simulations of Storm Surge**](#dawson)  (ADCIRC, pylauncher, Jupyter, HPC)
* [**Creating an ADCIRC dataset**](#dawson1)  (ADCIRC, pylauncher, Jupyter, Dataset)
* [**Visualization of Storm Surge Impacts**](#padgett) (ADCIRC, Jupyter, QGIS)
* [**Simulation of Wind Flow around Buildings**](#kareem) (OpenFOAM, Jupyter, Paraview, HPC)
* [**Analysis of Field Sensor Data from Wind Events**](#pinelli) (Jupyter, Interactive Data Analysis)

<b> Seismic Use Cases </b>

* [**Site Response Analysis and Model Calibration**](#arduino) (OpenSees, SimCenter quoFEM, Jupyter, HPC)
* [**Simulating the Seismic Performance of Reinforced Concrete Walls**](#lowes) (OpenSees, Jupyter, HPC)
* [**Soil-Structure-Interaction Simulations**](#rathje) (OpenSees, STKO, Jupyter, HPC)
* [**Experimental Visualization of Shaking Table Data**](#mosqueda) (Jupyter, Interactive Data Analysis, UCSD NHERI Facility)
* [**Application Programming Interfaces**](brandenberg/apiusecases/usecase.md) (Jupyter, API, requests)
---
## Taggit - Image Tagging { #haan }

**Using Taggit to Browse and Tag Hurricane Irma Damage Survey Images on DesignSafe**

**Fred L. Haan, Jr - Calvin University**  

Taggit allows users to browse images files on DesignSafe and tag them for later use in analysis or mapping applications. It also easily connects to HazMapper to map image locations. This use case illustrates how photos from a 2017 damage survey in the Florida Keys after Hurricane Irma were organized into groups and tagged for later analysis. The example makes use of the following DesignSafe resources:

[Taggit](https://taggit-tacc.github.io/){target=_blank}<br/>
[HazMapper](https://www.designsafe-ci.org/rw/workspace/#!/Hazmapper-1.0){target=_blank}

### Citation and Licensing

* Please cite [Rathje et al. (2017)](https://doi.org/10.1061/(ASCE)NH.1527-6996.0000246){target=_blank} to acknowledge the use of DesignSafe resources.  

* This software is distributed under the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.html){target=_blank}.  

### Getting Started and Creating a Gallery 
The collapsed menus icon (shown below) opens the main menu of Taggit and enables creating a gallery, selecting from existing galleries, and opening the file browser. For this project, "Create Gallery" was selected to get started. 

<img src="./imgs/haan/CreateProject2.PNG" alt="CreateProject2" width="400"/>

### Loading Image Files

Image files can be loaded into an existing project by selecting "File Browser" from the main menu. This enables access to all parts of DesignSafe including My Data, Community Data, Published Project, and My Projects. For this project, the PI's images from the Irma damage survey were selected.

<img src="./imgs/haan/SelectImageFiles.JPG">

Clicking Import brings the selected files into the gallery, and you see thumbnails of the images as shown below.

<img src="./imgs/haan/ThumbNails.JPG">

### Creating Groups and Organizing Images

Groups were created for this gallery to organize the photos into types of structures and types of damage. Clicking on one or more images generates a green border that denotes selected images. The Add Group button (see below) was used to create names for groups.

<img src="./imgs/haan/AddGroup.JPG">

The add group dialog box enables naming the groups.

<img src="./imgs/haan/GroupName.JPG">

Once a group or groups is created, the Taggit button appears (see below). The Taggit button takes you to the Taggit screen where you can see the images in their groups and begin to create tags.

<img src="./imgs/haan/TaggitButton.JPG">

The Taggit screen is shown below. Here you can see the groups that have been created and the images in each group. The Gallery button toggles back to the thumbnail gallery.

<img src="./imgs/haan/TaggitScreenIntro.JPG">

When hovering over any given image in the thumbnail gallery, several icons will appear. The Zoom, Remove, and Add to Group buttons appear in the upper right. The Add To Group button provides another way to add an image to a group. The box in the lower right shows colored boxes representing each group this image belongs to.

<img src="./imgs/haan/ThumbNailButtons2.JPG">

After creating a number of groups and adding images to those groups, the Taggit view looks like the image below. From this view, you can browse through the groups and through the images in each group.

<img src="./imgs/haan/GroupsAndImages.JPG">

The icons associated with each group were customized by clicking on the icon and selecting different ones from the list.

<img src="./imgs/haan/GroupListIcons.JPG">




### Creating Tags for Images

The Tag Images area below the Image List was used to create custom tags for images. 

<img src="./imgs/haan/TagImagesArea.JPG">

For this group, a Color Tag representing damage was created (see below).

<img src="./imgs/haan/ColorTag1.JPG">

<img src="./imgs/haan/ColorTag2.JPG">

The colors assigned with a Color Tag will be used if the user decides to map the image using HazMapper.

<img src="./imgs/haan/ColorTag3.JPG">



### Plotting Images Locations with HazMapper

Clicking the HazMapper button launches HazMapper to see all the photos from this gallery located on a map.

<img src="./imgs/haan/HazMapperButton.JPG">

For this gallery, a Roads layer was added to the map.

<img src="./imgs/haan/CreateLayerWindow.JPG">

The locations of collections of images are denoted with numbers on the map.

<img src="./imgs/haan/HazMapperMap1.JPG">

Zooming in to regions where images were taken shows that a generic camera icon or a user-selected icon denotes image location. If a Color tag was assigned to a given image, then that color will be used for the HazMapper icon.

<img src="./imgs/haan/HazMapperMap2.JPG">




### Exporting Tag Data as CSV Files

From the main menu, the user can select several options (see below) for exporting the group and tag information from the current project. These files can be used for further analysis or for machine learning applications.

<img src="./imgs/haan/SaveAsCSV.JPG">

---
## ML and AI { #vantassel_and_zhang }

**An Example-Based Introduction to Common Machine Learning Approaches**

**Joseph P. Vantassel and Wenyang Zhang, Texas Advanced Computing Center - The University of Texas at Austin**  

With the increasing acquisition and sharing of data in the natural hazards community, solutions from 
data science, in particular machine learning, are increasingly being applied to natural hazard problems.
To better equip the natural hazards community to understand
and utilize these solution this use case presents an example-based introduction to common machine
learning approaches. This use case is not intended to be exhaustive in its coverage
of machine learning approaches (as there are many), nor in its coverage of the selected approaches
(as they are more complex than can be effectively communicated here), rather, this use case is
intended to provide a high-level overview of different approaches to using machine learning to
solve data-related problems.  The example makes use of the following DesignSafe resources:

[Jupyter notebooks on DS Juypterhub](https://www.designsafe-ci.org/rw/workspace/#!/Jupyter::Analysis){target=_blank}<br/>


### Background
#### Citation and Licensing

<!-- * Please cite [AUTHORS et al. (20xx) - example of published project]() to acknowledge the use of any resources from this use case. -->

* Please cite [Rathje et al. (2017)](https://doi.org/10.1061/(ASCE)NH.1527-6996.0000246){target=_blank} to acknowledge the use of DesignSafe resources.  

* Please cite [Durante and Rathje (2021)](https://doi.org/10.1177/87552930211004613){target=_blank} to acknowledge the use of any resources for the Random Forest and Neural Networks examples included in this use case.

* This software is distributed under the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.html){target=_blank}.


### Overview of ML examples

This use case is example-based meaning that is its contents have been organized into self-contained examples.
These self-contained example are organized by machine learning algorithm. Importantly, the machine learning
algorithm applied to the specific example provided here are not the only (or even necessarily the optimal)
algorithm for that particular (or related) problem, instead the datasets considered are used merely for example
and the algorithm applied is but one of the potentially many reasonable alternatives one could use to solve
that particular problem. The focus of these examples is to demonstrate the general procedure for applying that
particular machine learning algorithm and does not necessarily indicate that this is the correct or optimal
solution.

To run the examples for yourself, first copy the directory for the example you are interested in. You can
do this by following the links below to find the location of the associated notebooks in community data,
selecting the directory of interest (e.g., 0_linear_regression for the linear regression example) you will
need to navigate up one directory to make this selection and then selecting `Copy > My Data > Copy Here`. You
can then navigate to your `My Data` and run, explore, and modify the notebooks from your user space. If you do
not make a copy the notebooks will open as read-only and you will not be able to fully explore the examples provided.

#### Linear Regression

Linear regression seeks to find linear relationships between features in a dataset and an associated set of labels
(i.e., real values to be predicted). Linear regression is one of the simplest machine learning algorithms and
likely one that many natural hazards researchers will already be familiar with from undergraduate mathematics
coursework (e.g., statistics, linear algebra). The example for linear regression presented in this use case shows
the process of attempting to predict housing prices from house and neighborhood characteristics. The notebooks cover
how to perform basic linear regression using the raw features, combine those features (also called feature crosses) to
produce better predictions, use regularization to reduce overfitting, and use learning curves as a diagnostic tool for
machine learning problems.

<!-- ![image_of_linear_regression_training](./imgs/vantassel_and_zhang/0_linear_regression.png) -->
<img src="./imgs/vantassel_and_zhang/0_linear_regression.png">

[Linear Regression Example](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/An%20Example-Based%20Introduction%20to%20Machine%20Learning/0_linear_regression){target=_blank}

#### Random Forest

Random forests or random decision forests is an ensemble learning method for classification, regression and other tasks that operates by constructing a multitude of decision trees at training time. For classification tasks, the output of the random forest is the class selected by most trees. For regression tasks, the mean or average prediction of the individual trees is returned. Random decision forests correct for decision trees' habit of overfitting to their training set. Random forests generally outperform decision trees, but their accuracy is lower than gradient boosted trees. However, data characteristics can affect their performance.

<!-- ![image_of_5_with_label](./imgs/vantassel_and_zhang/1_random_forest.png) -->
<img src="./imgs/vantassel_and_zhang/1_random_forest.png">

[Random Forest Example](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/An%20Example-Based%20Introduction%20to%20Machine%20Learning/1_random_forest){target=_blank}

#### Neural Networks

Artificial neural networks (ANNs), usually simply called neural networks (NNs), are computing systems inspired by the biological neural networks that constitute animal brains. An ANN is based on a collection of connected units or nodes called artificial neurons, which loosely model the neurons in a biological brain. Each connection, like the synapses in a biological brain, can transmit a signal to other neurons. An artificial neuron receives a signal then processes it and can signal neurons connected to it. The "signal" at a connection is a real number, and the output of each neuron is computed by some non-linear function of the sum of its inputs. The connections are called edges. Neurons and edges typically have a weight that adjusts as learning proceeds. The weight increases or decreases the strength of the signal at a connection. Neurons may have a threshold such that a signal is sent only if the aggregate signal crosses that threshold. Typically, neurons are aggregated into layers. Different layers may perform different transformations on their inputs. Signals travel from the first layer (the input layer), to the last layer (the output layer), possibly after traversing the layers multiple times.

<!-- ![image_of_5_with_label](./imgs/vantassel_and_zhang/2_artificial_neural_network.png) -->
<img src="./imgs/vantassel_and_zhang/2_artificial_neural_network.png">

[Artificial Neural Network Example](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/An%20Example-Based%20Introduction%20to%20Machine%20Learning/2_artificial_neural_networks){target=_blank}

#### Convolutional Neural Networks

Convolutional neural networks fall under the deep learning subset of machine learning and are an effective
tool for processing and understanding image and image-like data. The convolutional neural network example will show an
image classification algorithm for automatically reading hand-written digits. The network will be provided
an image of a hand-written digit and predict a label classifying it as a number between 0 and 9. The notebooks
will show how to install Keras/TensorFlow, load a standard dataset, pre-process the data for acceptance by the
network, design and train a convolutional neural network using Keras/TensorFlow, and visualize correct and
incorrect output predictions. For those who have access to graphical processing unit (GPU) computational
resources a replica of the main notebook is provided that can run across multiple GPUs on a single machine.

<!-- ![image_of_5_with_label](./usecases/vantassel_and_zhang/2_convolutional_neural_networks.png) -->
<img src="./imgs/vantassel_and_zhang/2_convolutional_neural_networks.png">

[Convolutional Neural Network Example](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/An%20Example-Based%20Introduction%20to%20Machine%20Learning/3_convolutional_neural_networks){target=_blank}

---

## NGL Database { #brandenberg }

**Next Generation Liquefaction (NGL) Database Jupyter Notebooks**

**Brandenberg, S.J. - UCLA**<br/>
**Ulmer, K.J. - Southwest Research Institute**<br/>
**Zimmaro, P. - University of Calabria**  

The example makes use of the following DesignSafe resources:

[Jupyter notebooks on DS Juypterhub](https://www.designsafe-ci.org/rw/workspace/#!/Jupyter::Analysis){target=_blank}<br/>
[NGL Database](https://www.nextgenerationliquefaction.org/){target=_blank}<br/>

### Background
#### Citations and Licensing

* Please cite [Zimmaro, P., et al. (2019)](https://doi.org/10.21222/C2J040){target=_blank} to acknowledge the use of the NGL Database. Data in the NGL database has been gathered from [these](https://nextgenerationliquefaction.org/citations.php){target=_blank} published sources. If you use specific data in the database, please cite the original source.

* Please cite [Rathje et al. (2017)](https://doi.org/10.1061/(ASCE)NH.1527-6996.0000246){target=_blank} to acknowledge the use of DesignSafe resources.  

* This software is distributed under the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.html){target=_blank}.  


#### Description  
The Next Generation Liquefaction (NGL) Project is advancing the state of the art in liquefaction research 
and working toward providing end users with a consensus approach to assess liquefaction potential within 
a probabilistic and risk-informed framework. Specifically, NGL’s goal is to first collect and organize 
liquefaction information in a common and comprehensive database to provide all researchers with a 
substantially larger, more consistent, and more reliable source of liquefaction data than existed previously. 
Based on this database, we will create probabilistic models that provide hazard- and risk-consistent bases 
for assessing liquefaction susceptibility, the potential for liquefaction to be triggered in susceptible soils, 
and the likely consequences. NGL is committed to an open and objective evaluation and integration of data, 
models and methods, as recommended in a 2016 National Academies [report](https://www.nap.edu/catalog/23474/state-of-the-art-and-practice-in-the-assessment-of-earthquake-induced-soil-liquefaction-and-its-consequences){target=_blank}. 

The evaluation and integration of the data into new models and methods will be clear and transparent. Following these principles will ensure 
that the resulting liquefaction susceptibility, triggering, and consequence models are reliable, robust and 
vetted by the scientific community, providing a solid foundation for designing, constructing and overseeing 
critical infrastructure projects.

The NGL database is populated through a web interface at www.nextgenerationliquefaction.org/. The web interface 
provides limited capabilities for users to interact with data. Users are able to view and download data, 
but they cannot use the GUI to develop an end-to-end workflow to make scientific inferences and draw conclusions 
from the data. To facilitate end-to-end workflows, the NGL database is replicated daily to [DesignSafe](https://www.designsafe-ci.org){target=_blank}, where 
users can interact with it using Jupyter notebooks.

### Understanding the Database Schema

The NGL database is organized into tables that are related to each other via keys. To query the database, 
you will need to understand the organizational structure of the database, called the schema. The database 
schema is documented at the following URL:

[https://nextgenerationliquefaction.org/schema/index.html](https://nextgenerationliquefaction.org/schema/index.html){target=_blank}
  
### Querying Data via Jupyter Notebooks

Jupyter notebooks provide the capability to query NGL data, and subsequently process, visualize, and learn from the data in an end-to-end workflow. Jupyter notebooks run in the cloud on DesignSafe, and provide a number of benefits compared with a more traditional local mode of operation:

1. The NGL database contains many GB of data, and interating with it in the cloud does not require downloading these data files to a local file system.
2. Users can collaborate in the cloud by creating DesignSafe projects where they can share processing scripts.
3. The NGL database is constantly changing as new data is added. Working in the cloud means that the data will always be up-to-date.
4. Querying the MySQL database is faster than opening individual text files to extract data.

This documentation first demonstrates how to install the database connection script, followed by several example scripts intended to serve as starting points for users who wish to develop their own tools.

### Installing Database Connection Script
 
Connecting to a relational database requires credentials, like username, password, database name, and hostname. 
Rather than requiring users to know these credentials and create their own database connections, we have created a Python package that allows users to
query the database. This code installs the package containing the database connection script for NGL:

```python
!pip install git+https://github.com/sjbrandenberg/designsafe_db
```

### Example Queries

This notebook contains example queries to illustrate how to extract data from the NGL database into Pandas dataframe objects using Python scripts in Jupyter notebooks. The notebook contains cells that perform the following operations:

1. Query contents of the SITE table
2. Query event information and associated field observations at the Wildlife liquefaction array
3. Query cone penetration test data at Wildlife liquefaction array
4. Query a list of tables in the NGL database
5. Query information about BORH table
6. Query counts of cone penetration test data, boreholes, surface wave measurements, invasive shear wave velocity measurements, liquefaction observations, and non-liquefaction observations

[ExampleQueries.ipynb](https://jupyter.designsafe-ci.org/user/name/tree/CommunityData/NGL/ExampleQueries.ipynb){target=_blank}

### Cone Penetration Test Viewer

The cone penetration test viewer demonstrates the following:

1. Connecting to NGL database in DesignSafe
2. Querying data from SITE, TEST, SCPG, and SCPT tables into Pandas dataframes
3. Creating dropdown widgets using the ipywidgets package to allow users to select site and test data
4. Creating HTML widget for displaying metadata after a user select a test
5. Using the ipywidgets "observe" feature to call functions when users select a widget value
6. Plotting data from the selected cone penetration test using matplotlib

Cone penetration test data plotted in the notebook include tip resistance, sleeve friction, and pore pressure. In some cases, sleeve friction and pore pressure are not measured, in which case the plots are empty.

[CPT_viewer.ipynb](https://jupyter.designsafe-ci.org/user/name/tree/CommunityData/NGL/CPT_viewer.ipynb){target=_blank}


### V<sub>S</sub> (Invasive) Test Viewer

The V<sub>s</sub> (Invasive) Test Viewer demonstrates the following:

1. Connecting to NGL database in DesignSafe
2. Querying data from SITE, TEST, GINV, and GIND tables into Pandas dataframes
3. Creating dropdown widgets using the ipywidgets package to allow users to select site and test data
4. Creating HTML widget for displaying metadata after a user selects a test
5. Using the ipywidgets "observe" feature to call functions when users select a widget value
6. Plotting data from the selected invasive geophysical test using matplotlib

[VS_Invasive_viewer.ipynb](https://jupyter.designsafe-ci.org/user/name/tree/CommunityData/NGL/VS_Invasive_viewer.ipynb){target=_blank}


### October 2021 DesignSafe Webinar

The DesignSafe_Webinar_Oct2021 notebook was created during a webinar/workshop hosted by DesignSafe and the Pacific Earthquake Engineering Research (PEER) center.

The notebook demonstrates the following:

1. Connecting to NGL database in DesignSafe
2. Querying data from SITE, TEST, SCPG, and SCPT tables into Pandas dataframes
3. Plotting data from the selected test using matplotlib

Cone penetration test data plotted in the notebook include tip resistance, sleeve friction, and pore pressure. In some cases, sleeve friction and pore pressure are not measured, in which case the plots are empty.

[DesignSafe_Webinar_Oct2021.ipynb](https://jupyter.designsafe-ci.org/user/name/tree/CommunityData/NGL/DesignSafe_Webinar_Oct2021.ipynb){target=_blank}

[DesignSafe Webinar YouTube video](https://youtu.be/TNOPOU4lx5w){target=_blank}

[DesignSafe Workshop YouTube video](https://youtu.be/_nKpSqa1rso){target=_blank}

### Direct Simple Shear Laboratory Test Viewer

The Direct Simple Shear Laboratory Test Viewer is a graphical interface that plots direct simple shear tests in the NGL database. It demonstrates the following:

1. Connecting to NGL database in DesignSafe
2. Querying data from LAB, LAB_PROGRAM, SAMP, SPEC, DSSG, and DSSS tables into Pandas dataframes
3. Creating dropdown widgets using the ipywidgets package to allow users to select lab, sample, specimen, and test data
4. Creating javascript for downloading the selected direct simple shear test to a local computer
5. Plotting data from the selected direct simple shear test using matplotlib

Direct simple shear data plotted in the notebook include shear stress, shear strain, vertical stress, and vertical strain time series in the first plot. The second plot displays shear strain and void ratio versus vertical stress and void ratio, shear stress, and vertical stress ratio versus shear strain.

[DSS_Viewer.ipynb](https://jupyter.designsafe-ci.org/user/name/tree/CommunityData/NGL/DSS_Viewer.ipynb){target=_blank}

---

## MPM Landslide { #kumar }

**Material Point Method for Landslide Modeling** 

**Krishna Kumar - University of Texas at Austin**  

The example makes use of the following DesignSafe resources:

[Jupyter notebooks on DS Juypterhub](https://www.designsafe-ci.org/rw/workspace/#!/Jupyter::Analysis){target=_blank}<br/>
[CB-Geo MPM](https://www.designsafe-ci.org/rw/workspace/#!/mpm-1.0.0u1){target=_blank}<br/> 
[ParaView](https://www.designsafe-ci.org/rw/workspace/#!/Paraview::Visualization){target=_blank}<br/> 

### Background 
#### Citation and Licensing

* Please cite [Kumar et al. (2019)](https://arxiv.org/abs/1909.13380){target=_blank} to acknowledge the use of CB-Geo MPM.

* Please cite [Abram et al. (2022)](https://arxiv.org/abs/2109.02754){target=_blank} to acknowledge the use of any resources from the Oso in situ use case.

* Please cite [Rathje et al. (2017)](https://doi.org/10.1061/(ASCE)NH.1527-6996.0000246){target=_blank} to acknowledge the use of DesignSafe resources.  

* This software is distributed under the [MIT License](https://github.com/cb-geo/mpm/blob/develop/license.md){target=_blank}.


#### Description
Material Point Method (MPM) is a particle based method that represents the material as a collection of material points, and their deformations are determined by Newton’s laws of motion. The MPM is a hybrid Eulerian-Lagrangian approach, which uses moving material points and computational nodes on a background mesh. This approach is very effective particularly in the context of large deformations. 

<!-- ![MPM Algorithm](img/mpm-algorithm.png) -->
<img src="./imgs/kumar/mpm-algorithm.png">

> Illustration of the MPM algorithm (1) A representation of material points overlaid on a computational grid. Arrows represent material point state vectors (mass, volume, velocity, etc.) being projected to the nodes of the computational grid. (2) The equations of motion are solved onto the nodes, resulting in updated nodal velocities and positions. (3) The updated nodal kinematics are interpolated back to the material points. (4) The state of the material points is updated, and the computational grid is reset.

This use case demonstrates how to run MPM simulations on DesignSafe using [Jupyter Notebook](https://www.designsafe-ci.org/rw/workspace/#!/Jupyter::Analysis){target=_blank}. For more information on CB-Geo MPM visit the [GitHub repo](https://github.com/cb-geo/mpm){target=_blank} and [user documentation](https://mpm.cb-geo.com){target=_blank}.



### Input generation

Input files for the MPM code can be generated using [pycbg](https://forgemia.inra.fr/mpm-at-recover/pycbg){target=_blank}. The documentation of the input generator is [here](https://pycbg.readthedocs.io/en/latest/){target=_blank}. For more information on the input files, please refer to [CB-Geo MPM documentation](https://mpm.cb-geo.com/#/user/preprocess/input){target=_blank}. The generator is available at [PyPI](https://pypi.org/project/pycbg/){target=_blank} and an be easily installed with `pip install pycbg`. `pycbg` enables a Python generation of expected `.json` input files, offering all Python capabilities to CB-Geo MPM users for this preprocessing stage.

Typing a few Python lines is usually enough for a user to define all necessary ingredients for a MPM simulation:

 - generate the mesh (using [gmsh](https://pypi.org/project/gmsh/){target=_blank})

 - generate the particles

 - define the entity sets

 - create boundary conditions

 - set the analysis' parameters

 - setup batch of simulations (the documentation doesn't mention it yet but the function `pycbg.preprocessing.setup_batch` has a complete docstring)


#### An example 

Simulation of a settling column made with two different materials is described in [preprocess.ipynb](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/MPM){target=_blank} as follows:

```python
import pycbg.preprocessing as utl

### The usual start of a PyCBG script:
sim = utl.Simulation(title="Two_materials_column")

### Creating the mesh:
sim.create_mesh(dimensions=(1.,1.,10.), ncells=(1,1,10))

### Creating Material Points, could have been done by filling an array manually:
sim.create_particles(npart_perdim_percell=1)

### Creating entity sets (the 2 materials), using lambda functions:
sim.init_entity_sets()
lower_particles = sim.entity_sets.create_set(lambda x,y,z: z<5, typ="particle")
upper_particles = sim.entity_sets.create_set(lambda x,y,z: z>=5, typ="particle")

### The materials properties:
sim.materials.create_MohrCoulomb3D(pset_id=lower_particles)
sim.materials.create_Newtonian3D(pset_id=upper_particles)

### Boundary conditions on nodes entity sets (blocked displacements):
walls = []
walls.append([sim.entity_sets.create_set(lambda x,y,z: x==lim, typ="node") for lim in [0, sim.mesh.l0]])
walls.append([sim.entity_sets.create_set(lambda x,y,z: y==lim, typ="node") for lim in [0, sim.mesh.l1]])
walls.append([sim.entity_sets.create_set(lambda x,y,z: z==lim, typ="node") for lim in [0, sim.mesh.l2]])
for direction, sets in enumerate(walls): _ = [sim.add_velocity_condition(direction, 0., es) for es in sets]

### Other simulation parameters (gravity, number of iterations, time step, ..):
sim.set_gravity([0,0,-9.81])
nsteps = 1.5e5
sim.set_analysis_parameters(dt=1e-3, nsteps=nsteps, output_step_interval=nsteps/100)

### Save user defined parameters to be reused at the postprocessing stage:
sim.add_custom_parameters({"lower_particles": lower_particles,
                           "upper_particles": upper_particles,
                           "walls": walls})

### Final generation of input files:
sim.write_input_file()
```

This creates in the working directory a folder `Two_materials_column` where all the necessary input files are located. 

### Running the MPM Code
The CB-Geo MPM code is available on DesignSafe under `WorkSpace > Tools & Applications > Simulations`. [Launch a new MPM Job](https://www.designsafe-ci.org/rw/workspace/#!/mpm-1.0.0u1){target=_blank}. The input folder should have all the scripts, mesh and particle files. CB-Geo MPM can run on multi-nodes and has been tested to run on upto 15,000 cores. 

<!-- ![Run MPM on DS](img/mpm-ds.png) -->
<img src="./imgs/kumar/mpm-ds.png">

### Post Processing

#### VTK and ParaView

The MPM code can be set to write VTK data of particles at a specified output frequency. The input JSON configuration takes as optional `vtk` argument. The following attributes are valid options for VTK: `"stresses`, `strains`, and `velocities`. When the attribute `vtk` is not specified or an incorrect argument is defined, the code will write all available options.

```JSON
  "post_processing": {
    "output_steps": 5,
    "path": "results/",
    "vtk" : ["stresses","velocities"],
    "vtk_statevars": [
      {
        "phase_id": 0,
        "statevars" : ["pdstrain"]
      }
    ]
  }
```

> When opening particle data (*.vtp) in [ParaView](https://www.paraview.org/){target=_blank}, please use the representation `Point Gaussian` to visualise the particle data attribute.


The CB-Geo MPM code generates parallel `*.pvtp` files when the code is executed across MPI ranks. Each MPI rank will produce an attribute subdomain files, for example `stresses-0_2-100.vtp` and `stresses-1_2-100.vtp` file for stresses generated in rank 0 of 2 rank MPI processes and also a parallel `pvtp` file `stresses-100.pvtp`. The parallel `*.pvtp` file combines all the VTK outputs from different MPI ranks. 

> Use the `*.pvtp` files for visualizing results from a distributed simulation. No need to load individual subdomain `*.vtp` when visualizing results from the MPI tasks.


The parameter `vtk_statevars` is an optional VTK output, which will print the value of the state variable for the particle. If the particle does not have the specified state variable, it will be set to NaN.

You can view the results in [DesignSafe ParaView](https://www.designsafe-ci.org/rw/workspace/#!/Paraview::Visualization)

<!-- ![ParaView MPM](img/paraview-viz.png) -->
<img src="./imgs/kumar/paraview-viz.png">


#### HDF5

The CB-Geo mpm code writes HDF5 data of particles at each output time step. The HDF5 data can be read using Python / Pandas. If `pandas` package is not installed, run `pip3 install pandas`. The [postprocess.ipynb](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/MPM){target=_blank} shows how to perform data analysis using HDF5 data.

To read a particles HDF5 data, for example `particles00.h5` at step 0:

```python
### Read HDF5 data
### !pip3 install pandas
import pandas as pd
df = pd.read_hdf('particles00.h5', 'table')
### Print column headers
print(list(df))
```

The particles HDF5 data has the following variables stored in the dataframe:

```
['id', 'coord_x', 'coord_y', 'coord_z', 'velocity_x', 'velocity_y', 'velocity_z', 
'stress_xx', 'stress_yy', 'stress_zz', 'tau_xy', 'tau_yz', 'tau_xz', 
'strain_xx', 'strain_yy', 'strain_zz', 'gamma_xy', 'gamma_yz', 'gamma_xz', 'epsilon_v', 'status']
```

Each item in the header can be used to access data in the `h5` file. To print velocities (x, y, and z) of the particles:

```python
### Print all velocities
print(df[['velocity_x', 'velocity_y','velocity_z']])
```

```
   velocity_x  velocity_y  velocity_z
0         0.0         0.0    0.016667
1         0.0         0.0    0.016667
2         0.0         0.0    0.016667
3         0.0         0.0    0.016667
4         0.0         0.0    0.033333
5         0.0         0.0    0.033333
6         0.0         0.0    0.033333
7         0.0         0.0    0.033333
```

#### Oso landslide with in situ visualization

In situ visualization is a broad approach to processing
simulation data in real-time - that is, wall-clock time, as the
simulation is running. Generally, the approach is to provide
data extracts, which are condensed representations of the data
chosen for the explicit purpose of visualization and computed
without writing data to external storage. Since these extracts
(often images) are vastly smaller than the raw simulation itself,
it becomes possible to save them at a far higher temporal
frequency than is practical for the raw data, resulting in
substantial gains in both efficiency and accuracy. In situ
visualization allows simulations to export complete datasets
only at the temporal frequency necessary for economic check-
point/restart.

We leverage in situ viz with MPM using [TACC Galaxy](https://github.com/TACC/galaxy){target=_blank}.

<!-- ![In situ viz](img/oso-mpm-viz.png) -->
<img src="./imgs/kumar/oso-mpm-viz.png">

> In situ rendering of the Oso landslide with CB-Geo MPM of 5 million material points running 16 MPI tasks for compute + 8 MPI tasks for visualization.

---

## ADCIRC Use Case - Using Tapis and Pylauncher for Ensemble Modeling in DesignSafe { #dawson }

**Clint Dawson, University of Texas at Austin**  
**Carlos del-Castillo-Negrete, University of Texas at Austin**  
**Benjamin Pachev, University of Texas at Austin**  

The following use case presents an example of how to leverage the Tapis API to run an ensemble of HPC simulations. The specific workflow to be presented consists of running ADCIRC, a storm-surge modeling application available on DesignSafe, using the parametric job launcher pylauncher. All code and examples presented are meant to be be executed from a Jupyter Notebook on the DesignSafe platform and using a DesignSafe account to make Tapis API calls. Accompanying jupyter notebooks for this use case can be found in the ADCIRC folder in [Community Data](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/ADCIRC){target=_blank}.

Learn more: [Jupyter notebooks on DS Juypterhub](https://www.designsafe-ci.org/rw/workspace/#!/Jupyter::Analysis){target=_blank}.

### Background 

#### Citation and Licensing

* Please cite [Rathje et al. (2017)](https://doi.org/10.1061/(ASCE)NH.1527-6996.0000246){target=_blank} to acknowledge the use of DesignSafe resources.  

* This software is distributed under the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.html){target=_blank}.  

#### ADCIRC

For more information on running ADCIRC and documentation, see the following links:

* [ADCIRC Wiki](https://wiki.adcirc.org/wiki/Main_Page){target=_blank}
* [ADCIRC Web Page](https://adcirc.org/){target=_blank}

ADCIRC is available as a standalone app accesible via the [DesignSafe front-end](https://www.designsafe-ci.org/rw/workspace/#!/ADCIRC::Simulation){target=_blank}.

#### Tapis

Tapis is the main API to control and access HPC resources with. For more resources and tutorials on how to use Tapis, see the following:

* [Tapis CLI](https://tapis-cli.readthedocs.io/en/latest/contents.html){target=_blank}
* [AgavePy](https://tacc-cloud.readthedocs.io/projects/agave/en/latest/){target=_blank}
* [DesignSafe Webinar](https://www.youtube.com/watch?v=-_1lNWW8CAg&t=1854s&ab_channel=NHERIDesignSafe-CIMedia){target=_blank}

To initialize tapis in our jupyter notebook we use AgavePy. Relies on `tapis auth init --interactive` being run from a terminal first upon initializing your Jupyter server.

<!-- ![caption](img/TapisImage.png) -->
<img src="./imgs/dawson/TapisImage.png">

> Initialize Tapis from within a shell in a jupyter session. A shell can be launched by going to File -> New -> Terminal.

Once this is complete, you can now run from a code cell in your jupyter session the following to load your AgavePy credentials:

```python
from agavepy.agave import Agave

ag = Agave.restore()
```

#### Pylauncher

[Pylauncher](https://github.com/TACC/pylauncher){target=_blank} is a parametric job launcher used for launching a collection of HPC jobs within one HPC job. By specifying a list of jobs to execute in either a CSV or json file, pylauncher manages resources on a given HPC job to execute all the jobs using the given nodes. Inputs for pylauncher look something like (for csv files, per line):

```
num_processes,<pre process command>;<main parallel command>;<post process command>
```

The pre-process and post-process commands are executed in serial, while the main command is executed in parallel using the appropriate number of processes. Note pre and post process commands should do light file management and movement and no computationally intensive tasks.

### Tapis Pylauncher App

Overview of this section:

* Getting the Appication
* App Overview
* Staging Files
* Example Ensemble ADCIRC RUN

#### Accessing the Application

The code for the tapis application is publicly accessible at [https://github.com/UT-CHG/tapis-pylauncher](https://github.com/UT-CHG/tapis-pylauncher){target=_blank}. A public Tapis application exists using [version 0.0.0](https://github.com/UT-CHG/tapis-pylauncher/tree/v0.0.0){target=_blank} of the application deployed under the ID `pylauncher-0.0.0u1 `. 

<!-- ![caption](img/pylauncher_app.png) -->
<img src="./imgs/dawson/pylauncher_app.png">
> The publicly available pylauncher application should be available to all users via the CLI/API, but will not be visible via DesignSafe's workspaces front-end.

#### Basic Application Overview

The tapis-pylauncher application loops through iterations of calling pylauncher utility, using as input a file generated by a user defined generator shell script `generator.sh`. A simplified excerpt of this main execution loop is as follows:

```bash
### Main Execution Loop:
###   - Call generator script.
###   - Calls pylauncher on generated input file. Expected name = jobs_list.csv
###   - Repeats until generator script returns no input file for pylauncher.
ITER=1
while :
do
  # Call generator if it exists script
  if [ -e generator.sh ]
  then
    
    ./generator.sh ${ITER} $SLURM_NPROCS $generator_args
  fi

  # If input file for pylauncher has been generated, then start pylauncher
  if [ -e ${pylauncher_input} ]
  then
    python3 launch.py ${pylauncher_input} >> pylauncher.log
  fi

  ITER=$(( $ITER + 1 ))
done
```

Note how a generator script is not required, with a static pylauncher file, of input name determined as a job parameter `pylauncher_input`, being sufficient to run a single batch of jobs. 

All input scripts and files for each parametric job should be zipped into a file and passed as an input to the pylauncher application. Note that these files shouldn't be too large and shouldn't contain data as tapis will be copying them around to stage and archive jobs. Data should ideally be pre-staged and not part of the zipped job inputs.

#### Staging Files 

For large scale ensemble simulations, it is best to stage individual ADCIRC run files in a project directory that execution systems can access before-hand so that Tapis itself isn't doing the moving and staging of data. 

The corresponding TACC base path to your project with a particular id can be found at `/corral-repl/projects/NHERI/projects/[id]/`. To find the ID for your project, you can just look at the URL of your project directory in designsafe:

<!-- ![caption](img/project_dir_2.png) -->
<img src="./imgs/dawson/project_dir_2.png">
> TX FEMA storms project directory. Note how the URL on top contains the Project ID corresponding to the path on corral that login nodes on TACC systems should have access to.

From a login node then (assuming this is done on stampede2), the data can be staged onto a public directory on `/work` as follows. First we create a public directory in our workspace where the data will be staged:

```bash
(base) login2.stampede2(1020)$ cd $WORK
(base) login2.stampede2(1022)$ cd ..
(base) login2.stampede2(1023)$ ls
frontera  lonestar  longhorn  ls6  maverick2  pub  singularity_cache  stampede2
(base) login2.stampede2(1024)$ pwd
/work2/06307/clos21
(base) login2.stampede2(1026)$ chmod o+x
(base) login2.stampede2(1027)$ mkdir -p pub
(base) login2.stampede2(1028)$ chmod o+x pub
(base) login2.stampede2(1029)$ cd pub
(base) login2.stampede2(1030)$ mkdir -p adcirc/inputs/ShinnecockInlet/mesh/test
```

Next we copy the data from our project directory to the public work directory 

```bash
(base) login2.stampede2(1039)$ cp /corral-repl/projects/NHERI/projects/586025607221276180-242ac118-0001-012/ShinnecockInletMesh/* adcirc/inputs/ShinnecockInlet/mesh/test/
```

Finally we change the ownership of the files and all sub-directories where the data is staged to be publicly accessible by the TACC execution systems. Which we can check via the file permissions of the final directory we created with the staged data:


```bash
(base) login2.stampede2(1040)$ chmod -R a-x+rX adcirc
(base) login2.stampede2(1042)$ cd adcirc/inputs/ShinnecockInlet/mesh/test
(base) login2.stampede2(1043)$ pwd
/work2/06307/clos21/pub/adcirc/inputs/ShinnecockInlet/mesh/test
(base) login2.stampede2(1045)$ ls -lat
total 360
-rw-r--r-- 1 clos21 G-800588 341496 May 13 17:27 fort.14
-rw-r--r-- 1 clos21 G-800588  15338 May 13 17:27 fort.15
drwxr-xr-x 2 clos21 G-800588   4096 May 13 17:26 .
drwxr-xr-x 4 clos21 G-800588   4096 May 13 17:24 ..
```

The directory `/work2/06307/clos21/pub/adcirc/inputs/ShinnecockInlet/mesh/test` now becomes the directory we can use in our pylauncher configurations and scripts to access the data to be used for the ensemble simulations. 

#### Example Ensemble Run: Shinnecock Inlet Test Grid Performance

For an example of how to use the tapis-pylauncher application, we refer to the accompanying notebook in the [ADCIRC Use Case folder](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/ADCIRC){target=_blank} in the Community Data directory.

The notebook goes over how to run ADCIRC on the [Shinnecock Inlet Test Grid](https://adcirc.org/home/documentation/example-problems/shinnecock-inlet-ny-with-tidal-forcing-example/){target=_blank}. 

<!-- ![caption](img/si_mesh.png) -->
<img src="./imgs/dawson/si_mesh.png">
> Shinnecock Inlet Test Grid. ADCIRC solves the Shallow Water Equations over a Triangular Mesh, depicted above.

An ensemble of adcirc simulations using different amounts of parallel processes on the same grid is configured, and output from active and archived job runs is analyzed to produced bar plots of run-time versus number of processors used for the Shinneocock Inlet Grid.

<!-- ![caption](img/si_runtimes.png) -->
<img src="./imgs/dawson/si_runtimes.png">

> Total Runtime for ADCIRC on the Shinnecock Inlet grid pictured above using different number of processors on stampede2.

---

## ADCIRC Use Case - Creating an ADCIRC DataSet on DesignSafe { #dawson1 }

**Clint Dawson, University of Texas at Austin**

**Carlos del-Castillo-Negrete, University of Texas at Austin**

**Benjamin Pachev, University of Texas at Austin**

### Overview

The following use case demonstrates how to compile an ADCIRC data-set of hind-casts on DesignSafe. This workflow involves the following steps:

1. Finding storm-surge events.
2. Compiling meteorological forcing for storm surge events.
3. Running ADCIRC hind-casts using meteorological forcing.
4. Organize and publish data on DesignSafe, obtaining a DOI for your research and for others to cite your data when re-used. 

The workflow presented here is a common one performed for compiling ADCIRC data-sets for a variety of purposes, from Uncertainty Quantification to training Surrogate Models. Whatever your application is of ADCIRC data, publishing your dataset on DesignSafe allows you to re-use your own data, and for others to use and cite your data as well. 

<aside>
💡 Note step 3 will not be covered explicitly in this use-case but rather is covered in the use case on [running ensemble simulations](https://www.designsafe-ci.org/ds-use-case/dawson/usecase/). Refer to that use case for more documentation on how to run ensembles.

</aside>

To see a couple of Example data-sets, and associated published research using the datasets, see the following examples:

- [Texas FEMA Storms](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-2968) - Synthetic storms for assessing storm surge risk. Used recently in [Pachev et. al 2023](https://arxiv.org/abs/2204.13168) to train a surrogate model for ADCIRC for the coast of Texas.
- [Alaska Storm Surge Events](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-3887) - Major storm surge events for the coast of Alaska. Also used in [Pachev et. al 2023](https://arxiv.org/abs/2204.13168) for creating a surrogate model for the coast of Alaska.

An accompanying jupyter notebook for this use case can be found in the ADCIRC folder in [Community Data](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/ADCIRC) under the name `Creating an ADCIRC DataSet.ipynb`.

Learn more: [Jupyter notebooks on DS Juypterhub](https://www.designsafe-ci.org/rw/workspace/#!/Jupyter::Analysis).

### Background

#### Citation and Licensing

- Please cite [Rathje et al. (2017)](https://doi.org/10.1061/(ASCE)NH.1527-6996.0000246) to acknowledge the use of DesignSafe resources.
- This software is distributed under the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.html).

### ADCIRC Overview

For more information on running ADCIRC and documentation, see the following links:

- [ADCIRC Wiki](https://wiki.adcirc.org/Main_Page)
- [ADCIRC Web Page](https://adcirc.org/)

ADCIRC is available as a standalone app accessible via the [DesignSafe front-end](https://www.designsafe-ci.org/rw/workspace/#!/ADCIRC::Simulation).

#### ADCIRC Inputs

An ADCIRC run is controlled by a variety of input files that can vary depending on the type of simulation being run. They all follow the naming convention fort.# where the # determines the type of input/output file. For a full list of input files for ADCIRC see the [ADCIRC documentation](https://adcirc.org/home/documentation/users-manual-v50/input-file-descriptions/). At a high level the inputs compose of the following:

- Base Mesh input files - Always present for a run. It will be assumed for the purpose of this UseCase that the user starts from a set of mesh input files.
    - fort.14 - ADCIRC mesh file, defining the domain and bathymetry.
    - fort.15 - ADCIRC control file, containing (most) control parameters for the run. This includes:
        - Solver configurations such as time-step, and duration of simulation.
        - Output configurations, including frequency of output, and nodal locations of output.
        - Tidal forcing - At a minimum, ADCIRC is forced using tidal constituents.
    - Additional control files (there are a lot more, just listing the most common here):
        - fort.13 - Nodal attribute file
        - fort.19, 20 - Additional boundary condition files.
- Meteorological forcing files - Wind, pressure, ice coverage, and other forcing data for ADCIRC that define a particular storm surge event.
    - fort.22 - Met. forcing control file.
    - fort.221, fort.222, fort.225, fort.22* - Wind, pressure, ice coverage (respective), and other forcing files.

**The focus of this use case is to compile sets of storm surge events, each comprising different sets of forcing files, for a region of interest defined by a set of mesh control files.**

#### PyADCIRC

The following use case uses the [pyADCIRC python library](https://github.com/UT-CHG/pyadcirc) to manage ADCIRC input files and get data from the data sources mentioned above. The library can be installed using pip:

```bash
$ pip install pyadcirc
```

The `pyadcirc.data` contains functions to access two data sources in particular. First is [NOAAs tidal gauge data](https://tidesandcurrents.noaa.gov/) for identifying storm surge. They provide a [public API](https://api.tidesandcurrents.noaa.gov/api/prod/) for accessing their data, for which pyADCIRC provides a python function and CLI (command line interface) wrapper around. The tidal signal at areas of interest over our domain will allow us to both identify potential storm surge events, and verify ADCIRC hind-casts with the real observations. 

<!-- ![NOAA API CLI provided by the pyadcirc library. The `noaa_data` executable end point is created whenever pyadcirc is installed as library in an environment, providing a convenient CLI for interacting with the NOAA API that is well documented.](img/noaa_api.png) -->
<img src="./imgs/dawson/noaa_api.png">

NOAA API CLI provided by the pyadcirc library. The `noaa_data` executable end point is created whenever pyadcirc is installed as library in an environment, providing a convenient CLI for interacting with the NOAA API that is well documented.

The second data source is [NCAR’s CFSv1/v2 data sets](https://api.tidesandcurrents.noaa.gov/api/prod/) for retrieving meteorological forcing files for identify storm surge events. An NCAR account is required for accessing this dataset. Make sure to go to NCAR's website to request an account for their data. You'll need your login information for pulling data from their repositories. Once your account is set-up, you'll want to store your credentials in a json file in the same directory as this notebook, with the name `.ncar.json`.
For example the file may look like:

```json
{"email": "user@gmail.com", "pw": "pass12345"}
```

### Example Notebook: Creating ADCIRC DataSet

The example within this use case comprises of 4 main steps to create a data-set starting from a set of ADCIRC control input files. The notebook can be found at in the [ADCIRC Use Case’s](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/ADCIRC) folder with the name `Creating an ADCIRC DataSet.ipynb` . Note that the notebook should be copied to the users `~/MyData` directory before being able to use it (these steps are covered in the notebook). 

The notebook covers the first two steps of this use case, namely identifying storm surge events and creating base input data sets to run using ADCIRC. We briefly overview the notebook’s results below. 

#### Identifying storm surge events

The first stage of the notebook involves using the NOAA API wrapper provided by pyADCIRC to find storm surge events by looking at tidal gauge data in a region of interest. An example of an identified storm surge event, corresponding to Typhoon Merbok that hit the coast of Alaska in September 2022, is shown below.

<!-- ![Result of identification algorithm for the range of dates containing Typhoon Merbok. The algorithm operates by defining a trigger threshold, along with other heuristics, by which to group distinct groups of storm surge events.](img/merbok.png) -->
<img src="./imgs/dawson/merbok.png">

Result of identification algorithm for the range of dates containing Typhoon Merbok. The algorithm operates by defining a trigger threshold, along with other heuristics, by which to group distinct groups of storm surge events.

The algorithm presented is run on the storms that see the most frequent storm-surge activity over the coast of Alaska, Nome, Red Dog Dock, and Unalakleet. All events are compiled to give date ranges of storm surge events to produce ADCIRC hind-casts for. 

#### Getting data forcing data

Having identified dates of interest, the notebook then uses the `ncar` library endpoint to pull meteorological forcing for the identified potential storm surge events. These are then merged with ADCIRC base input files (available at the published data set), to create input runs for an ensemble of ADCIRC simulations, as covered in the use case documentation on [running ADCIRC ensembles in DesignSafe](https://www.designsafe-ci.org/ds-use-case/dawson/usecase/).

### Organizing Data for publishing

Having a set of simulated ADCIRC hind-casts for one or more events, along with any additional analysis performed on the hind-cast data, the true power of DesignSafe as a platform can be realized by publishing your data. Publishing your data allows you and other researchers to reference its usage with a DOI. For ADCIRC, this is increasingly useful as more Machine Learning models are being built using ADCIRC simulation data.

This section will cover how to organize and publish an ADCIRC hind-cast dataset as created above. Note this dataset presented in this use case is a subset of the Alaska Storm Surge Data set that has been published, so please refrain from re-publishing data. 

The steps for publishing ADCIRC data will be as follows

1. Create a project directory in the [DesignSafe data repository](https://www.designsafe-ci.org/data/browser/).
2. Organize ADCIRC data and copy to project directory.
3. Curate data by labeling and associating data appropriately.

While DesignSafe has a whole [guide](https://www.designsafe-ci.org/rw/user-guides/data-curation-publication/) on how to curate and publish data, we note that the brief documentation below gives guidance on how to apply these curation guidelines to the particular case of ADCIRC simulation data. 

#### Setting up Project Directory

First you’ll want to create a new project directory in the [DesignSafe data repository](https://www.designsafe-ci.org/data/browser/).

<!-- ![Creating a new project in DesignSafe’s Data Depot.](img/project.png) -->
<img src="./imgs/dawson/project.png">

Creating a new project in DesignSafe’s Data Depot.

Next we want to move ADCIRC inputs/outputs from your Jupyter instance where they were created into this project directory. We note that you must first restart your server if your moving data to a project directory that didn’t exist at the time from your server started, as that project directory won’t be in your `~/projects` directory. Furthermore you’ll want to organize your folder structure in the command line before moving it to the project directory. See below for the recommended folder structure and associated data curation labels for publishing ADCIRC datasets. 

```bash
.
├── Report.pdf -> Label as Report - PDF summarizing DataSet
├── mesh -> Label as Simulation Input (ADCIRC Mesh Type)
│   ├── fort.13
│   ├── fort.14
│   ├── fort.15
│   ├── fort.22
│   ├── fort.24
│   └── fort.25
├── inputs -> Label as Simulation Input (ADCIRC Meteorological Type)
│   ├── event000
│   │   ├── fort.15
│   │   ├── fort.221
│   │   ├── fort.222
│   │   └── fort.225
│   └── event001
│       ├── fort.15
│       ├── fort.221
│       ├── fort.222
│       └── fort.225
└── outputs -> Label as Simulation Output (ADCIRC Output)
    ├── event000
    │   ├── fort.61.nc
    │   ├── ...
    │   ├── maxele.63.nc
    │   ├── maxrs.63.nc
    │   ├── maxvel.63.nc
    │   ├── maxwvel.63.nc
    │   └── minpr.63.nc
    └── event001
        ├── fort.61.nc
        ├── ...
        ├── maxele.63.nc
        ├── maxrs.63.nc
        ├── maxvel.63.nc
        ├── maxwvel.63.nc
        └── minpr.63.nc
└── Analysis ->  Label as Analysis  any notebooks/code/images.
    ├── OverviewNotebook.ipynb - Analysis over all events.
    ├── event000
    │   ├── ExampleNotebook.ipynb - Event specific analysis.
    │   ├── ...
```

<!-- ![Example data relation diagram for an ADCIRC Simulation DataSet](img/curation.png) -->
<img src="./imgs/dawson/curation.png">

Example data relation diagram for an ADCIRC Simulation DataSet

---

## Integration of QGIS and Python Scripts to Model and Visualize Storm Impacts on Distributed Infrastructure Systems { #padgett }

**Catalina González-Dueñas and Jamie E. Padgett - Rice University**  
**Miku Fukatsu - Tokyo University of Science**

This use case study shows how to automate the extraction of storm intensity parameters at the structure level to support regional risk assessment studies. This example leverages QGIS and python scripts to obtain the surge elevation and significant wave height from multiple storms at specific building locations. The case study also shows how to visualize the outputs in QGIS and export them as a web map. The following DesignSafe resources are leveraged in this example: 

[Geospatial data analysis and Visualization on DS - QGIS](https://www.designsafe-ci.org/rw/workspace/#!/qgis-duvd-3.16.3u2){target=_blank}<br/>
[Jupyter notebooks on DS Jupyterhub](https://www.designsafe-ci.org/rw/workspace/#!/Jupyter::Analysis){target=_blank}

### Background 

#### Citation and Licensing

* Please cite [González-Dueñas and Padgett (2022)](https://doi.org/10.17603/ds2-3zdj-493){target=_blank} to acknowledge the use of any resources from this use case.

* Please cite [Rathje et al. (2017)](https://doi.org/10.1061/(ASCE)NH.1527-6996.0000246){target=_blank} to acknowledge the use of DesignSafe resources.  

* This software is distributed under the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.html){target=_blank}.  

#### Description 

This case study aims to support pre-data processing workflows for machine learning applications and regional risk analysis. When developing predictive or surrogate models for the response of distributed infrastructure and structural systems, intensity measures (IMs) need to be associated with each component of the system (e.g., buildings, bridges, roads) under varying hazard intensity or different hazard scenarios. To accomplish this and given the different resolutions of the hazard and infrastructure data, geographical tools need to be used to associate the intensity measures with the distributed infrastructure or portfolio components. In this case study, python codes were developed to automate geospatial analysis and visualization tasks using QGIS. 

This case study is divided into four basic components:

> 1. Introduction and workflow of analysis
> 2. Storm data analysis using Jupyter notebooks
> 3. Geospatial analysis via QGIS
> 4. Visualization of the outputs

### Introduction and workflow of analysis

In this example, the automated procedure to extract intensity measures is leveraged to obtain the maximum surge elevation and significant wave height at specific house locations for different storm scenarios. The surge elevation and the significant wave height are important parameters when evaluating the structural performance of houses under hurricane loads, and have been used to formulate different building fragility functions (e.g., [Tomiczek, Kennedy, and Rogers (2014)](https://doi.org/10.1061/(ASCE)WW.1943-5460.0000212){target=_blank}; [Nofal et al. (2021)](https://doi.org/10.1061/(ASCE)ST.1943-541X.0003144)){target=_blank}. As a proof of concept, the intensity measures (i.e., surge elevation and significant wave height) will be extracted for 3 different storms using the building portfolio of Galveston Island, Texas. The storms correspond to synthetic variations of storm FEMA 33, a probabilistic storm approximately equivalent to a 100-year return period storm in the Houston-Galveston region. The storms are simulated using ADCIC+SWAN numerical models of storm FEMA33, with varying forward storm velocity and sea-level rise. For more details on the storm definition, the user can refer to [Ebad et al. (2020)](https://doi.org/10.3389/fbuil.2020.00104){target=_blank} and [González-Dueñas and Padgett (2021)](https://doi.org/10.3389/fbuil.2021.690715). 

In order to relate the storm data to the building portfolio data, it is necessary to convert the storm outputs to a surface data and then extract at the locations of interest. First, the output files from the ADCIRC+SWAN simulation corresponding to the surge elevation (file fort.63.nc) and significant wave height (file swan_HS.63.nc) need to be converted to a format that can be exported to a GIS (Geographical Information System) software. This pre-processing of the storm data provides the surge elevation and significant wave height in each of the grid points used to define the computational domain of the simulation in a vector data format. Since these points (i.e., ADCIRC+SWAN grid) have a different spatial resolution than the infrastructure system under analysis (i.e., building locations), the storm outputs are converted to a surface data format and then the value at each building location is extracted from it. This is repeated for each one of the storms under analysis and then the ouput data (IMs at each building location) is exported as a csv file. This file is used to support further analysis in the context of risk assessment or machine learning applications, as predictors or response of a system. The workflow of analysis is as follows:

<!-- ![caption](img/Fig1_Updated.jpg) -->
<img src="./imgs/padgett/Fig1_Updated.jpg"> 

### Storm data analysis using Jupyter notebooks

To read the ADCIRC+SWAN storm simulation outputs, two Jupyter notebooks are provided, which can extract the maximum surge elevation and significant wave height values within a particular region. The [Read_Surge](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/QGIS/Read_ADCIRC){target=_blank} Jupyter notebook takes as an input the *fort.63.nc* ADCIRC+SWAN output file and provides a csv file with the maximum surge elevation value at each of the points within the region specified by the user. Specifying a region helps to reduce the computational time and to provide the outputs only on the region of interest for the user. Similarly, the [Read_WaveHS](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/QGIS/Read_ADCIRC){target=_blank} Jupyter notebook, reads the *swan_HS.63.nc* file and provides the maximum significant wave height in the grid points of the specified area. 

To use the Jupyter notebooks, the user must:

1. Create a new folder in *My data* and copy the Jupyter notebooks from the *Community Data* folder
2. Ensure that the *fort.63.nc* and *swan_HS.63.nc* are located in the same folder as the Jupyer notebooks
3. Change the coordinates of the area of interest in [6]:

``` python
### Example of a polygon that contains Galveston Island, TX (The coordinates can be obtained from Google maps)
polygon = Polygon([(-95.20669, 29.12035), (-95.14008, 29.04294), (-94.67968, 29.35433), (-94.75487, 29.41924), (-95.20669, 29.12035)])
```
4. Modify the name of the output csv file in [8] (if desired):
``` python
### In this example, the output name of the csv surge elevation file is "surge_max"
with open('surge_max.csv','w') as f1:
```
Once the Jupyter notebooks run, two output csv files containing the maximum surge elevation and significant wave height in the area of interest will be generated and saved in your folder. The first two columns of the csv file correspond to the geographical coordinates (i.e., longitud and latitude) of the grid point, and the third one corresponds to the respective intensity measure (maximum surge elevation or significant wave height).

### Geospatial analysis via QGIS

#### Opening a QGIS session in DesignSafe

To access QGIS via DesignSafe go to [Workspace -> Tools & Applications -> Visualization -> QGIS Desktop 3.16](https://www.designsafe-ci.org/rw/workspace/#!/qgis-duvd-3.16.3u2){target=_blank}. You will be prompted the following window:

<!-- ![Fig2](img/Fig2_Updated.jpg) -->
<img src="./imgs/padgett/Fig2_Updated.jpg">

Change the desktop resolution according to your screen size preferences, provide a name for your job, and hit *Launch* when you finish. After a couple of minutes your interactive session will start, click *Connect*:

<!-- ![Fig3](img/Fig3_Updated3.jpg) -->
<img src="./imgs/padgett/Fig3_Updated3.jpg">

You will be directed to an interactive QGIS session, create a new project by clicking the *New Project* icon or press *Ctrl+N*:

<!-- ![Fig4](img/Fig4.jpg) -->
<img src="./imgs/padgett/Fig4.jpg">

#### Modify user inputs and run the python script

A python script called [IM_Extract](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/QGIS/IM_Extract){target=_blank} is provided to extract the desired IMs at specific locations. Follow these steps to use this code:

1. Create a folder to store the outputs of the analysis in your *My data* folder in DS
2. Provide a csv file that specifies the points for which you wish to obtain the intensity measures. This file should be in the following format (see the [*Complete_Building_Data*](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/QGIS/IM_Extract){target=_blank} file for an example of the building stock of Galveston Island, TX):
    a. The first column should contain an ID (e.g., number of the row)
    b. The second column corresponds to the longitude of each location
    c. The third column corresponds to the latitude of each location
4. Create a folder named *Storms* in which you will store the data fromt the different storms
5. Within the *Storms* folder, create a folder for each one of the storms you wish to analyze. Each folder should contain the output csv files from the ADCIRC+SWAN simulations (e.g., surge_max.csv, wave_H_max.csv). In our case study, we will use three different [storms](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/QGIS/IM_Extract/Storms){target=_blank}.

Once the folder of analysis is created in your Data Depot, we can proceed to perform the geospatial analysis in QGIS. Open the python console within QGIS, click the *Show Editor* button, and then click *Open Script*:

<!-- ![Fig5](img/Fig5.jpg) -->
<img src="./imgs/padgett/Fig5.jpg">

In the file explorer, go to your data folder and open the [IM_Extract](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/QGIS/IM_Extract){target=_blank} script:

<!-- ![Fig6](img/Fig6_Updated.jpg) -->
<img src="./imgs/padgett/Fig6_Updated.jpg">

Modify the path of the folder for your own data folder in *line 17*:
``` python
path= r"/home/ubuntu/mydata/**name of your folder**"
```
If desired, you can change the interpolation method *(line 75 of the script)* and the cell size used for the interpolation *(line 22 of the script)*:

``` python
### Line 22
    # 2. Change cell size (defalt is 0.001)
    cell_size = 0.001
### Line 75
    # Interpolation method
      alg = "qgis:tininterpolation"
```

Once you finish the modifications, click *Run Script*.

### Visualization of the outputs

Once the script finish running, the time taken to run the script will appear in the python console and the layers created in the analysis will be displayed in the *Layers* section (left-bottom window) in QGIS:

<!-- ![Fig7](img/Fig7.jpg) -->
<img src="./imgs/padgett/Fig7.jpg">

Right click one of the layers, and go to ***Properties -> Symbology*** to modify the appearance of the layer (e.g., color, size of the symbol):

<!-- ![Fig8](img/Fig8.jpg) -->
<img src="./imgs/padgett/Fig8.jpg">

Click *OK* when you finish the modifications. You will be directed to the main window again, go to the the toolbar and click ***Plugins -> Manage and Install Plugins***. In the search tab type ***qgis2web***, select the plugin, and click ***Install Plugin***:

<!-- ![Fig11](img/Fig11.jpg) -->
<img src="./imgs/padgett/Fig11.jpg">

Go to ***Web -> qgis2web -> Create web map***:

<!-- ![Fig10](img/Fig10.jpg) -->
<img src="./imgs/padgett/Fig10.jpg">

In the new window, select the layer(s) that you wish to export in the  ***Layers and Groups*** tab, and modify the appearance of the map in the ***Appearance*** tab. Then go to the ***Export*** tab and click in the icon next to ***Export to folder*** and select your working data folder:

<!-- ![Fig14](img/Fig14.jpg) -->
<img src="./imgs/padgett/Fig14.jpg">

Once you finish, a new web explorer window will open in your interactive session with the exported QGIS map:

<!-- ![FigMap](img/FigMap.jpg) -->
<img src="./imgs/padgett/FigMap.jpg">

Go to your working folder in the Data Depot, a new folder containing the web map will be created. You can download the folder and double click ***Index***, the web map you created will be displayed in the web explorer of your local computer:

<!-- ![Fig15](img/Fig15.jpg) -->
<img src="./imgs/padgett/Fig15.jpg">


---
## CFD Simulations using the Jupyter Notebooks { #kareem }

**Fei Ding, Ahsan Kareem, and Dae Kun Kwon - [NatHaz Modeling Laboratory](https://nathaz.nd.edu/){target=_blank}, University of Notre Dame**

OpenFOAM is the free, open source CFD software and is popularly used for computationally establishing wind effects on structures. To help beginners overcome the challenges of the steep learning curve posed by OpenFOAM and provide users with the capabilities of generating repetitive jobs and advanced functions, this use case example presents the work to script the workflow for CFD simulations using OpenFOAM in the Jupyter Notebooks. The developed two Jupyter Notebooks can aid in determining inflow conditions, creating mesh files for parameterized building geometries, and running the selected solvers. They can also contribute to the education for CFD learning as online resources, which will be implemented in the [DesignSafe](https://www.designsafe-ci.org){target=_blank}.

All files discussed in this use case are shared at [Data Depot > Community Data](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/OpenFOAM){target=_blank}. It is recommended that users make a copy of the contents to their directory (My Data) for tests and simulations. The example makes use of the following DesignSafe resources:

[OpenFoam](https://www.designsafe-ci.org/rw/workspace/#!/OpenFOAM::Simulation){target=_blank}<br/> 
[ParaView](https://www.designsafe-ci.org/rw/workspace/#!/Paraview::Visualization){target=_blank}<br/>
[Jupyter notebooks on DS Juypterhub](https://www.designsafe-ci.org/rw/workspace/#!/Jupyter::Analysis){target=_blank}<br/>

### Background
#### Citation and Licensing

* Please cite [Ding and Kareem (2021)](https://tigerprints.clemson.edu/cgi/viewcontent.cgi?article=1025&context=aawe){target=_blank} to acknowledge the use of any resources from this use case.
* Please cite [Rathje et al. (2017)](https://doi.org/10.1061/(ASCE)NH.1527-6996.0000246){target=_blank} to acknowledge the use of DesignSafe resources.
* This software is distributed under the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.html){target=_blank}.

### OpenFOAM with the Jupyter Notebook for creating input environments

The overall concept of the OpenFOAM workflow may be expressed as physical modeling-discretisation-numerics-solution-visualization as shown in Fig. 1.

<!-- ![fig1](img/fig1.png) -->
<img src="./imgs/kareem/fig1.png">
<p align="center">Fig. 1 OpenFOAM workflow for CFD modeling</p>

#### Prerequisite to run OpenFOAM simulation

To run a CFD simulation using OpenFOAM, three directories (and associated input files) named `0`, `constant` and `system` should be predefined by users. If the root directory of the directories is DH1_run, then it has the following directory structure [1].
```
DH1_run		   # a root directory
  - 0          # initial and boundary conditions for CFD simulations
  - constant   # physical properties and turbulence modeling
  - system     # run-time control (parallel decomposition) and solver
```
The commonly used solvers for turbulent flows include `pisoFoam` which is a transient solver for incompressible and turbulent flows and `simpleFoam` as a steady-state solver. Parallel computations in OpenFOAM allow the simulation to run in the distributed processors simultaneously.

#### Introducing advanced utilities to CFD modeling using PyFoam

Jupyter Notebooks can provide an interpretable and interactive computing environment to run a CFD simulation using the OpenFOAM. To introduce such flexibilities and bring maximum automation to CFD modeling using the OpenFOAM, an OpenFOAM library named `PyFoam` [2] can be used in the Jupyter Notebooks, which can introduce advanced tools for CFD modeling. With the aid of the PyFoam, the goal is to achieve an end-to-end simulation in which the Jupyter Notebooks can manipulate dictionaries in OpenFOAM based on the user's input as regular Python dictionaries without looking into the OpenFOAM C++ libraries (Fig. 2).

<!-- ![fig2](img/fig2.png) -->
<img src="./imgs/kareem/fig2.png">
<p align="center">Fig. 2 Schematic of an end-to-end flow simulation implemented in the Jupyter Notebooks</p>

##### Jupyter Notebook example for advanced utilities

For better understanding, A Jupyter Notebook example, [Jupyter_PyFoam.ipynb](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/OpenFOAM/PyFoam_Jupyter/){target=_blank}, is provided that facilitates the automated CFD modeling with the aid of advanced utilities. Automated mesh generation and inflow configuration in the Jupyter Notebooks are explored through the case study of a rectangular building's cross-section.

In addition, a baseline model housed in [DH_Baseline](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/OpenFOAM/PyFoam_Jupyter){target=_blank} directory is provided that can be used to generate an input environment for an OpenFOAM simulation.

It is worth noting that DesignSafe recently introduced a [Jupyterhub Spawner](https://www.designsafe-ci.org/rw/user-guides/tools-applications/jupyter/){target=_blank} for users to run one of two Jupyter server images. To run Jupyter Notebooks for CFD presented in this document, users should use the `Classic Jupyter Image` as the Jupyter server.

##### Using PyFoam utilities in the Jupyter Notebook

At first, PyFoam and other modules should be imported into a Notebook, e.g.:

```python
import sys
sys.path.append('/home1/apps/DesignSafe')
import PyFoam

import os, shutil, scipy.io, math, glob
import numpy as np

from pylab import *

from PyFoam.Execution.UtilityRunner import UtilityRunner
from PyFoam.Execution.BasicRunner import BasicRunner
from PyFoam.RunDictionary.SolutionDirectory import SolutionDirectory
from PyFoam.RunDictionary.SolutionFile import SolutionFile
from PyFoam.RunDictionary.BlockMesh import BlockMesh

from os import path
from subprocess import Popen
from subprocess import call
```

##### Mesh generation

To allow users to edit the dimensions of the rectangular building's cross-section, `m4-scripting` is employed for parameterization in OpenFOAM. To achieve it, case directories of the baseline geometry which is a square cross-section were first copied to the newly created case directories. The controlling points for mesh topology are functions of the input geometric variables. M4-scripting then manipulates the `blockMeshDict` dictionary, from which values of the controlling points were assigned as shown in Fig. 3.

In the end, the blockMeshDict dictionary file, which is the file for specifying the mesh parameter and used to generate a mesh in OpenFOAM, is built by executing m4-script command, e.g.,
```python
cmd='m4 -P blockMeshDict.m4 > blockMeshDict'
pipefile = open('output', 'w')
retcode = call(cmd,shell=True,stdout=pipefile)
pipefile.close()
```

<!-- ![fig3](img/fig3.png) -->
<img src="./imgs/kareem/fig3.png">
<p align="center">Fig. 3 Use of m4-scripting for automated mesh generation</p>

##### Setup inflow condition

To edit the inflow turbulence properties based on the user's input, PyFoam is employed to set the inflow boundary conditions. In this example, `k-ω SST model` is selected for turbulence modeling for a demonstration, hence the two inflow turbulence parameters k and ω are modified at different inflow conditions by calling the replaceBoundary [2] utility in the PyFoam. Part of the codes is shown in the following:

```python
from PyFoam.Execution.UtilityRunner import UtilityRunner
from PyFoam.Execution.BasicRunner import BasicRunner
from PyFoam.RunDictionary.SolutionDirectory import SolutionDirectory
from PyFoam.RunDictionary.SolutionFile import SolutionFile
### change the values k and ω at the inlet
os.chdir(case)
dire=SolutionDirectory(case,archive=None)
sol=SolutionFile(dire.initialDir(),”k”)
sol.replaceBoundary(”inlet”,”%f” %(k))
sol=SolutionFile(dire.initialDir(),”omega”)
sol.replaceBoundary(”inlet”,”%f” %(omega))
```

More detailed information can be found in the [Jupyter_PyFoam.ipynb](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/OpenFOAM/PyFoam_Jupyter/){target=_blank}. The Notebook also illustrates how to prepare multiple models to simulate simultaneously and their automatic generation of input environments.

#### Use case of an OpenFOAM simulation with Jupyter Notebook in the DesignSafe workspace

##### Description

A use case example is a `URANS` simulation for wind flow around a rectangular building's cross-section, which is implemented at a Jupyter Notebook, [OpenFOAM_Run_example.ipynb](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/OpenFOAM/){target=_blank}. The input environments are prepared at [DH1_run](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/OpenFOAM/){target=_blank} directory. The test rectangular cross-section model and its mesh are shown in Fig. 4.

<!-- ![fig4](img/fig4.png) -->
<img src="./imgs/kareem/fig4.png">
<p align="center">Fig. 4 Test model and its mesh</p>

##### Setup agave

This script shows how to import the agave client, get the authorization (assuming that the user is already logged into DesignSafe), and access the OpenFOAM. Also

```python
from agavepy.agave import Agave
ag = Agave.restore()
### see user profile
ag.profiles.get()
### access OpenFOAM
app = ag.apps.get(appId = 'openfoam-7.0u4')
```

##### Submit the OpenFOAM job to DesignSafe/TACC

To utilize parallel computing for faster computation, the simulation is run in the DesignSafe workspace using the Texas Advanced Computing Center (TACC) computing resources. The following script shows how to set up the OpenFOAM configuration to run, and its submission to TACC, and check the status of the submitted job [3].

```python
### Creating job file
jobdetails = {
	# name of the job
	"name": "OpenFOAM-Demo",
	# OpenFOAM v7 is used in this use case
	"appId": "openfoam-7.0u4",
	# total run time on the cluster (max 48 hrs)
	"maxRunTime": "00:02:00",
	# the number of nodes and processors for parallel computing
	"nodeCount": 1,
	"processorsPerNode": 2,
	# simulation results will be available in the user's archive directory
	"archive": True,
	# default storage system
	"archiveSystem": "designsafe.storage.default",
	# parameters for the OpenFOAM simulation
	"parameters": {
		# running blockmesh and/or snappyHexMesh (On)
        "mesh": "On",
        # running in parallel (On) or serial (Off)
        "decomp": "On",
        # name of OpenFOAM solver: pisoFoam is used in this use case
        "solver": "pisoFoam"
    },
	"inputs": {
### directory where OpenFOAM files are stored: the path for the DH1_run directory in this use case
### check the web browser's URL at the DH1_run and use the path after "agave/" which includes one's USERNAME
### If DH1_run is located at Data depot > My Data > JupyterCFD > DH1_run, then the URL looks like:
### https://www.designsafe-ci.org/data/browser/agave/designsafe.storage.default/USERNAME/JupyterCFD/DH1_run
		"inputDirectory": "agave://designsafe.storage.default/USERNAME/JupyterCFD/DH1_run"
		}
}
### Submit the job to TACC
job = ag.jobs.submit(body=jobdetails)
### Check the job status
from agavepy.async import AgaveAsyncResponse
asrp = AgaveAsyncResponse(ag,job)
asrp.status
### if successfully submitted, then asrp.status outputs 'ACCEPTED'
```

##### Post-processing on DesignSafe

Simulation results are stored in the Data Depot in the DesignSafe and available to be post-processed by users: `Data Depot > My Data > archive > jobs`. To visualize the flow fields, users can utilize a visualization tool in the `Tools & Application` menu in the DesignSafe (Fig. 5), `Paraview` [4], which can read OpenFOAM files using .foam file. Fig. 6 shows an example of the post-processing of simulation results in the Paraview.

<!-- ![fig5](img/fig5.png) -->
<img src="./imgs/kareem/fig5.png">
<p align="center">Fig. 5 Paraview software in the DesignSafe</p>

<!-- ![fig6](img/fig6.png) -->
<img src="./imgs/kareem/fig6.png">
<p align="center">Fig. 6 Visualization of simulation results using the Paraview</p>

For data analysis such as plotting the time series of drag or lift force coefficients, users can make a script in a Jupyter Notebook to load simulation results and make output figures using a python graphic library such as `Matplotlib`, etc. An example script using Matplotlib can also be found in this use case Jupyter Notebook.

### References
[1] H. Jasak, A. Jemcov, Z. Tukovic, et al. OpenFOAM: A C++ library for complex physics simulations. In International workshop on coupled methods in numerical dynamics, volume 1000, pages 1-20. IUC Dubrovnik Croatia, 2007.<br />
[2] OpenFOAM wiki. Pyfoam. [https://openfoamwiki.net/index.php/Contrib/PyFoam](https://openfoamwiki.net/index.php/Contrib/PyFoam){target=_blank}. Online; accessed 24-Feb-2022.<br />
[3] Harish, Ajay Bangalore; Govindjee, Sanjay; McKenna, Frank. [CFD Notebook (Beginner)](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-2915){target=_blank}. DesignSafe-CI, 2020. <br />
[3] N. Vuaille. Controlling paraview from jupyter notebook. [https://www.kitware.com/paraview-jupyter-notebook/](https://www.kitware.com/paraview-jupyter-notebook/){target=_blank}. Online; accessed 24-Feb-2022.<br />

---
## Wind Data Analysis Tools { #pinelli }

**Soundarya Sridhar and Jean-Paul Pinelli - Florida Institute of Technology**  

Florida Tech (FIT) teams  deploy networks of wireless sensors on residential houses during high impact wind events or on full scale wind tunnel models. Each team deploys pressure, temperature and humidity sensors alongside anemometry, which includes different anemometers and a conical scanning infrared lidar. The workflow starts with uploading the data to DesignSafe through authentication tokens created in Tapis. Once on DesignSafe, three Jupyter notebooks process and visualize the instruments’ data for analyses. The notebooks provide a user friendly and interactive environment that can adapt to different datasets. For this project, the notebooks perform quasi static real-time analyses, assess sensor performance, study pressure variations for different wind conditions and data correlation. The user interactivity of these notebooks facilitates an easy adaptation to different datasets with little to no-change in code.  The example makes use of the following DesignSafe resources:

[Jupyter notebooks on DS Juypterhub](https://www.designsafe-ci.org/rw/workspace/#!/Jupyter::Analysis){target=_blank}

<img src="./imgs/pinelli/Workflow.png"  width="600">

#### Background 
    
##### Citation and Licensing

* Please cite [Subramanian et al. (2022)](https://doi.org/10.17603/ds2-6qnj-tv17){target=_blank}, [Pinelli et al. (2022)](https://doi.org/10.17603/ds2-jv3x-fp80){target=_blank}, [J. Wang et al. (2021)](https://tigerprints.clemson.edu/cgi/viewcontent.cgi?article=1077&context=aawe){target=_blank} and [S. Sridhar et al. (2021)](https://tigerprints.clemson.edu/cgi/viewcontent.cgi?article=1068&context=aawe){target=_blank} to acknowledge the use of any resources from this use case.

* Please cite [Rathje et al. (2017)](https://doi.org/10.1061/(ASCE)NH.1527-6996.0000246){target=_blank} to acknowledge the use of DesignSafe resources.  

* This software is distributed under the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.html){target=_blank}.  


#### Description
##### Quasi-real time Data Upload with Tapis

The user needs a DesignSafe-CI (DS) account. During deployment, data is uploaded to DS in user defined time interval. Tapis CLI and [Python 3 executable](https://www.python.org/downloads/windows/){target=_blank} enable this feature and must be installed on the local system. The user initiates Tapis before every deployment through Windows PowerShell and Tapis creates a token as described below:

Video Tutorial (Timestamps - 28:01 to 35:04): [https://www.youtube.com/watch?v=C2McrpQ8XmI](https://youtu.be/C2McrpQ8XmI?t=1678){target=_blank}

**User Guide**

1.	Turn on Windows Power Shell and enter the command tapis auth init –interactive.  
2.	Enter designsafe for the tenant name,. 
3.	Enter the DesignSafe username and password of the authorized user. 
4.	Choose to set up Container registry access and Git server access, or skip this step by pressing the return key. 
5.	Create a token using the command tapis auth tokens create. At the end, the following response will appear on the cmd line. 


<img src="./imgs/pinelli/Picture2.png"  width="600">
    
    
##### Using Jupyter Notebooks

To save time and memory, the project uses three different notebooks. For any event, either a field deployment or a wind tunnel experiment, the first notebook inputs metadata (sensor information, data columns, timestamp formats) for the dataset and is ideally used once for every event. It outputs a csv file containing the metadata required to run the second notebook. The second notebook calibrates raw data and organizes them into csv and pickled files. This notebook may be run more than once depending on how often new data is uploaded during the event. With the third notebook, users analyze and visualize the data interactively. This is the most frequently used notebook and is run everytime the data needs to be analyzed. There is no need to execute the notebooks sequentially everytime an analysis is done. The figure below illustrates the possible sequences of analysis: 


<img src="./imgs/pinelli/Jupyter user roles.png"  width="600">

    
##### Adaptation to Different Datasets

The first notebook is a user interactive guide to input important raw data information. This notebook saves time as the user does not have to read, understand and edit the code to change information regarding sensors, columns and data formats.  For example, WSNS deployment during the tropical storm Isaias (8/2/2020) used an old and a new WSNS system. The first notebook documented the significant differences in data storage between the two systems. This accelerates data processing as there is no change required in code and the file generated by the notebook acts as a metadata for the second notebook responsible for data processing. The figure below are snapshots of the output file created by the first notebook describing raw data information from two different systems.
    

<img src="./imgs/pinelli/Picture4.png"  width="300" height="250">
<img src="./imgs/pinelli/Picture5.png"  width="300" height="350">
   

    
#### Jupyter Notebooks

##### Analyses Notebooks and Examples

The project goal is to measure pressure variation on non-structural components during strong wind events using the network of wireless sensors. The analysis notebooks on DesignSafe are user interactive with markdowns describing the test. They also provide the users with several options to visualize the data. For example, see the analysis notebook for [Isaias](https://doi.org/10.17603/ds2-6qnj-tv17){target=_blank} (tropical storm on August 1-3, 2020). The markdowns have important information and pictures from the deployment, and instructions for the user to easily access data.
 
<img src="./imgs/pinelli/jupyter.png"  width="520">

And a menu allows user to select from options and look at specific time windows or test conditions.
   
<img src="./imgs/pinelli/Picture7.png"  width="520">
   
    
##### Using Plotly for Data Driven Animation Frames

The project objective is to study high impact wind events on non-structural components of residential houses. After the deployment, Jupyter notebooks process and visualize important data for different purposes, including among others:  comparisons to ASCE 7 standard; and, assessment of sensor performance with respect to wind conditions. Plotly can create animation frames to look at a snapshot of data from all sensors in different test conditions or even at different timestamps.  A single line of code enabled with the right dataframe can quickly reveal trends in the data,  and facilitate troubleshooting of any system errors. The figure below shows an application of plotly for one of the Wall of Wind tests for glass sliding doors. The test model was a mock-up box with flat roof, and full scale glass sliding doors were tested at at 105 mph for different wind directions. At uniform velocity, data for each wind direction was collected for 3 minutes and the program computed pressure coefficient Cp values averaged over that time window. A 2D scatter plot was created with x and z dimensions with each point representing a sensor whose color corresponded to a Cp value on the color scale. A single line of code  enables the animation frame, which reveals important information:

```python
px.scatter(dataframe, x=x column, y=y column, color=scatter point values, text=text to be displayed for each point, range_color=color scale range, animation_frame=variable for each animation frame, title = plot title)
``` 

Including dimensions and trace lines to the plots can add more clarity.

<img src="./imgs/pinelli/Picture8.png"  width="425">
<img src="./imgs/pinelli/Picture9.gif"  width="300">

The exercise below is an illustration of these plotly features:
    
Requirements:
    
Access [Jupyter Notebook on DesignSafe](https://jupyter.designsafe-ci.org/){target=_blank}. Once you have your notebook open and you don’t have plotly dash installed, go ahead and use: `!pip install dash==1.14.0 --user`
    
Building the Dataframe:
Consider a box of spheres that change their numbers ranging from 1 to 10 every hour. You want to look at how the number changes for 12 hours.

**Code**

```python
### Importing libraries
import random
import pandas as pd

### Define necessary columns
spheres=[1,2,3,4,5]
x=[6,14,10,6,14]
y=[6,6,10,14,14]
rad=[]
for i in range (0,5): #generates 5 random numbers ranging from 1 to 10
    n = random.randint(1,10)
    rad.append(n)
hour=1
Label = ['1','2','3','4','5']

df=pd.DataFrame(spheres,columns=['Sphere']) #dataframe for first hour
df['x']=x
df['y']=y
df['number']=rad
df['hour']=hour
df['label']=Label
for i in range (0,11): #for loop to repeat for the next 11 hours
    hour=hour+1
    temp=pd.DataFrame(spheres,columns=['Sphere'])
    temp['x']=x
    temp['y']=y
    rad=[]
    for i in range (0,5):
        n = random.randint(1,10)
        rad.append(n)
    temp['number']=rad
    temp['hour']=hour
    temp['label']=Label
    df=df.append(temp)  
    
print(df)
```

Matching the right columns to suit the syntax will result in an animation frame and a slider!

```python
import plotly.express as px
import plotly.graph_objects as go

fig = px.scatter(df, x='x',y='y', color='number',text="label", animation_frame='hour',title='Magic Box') #animation frame
fig.update_traces(textposition='top center',mode='markers', marker_line_width=2, marker_size=40)                      
trace1 = go.Scatter(x=[2, 2], y=[2, 18],line=dict(color='black', width=4),showlegend=False) #Tracelines to create the box
trace2 = go.Scatter(x=[2, 18], y=[18, 18],line=dict(color='black', width=4),showlegend=False)
trace3 = go.Scatter(x=[18, 18], y=[18, 2],line=dict(color='black', width=4),showlegend=False)
trace4 = go.Scatter(x=[18, 2], y=[2, 2],line=dict(color='black', width=4),showlegend=False)
fig.add_trace(trace1)
fig.add_trace(trace2)
fig.add_trace(trace3)
fig.add_trace(trace4)
fig.update_layout(autosize=False,width=500,height=500,showlegend=True)
fig.show()
```

<img src="./imgs/pinelli/Picture10.gif"  width="450">

---
## From Constitutive Parameter Calibration to Site Response Analysis { #arduino }

**Pedro Arduino - University of Washington**

A collection of educational notebooks to introduce model parameter calibration and site response analysis using OpenSees in DesignSafe-CI. The example makes use of the following DesignSafe resources:

[Simulation on DS - OpenSees](https://www.designsafe-ci.org/rw/workspace/#!/OpenSees::Simulation){target=_blank}<br/>
[Jupyter notebooks on DS Juypterhub](https://www.designsafe-ci.org/rw/workspace/#!/Jupyter::Analysis){target=_blank}<br/>

### Background 
#### Citation and Licensing

* Please cite [Chen, L. et al. (2021)](https://peer.berkeley.edu/sites/default/files/2021_chen_final.pdf){target=_blank} to acknowledge the use of resources from this use case.

* Please cite [Rathje et al. (2017)](https://doi.org/10.1061/(ASCE)NH.1527-6996.0000246){target=_blank} to acknowledge the use of DesignSafe resources.  

* This software is distributed under the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.html){target=_blank}.  

### Description
Site response analysis for liquefiable soils is fundamental in the estimation of demands on civil infrastructure including buildings and lifelines. Current state of the art in numerical methods in geotechnical engineering require the use of advance constitutive models and fully couple nonlinear finite element (FEM) tools. Advanced constitutive models require calibration of material parameters based on experimental tests. These parameters include uncertainties that in turn propagate to uncertenties in the estimation of demands. The products included in this use-case provide simple examples showing how to achieve site response analysis including parameter identification and uncertainty quantification using SimCenter tools and the DesignSafe cyber infrastructure.

<p align="center">
<img src="./imgs/arduino/SRschematic2.PNG" alt="Propagation of vertical waves in site response analysis" width="600"/>
</p>
<p align="center"> <b>Fig.1 - Site response problem</b> </p>
    
This document presents a suite of Jupyter Notebooks published in DesignSafe that navigate the process of  constitutive model parameter calibration and site response analysis for a simple liquefaction case. They also introduce methods useful when using DesignSafe infrastructure in TACC. All notebooks leverage existing SimCenter backend functionality (e.g. Dakota, OpenSees, etc) implemented in quoFEM and run locally and in TACC through DesignSafe. Three notebooks are included for this purpose: 

1. **Site response workflow notebook**: This notebook introduces typical steps used in geotechnical numerical analysis workflows taking advantage of Jupyter and DesignSafe.

2. **Parameter calibration notebook**: This  notebook is customized for the PM4Sand model and presents the estimation of its main parameters that best fit experimental data as well as their uncertainty.

3. **Propagation of parameter undertainty in site response analysis notebook**: This notebook introduces methods to propagate material parameter uncertainties in site reponse analysis.

This first version of this use-case page includes details on the site response workflow notebook. The parameter calibration and propagation of uncertainties notebooks will be updated in a second version.


### Site response workflow notebook
The *site response workflow notebook* introduces typical steps used in the evaluation of the surface response for a site with liquefiable soil.
The notebook takes advantage of the site response problem to introduce a general numerical analysis workflow shown in Figure 2 that includes: 

1. running OpenSees using a **TAPIS** APP, 
2. postprocessing results using python, 
3. generating authomatic reports using rst2pdf or latex, and 
4. Creating animated plots using visualization widgets. 

<p align="center">
<img src="./imgs/arduino/DSworkflow.png" alt=" OpenSees numericla simulation workflow" width="200"/>
</p>
<p align="center"> <b>Fig.2 - OpenSees numerical simulation workflow</b> </p>


The soil profile shown in Figure 3 includes a 5.0m loose sand underlain by a 1.0 m dense soil.The loose sand is modeled using the PM4Sand constitutive model for liquefiable soils available in OpenSees. The dense sand is considered linear elastic. The groundwter table is assumed at 2.0 m making the lower 3.0 m of the loose sand susceptible to liquefaction. The soil profile is subject to a dynamic excitation at its base. The site response of interest includes (i) the surface acceleration, (ii) profiles of lateral displacement, horizontal acceleration, maximum shear strain, and cyclic stress ratio and (iii) stress strain and pore pressure plots for a point in the middle of the soil profile.  The opensees model definition, analysis steps, and recorders are contained in the [N10_T3.tcl](FreeField-JupyterNB/N10_T3.tcl) file, and the input signal is in [velocity.input](FreeField-JupyterNB/velocity.input). The model can be run using OpenSees in any OS framework.

<p align="center">
<img src="./imgs/arduino/SPschematic.png" alt="N10_T3 soil profile with liquefiable layer" width="200"/>
</p>
<p align="center"> <b>Fig.3 - N10_T3 soil profile with liquefiable layer</b> </p>

The notebook, and required scripts, are available in the [DesignSafe/community](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Jupyter%20Notebooks%20for%20Civil%20Engineering%20Courses/University_of_Washington/freeFieldJupyterPM4Sand){target=_blank} folder and can be executed without any modification.
Users are invited to try this notebook and use any parts of it.

The notebook can be broken down into four main components:

<ol type="a">
  <li>Setup TAPIS/AGAVE APP and run OpenSees job</li>
  <li>Post process results</li>
  <li>Generate report</li>
  <li>Generate interactive plots</li>
</ol>

It is emphasize that the main motivation of this notebook is to take advantage of DesignSafe resources. 
Therefore, relevant details for each component as it pertains to access to DesignSafe-CI resources are described here.

#### Setup tapis/agave app and run OpenSees job

The notebook can be executed launching *Jupyter Lab* in Designsafe. This opens a user *docker container* in DesignSafe that includes all the functionality required to execute jupyter commands. This gives immediate access to the **agavepy** module from which it is possible to run any **TAPIS** APP. 

##### Setup job description

A few commands are required to setup a TAPIS OpenSees job in DesignSafe. This requires definition of the TAPIS APP to use, control variables, parameters and inputs. The control variables define the infrastructre resources requested to TACC. The parameters define the executable (opensees), version (current), and opensees input file to run. For the site response case the *OpenseesSp-3.3.0u1* app is selected. The main steps required to setup an agave job are: 


1. importing agave/tapis, 
2. getting the specific app of interest,
3. defining control variables, parameters and inputs, and
4. encapsulating all data in a job_description array 

The python code shown below exemplifies these steps. The complete set of commands is available in the notebook. The job_description array includes all the information required to submit the job.

```python
### Import Agave
from agavepy.agave import Agave
ag = Agave.restore()

### Get Agave app of interest
app_id = 'OpenseesSp-3.3.0u1'
app = ag.apps.get(appId=app_id)

### Define control tapis-app variables
control_batchQueue       = 'small'
control_jobname          = 'Jup_OP_Tapis'
control_nodenumber       = '1'
control_processorsnumber = '8'
control_memorypernode    = '1'
control_maxRunTime       = '00:1:00'

### Define inputs
### Identify folder with input file in DesignSafe
cur_dir = os.getcwd()
if ('jupyter/MyData' in cur_dir ):
    cur_dir = cur_dir.split('MyData').pop() 
    storage_id = 'designsafe.storage.default'
    input_dir = ag.profiles.get()['username']+ cur_dir
    input_uri = 'agave://{}/{}'.format(storage_id,input_dir)
    input_uri = input_uri.replace(" ","%20")
...
...
inputs = {"inputDirectory": [ input_uri ]}

### Define parameters
parameter_executable      = 'opensees'
parameter_version         = 'current'
input_filename            = 'N10_T3.tcl'
parameters = {}
parameters["executable"]  = parameter_executable
parameters["version"]     = parameter_version
parameters["inputScript"] = input_filename


### Set job_description array
job_description = {}
job_description["appId"]      = (app_id)
...
job_description["inputs"]     = inputs
job_description["parameters"] = parameters
```

##### Run OpenSees Job

Submitting a job using DesignSafe HPC resources requires the use of agave job.submit(); and passing the job_description array as argument. Checking the status of a job can be done using jobs.getStatus(). The python code shown below exemplifies these commands.  When submitting a job, agave copies all the files present in the input folder to a temporary location that is used during execution. After completion agave copies all the results to an archived folder. 

```python
import time
job = ag.jobs.submit(body=job_description)
print(" Job launched. Status provided below")
print(" Can also check in DedignSafe portal under - Workspace > Tools & Application > Job Status")

status = ag.jobs.getStatus(jobId=job["id"])["status"]
while status != "FINISHED":
    status = ag.jobs.getStatus(jobId=job["id"])["status"]
    print(f"Status: {status}")
    time.sleep(60)
```    

#### Postprocess Results

Postprocessing requires identification of the location of the archived files. This is done interrogating a particular agave job and evaluating the correct folder location. The python code lines shown below exemplifly the steps required for this purpose. 

##### Identify job, archived location and user

``` python
jobinfo = ag.jobs.get(jobId=job.id)
jobinfo.archivePath
user = jobinfo.archivePath.split('/', 1)[0]

import os
%cd ..
cur_dir_name = cur_dir.split('/').pop() 
os.chdir(jobinfo.archivePath.replace(user,'/home/jupyter/MyData'))
if not os.path.exists(cur_dir_name):
    os.makedirs(cur_dir_name)
os.chdir(cur_dir_name)    
```
##### Plot Results

Once in the archived folder (cur_dir_name), postprocessing can be done using python scripts that operate on output files. For the particualar case of the site response analysis used in this notebook three scripts are used to evaluate:
1. surface acceleration time history and its response spectrum, 
2. profiles of maximum displacement, peak horizontal acceleration (PHA), peak shear strain, and cyclic stress ratio, and
3. Stress-strain and excess pore water pressure at the middle of the liquefiable layer.  

The python code and figures shown below exemplify these steps. All python scripts are available in the notebook community folder. 

Plot acceleration time hisotory and response spectra on log-linear scale
``` python
from plotAcc import plot_acc
plot_acc()
```

<p align="center">
<img src="./imgs/arduino/surfaceAccel.png" alt="Surface acceleration" width="300"/>
<img src="./imgs/arduino/logSpectra.png" alt="Response spectrum" width="300"/>
</p>
<p align="center"> <b>Fig.4 - Surface acceleratio and response spectrum</b> </p>


Plot profiles
``` python
from plotProfile import plot_profile
plot_profile()
```

<p align="center">
<img src="./imgs/arduino/profilePlot.png" alt="Profiles" width="600"/>
</p>
<p align="center"> <b>Fig.5 - Profiles of max displacement, PHA, Max shear strain and cyclic stress ratio</b> </p>

Plot excess pore water pressure
``` python
from plotPorepressure import plot_porepressure
plot_porepressure()
```

<p align="center">
<img src="./imgs/arduino/stressstrain.png" alt="Stress strain" width="300"/>
<img src="./imgs/arduino/porePressure.png" alt="Pore pressure" width="300"/>
</p>
<p align="center"> <b>Fig.6 - stress strain and pore pressure in the middle of liquefiable layer</b> </p>


##### Generate report 

Generating a summary report is a convenient way to present results from lengthy simulations prcesses. In jupyter this can be done invoking any posprocessor available in the docker container image. Among them rst2pdf is commonly distributed with python. For the site response notebook a simple ShortReport.rst file is included that collects the results and plots generated in a simple pdf file. The python code shown below, exemplifies this process and include:
1. Running rst2pdf on [ShortReport.rst](FreeField-JupyterNB/ShortReport.rst)
2. Posting the resulting pdf file in the jupyter notebook. For this it is convenient to define the PDF function shown below that specifies the format of the file in the screen. 

Run rst2pdf, assign to pdf_fn, and  call PDF show function 
``` python
import sys
!{sys.executable} -m pip install rst2pdf
os.system('rst2pdf ShortReport.rst ShortReport.pdf')

pdf_fn = jobinfo.archivePath.replace(user, '/user/' + user + '/files/MyData')
pdf_fn += '/'
pdf_fn += cur_dir.split('/')[-1]
pdf_fn += '/ShortReport.pdf'
print pdf_fn

PDF(pdf_fn , (750,600))
```

PDF function 
``` python
class PDF(object):
  def __init__(self, pdf, size=(200,200)):
    self.pdf = pdf
    self.size = size

  def _repr_html_(self):
    return '<iframe src={0} width={1[0]} height={1[1]}></iframe>'.format(self.pdf, self.size)

  def _repr_latex_(self):
    return r'\includegraphics[width=1.0\textwidth]{{{0}}}'.format(self.pdf)
```

##### Create Interactive Plots

Finally, jupyter notebooks offer flexibility to invoke GUI widgets that can help present results in a dynamic and interactive manner. The python scripts shown below create interactive plots for pore water pressure and soil profile lateral displacements. The horizontal bars allow users interrogate each plot for results at any particular time. Complete pyhon scripts are included in the [interactiveplot.py](FreeField-JupyterNB/interactiveplot.py) available in community.   

##### Pore water pressure

``` python
from interactiveplot import createpwpplot, createDispplot
createpwpplot()
```
<p align="center">
<img src="./imgs/arduino/widget-1.PNG" alt="Pore pressure interatvie plot" width="400"/>
</p>
<p align="center"> <b>Fig.7 - Pore pressure interactive plot</b> </p>

##### Displacement

``` python
createDispplot()
```

<p align="center">
<img src="./imgs/arduino/widget-2.PNG" alt="Displacement profile interatvie plot" width="400"/>
</p>
<p align="center"> <b>Fig.8 - Displacement proficle interactive plot</b> </p>

