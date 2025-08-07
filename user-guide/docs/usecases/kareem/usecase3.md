/// html | header

## Tamkang Database

Tamkang Database

///

**D.K. Kwon - [NatHaz Modeling Laboratory](https://nathaz.nd.edu/){target=_blank}, University of Notre Dame**<br>
**Ahsan Kareem - [NatHaz Modeling Laboratory](https://nathaz.nd.edu/){target=_blank}, University of Notre Dame**

### Resources
 
#### Jupyter Notebooks
The following Jupyter notebooks are available to facilitate the analysis of each case. They are described in details in this section. You can access and run them directly on DesignSafe by clicking on the "Open in DesignSafe" button.

| Scope | Notebook |
| :-------: | :---------:  |
| abcd3fg | Filename.ipynb <br> [![Open In DesignSafe](https://raw.githubusercontent.com/geoelements/LearnMPM/main/DesignSafe-Badge.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/CommunityData/Use%20Case%20Products/OpenFOAM/PyFoam_Jupyter/Jupyter_PyFoam.ipynb) |

#### DesignSafe Resources

The following DesignSafe resources were leveraged in developing this use case.

### Background
#### Citation and Licensing

* Please cite [Rathje et al. (2017)](https://doi.org/10.1061/(ASCE)NH.1527-6996.0000246){target=_blank} to acknowledge the use of DesignSafe resources.
* This software is distributed under the [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.html){target=_blank}.


### Description

Currently, the DesignSafe platform offers through [VORTEX-Winds](http://www.vortex-winds.org/): Database-Enabled Design Module for High-Rise ([DEDM-HR](http://evovw.ce.nd.edu/dadm/VW_design6_noauth1.html)). The web-enabled application developed by the NatHaz Modeling Laboratory, University of Notre Dame seamlessly pools databases of multiple high-frequency base balance measurements through wind tunnel tests/experiments from geographically dispersed locations and merges them to expand the number of available building configurations for preliminary design under winds. It houses two aerodynamic load databases from the NatHaz Modeling Laboratory and the Wind Engineering Research Center, Tamkang University (TKU-WERC), Taiwan. The Tamkang data is accessed automatically when using the DEDM-HR and users do not have any access to the data itself. To offer direct access to the data contributed by Tamkang University and for archival purposes, we have provided a Microsoft Excel spreadsheet that contains the data for the buildings available in their data along with a tab for explaining the nomenclature and the data layout which details all the captions for the data, their symbols, and units, etc. <br>
For the Tamkang database that was established via high frequency base balance tests, one can find the information on how to use them in our previous publications (e.g., Zhou et al. 2003; Kwon et al. 2006). The NatHaz database consists of 7 cross-sectional shapes, 3 heights, 2 exposure categories, and 3-dimensional loading, i.e., in the alongwind, acrosswind, and torsional directions for each shape. The two exposure conditions in the NatHaz database are open (α = 0.16, where α = power law exponent of the mean wind velocity profile) and urban (α = 0.35), similar to the conditions of Exposure C in the ASCE 7-05 and 7- 10 (open) and Exposure A in ASCE 7-98 (urban), respectively. On the other hand, the Tamkang database consists of 13 shapes, 5 heights, and 3-dimensional loading for each shape. The Tamkang database has three exposures, i.e., open (α = 0.15), suburban (α = 0.25), and urban (α = 0.32), which are close to Exposures C, B, and A as defined in the ASCE standard (ASCE 7-98), respectively. Although both the NatHaz and Tamkang databases have two common terrain conditions (Exposure A and C), the latter has a greater subdivision in the data sets, i.e., an additional terrain condition (Exposure B) and more test cases in shapes and heights, as shown in Table 1 for the overall side ratio (D/B) and aspect ratios (H/√BD) for both databases. The databases mainly consist of non-dimensional power spectral density [C_M (f)] and RMS base moment/torque coefficients (σCM) in three directions for each data set, which are utilized for estimating responses based on the theoretical approach (Zhou et al. 2003; Kwon et al. 2006). Detailed descriptions of the data sets and wind tunnel test conditions can be found in Kareem (1990), Kijewski and Kareem (1998), Zhou et al. (2003), Cheng and Wang (2004), and Cheng et al. (2007).<br>
The reliability of the measured spectra in the databases has been established through verifications against data sets from other wind tunnel experiments (Kareem, 1990; Zhou et al., 2003; Lin et al., 2005; Kwon et al., 2008; Kwon et al. 2014). In these studies, it was demonstrated that the NatHaz and Tamkang databases were in close agreement with the exception of a few cases. Some discrepancies in the response estimates may be attributed to slight differences in the inflow conditions at different wind tunnels, which are inevitable and to which the associated loads may be quite sensitive. Thus, such spectral comparisons are not further investigated here.

Table 1. Datasets in NatHaz and Tamkang databases

| SR<sup>1)</sup> | 0.20 | 0.25 | 0.33 | 0.40 | 0.50 | 0.67 | 1.00 | 1.50 | 2.00 | 2.50 | 3.00 | 4.00 | 5.00 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| NatHaz | – | – | O | – | O | O | O | O | O | – | O | – | – |
| NatHaz AR<sup>2)</sup> | – | – | 4.62 5.77 6.93 | – | 3.77 4.71 5.66 | 3.27 4.08 4.90 | 4.00 5.00 6.00 | 3.27 4.08 4.90 | 3.77 4.71 5.66 | – | 4.62 5.77 6.93 | – | – |
| Tamkang | O | O | O | O | O | O | O | O | O | O | O | O | O |
| Tamkang AR<sup>3)</sup> | 3~7 | 3~7 | 3~7 | 3~7 | 3~7 | 3~7 | 3~7 | 3~7 | 3~7 | 3~7 | 3~7 | 3~7 | 3~7 |

1)SR = side ratio (D/B); 2)AR = aspect ratio (H/√BD); 3)ARs in the Tamkang database are 3, 4, 5, 6, and 7 for all SRs; Symbols ‘O’ and ‘–’ = presence and absence of datasets in each database, respectively.




