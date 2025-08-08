## OpenSees User Guide

The Open System for Earthquake Engineering Simulation ([OpenSees](http://opensees.berkeley.edu/){target="_blank"}) is a software framework for simulating the static and seismic response of structural and geotechnical systems. It has advanced capabilities for modeling and analyzing the nonlinear response of systems using a wide range of material models, elements, and solution algorithms.

One sequential (OpenSees-EXPRESS) and two parallel interpreters (OpenSeesSP and OpenSeesMP) are available on DesignSafe. Please explore the desired interpreter for more details.

<b>OpenSees-EXPRESS</b>

OpenSees-Express provides users with a sequential OpenSees interpreter. It is ideal to run small sequential scripts on DesignSafe resources freeing up your own machine.

<b>OpenSeesSP</b>

OpenSeesSP is an OpenSees interpreter intended for high performance computers for performing finite element simulations of very large models on parallel machines. OpenSeesSP is easy to use even with limited knowledge about parallel computing. It only requires minimal changes to input scripts to make them consistent with the parallel process logic. <!-- OpenSeesSP runs on up to 12 KNL Nodes on Stampede2, with 64 cores per Node. -->

<b>OpenSeesMP</b>

OpenSeesMP is an OpenSees interpreter intended for high performance computers for performing finite element simulations with parameteric studies and very large models on parallel machines. OpenSeesMP requires understanding of parallel processing and the capabilities to write parallel scripts. <!-- OpenSeesMP runs on up to 12 KNL Nodes on Stampede2, with 64 cores per Node. -->


