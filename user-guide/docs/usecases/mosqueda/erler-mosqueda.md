/// html | header

## Shake Table Data Analysis Using ML

Leveraging Machine Learning for Identification of Shake Table Data and Post Processing

///

**Kayla Erler – University of California San Diego** <br>
**Gilberto Mosqueda – University of California San Diego**

_Keywords: machine learning, shake table, friction, data modeling_

### Resources
 
#### Jupyter Notebooks
The following Jupyter notebooks are available to facilitate the analysis of each case. They are described in details in this section. You can access and run them directly on DesignSafe by clicking on the "Open in DesignSafe" button.

| Scope | Notebook |
| :-------: | :---------:  |
| CASE 0 Preprocessing Visualization | Case 0 PreprocessingVisualization.ipynb <br> [![Open In DesignSafe](https://raw.githubusercontent.com/geoelements/LearnMPM/main/DesignSafe-Badge.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/CommunityData/Use%20Case%20Products/Shake%20Table%20ML%20Data%20Analysis/Case%200%20PreprocessingVisualization.ipynb) |
| CASE 1 Linear Regression | Case 1 LinearRegression.ipynb <br> [![Open In DesignSafe](https://raw.githubusercontent.com/geoelements/LearnMPM/main/DesignSafe-Badge.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/CommunityData/Use%20Case%20Products/Shake%20Table%20ML%20Data%20Analysis/Case%201%20LinearRegression.ipynb) |
| CASE 2 Deep Neural Network (DNN) Regression | Case 2 DNN.ipynb <br> [![Open In DesignSafe](https://raw.githubusercontent.com/geoelements/LearnMPM/main/DesignSafe-Badge.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/CommunityData/Use%20Case%20Products/Shake%20Table%20ML%20Data%20Analysis/Case%202%20DNN.ipynb) |

#### DesignSafe Resources
The following DesignSafe resources were used in developing this use case.

* [DesignSafe - Jupyter notebooks on DS Juypterhub](https://www.designsafe-ci.org/use-designsafe/tools-applications/analysis/jupyter)<br/>

#### Additional Resources
* Jupyter Notebook and Python scripts on [GitHub](https://github.com/Kaylaerler/Structural-Insights-with-ML)
* [Caltrans Seismic Response Modification Device (SRMD) Test Facility](https://se.ucsd.edu/facilities/laboratory-listing/srmd)
* [Shortreed et al.  (2001)](https://royalsocietypublishing.org/doi/10.1098/rsta.2001.0875) &quot;Characterization and testing of the Caltrans Seismic Response Modification Device Test System&quot;. Phil. Trans. R. Soc. A.359: 1829–1850

### Description

This series of notebooks provides example applications of machine learning for earthquake engineering, specifically for use with experimental data derived from shake tables. Jupyter notebooks are implemented in a generalized format with modularized sections to allow for reusable code that can be readily transferable to other data sets. For complex nonlinear regression, a common method is to form a series of equations that accurately relates the data features to the target through approaches such as linear regression or empirical fitting.  These notebooks explore the implementation and merits of several traditional approaches compared with higher level deep learning.

Linear regression, one of the most basic forms of machine learning, has many advantages in that it can provide a clear distinct verifiable solution.  However, linear regression in some instances may fall short of achieving an accurate solution with real data. Additionally, this process requires many iterations to find the correct relationship. Therefore, it may be desirable to employ a more robust machine learning model to eliminate user time spent on model fitting as well as to achieve enhanced performance. The trade-off with using these algorithms is reduction in clarity of the derived relationships. To demonstrate an application of Machine Learning using Jupyter Notebooks in DesignSafe, models are implemented here for the measured forces in a shake table accounting for friction and inertial forces. Relatively robust data sets exist for training the models that make this a desirable application.

### Implementation

Three notebooks are currently available for this project. The first, CASE 0, outlines the pre-processing that has been performed on the data before the model fitting procedures are conducted. CASE 1 contains details of the algorithms and theory for the linear regression model with several handy implementation tools to streamline model fitting for this or any other project. CASE 2 contains a deep neural network with an automated hyperparameter tuning algorithm. The notebooks are thoroughly commented with in depth details on their use and how they can be modified for use with other data sets on the DesignSafe platform. The user should review the notebooks for more instructive details. Note, for the deep neural network, if a wide range of hyperparameters is being used for tuning, and the dataset is large, tuning may take a significant amount of computational time when run on CPU. If a user gains access to the HPC available on the DesignSafe platform, the software is set up to be able to train on GPU when available. 

### Citations and Licensing

* Erler et al. (2024) &quot;Leveraging Machine Learning Algorithms for Regression Analysis in Shake Table Data Processing&quot;.  WCEE2024 
* [Rathje et al. (2017)](https://doi.org/10.1061/(ASCE)NH.1527-6996.0000246) &quot;DesignSafe: New Cyberinfrastructure for Natural Hazards Engineering&quot;. ASCE: Natural Hazards Review / Volume 18 Issue 3 - August 2017
* This software is distributed under the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.html)
