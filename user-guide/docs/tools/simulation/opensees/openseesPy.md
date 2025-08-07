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



