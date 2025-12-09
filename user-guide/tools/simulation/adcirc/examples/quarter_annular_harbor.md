#### Quarter Annular Harbor with Tidal Forcing Example: ADCIRC Simulation Guide

The Quarter Annular Harbor is commonly used as a test case to assess the performance of finite lement numerical schemes applied to shallow water equations.

##### Problem Setup

The Quarter Annular Harbor problem features a domain that is a quarter of an annulus, bounded by land on three sides and an open ocean boundary. The setup includes:

- Inner radius (`r1`): 60,960 m
- Outer radius (`r2`): 152,400 m
- Bathymetry: Varies quadratically from `h1` = 3.048 m at `r1` to `h2` = 19.05 m at `r2`
- Finite element grid: Radial spacing of 15,240 m and angular spacing of 11.25 degrees

The problem's geometry tests the model's performance in both horizontal coordinate directions, with an emphasis on identifying spurious modes and numerical dissipation.

###### ADCIRC Inputs

Two primary input files are required:

1. *Grid and Boundary Information File (`fort.14`)*

    This file outlines the mesh configuration, including:

    - **Grid Information**: 96 elements and 63 nodes.
    - **Nodal Information**: Node number, horizontal coordinates, and depth.
    - **Elemental Information**: Element number, nodes per element, and comprising node numbers.
    - **Boundary Conditions**:
        - Elevation specified boundary: 1 segment with 9 nodes (Node 7 to Node 63).
        - Normal flow boundary: 1 segment with 21 nodes (Node 63 to Node 7).

2. *Model Parameter and Periodic Boundary Condition File (`fort.15`)*

    Specifies model parameters, including:

    - **Initialization**: Cold started from a state of rest.
    - **Coordinate System**: Cartesian.
    - **Nonlinearities**: Finite amplitude, advection, and quadratic bottom friction.
    - **Forcings**: No tidal potential or wind stress. Gravity in m/s².
    - **Boundary Forcing**: Sinusoidal elevation with a period of 44,712 s, amplitude of 0.3048 m, and phase of 0 degrees, ramped up over the first two days.
    - **Simulation Duration**: 5 days with a time step of 174.656 s.
    - **Output Settings**: Water level and velocity time series output at specified intervals and locations. Harmonic analysis of model elevation and velocity fields for the M2 constituent on the final day. Hot start files generated every 512 time steps.

###### ADCIRC Outputs

The simulation generates several output files, briefly summarized as follows:

- **General Diagnostic Output** (`fort.16`): Echoes input file information, ADCIRC processing data, and error messages.
- **Iterative Solver Diagnostic** (`fort.33`): Contains solver diagnostics, typically empty after successful runs.
- **Harmonic Constituents**:
    - Elevation at specified stations (`fort.51`).
    - Velocity at specified stations (`fort.52`).
    - Elevation at all nodes (`fort.53`).
    - Velocity at all nodes (`fort.54`).
- **Time Series Output**:
    - Elevation at specified stations (`fort.61`).
    - Velocity at specified stations (`fort.62`).
    - Elevation at all nodes (`fort.63`).
    - Velocity at all nodes (`fort.64`).
- **Hot Start Files** (`fort.67`, `fort.68`): Facilitate restarting simulations from specific states.

##### Running Example**

This simulation example is best run from the ADCIRC Interactive VM.

1. [Start the ADCIRC Interactive VM](../adcirc.md#adcirc-through-the-interactive-vm)
2. Copy the inputs from 
3. Execute ADCIRC, specifying the input files and any runtime options as needed.

##### References

- [ADCIRC Website Examples](https://adcirc.org/home/documentation/example-problems/quarter-annular-harbor-with-tidal-forcing-example)
- Lynch, D.R. and W.G. Gray. 1979. A wave equation model for finite element tidal computations. Computers and Fluids. 7:207-228.
