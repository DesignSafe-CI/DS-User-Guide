### OpenSees-Project "Size"

As you plan your OpenSees project on DesignSafe, you need to have an idea of the project's "size," which is defined by its scope. The project scope is defined by the size of your model and the type and number of parametric analyses.

Understanding the scope of your project, and how that scope grows in "size", will help you choose the right OpenSees application as well as DesignSafe platform.

1. The <b>Model Size</b> affects the size of the system of equations that must be solved (the matrix that needs to be inverted) as well as the number of nonlinear state determinations which can be iterative. <br>
Here are a few items that affect Model Size:
    <ul>
        <li>Model dimensions (1-3).</li>
        <li>Number of DOFs per node (1-6): This is controlled by the types of elements being used, as well as the model dimensions. Quadrilateral elements, for example, only have translational dofs at the nodes, while beam-column elements have both translations and rotations. However, quad elements have at least 4 nodes, while beam-column elements have two.</li>
        <li>Total number of nodes and elements.</li>
        <li>Type of elements being used: elastic elements require fewer resources that nonlinear or highly-discretized elements and sections. </li>
        <li>Element discretization: force-formulation B-C elements have at least 4 integration points. Displacement-formulation B-C elements need more elements per structural element.</li>
        <li>Sections: Fiber sections require more memory and processing times.</li>
        <li>Materials: Some material formulations store and update a large number of internal variables. Each instance of this material has its own memory requirements. Also, some materials require more iterations than others.</li>
        <li>Memory management: Some OpenSees objects may not have the most optimized memory management system.</li>
    </ul>


1. The <b>Analysis Parametrization</b> is defined by the different configurations being analyzed, which defines how many times you need to run an OpenSees analysis, and how:
    <ul>
        <li> <b>Model Parametrization</b>: Variations of a model characteristics, such as building configuration, soil-layer discretization, material properties, etc.</li>
        <li> <b>Loading Parametrization</b>: Variations of loading, such number of earthquake ground motions or different wind-load incident angles.</li>
        <li> <b>Type of Parametrization</b>: The type of parametrization determines how the analyses will be run. Are the values in the variation of each parameter dependent or independent of each other? <br>
            --> If the input values of a parameter set are <b>independent</b> of each other the analyses can be run concurrently in <b>parallel</b>. An example of this case is found in earthquake-engineering applications when a system is subjected to a suite of ground motions. <br>
            --> In optimization problems trying to find a local minimum, for example, the input-parameter values of one analysis are <b>dependent</b> on the results of a previous analysis. In this case the analyses need to run <b>sequentially</b>. Many studies can be a combination of these two types or parametrization.
        </li>
    </ul>



