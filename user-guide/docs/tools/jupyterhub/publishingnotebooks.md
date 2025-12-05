## Publishing Notebooks

More and more researchers are publishing projects that contain Jupyter Notebooks as part of their data. They can be used to provide sample queries on the published data as well as providing digital data reports.

As you plan for publishing a Jupyter Notebook, please consider the following issues:

1. The DesignSafe publication process involves copying the contents of your project at the time of publication to a read only space within the Published projects section of the Data Depot (i.e., this directory can be accessed at NHERI-Published in JupyterHub). Any future user of your notebook will access it in the read-only Published projects section. By using relative paths in your Jupyter notebook, you can improve its portability and reproducibility. An **absolute path** starts with the `/` character and contains the complete address of the file starting from the root of your file system, for example:
    ```
    /home/usr/data.csv
    ```
    In contrast, a **relative path** describes the path of a file *relative* to the current open file or working directory. If a Jupyter notebook and its associated data are moved or copied to a different device, any absolute paths used in the notebook are at risk of becoming inaccessible. However, as long as the local directory structure is preserved, notebooks that refer to relative paths will continue to work in any computational environment. Here is an example of a directory structure that might exist in a DesignSafe project:
    ```
    /corral/projects/NHERI/projects/PRJ-1234/
    ├─ notebooks/
    │  ├─ notebook.ipynb
    │  ├─ readme_files/
    │  │  ├─ README.md
    ├─ data/
    │  ├─ my_data.csv/
    ```
    The absolute path of the README file on this file system is:
    ```
    /corral/projects/NHERI/projects/PRJ-1234/notebooks/readme_files/README.md
    ```
    The path of this file *relative* to the notebook file `notebook.ipynb` is:
    ```
    ./readme_files/README.md
    ```
    The `./` at the start of the relative path denotes that the path starts in the same directory as the Jupyter notebook. That is, `./` is equivalent here to the absolute path `/corral/projects/NHERI/projects/PRJ-1234/notebooks/`.
    Sometimes, we need to construct a relative path for a file in a higher level of the directory tree. The absolute path of `my_data.csv` is the following:
    ```
    /corral/projects/NHERI/projects/PRJ-1234/data/my_data.csv
    ```
    To construct this path *relative* to `notebook.ipynb`, we can use:
    ```
    ../data/my_data.csv
    ```
    The `../` at the start of this path denotes that we are moving one level higher in the directory tree, to the folder that *contains* the `notebooks` directory. In other words, relative to `notebook.ipynb`, the path `../` corresponds to the absolute path  `/corral/projects/NHERI/projects/PRJ-1234/`.

1. The published area is a read-only space. In the published section, users can run notebooks, but the notebook is not allowed to write any file to this location. If the notebook needs to write a file, you as the author of the notebook should make sure the notebook is robust to write the file in each user directory. [Here is an example of a published notebook](https://doi.org/10.17603/ds2-kcxr-2683){ target="_blank" } that writes files to user directories. Furthermore, since the published space is read-only, if a user wants to revise, enhance or edit the published notebook they will have to copy the notebook to their mydata and continue working on the copied version of the notebook located in their mydata. To ensure that users understand these limitations, we require a readme file be published within the project that explains how future users can run and take advantage of the Jupyter Notebook.

1. Jupyter Notebooks rely on packages that are used to develop them (e.g., numpy, geopandas, ipywidgets, CartoPy, Scikit-Learn). For preservation purposes, it is important to publish a requirement file including a list of all packages and their versions along with the notebook as a metadata file.

