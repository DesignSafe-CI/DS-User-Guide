# Empirical Hurricane Vulnerability and Fragility Curves

**Bonfante, N. – Florida Institute of Technology**<br>
**Pinelli, J-P. – Professor - Florida Institute of Technology**<br>
**Bakhshandeh, M. – Florida Institute of Technology**<br>
**Guennec, T. - Florida Institute of Technology**<br>

**Keywords:** Fragility Curves, Vulnerability Matrix, Insurance Claims, Python, Jupyter

## Description

This project develops a reproducible and transparent workflow for analyzing the vulnerability and fragility of buildings subjected to hurricane winds. Using a suite of interconnected Jupyter notebooks, the workflow transforms raw hazard and exposure datasets into processed information, computes building-level or group-level damage ratios, and generates empirical vulnerability matrices. These matrices are then fitted into continuous vulnerability and fragility curves, which quantify how expected damage ratios and probabilities of exceeding damage thresholds evolve with wind speed. The notebooks also provide tools for comparing curves across different building classes, construction types,etc, enabling both validation and deeper insights into resilience.

The data produced in this project can be reused in multiple ways. The outputs (CSV tables and PNG figures) are readily applicable to catastrophe modeling for insurance and reinsurance, where vulnerability and fragility curves form a critical input for risk assessment. They can also support academic research by serving as benchmarks for methodological comparisons, or by being integrated into multi-hazard frameworks. In addition, policy makers and code developers can leverage these datasets to evaluate how construction practices influence structural performance, guiding the design of more resilient standards. Because the entire pipeline is coded in Python and documented step by step, users can easily adapt the notebooks to new datasets, hazard events, or structural inventories, ensuring long-term reusability.

The uniqueness of this project lies in its transparency, flexibility, and modularity. Traditional catastrophe models often operate as black boxes, limiting validation and adaptability. In contrast, this framework provides open-source, step-by-step tools that combine empirical data processing, statistical rigor (outlier detection, logistic regression, performance metrics), and visualization in a single reproducible environment. Users may execute the full sequence of notebooks for a complete study, or selectively run modules to focus on specific tasks such as curve fitting or comparative analysis. This adaptability makes the workflow valuable for both detailed case studies and broad comparative research.

The primary audience for this project includes researchers in wind engineering, structural safety, and risk analysis who require transparent methods for vulnerability modeling. It is also intended for insurance and reinsurance professionals seeking empirically derived curves for underwriting, pricing, and capital allocation. Policy makers and engineers can use the results to support evidence-based decision making and improvements in building codes. Finally, educators and students can adopt the notebooks as teaching material for courses on catastrophe modeling, vulnerability analysis, and disaster risk reduction.

**Key steps:** 

- **Data Processing:** Cleaning raw datasets and producing an integrated hazard–damage file.
- **Damage Ratio Calculation:** Computing losses relative to replacement value and assigning wind-speed bins.
- **Vulnerability Matrix Construction:** Aggregating expected damage ratios (EDR) by wind-speed intervals.
- **Curve Fitting:** Generating empirical and logistic-smoothed vulnerability curves.
- **Fragility Development:** Computing exceedance probabilities for defined thresholds.
- **Curve Comparison:** Overlaying curves across structures, construction periods, or datasets.

## Resources

### Jupyter Notebooks

The following Jupyter notebooks are available to facilitate the analysis of each case.  
You can access and run them directly on **DesignSafe** by clicking the link below:

