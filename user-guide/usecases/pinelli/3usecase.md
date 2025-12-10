# Wind Speed Estimation and Conversion Use Case

**Bakhshandeh, M. – Florida Institute of Technology**<br>
**Pinelli, J-P. – Professor - Florida Institute of Technology**<br>
**Cocke, Steven – Professor - Florida State University**<br> 
 

**Keywords:** hurricane, wind field, interpolation, conversion, exposure correction, Jupyter Notebook, DesignSafe, Florida

### Description

This use case demonstrates a Jupyter notebook developed to assign hurricane wind speeds to property locations in Florida that were damaged during past storm events. The tool supports both insurance claim datasets and post-disaster reconnaissance data, enabling users to analyze spatial variations in wind intensity at property level.The Wind Speed Estimation and Conversion Use Case processes wind-field input data provided in any grid format and for multiple exposure conditions—such as marine, open terrain, or urban terrain—and across various time averages, including 3-second gusts, 1-minute sustained winds, and 10-minute averages. It also allows conversion of wind speeds between reference heights using established wind-engineering relationships.

Since 2017, Applied Research Associates (ARA), under contract with the National Institute of Standards and Technology (NIST), has produced high-resolution hurricane wind-field datasets that include 10-m 3-second gust and 1-minute sustained wind values over open terrain. These datasets are published in the DesignSafe Reconnaissance Portal and serve as a recommended input source for this use case, though any compatible gridded dataset may be used. In addition to the wind field data, the use case requires property location files (latitude and longitude) and terrain roughness coefficients, which are extracted from GeoTIFF rasters, which describe surface roughness (urban, suburban, coastal, etc.) for the state of Florida. These rasters can be updated or replaced for other regions, enabling the notebook’s extension beyond Florida.

The workflow reads the wind-field data, performs interpolation to estimate winds at each property coordinate, and applies terrain adjustments to compute actual terrain-level wind speeds. For instance, given any hurricane dataset (e.g., Hurricane Michael), the notebook interpolates ARA’s 10-m open-terrain winds to specific property locations and modifies them based on local roughness and coastal proximity. The result is a spatially resolved dataset of adjusted 10-m wind speeds suitable for exposure modeling and vulnerability assessment.

**Key steps:** 

- **Interpolation:** Derives property-level wind speeds from gridded ARA/NIST hurricane data.  
- **Conversion:** Transforms wind speeds between averaging times (3-sec gusts, 1-min sustained) and exposure categories (marine, open, urban).  
- **Terrain Adjustment:** Applies roughness-based corrections and coastal modifiers using GeoTIFF rasters.  
- **Visualization:** Generates interactive Folium-based maps and static Matplotlib plots for analysis and validation.

### Resources

#### Jupyter Notebooks

The following Jupyter notebooks are available to facilitate the analysis of each case.  
You can access and run them directly on **DesignSafe** by clicking the link below:

