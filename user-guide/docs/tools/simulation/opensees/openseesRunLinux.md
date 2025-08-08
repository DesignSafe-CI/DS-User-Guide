### Running OpenSees at the Linux Terminal

Several DesignSafe platforms allows you to run OpenSees directly in Linux.
This section is dedicated to providing more details on the actual process of running OpenSees in the Linux terminal.

#### Basic Linux Commands

Here are the basic commands you <b>may</b> need.<br>
However, for case of the platforms that have the integrated Jupyter environment, the Interactive-VM and Jupyter Hub, most of these actions can be easily performed in the navigation panel within the workspace.
```
    mkdir dirname : make a new directory
    cd dirname : change directory
    pwd : returns current directory
    ls : list files 
    cp origFile newFile : copy a file
    mv origFile newFile : move a file
    rm filename : remove a file
    wc –l directoryname : how many files in a directory 
    wc –l filename : how many lines in a file 
```

##### Command to run OpenSees Applications at Linux Prompt

<small>
<table width=100%>
<tr><th>Application</th><th>TCL</th><th>Python</th></tr>
<tr><td style="white-space:normal">OpenSees Interactively</td><td style="white-space:normal">OpenSees</td><td style="white-space:normal">python<br>>>import openseespy.opensees as ops </td></tr>
<tr><td style="white-space:normal">OpenSees Script</td><td style="white-space:normal">OpenSees filename.tcl</td><td style="white-space:normal">python filename.py</td></tr>
<tr><td style="white-space:normal">OpenSeesSP</td><td style="white-space:normal">mpiexec -np NP OpenSeesSP filename.tcl </td><td style="white-space:normal">mpiexec -np NP python filename.py </td></tr>
<tr><td style="white-space:normal">OpenSeesMP</td><td style="white-space:normal">mpiexec -np NP OpenSeesMP filename.tcl </td><td style="white-space:normal">mpiexec -np NP python filename.py </td></tr>
</table>
</small>



##### Running OpenSees Parallel Applications
<p>The parallel OpenSees applications require the MPI, which has been preinstalled in the VM. <br>
The Tcl-Interpreter OpenSees applications (OpenSees-Express, OpenSeesSP, and OpenSeesMP) are compiled executable programs. The MPI, therefore, will run NP processes of this executable.<br>
OpenSeesPy, on the other hand, is a python library that has been pre-installed in the VM and is called within the python environment. In this case, therefore, the MPI will run NP Python processes and each process will call its own Python library. In addition, all three OpenSees applications are integrated into a single library, OpenSeesPy.</p>

#### Examples

The following examples give you the command to executed as well as a demonstration of the Interaction with OpenSees:

##### Run Sequential Applications: OpenSees in the TCL interpreter

command: <b><i>OpenSees</i></b>
<br>

```
    (base) jovyan@3cd0f33abec1:~/work$ OpenSees


            OpenSees -- Open System For Earthquake Engineering Simulation
                    Pacific Earthquake Engineering Research Center
                            Version 3.5.1 64-Bit

        (c) Copyright 1999-2016 The Regents of the University of California
                                All Rights Reserved
        (Copyright and Disclaimer @ http://www.berkeley.edu/OpenSees/copyright.html)


        OpenSees > wipe
        OpenSees > model BasicBuilder -ndm 2 -ndf 3
        OpenSees > exit
    (base) jovyan@3cd0f33abec1:~/work$ OpenSees
```

##### Run Sequential Applications: OpenSeesPy in the Python interpreter

command: <b><i>python</i></b>
<br>

```
    (base) jovyan@3cd0f33abec1:~/work$ python
    Python 3.10.6 | packaged by conda-forge | (main, Aug 22 2022, 20:35:26) [GCC 10.4.0] on linux
    Type "help", "copyright", "credits" or "license" for more information.
    >>> import openseespy.opensees as ops
    >>> ops.wipe()
    >>> ops.model('BasicBuilder','-ndm',2,'-ndf',3)
    >>> exit()
    Process 0 Terminating
    (base) jovyan@3cd0f33abec1:~/work$

```


##### Run Parallel Applications: OpenSeesMP in the TCL interpreter

command: <b><i>mpiexec -np NP OpenSeesMP inputFile.tcl</i></b><br>
<small><i>NP=number of processes</i></small>
<br>

```
    (base) jovyan@3cd0f33abec1:~/work$ mpiexec -np 3 OpenSeesMP simpleMP.tcl


            OpenSees -- Open System For Earthquake Engineering Simulation
                    Pacific Earthquake Engineering Research Center
                            Version 3.5.1 64-Bit

        (c) Copyright 1999-2016 The Regents of the University of California
                                All Rights Reserved
    (Copyright and Disclaimer @ http://www.berkeley.edu/OpenSees/copyright.html)


    pid 1 of 3
    pid 0 of 3
    pid 2 of 3
    tclLibUnits.tcl
    tclLibUnits.tcl
    tclLibUnits.tcl
    pid 0 source Ex4.Portal2D.build.InelasticSection.scr.tcl
    pid 0 source Ex4.Portal2D.analyze.Dynamic.EQ.Uniform.scr.tcl
    pid 1 source Ex4.Portal2D.build.InelasticSection.scr.tcl
    pid 1 source Ex4.Portal2D.analyze.Dynamic.EQ.Uniform.scr.tcl
    pid 2 source Ex4.Portal2D.build.InelasticSection.scr.tcl

    .....

    pid 0 inFiles: ./GMfiles/RSN31_PARKF_C08050.at2
    pid 0 file read
    pid 0 OpenSeesMP
    pid 0 count 4 check 1 goRun 0
    pid 0 done infile: ./GMfiles/RSN31_PARKF_C08050.at2
    pid 0 ALL DONE!!!
    Process Terminating 0
    (base) jovyan@3cd0f33abec1:~/work$ 
```


##### Run Parallel Applications: OpenSeesMP in the Python interpreter (OpenSeesPy)

command: <b><i>mpiexec -np NP python inputFile.py</i></b><br>
<small><i>NP=number of processes</i></small>
<br>
```
    (base) jovyan@3cd0f33abec1:~/work$ mpiexec -np 3 python simpleMP.py
    pid 0 of 3
    pid 2 of 3
    pid 1 of 3
    pyLibUnits.tcl.py
    pyLibUnits.tcl.py
    pid 2 sourced pyLibUnits.tcl.py
    pyLibUnits.tcl.py
    ....
    pid 0 inFiles: ./GMfiles/RSN122_FRIULI.A_A-COD000.at2
    pid 0 file read
    pid 0 OpenSeesMP
    pid 0 count 2 check 2 goRun 0
    pid 0 ALL DONE!!!
    Process 0 Terminating
    Process 0 Terminating
    Process 0 Terminating
    (base) jovyan@3cd0f33abec1:~/work$ 
```
</ul>