| **Scope** | **Notebook** | **Open in DesignSafe** |
|-----------|--------------|-------------------------|
| Generate processed hazard & exposure dataset | `00_generator_of_processed_Info_Natural_Event.ipynb` | [![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-6138?version=2) |
| Compute damage ratios and define wind ranges | `03_damage_ratios_&_ranges.ipynb` | [![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-6138?version=2) |
| Build empirical vulnerability matrix | `05_vulnerability_matrix.ipynb` | [![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-6138?version=2) |
| Fit and visualize vulnerability curves | `08_vulnerability_curve_analysis.ipynb` | [![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-6138?version=2) |
| Generate fragility curves | `13_Fragility_curve_analysis.ipynb` | [![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-6138?version=2) |
| Compare curves across structural classes | `18_Comparison_of_curves_analysis.ipynb` | [![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-6138?version=2) |

### DesignSafe Resources

The following DesignSafe resources were used in developing this Use Case:

- [Jupyter notebook on DesignSafe JupyterHub](https://www.designsafe-ci.org/rw/workspace/jupyter/)  
- [DesignSafe Publication: Empirical Hurricane Vulnerability and Fragility Curves (DOI: 10.17603/ds2-q60v-z247)](https://doi.org/10.17603/ds2-q60v-z247)

## System Requirements

- **Python 3.11+**  
- **Jupyter Notebook environment** (DesignSafe JupyterHub or local)  

## Required Libraries

Before running the notebook, make sure the following Python libraries are installed:

| **Package** | **Description** |
|-------------|-----------------|
|  `numpy` | Numerical operations and array handling |
|   `pandas` | Data manipulation and tabular data processing |
|   `scipy` | Curve fitting and optimization routines (`curve_fit`) |
|  `scikit-learn` | Regression metrics (R², MAE, RMSE) used for evaluating fitted curves |
|  `matplotlib` | Plotting vulnerability and fragility curves |
|   `seaborn` | Statistical visualization and enhanced plotting (used in damage ratio analysis) |

## Steps to Run

1. **Download or access the repository:** [![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.published/PRJ-6138?version=2)

2. **Open the Jupyter notebooks** located in the root directory:

    - `00_generator_of_processed_Info_Natural_Event.ipynb`
    - `03_damage_ratios_&_ranges.ipynb`
    - `05_vulnerability_matrix.ipynb`
    - `08_vulnerability_curve_analysis.ipynb`
    - `13_Fragility_curve_analysis.ipynb`
    - `18_Comparison_of_curves_analysis.ipynb`

3. **Use the input CSV files already provided** inside the folder:
    ```
    00_data_cleaned/
    ```
4. **Execute the notebooks in sequence**, from `00_` to `18_`, ensuring that all cells run successfully.

5. **Processed outputs** will be automatically generated at each stage, including:
    - Combined and cleaned datasets
    - Damage ratios
    - Vulnerability matrices
    - Vulnerability curves (empirical and logistic regression)
    - Fragility curves
    - Comparative vulnerability/fragility plots

6. All output files are saved in the same directory as the notebooks, following the sequential numbering (00–22) generated throughout the workflow.

### Using the Notebooks: A Practical Guide

This workflow provides a structured, step-by-step process for transforming cleaned hazard–damage records into empirical vulnerability and fragility curves. Each notebook performs a specific analytical stage, and running them sequentially ensures a consistent data pipeline from raw inputs to final comparisons.

The following guidance summarizes what each notebook does, what to expect, and how to interpret the outputs.

1. **Generate the processed hazard–exposure dataset**

    **Notebook:** `00_generator_of_processed_Info_Natural_Event.ipynb`  
    This notebook loads the cleaned input files found in `00_data_cleaned/`, verifies their structure, and merges hazard data (wind speeds) with exposure and damage attributes.  
    It produces the first standardized dataset used by all subsequent steps.  

    **Outputs:**  
    `01_checking_data.csv`,  
    `02_combined_processed_files.csv`.

2. **Compute damage ratios and define wind-speed ranges**

    **Notebook:** `03_damage_ratios_&_ranges.ipynb`  
    This step calculates the *damage ratio* for each record (loss divided by replacement value) and assigns each row to a wind-speed bin.  
    The notebook also produces exploratory visualizations to understand early behavior of the data.  

    **Output:**  
    `04_combined_processed_with_ratios.csv`.

3. **Build the empirical vulnerability matrix**

    **Notebook:** `05_vulnerability_matrix.ipynb`  
    This notebook aggregates thousands of records into an empirical vulnerability matrix, where each wind-speed bin is associated with an Expected Damage Ratio (EDR).  
    It also generates a graphical summary of empirical EDR values.  

    **Outputs:**  
    `06_vulnerability_matrix.csv`,  
    `07_vulnerability_matrix.png`.

4. **Fit and visualize vulnerability curves**

    **Notebook:** `08_vulnerability_curve_analysis.ipynb`  
    This step transforms the empirical matrix into a smooth functional curve.  
    Two representations are produced:

    - **Empirical curve** derived directly from observed data.  
    - **Logistic-regression curve** that provides a smooth vulnerability function across all wind speeds.

    Model performance is evaluated using R², RMSE, MAE, and visual comparison.  

    **Outputs:**  
    `09_vulnerability_data.csv`,  
    `10_vulnerability_data.png`,  
    `11_vulnerability_curve_with_logistic_regression.csv`,  
    `12_vulnerability_curve_with_logistic_regression.png`.

5. **Generate fragility curves**

    **Notebook:** `13_Fragility_curve_analysis.ipynb`  
    This notebook converts vulnerability information into *fragility curves*, which express the probability that damage exceeds a specified threshold.  
    These curves are useful for engineering applications, insurance analysis, and risk modeling.  

    **Outputs:**  
    `14_fragility_data.csv`,  
    `15_fragility_data.png`,  
    `16_fragility_curves_with_logistic_regression.csv`,  
    `17_fragility_curves_with_logistic_regression.png`.

6. **Compare vulnerability and fragility across classes**

    **Notebook:** `18_Comparison_of_curves_analysis.ipynb`  
    The final step allows side-by-side comparisons of vulnerability and fragility curves across construction classes, building types, or datasets.  
    This notebook highlights differences in performance and produces publication-ready figures.  

    **Outputs:**  
    `19_comparison_vulnerability_curves.csv`,  
    `20_comparison_vulnerability_curves.png`,  
    `21_fragility_comparison_Fragility_10.csv`,  
    `22_fragility_comparison_Fragility_10.png`.


### Summary

By following the notebooks in order, the user progresses from clean hazard–damage information to calibrated vulnerability curves, fragility relationships, and cross-class comparisons.  
Each stage can be modified or reused independently, allowing researchers, engineers, and practitioners to adapt the workflow to different hazard datasets, damage metrics, or structural classes.


## Inputs and Outputs

| **Notebook** | **Inputs** | **Outputs** |
|--------------|------------|-------------|
| `00_generator_of_processed_Info_Natural_Event.ipynb` | damage CSV files in `00_data_cleaned/` | `01_checking_data.csv`<br>`02_combined_processed_files.csv` |
| `03_damage_ratios_&_ranges.ipynb` | `02_combined_processed_files.csv` | `04_combined_processed_with_ratios.csv` |
| `05_vulnerability_matrix.ipynb` | `04_combined_processed_with_ratios.csv` | `06_vulnerability_matrix.csv`<br>`07_vulnerability_matrix.png` |
| `08_vulnerability_curve_analysis.ipynb` | `06_vulnerability_matrix.csv` | `09_vulnerability_data.csv`<br>`10_vulnerability_data.png`<br>`11_vulnerability_curve_with_logistic_regression.csv`<br>`12_vulnerability_curve_with_logistic_regression.png` |
| `13_Fragility_curve_analysis.ipynb` | `06_vulnerability_matrix.csv` | `14_fragility_data.csv`<br>`15_fragility_data.png`<br>`16_fragility_curves_with_logistic_regression.csv`<br>`17_fragility_curves_with_logistic_regression.png` |
| `18_Comparison_of_curves_analysis.ipynb` | `11_vulnerability_curve_with_logistic_regression.csv`<br>`16_fragility_curves_with_logistic_regression.csv` | `19_comparison_vulnerability_curves.csv`<br>`20_comparison_vulnerability_curves.png`<br>`21_fragility_comparison_Fragility_10.csv`<br>`22_fragility_comparison_Fragility_10.png` |


## Workflow Options

**Case 1 — Single Class Analysis**  
Run the full sequence once for one building class:

```
00 → 03 → 05 → 08 → 13
```

Produces vulnerability and fragility curves for a single structural class.

**Case 2 — Comparison of Two Classes**  
1. Run the full workflow for **Class A** (with suffix A).  
2. Run the workflow again for **Class B** (with suffix B).  
3. Compare curves using `18_Comparison_of_curves_analysis.ipynb`.

This enables evaluation across construction periods, structural types, and datasets.

## Citation
> Bonfante, N., Pinelli, J.-P., Bakhshandeh, M., & Guennec, T. (2025). *Empirical Hurricane Vulnerability and Fragility Curves*. DesignSafe-CI. DOI: [10.17603/ds2-q60v-z247](https://doi.org/10.17603/ds2-q60v-z247)
## Licensing
**License:** BSD 3-Clause License  

## Acknowledgment:
This research was supported by the **National Science Foundation (NSF)** under **Award No. 1520817**, through the **NHERI DesignSafe Cyberinfrastructure**. The opinions and conclusions expressed are those of the authors and do not necessarily reflect the views of the NSF.