| **Scope** | **Notebook** |
|------------|---------------|
| Interpolating and converting hurricane wind field data | [Wind_Speed_Estimation.ipynb](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-5778) <br> [![Open in DesignSafe](https://raw.githubusercontent.com/geoelements/LearnMPM/main/DesignSafe-Badge.svg)](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-5778) |


### DesignSafe Resources

The following DesignSafe resources were used in developing this Use Case:

- [Jupyter notebook on DesignSafe JupyterHub](https://www.designsafe-ci.org/rw/workspace/jupyter/)  
- [DesignSafe Publication: Wind Speed Estimation and Conversion (DOI: 10.17603/ds2-kcxr-2683)](https://doi.org/10.17603/ds2-kcxr-2683)  
- [ARA / NIST Hurricane Wind Field Datasets]
 
### Implementation

#### System Requirements

- **Python 3.8+**  
- **Jupyter Notebook environment** (DesignSafe JupyterHub or local)  

####  Dependencies

Before running the notebook, make sure the following Python libraries are installed:

| **Category** | **Package** | **Description** |
|---------------|-------------|-----------------|
| **Core scientific computing** | `numpy` | Numerical operations and array handling |
|  | `pandas` | Data manipulation and CSV file management |
|  | `scipy` | Interpolation and spatial analysis |
| **Geospatial processing** | `rasterio` | Reading and querying GeoTIFF raster datasets |
|  | `pyproj` | Coordinate transformations (e.g., Lon/Lat → Web Mercator) |
| **Mapping & visualization** | `folium` | Interactive web maps (Leaflet.js wrapper) |
|  | `branca` | Pop-up and HTML templating for Folium |
|  | `contextily` | Static basemaps (tile layers for Matplotlib) |
|  | `matplotlib` | Static plotting and visualization |


#### Steps to Run
1. Download or clone the repository:  
   ```bash
   git clone https://github.com/mbakhshandeh2023/WindSpeed-Estimation-UseCase.git
   ```
2. Open the Jupyter notebook (`Wind_Speed_Estimation.ipynb`).  
3. Update file paths in `config1.txt` as needed.  
4. Run all notebook cells sequentially to perform interpolation, conversion, and mapping.  
5. Outputs (CSV files and HTML maps) will appear in the `Interpolation&ConversionOutput/` directory.

### Maping and Visulization
This usecase presents two complementary approaches to visualize estimated actual wind speed data, each with distinct strengths and suited for different purposes:

#### I.	Static Geospatial Map with Matplotlib and Contextily

This method generates a static map where data points are displayed as scatter points colored according to the actual 10 m height, 3-second gust wind speed (ActualT_3sg), utilizing a reversed Inferno colormap to enhance contrast. The Florida state boundaries are approximated by limiting the map extents, and a high-resolution satellite basemap from Esri World Imagery is incorporated via contextily to provide geographic context. The map features a vertical colorbar, a title, and a clean layout with axes hidden for clarity.

#### II.	Interactive Web Map with Folium

This method creates an interactive web map that can be embedded in Jupyter notebooks or saved as a standalone HTML file. Wind speed data points are represented as color-coded circle markers using a sequential YlOrRd colormap scaled to the range of wind speeds. Each marker features a clickable popup providing detailed, location-specific information, including geographic coordinates, ActualT_3sg, z0_raster, and dist_raster, aiding in the interpretation of local wind conditions. Additional interactive features such as a color legend, minimap overview, and layer control widgets enhance usability. The map can be saved as an HTML file for viewing in any web browser or displayed directly within a Jupyter Notebook.

<figure>
   <img src="../img/example-interactive-web-map-with-folium.png" />
   <figcaption><strong>Figure 1.</strong> An Example of Interactive Web Map with Folium</figcaption>
</figure>

### Background
This use case was developed to support advanced hurricane wind hazard and vulnerability modeling in Florida. It integrates validated wind engineering relationships, spatial interpolation methods, and terrain adjustment techniques within a reproducible Jupyter-based computational framework.

The use case is based on the Jupyter notebook published in the DesignSafe-CI Data Depot — “Wind Speed Estimation and Conversion” (DOI: 10.17603/ds2-kcxr-2683
) — and extends that work by providing a structured example for researchers and practitioners to reproduce, adapt, and integrate into broader catastrophe modeling workflows.

### Citation and Licensing
If you use this repository, please cite:

> Bakhshandeh, M., Pinelli, J.-P., & Cocke, S. (2025). *Wind Speed Estimation and Conversion.* DesignSafe-CI. DOI: [10.17603/ds2-kcxr-2683](https://doi.org/10.17603/ds2-kcxr-2683)

**License:** BSD 3-Clause License  

### Data Sources and Confidentiality:
The Jupyter notebook also requires input files containing the latitude and longitude of the analyzed properties. These data can be obtained either from insurance claim records or from publicly available reconnaissance datasets (such as those hosted on the DesignSafe Reconnaissance Portal).
For insurance-related data, confidentiality restrictions may apply. Users are responsible for ensuring that any proprietary or sensitive information is handled in compliance with data privacy agreements and institutional policies. The dataset used in this notebook does not contain any company identifiers or personally identifiable information, ensuring confidentiality is maintained.

### Acknowledgment:
This research was supported by the **National Science Foundation (NSF)** under **Award No. 2022469**, through the **NHERI DesignSafe Cyberinfrastructure**. The opinions and conclusions expressed are those of the authors and do not necessarily reflect the views of the NSF.
