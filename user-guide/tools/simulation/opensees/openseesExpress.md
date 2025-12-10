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


