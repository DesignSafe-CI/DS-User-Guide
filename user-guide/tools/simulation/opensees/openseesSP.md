### OpenSeesSP

<p>The 'Single Parallel Interpreter' application <b>OpenSeesSP</b> is intended for large models subjected to few load cases. This application will parse and execute your script as the sequential application. The difference being the element state determination and solution of the system of equations (Gaussian Elmination) are done in parallel. </p>
<p>In OpenSeesSP one processor reads the input script and builds the model. Once the analysis command is called, this main processor will then partitions the model sub-domains and assigns one sub-domain to each of the remaining processors so that the state determination and solution of the system of equations can be done in parallel. The process of partitioning the model is called Domain Decomposition. The OpenSees domain consists of nodes and elements, as well as loads. To run in parallel, parallel equation solvers must be specified in the script.</p>

#### Advantages

<ul style="margin-top:-20px;">
<li>Runs on HPC</li>
<li>The domain decomposition to parallel processes speeds up the state determination and solution.</li>
<li>This application is the easiest parallel application as it does the paralelization automatically. The partitioning is done automatically by the interpreter and no additional scripting or knowledge is necessary.</li>
</ul>

#### Disadvantages

<ul style="margin-top:-20px;">
<li>Runs on HPC, hence it has a queue.</li>
<li>Robustness depends on OpenSees objects being used. Not all elements and other OpenSees objects have been tested in OpenSeesSP. The user needs to make sure that the OpenSees objects being used (elements, materials, etc.) have been implemented in a way that is robust in OpenSeesSP (fully-implemented sendSelf and receiveSelf commands).</li>
<li>The order of the data in multi-node or multi-element recorder files is not always the same.</li>
</ul>

#### Changes to the script

<ol style="margin-top:-20px;">
<li>Change the System of Equation and the Solver (System Command) to one of the following:
   <ul>
   <li>System Mumps</li>
   <li>System Diagonal</li>
   </ul>
</li>
<li>Change the Output Command for the Recorder substituting the '-file' flag to '–xml' to document each recorder-column metadata. Do this if your recorder files contain more than one node or element because the column order of results stored in files from the Element and Node recorders will NOT be ordered as they are in single processor runs.</li>
</ol>

#### Example Script from OpenSees GitHub

The following example was uploaded to the OpenSees Github by Dr. Frank McKenna

```
    ###########################################################################
    ## OpenSeesMP example by Dr. Frank McKenna
    ## https://github.com/OpenSees/OpenSees/blob/master/EXAMPLES/LargeSP/Example.tcl
    ###########################################################################
    # ----------------------------
    # Start of model generation
    # ----------------------------

    # Create ModelBuilder with 3 dimensions and 6 DOF/node
    model basic -ndm 3 -ndf 3


    # create the material
    nDMaterial ElasticIsotropic   1   100   0.25  1.27

    # Define geometry
    # ---------------

    # define some  parameters
    set eleArgs "1" 

    set element stdBrick
    #set element bbarBrick

    set nz 100
    set nx 10
    set ny 10

    set nn [expr ($nz+1)*($nx+1)*($ny+1) ]

    # mesh generation
    block3D $nx $ny $nz   1 1  $element  $eleArgs {
        1   -1     -1      0
        2    1     -1      0
        3    1      1      0
        4   -1      1      0 
        5   -1     -1     10
        6    1     -1     10
        7    1      1     10
        8   -1      1     10
    }


    set load 0.10

    # Constant point load
    pattern Plain 1 Linear {
    load $nn  $load  $load  0.0
    }

    # boundary conditions
    fixZ 0.0   1 1 1 

    # --------------------------------------------------------------------
    # Start of static analysis (creation of the analysis & analysis itself)
    # --------------------------------------------------------------------

    # Load control with variable load steps
    #                       init   Jd  min   max
    integrator LoadControl  1.0  1 

    # Convergence test
    #                  tolerance maxIter displayCode
    test NormUnbalance     1.0e-10    20     0

    # Solution algorithm
    algorithm Newton

    # DOF numberer
    numberer RCM

    # Constraint handler
    constraints Plain 

    # System of equations solver
    system Mumps

    # Analysis for gravity load
    analysis Static 

    # Perform the analysis
    analyze 2


    puts "HE - FINISHED GRAVITY"

    # --------------------------
    # End of static analysis
    # --------------------------

    # ----------------------------
    # Start of recorder generation
    # ----------------------------

    recorder Node -file Node.out -time -node $nn -dof 1 disp
    #recorder plot Node.out CenterNodeDisp 625 10 625 450 -columns 1 2


    # --------------------------
    # End of recorder generation
    # --------------------------


    # ---------------------------------------
    # Create and Perform the dynamic analysis
    # ---------------------------------------

    # Remove the static analysis & reset the time to 0.0
    wipeAnalysis
    setTime 0.0

    # Now remove the loads and let the beam vibrate
    remove loadPattern 1

    # add some mass proportional damping
    rayleigh 0.01 0.0 0.0 0.0

    # Create the transient analysis
    test EnergyIncr     1.0e-10    20   0
    algorithm Newton
    numberer RCM
    system Mumps
    constraints Plain 
    integrator Newmark 0.5 0.25
    #integrator GeneralizedMidpoint 0.50
    analysis Transient


    # Perform the transient analysis (20 sec)
    #       numSteps  dt

    #recorder Element -file ele.out -eleRange 1 10 strains
    recorder Element -file 3d/ele.out -eleRange 1 10 material 1 strains

    analyze 2 1.0



```
<small><a href="https://github.com/OpenSees/OpenSees/blob/master/EXAMPLES/LargeSP/Example.tcl" target="_blank">Click here to access this example and more on GitHub</a></small>



