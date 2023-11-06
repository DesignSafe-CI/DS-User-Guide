## NOTES & RECOMMENDATIONS
<ul style="margin-top:-20px;">
<li>Always start with a Minimum Working Example (MWE) on the Sequential OpenSees application.</li>
<li>The first step to improve your runtime is to test all materials (material stress-strain behavior) and element sections (such as section/hinge moment curvature/rotation behavior) before running the analyses.</li>
<li>Another way to improve the runtime of your script is to optimize the size of your model. For example, fiber sections are needed only in elements where there is enough variation in axial force or orthogonal moment to affect the moment capacity of a section. Fibers need only be discretized in the direction of bending.</li>
<li>Your runtime can also be improved by using an adaptive convergence script, which reduces your analysis increment or uses a less efficient, but more effective, solution algorithm only at critical convergence points. Don't forget to return to your original analysis increment and algorithm once the critical points are surpassed.</li>
</ul>
