## OpenSees Applications

### OpenSees Express

<p>The Sequential OpenSees application, called OpenSees-Express on DesignSafe, runs on a single core in a dedicated Virtual Machine (VM) on DesignSafe. This application should be your starting point for any analysis. </p>
<p>Start here with a Minimum Working Example (MWE) -- a simple script that has all the features of your final one, but uses a small model and few, short, analyses. While some MWEs can be tested on your local manchine, a final test should be done here in "production mode" on DesignSafe.</p>
<p>OpenSees on DesignSafe has enough compute resources for you to run a moderate-sized model with a few loading cases. Because your job is executed immediately, you receive immediate feedback in your iterations as you build and test your model and add complexity to it.</p>
<p>DesignSafe gives you two ways to run the sequential version of OpenSees (called OpenSees-Express): via an interactive interface, or by submitting to the WebPortal with a simple click of a button.</p>

#### Advantages

<ul style="margin-top:-20px;">
<li>Ideal for mall model with few load cases.</li>
<li>Runs on runs on its own, shared, virtual machine (VM). The VM on DesignSafe is configured with several processors are significant memory.</li>
<li>Execution is immediate, there is no queue nor a need for HPC allocation.</li>
<li>Advantages over your local computer: 
   <ul>
   <li>You can access data files available on DesignSafe -- no need for download.</li>
   <li>Your output is stored on DesignSafe -- no need for upload.</li>
   <li>Better compute resources: processor, memory, read/write-speed, disk space.</li>
   </ul>
</li>
</ul>

#### Disadvantages

<ul style="margin-top:-20px;">
<li>The model and the analysis are handled by a single processor, so all analyses are run sequentially.</li>
<li>The VM is a shared resource.</li>
</ul>


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



### OpenSeesMP

<p>The 'Multiple Parallel Interpreters' application <b>OpenSeesMP</b> is intended for running many analyses with small to large models. This application is the most versatile parallel application which allows, and requires, full control by the user. </p>
<p>When running on a parallel machine, each processor is running the same interpreter and processes the same input script. The user has control at both the command-line level (if running OpenSeesMP interactively) and scripting level to specify the different work that each processor performs, both in terms of domain decomposition and parametric analysis being run. The tasks are assigned by the script to each processor on the basis of its id (PID). </p>

<p>Parallelization-control is fully manual and prescribed by the user via the script:
<ul style="margin-top:-20px;">
   <li><b>Domain Decomposition:</b> user must assign nodes, elements, loads, etc. to each processor manually. Domain decomposition is recommended for large models, as it distributes the state determination and solution (Gaussian Elimination) to different processes. By controlling which domain objects are assigned to which processor, the user can control the content of each recorder file by grouping recorder data by processor.</li>
   <li><b>Parallel Parametric Analyses:</b> user must assign each parametric analysis to a specific processor manually. Distributing the analyses to different processors is recommended for large parametric studies. Total runtime may be improved by taking advantage of dynamic load balancing solutions. You can learn more about dynamic load balancing in OpenSees from the Dr. Frank McKenna's 2013 workshop: <a href="https://www.youtube.com/watch?v=Pl87Msn0g58/" target="_blank">Dynamic Load Balancing With OpenSeesMP</a></li>
</ul>
</p>

#### Advantages

<ul style="margin-top:-20px;">
<li>Fast, versatile, and powerful.</li>
<li>Ideal for parameteric analyses.</li>
<li>User has full control of the design of parallelization front-end -- which processors do what.</li>
<li>Parallelization backend is implemented by OpenSees directly, thus faster than implementing external libraries.</li>
<li>The additional script commands required for parametric analyses are minimal and few. They can be found in many published examples.</li>
<li>Total runtime may be improved by taking advantage of dynamic load balancing solutions.</li>
<li>No allocation is needed if the job is submitted via the DesignSafe WebPortal (run-time limitations apply)</li>
</ul>

#### Disadvantages