### References
[1] Cheng, C. M. and Wang, J. (2004). “Wind tunnel database for an intermediate wind resistance design of tall buildings.” Proc. 1st International Symposium on Wind Effects on Buildings and Urban Environment, Tokyo Polytechnic, University, Tokyo, Japan.<br>
[2] Cheng, C. M., Lin, Y. Y., Wang, J., Wu, J. C. and Chang, C. H. (2007). “The aerodynamic database for the interference effects of adjacent tall buildings.” Proc. 12th International Conference on Wind Engineering, Cairns, Australia, 359-366.<br>
[3] Kareem A. (1990). “Measurement of pressure and force fields on building models in simulated atmospheric flows.” Journal of Wind Engineering and Industrial Aerodynamics, 36(1), 589-599.<br>
[4] Kijewski, T. and Kareem, A. (1998). “Dynamic wind effects: a comparative study of provisions in codes and standards with wind tunnel data.” Wind and Structures, 1(1), 77-109.<br>
[5] Kwon, D., Kijewski-Correa, T. and Kareem, A. (2008). “e-analysis of high-rise buildings subjected to wind loads.” Journal of Structural Engineering, ASCE, 134(7), 1139-1153.<br>
[6] Kwon, D. K., and Kareem, A., (2013). “A multiple database-enabled design module with embedded features of international codes and standards,” International Journal of High-Rise Buildings, 2(3), 257-269.<br>
[7] Kwon, D. K., Spence, S. M. J. and Kareem, A. (2014). “Performance evaluation of database-enabled design frameworks for the preliminary design of tall buildings." Journal of Structural Engineering, ASCE, 141(10), 04014242-1.<br>
[8] Zhou, Y., Kijewski, T. and Kareem, A. (2003). “Aerodynamic loads on tall buildings: Interactive database.” Journal of Structural Engineering, ASCE, 129(3), 394-404.<br>
