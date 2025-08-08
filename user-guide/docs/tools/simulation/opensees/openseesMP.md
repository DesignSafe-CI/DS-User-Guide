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
