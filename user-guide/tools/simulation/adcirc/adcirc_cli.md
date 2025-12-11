
#### `adcirc` Command Line Options

| Option                            | Description                                                                                   | Special Notes                                                                                 |
| --------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `-I INPUTDIR`                     | Set the directory for input files.                                                            |                                                                                               |
| `-O GLOBALDIR`                    | Set the directory for fulldomain output files.                                                |                                                                                               |
| `-W NUM_WRITERS`                  | Dedicate NUM_WRITERS MPI processes to writing ascii output files.                             | Affects ascii formatted fort.63, fort.64, fort.73, and fort.74 files.                         |

#### `adcprep` Command Line Options

| Option                | Description                                                                                   | Special Notes                                                                    |
| --------------------- | --------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `--np NUM_SUBDOMAINS` | Decompose the domain into NUM_SUBDOMAINS subdomains.                                          | Required for parallel computation.                                               |
| `--partmesh`          | Partition the mesh only, resulting in a partmesh.txt file.                                    | Should be done first. Generates partmesh.txt for subdomain assignments.          |
| `--prepall`           | Decompose all ADCIRC input files using the partmesh.txt file.                                 | Requires previous execution with `--partmesh`. Expects default input file names. |

**`adcprep` Runs**

The usual workflow of running `adcprep` consists of two steps - (1) partitioning of the mesh into sub-domains that each core will work on. (2) Decomposing other input files over the partitioned mesh.

Note that running `adcprep` alone with no command line options will bring up an interactive menu.

Common `adcprep` options used include:

- **Partitioning Mesh Only**

  ```
  adcprep --partmesh --np 32
  ```

  This command partitions the mesh into 32 subdomains, creating a partmesh.txt file.

- **Preparing All Input Files**

  ```
  adcprep --prepall --np 32
  ```

  Utilizes the previously created partmesh.txt file to decompose all input files into PE* subdirectories.

### PADIRC Runs

Some common options used when using PADCIRC are the following:

- **Specifying Input/Output Directories**

  ```
  padcirc -I /path/to/input -O /path/to/output
  ```

  Looks for input files in `/path/to/input` and writes output files to `/path/to/output`.

- **Adjusting Writer Cores**

  ```
  padcirc -W 4
  ```

  Dedicates 4 MPI processes to write ASCII output files.

For more information see - [ADCIRC Webpage Documentation](https://adcirc.org/home/documentation/generic-adcirc-command-line-options/)
