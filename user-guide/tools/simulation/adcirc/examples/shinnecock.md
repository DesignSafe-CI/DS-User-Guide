#### Shinnecock Inlet, NY with Tidal Forcing Example: ADCIRC Simulation Guide

This documentation outlines the procedure and details for setting up and running an ADCIRC simulation focused on the tidal hydrodynamics in the vicinity of Shinnecock Inlet, NY.
This example derives from a study conducted at the U.S. Army Corps of Engineers Coastal Hydraulics Laboratory.
It is commonly used as a test-case for ADCIRC releases.

##### Problem Setup

Shinnecock Inlet is a geographical feature located along the outer shore of Long Island, New York.
The simulation utilizes a finite element grid to model the hydrodynamics in this area, reflecting the following characteristics:

- The grid's discretization varies from approximately 2 km offshore to around 75 m in nearshore areas.
- Due to the coarse resolution, this model does not accurately resolve circulation near the inlet and the back bay.

The input files for this simulation can be found in the CommunityData directory at [`CommunityData/Use Case Products/ADCIRC/adcirc/adcirc_shinnecock_inlet`](https://www.designsafe-ci.org/data/browser/public/designsafe.storage.community/Use%20Case%20Products/ADCIRC/adcirc/adcirc_shinnecock_inlet){ target="_blank" } ([![Open in DesignSafe](/user-guide/img/Open-in-DesignSafe.svg)](https://jupyter.designsafe-ci.org/hub/user-redirect/lab/tree/CommunityData/Use%20Case%20Products/ADCIRC/adcirc/adcirc_shinnecock_inlet)).

###### ADCIRC Input

1. **Grid and Boundary Information File (`fort.14`)**

    This file defines the simulation's spatial domain, containing:

    - **5780 elements** and **3070 nodes**, detailing the mesh used for the simulation.
    - Nodal and elemental information, including node numbers, horizontal coordinates, depth, and elements' composition.
    - Boundary specifications:
        - An **elevation specified open boundary** with 75 nodes (from node 75 to node 1).
        - A **normal flow mainland boundary** with 285 nodes (from node 1 to node 75).

2. **Model Parameter and Periodic Boundary Condition File (`fort.15`)**

      This file outlines the simulation's parameters:

      - Initialization from a state of rest (cold start).
      - Use of a longitude-latitude coordinate system.
      - Inclusion of nonlinearities such as finite amplitude (with elemental wetting and drying), advection, and hybrid bottom friction.
      - The model is forced using tidal potential terms and along the elevation boundary with 5 tidal constituents (M2, S2, N2, O1, K1), ramped up over the first two days.
      - The simulation duration is 5 days with a time step of 6 seconds.
      - Output of water level and velocity time series every 300 time steps (half-hour) at all nodes from days 3.8 to 5. No harmonic output or hot start files are produced.

###### ADCIRC Output

The simulation generates the following output files:

- **General Diagnostic Output** (`fort.16`): Includes input file information, ADCIRC processing data, and error messages.
- **Iterative Solver Diagnostic** (`fort.33`): Contains diagnostic information from the iterative solver, typically empty upon successful completion.
- **Elevation Time Series** (`fort.63`): Outputs elevation time series at all nodes every 300 time steps.
- **Depth-averaged Velocity Time Series** (`fort.64`): Outputs velocity time series at all nodes every 300 time steps.

##### References

- [ADCIRC Website Examples](https://adcirc.org/home/documentation/example-problems/shinnecock-inlet-ny-with-tidal-forcing-example)
- Militello, A., and Kraus, N. C. (2000). *Shinnecock Inlet, New York, Site Investigation, Report 4, Evaluation of Flood and Ebb Shoal Sediment Source Alternatives for the West of Shinnecock Interim Project, New York*. Technical Report CHL-98-32. U.S. Army Engineer Research and Development Center, Vicksburg, Mississippi.
- Morang, A. (1999). *Shinnecock Inlet, New York, Site Investigation Report 1, Morphology and Historical Behavior*. Technical Report CHL-98-32, US Army Engineer Waterways Experiment Station, Vicksburg, Mississippi.
- Williams, G. L., Morang, A., Lillycrop, L. (1998). *Shinnecock Inlet, New York, Site Investigation Report 2, Evaluation of Sand Bypass Options*. Technical Report CHL-98-32, US Army Engineer Waterways Experiment Station, Vicksburg, Mississippi.