<ul style="margin-top:-20px;">
<li>Runs on HPC, hence it has a queue</li>
<li>Parallelization-control is fully manual</li>
<li>Additional script needed for parametric analysis</li>
<li>Domain decompositon, with its additional scripting requirements, requires extra effort and time to build</li>
<li>Load imbalance can greatly reduce the performance, so it should be monitored</li>
</ul>

#### Additional commands used in OpenSeesMP -- TCL Interpreter

<p>Each process in OpenseesMP is assigned an ID by the MPI (message passing interface) at the start. Because all processes are running the same script and the tasks are assigned by ID, the script needs to request the process's ID at the very beginning. To distribute the load evenly between all the processes, the script also needs to know the number of processes. The following additional commands have been added to Opensees: 
<ul style="margin-top:-20px;">
   <li><b>getNP</b>: returns the total number of processors assigned to the user for the job;</li>
   <li><b>getPID</b>: returns a unique processor number ranging between 0 and ($getNP-1);</li>
   <li>Sample Script:</li>
```
    set pid [getPID]
    set np [getNP]
```   
</ul>
</p>
<p>Using these commands it is possible for the user to perform their own domain decomposition analysis. The getNP and getPID allow the user to specify which nodes and elements are created on which processor. The user however, must specify a parallel solver and numberer if this is their intent using a modified system and numberer command described next.</p>
<p>The following commands are necessary if your processes are interdependent:
<ul style="margin-top:-20px;">
   <li><b>send –pid $pid $data</b>: to send the data from a local process to a process whose process id is given by the variable pid. Pid must be in the range 0 to [expr[getNP]-1];</li>
   <li><b>recv –pid $pid variableName</b>: to receive data from a remote process and set the variable named variableName to be equal to that data. Pid must be set {0,..[expr [getNP] -1, ANY}. If the value of $pid is ANY, the process can receive data from any process;</li>
   <li><b>barrier</b>: causes all processes to wait until all process reach this point in the code.
</ul>
</p>



#### Changes to the script with Examples

<p>When using OpenSeesMP, you need to augment your script to manually assign subdomains or analyses to the different processors, as well as update some analysis objects to ones that can handle parallel computing. These commands, in the equivalent python format, are also available in OpenSeesPy</p>
<ol style="margin-top:-20px;">
<li>For large models, when doing domaindecomposition a paralell numberer and system MUST be specified:
   <ul>
      <li> Change how degrees-of-freedom are numbered (Numberer Command) to one of the following:
      <ul>
            <li>numberer ParallelPlain</li>
            <li>numberer ParallelRCM</li>
         </ul>
      </li>
      <li>Change the System of Equation and the Solver (System Command) to one of the following:
         <ul>
            <li>system ParallelProfileSPD</li>
            <li>system Mumps</li>
            <li>system Petsc</li>
         </ul>
      </li>
   </ul>
</li>
<li>For parametric analyses, you need assign analysis a set of tasks to each processor manually. Here is a sample script:

```
   set np [getNP]; # obtains the number of processors
   set pid [getPID]; # obtains the Processor ID
   set par_list [open "variable_list.txt" r]; # defines the list of variables
   set countP 0; # initiates a count to split the analyses
   foreach val [split [read $par_list] \n] {; # loops through the variables
      if {[expr $countP % $np] == $pid} {; # assigns each analysis to one processor
         set valuesList [split $val "/"]; # reads one value of the variable
         set grade [lindex $valuesList end]; # assigns the value to the variable
         source Sequential_script.tcl; # calls the sequential script
         wipe; # cleans the workspace
      }
      incr countP 1; # increases the count to move to the
      next analysis;
   }
```
</li>
<li> For domain decomposition, you need a subdomain (nodes, elements, loads, etc.) to each processor manually. Here is a sample script for adding nodes:
```
   set np [getNP]; # obtains the number of processors
   set pid [getPID]; # obtains the Processor ID
   ....
   # add the nodes
   set counter 1
   for {set i 0} {$i<=[expr $np*$nz]} {incr i 1} {
      for {set j 0} {$j<=$ny} {incr j 1} {
         for {set k 0} {$k<=$nx} {incr k 1} {
            if {($i >= [expr $pid*$nz]) && ($i <= [expr ($pid+1)*$nz])} {
               node $counter [expr $k*$dx] [expr $j*$dy] [expr $i*$dz]
            }
            incr counter
         }
      }
   }
   ...
```      
 <a href="https://github.com/OpenSees/OpenSees/blob/master/EXAMPLES/ParallelModelMP/exampleMP.tcl" target="_blank">Click here for the full example of domain decomposition in OpenSeesMP</a></li>
<li>
Example on using inter-process commands:
```
   set pid [getPID]
   set np [getNP]
   if {$pid == 0 } {
      puts ”Random:"
      for {set i 1 } {$i < $np} {incr i 1} {
         recv -pid ANY msg
         puts "$msg"
      }
   } else {
      send -pid 0 "Hello from $pid"
   }
   barrier
   if {$pid == 0 } {
      puts "\nOrdered:"
      for {set i 1 } {$i < $np} {incr i 1} {
         recv -pid $i msg
         puts "$msg"
      }
   } else {
      send -pid 0 "Hello from $pid"
   } 
```
<a href="https://opensees.berkeley.edu/OpenSees/workshops/OpenSeesWorkshop.pdf" target="_blank">Click here for full presentation where you find this example</a>
</li>
</ol>

#### Example Script from OpenSees GitHub

The following example was uploaded to the OpenSees Github by Dr. Frank McKenna

```
   ###########################################################################
   ## OpenSeesMP example by Dr. Frank McKenna
   ## https://github.com/OpenSees/OpenSees/blob/master/EXAMPLES/ParallelModelMP/exampleMP.tcl
   ###########################################################################
   wipe

   # some parameters
   set numP [getNP]
   set pid  [getPID]

   set d 500.
   set b 1300.
   set L 1800.0

   set nx 2
   set ny 3
   set nz 1; # nz per processor

   set dx [expr $d/($nx*1.0)]
   set dy [expr $b/($ny*1.0)]
   set dz [expr $L/($numP * $nz)]

   # create the modelbuilder
   model Basic -ndm 3 -ndf 3

   # add a material
   set E 30000.
   set v 0.2
   nDMaterial ElasticIsotropic   1   $E $v

   # add the nodes
   set counter 1
   for {set i 0} {$i<=[expr $numP*$nz]} {incr i 1} {
      for {set j 0} {$j<=$ny} {incr j 1} {
      for {set k 0} {$k<=$nx} {incr k 1} {
         if {($i >= [expr $pid*$nz]) && ($i <= [expr ($pid+1)*$nz])} {
         node $counter [expr $k*$dx] [expr $j*$dy] [expr $i*$dz]
         }
         incr counter
      }
      }
   }

   set numNode [expr ($nx+1)*($ny+1)*($numP*$nz+1)]

   # add the elements
   set counter 1
   for {set i 0} {$i<$numP*$nz} {incr i 1} {
            for {set j 0} {$j<$ny} {incr j 1} {
            set iNode [expr $i*($nx+1)*($ny+1) + 1 + $j*($nx+1)]
            set jNode [expr $iNode+1]
            set lNode [expr $iNode+($nx+1)]
            set kNode [expr $lNode+1]
            
            set mNode [expr ($i+1)*($nx+1)*($ny+1) + 1 + $j*($nx+1)]
            set nNode [expr $mNode+1]
            set pNode [expr $mNode+($nx+1)]
            set oNode [expr $pNode+1]
   
      for {set k 0} {$k<$nx} {incr k 1} {
               if {$i >= [expr $pid*$nz] && $i < [expr ($pid+1)*$nz]} {
               element stdBrick $counter $iNode $jNode $kNode $lNode $mNode $nNode $oNode $pNode 1
            }
         incr counter
         incr iNode 1
         incr jNode 1
         incr kNode 1
         incr lNode 1
         incr mNode 1
         incr nNode 1
         incr oNode 1
         incr pNode 1
      }
      }
   }

   fixZ 0.0 1 1 1 

   if {$pid == [expr $numP-1]} {
      timeSeries Linear 1
      pattern Plain 1 1 {
      load $numNode 10. 10. 0.
      }
   }

   integrator LoadControl 1.0
   algorithm Linear
   numberer Plain
   constraints Plain
   system Mumps
   analysis Static

   analyze 1
   puts "HI"

   if {$pid == [expr $numP-1]} {	
      set disp [nodeDisp $numNode 1]
      puts "$disp"
   }
   wipe
   
```
<small><a href="https://github.com/OpenSees/OpenSees/blob/master/EXAMPLES/ParallelModelMP/exampleMP.tcl" target="_blank">Click here to access this example and more on GitHub</a></small>
### OpenSeesPy

<p>OpenSeesPy is the Python-Interpreter version of OpenSees. Because it is produced from the same source code, it has the same features as OpenSees. Even though the input format is structured in Python, the commands follow the same order as those of the Tcl version. OpenSeesPy has the following unique features:</p>
<ul style="margin-top:-20px;">
    <li>It integrates all OpeSees applications, sequential and parallel, into a single library (see section below).</li>
    <li>It is not a self-contained executable, it is a Python library and runs within the Python envornment.</li>
    <li>It needs to be installed via pip on your system (it has been pre-installed in some DesignSafe environments).</li>
    <li>It is imported into a script in the same way as other libraries (<i>import openseespy.opensees as ops</i>).</li>
    <li>Because it is a Python library, you can enrich your python envirnements with a plethora of libraries to integrate OpenSees into your workflow seamlessly</li>
    <li>The many graphics libraries available in Python enable you to visualize your model and its components, such as materials, with only a few commands.</li>
    <li>The ability to use it Jupyter Notebooks produce interactive publication-ready documents.</li>
    <li>Yes you can intergrate OpenSees-Tcl runs into your Jupyter notebook, but in that case you first create an external input file with recorders, run OpenSees externally, and then upload the recorder data. In this case you cannot interact with the OpenSees environment, such as the domain, in the same way you can when OpenSeesPy is integrated in your python script.</li>
</ul>



#### Parallel Applications in OpenSeesPy

<p>The current version of OpenSeesPy available on DesignSafe does not have the capability of inter-process communication. As a result domain decomposition not possible right now. However, the parallel-analyses features of OpenSeesMP can still be run by letting the external MPI and Python manage the processes via the library mpi4py.<br>
Because OpenSeesPy is a python library rather than an executable, the MPI runs multiple instances of python and assigns a different process-ID (PID) to each. This is the same concept as OpenSeesMP, however, the program being called by the MPI is Python, not OpenSees, hence we use the python process-communication commands, which are part of the mpi4py library (which must be installed and imported in the script):
<ul style="margin-top:-20px;">
   <li><b>Get_size</b>: like getNP, it returns the total number of processors assigned to the user for the job;</li>
   <li><b>Get_rank</b>: like getPID, it returns a unique processor number ranging between 0 and ($getNP-1);</li>
   <li>If you use the OpenSeesPy commands, getNP and getPID will always return a single processor with ID=0: <b>getNP()=1</b> <b>getPID()=0</b></li>
   <li> Once you have pid and np, you use them in the same way as you do in OpenSeesMP. But only to run different parametric analysis, not in domain decomposition!</li>

   <li>Sample Script:
```
import openseespy.opensees as ops
from mpi4py import MPI

comm = MPI.COMM_WORLD
pid = comm.Get_rank()
np=comm.Get_size()

## define ParameterList

for count,thisParameter in enumerate(ParameterList):
    if count % np == pid:
        ops.wipe()
        ## Build-Model Commands 
        ## Analysis Commands
        ops.wipe()
    	print(f'pid {pid} done parameter: {thisParameter})'
print(f'pid {pid} ALL DONE!!!')
```
</li>
<li>Example commands to run a script with 5 processes from the Linux terminal window. Note: mpiexec has already been installed in DesignSafe. OpenSeesPy and mpi4py have already been installed in the Interactive-VM:
```
pip install OpenSeesPy
pip install mpi4py
mpiexec -np 5 python simpleMP.py
```
</li>
</ul>
</p>



