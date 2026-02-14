## Example Notebooks

### 1. PRJ-1695 | [Probabilistic Seismic Hazard Analysis for the Sliding Displacement of Rigid Sliding Masses](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-1695){ target="_blank" }

[![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/NHERI-Published/PRJ-1695)

- **Key function:** Cloud-based analysis that uses external data provided by an API.
- This workflow is about probabilistic seismic slope analysis
- Computes slope displacement hazard curve with given information about slope and earthquake ground motion hazard 
- Uses API to directly import ground motion hazard information from USGS hazard website
- Outputs the numeric results of the displacement hazard as csv file

### 2. PRJ-2889 | [Earthquake Time Series from Events in Texas, Oklahoma, and Kansas](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-2889){ target="_blank" }

[![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/NHERI-Published/PRJ-2889)

- **Key function:** Exporting selected ground motion time series from dataset 
- This workbook is about providing a user with the ground motion data (maximum limit of 1,000 at once) available from the published data on Designsafe. 
- Receives search criteria (ranges of magnitude and distance) from a user and produces a compressed file containing all the time series of selected motion in user's directory, Data Depot on Designsafe. 

### 3. PRJ-2074 | [NHERI Debris Impact Experiments Jupyter Notebook](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-2074){ target="_blank" }

[![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/NHERI-Published/PRJ-2074)

- **Key function:** GUI-based visualization and analysis of experiments  
- This notebook is about laboratory experiments on debris impact. 
- Presents images and videos of the experimental facility, setup, and experimental program through graphical user interface (GUI).
- Performs filtering raw signals gathered from the experiments with selected frequency and range 
- Can easily view any result for a user's interest using GUI.

### 4. PRJ-2259 | [Next Generation Liquefaction (NGL) Partner Dataset Cone Penetration Test (CPT) Viewer](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-2259){ target="_blank" }

[![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/NHERI-Published/PRJ-2259)

- **Key function:** GUI-based Visualization on experimental data 
- This notebook is to visualize geotechnical field experiments (CPT). 
- Bring CPT test results located in SQL database at DesignSafe and plot the results as a function of depth and their probabilistic distributions. 
- Can easily view the results that a user wants through graphical user interface (GUI).

### 5. PRJ-2363 | [Soil-Foundation-Structure Interaction Effects on the Cyclic Failure Potential of Silts and Clays](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-2363/){ target="_blank" }

[![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/NHERI-Published/PRJ-2363/)

- **Key function:** Post-processing of experimental data 
- This notebook is post-processing experimental data with visualization. 
- Import experimental data and process the raw data with sensors' characteristics and filter.  
- A user can interactively view the processed experimental data

### 6. PRJ-1942 | [NGA-East Geotechnical Working Group Seismic Site Response Simulation Database](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-1942){ target="_blank" }

[![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/NHERI-Published/PRJ-1942)

- **Key function:** Querying NoSQL database of numerical simulations  
- This notebook is to provide results of numerical simulations by interfacing with NoSQL database.

### Jupyter Notebooks for Civil Engineering Courses

### 1. [Oregon State Univ_Structural Analysis](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Jupyter%20Notebooks%20for%20Civil%20Engineering%20Courses/Oregon%20State%20Univ%20_%20Structural%20Analysis){ target="_blank" }

[![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/CommunityData/Jupyter%20Notebooks%20for%20Civil%20Engineering%20Courses/Oregon%20State%20Univ%20_%20Structural%20Analysis)

#### Directory `Demo`

The notebooks available in this directory perform numerical integration for ordinary differential equation in engineering and science:

- `CentralDifference.ipynb`
- `Newmark_gm.ipynb`: for linear elastic
- `Newmark_nonlinear.ipynb`: for nonlinear elastic
- `reccurrenceFormulation_Equations.ipynb`
- `reccurrenceFormulation_Matrix.ipynb`

#### Directory `PythonSetup`

`SetupPythonNotebook.ipynb`: Guideline on how to setup and use Jupyter notebooks on local machine across several types of operating system (Windows, Linux, and Mac) as well as in DesignSafe workspace.

The below notebooks describe how to visualize numerical results using python.

- `Subplots_and_legends.ipynb`
- `Plot_example.ipynb`
- `Basic_plotting.ipynb`

There are two examples for improved speed of for-loops by interfacing with C and Fortran. There is a description on how to install each package.

- `Cython_fast_loops.ipynb`
	- Cython: a superset of the Python language that additionally supports calling C functions and declaring C types on variables and class attributes.
- `Fortran_fast_loops.ipynb`
	- Fortran-magic: similar to cython that allows for using Fortran language in python script for fast loop control.

### 2. [UCLA_Soil Mechanics](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Jupyter%20Notebooks%20for%20Civil%20Engineering%20Courses/UCLA%20_%20Soil%20Mechanics){ target="_blank" }

[![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/CommunityData/Jupyter%20Notebooks%20for%20Civil%20Engineering%20Courses/UCLA%20_%20Soil%20Mechanics)

Python enables one to write texts and equations in latex format for teaching purpose and provides a graphical user interface with which one can readily see the results by changing the input parameters.

- `StressRotation.ipynb`: Provides a graphical user interface of Mohr Circle plot in engineering mechanics that one can see the result by changing input parameters.
- `TerzaghiPlotting.ipynb`: Shows a mathematical expression in latex format and plots the solution of the partial differential equation.
- `TerzaghisTheory.ipynb`: Describes Terzaghi’s theory of consolidation in soil mechanics along with markdown cell that allows for typing words and latex format. (In general term, jupyter notebook allows us to write texts for engineering and science problems like writing on white board)

### 3. [Univ of Texas_FiniteElementAnalyses in GeotechnicalEngineering](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Jupyter%20Notebooks%20for%20Civil%20Engineering%20Courses/Univ%20of%20Texas%20_%20FiniteElementAnalyses%20in%20GeotechnicalEngineering){ target="_blank" }

[![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/CommunityData/Jupyter%20Notebooks%20for%20Civil%20Engineering%20Courses/Univ%20of%20Texas%20_%20FiniteElementAnalyses%20in%20GeotechnicalEngineering)

#### Directory `Notebooks`

Solves the mathematical equations (differential equations) through numerical analysis such as finite element or finite difference methods.

- `Stiffness_method.ipynb`: linear algebra solution to get displacement (Ku=F)
- `Shape_function.ipynb`: Creating Lagrange polynomials
- `Elastic_bar_linear_fem.ipynb`: One dimensional truss analysis of linear elastic finite element method
- `fdm_seepage_dam.ipynb`: finite difference method for numerical integration

### 4. [University of Washington](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Jupyter%20Notebooks%20for%20Civil%20Engineering%20Courses/University_of_Washington){ target="_blank" }

[![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/CommunityData/Jupyter%20Notebooks%20for%20Civil%20Engineering%20Courses/University_of_Washington) (Workflow, Graduate Level Course)

#### Directory `freeFieldEffectiveJupyter`

This notebook runs OpenSees, one of the applications available from workspace on Designsafe, for a model of one-dimensional site response using the PDMY constitutive model.

#### Directory `freeFieldJupyterPM4Sand`

This notebook runs OpenSees, one of the applications available from workspace on Designsafe, for a model of one-dimensional site response using the PM4Sand constitutive model.
