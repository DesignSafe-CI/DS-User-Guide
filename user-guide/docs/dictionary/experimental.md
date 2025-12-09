Below are the minimal amount of elements required to describe the experimental datasets in DesignSafe. The elements represent the structure of the datasets, are useful for data discovery and allow proper citation of the data publication. The tables show the definition of each metadata element and how it maps to a <a href="https://en.wikipedia.org/wiki/Metadata_standard" target="_blank">metadata standard</a> such as <a href="https://dublincore.org/specifications/dublin-core/dcmi-terms/#contributor" target="_blank">Dublin Core</a> or <a href="https://ddialliance.org/Specification/DDI-Lifecycle/3.2/XMLSchema/FieldLevelDocumentation/" target="_blank">Data Documentation Initiative</a>. Elements specific to natural hazards engineering that do not map to a metadata standard were defined by DesignSafe simulation and data requirements team members. All research project types share some basic metadata elements. Those metadata elements are listed in the generic [Other Project Type](/user-guide/dictionary/#other).


<table border="1" cellpadding="5">
<thead>
	<tr>
		<th> Metadata Term </th>
		<th> Definition </th>
		<th> Metadata Standard Mapping </th>
	</tr>
</thead>
<tbody>
	<tr>
		<td> <p style="margin: 0px; padding: 5px;">Experiment</p> </td>
		<td> <p style="margin: 0px; padding: 5px;">A scientific process undertaken to make a discovery, test a hypothesis, or demonstrate a known fact.</p> </td>
		<td> <p style="margin: 0px; padding: 5px;"><a href="https://en.wikipedia.org/wiki/Experiment" target="_blank">DesignSafe</a></p> </td>
	</tr>
	<tr>
		<td>
		<p style="margin: 0px; padding: 5px;">Experiment Report</p>
		</td>
		<td>
		<p style="margin: 0px; padding: 5px;">Written accounts made to convey information about an entire project or experiment.</p>
		</td>
		<td>
		<p style="margin: 0px; padding: 5px;"><a href="https://schema.datacite.org/meta/kernel-4.3/doc/DataCite-MetadataKernel_v4.3.pdf" target="_blank">DataCite: ResourceType: Data Paper</a></p>
		</td>
	</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">DOI</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">Digital Object Identifier. An unambiguous reference to the resource within a given context.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/terms/identifier" target="_blank">Dublin Core: Identifier</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Experiment Title</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">A name given to the resource.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/terms/title" target="_blank">Dublin Core: Title</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Author</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">An entity primarily responsible for making the resource.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/elements/1.1/creator" target="_blank">Dublin Core: Creator</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Experiment Description</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">An account of the resource.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/terms/description" target="_blank">Dublin Core: Description</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Date of Publication</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">A point or period of time associated with an event - publication- in the lifecycle of the resource.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/terms/date" target="_blank">Dublin Core: Date</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Date of Experiment</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">A point or period of time associated with an event - experiment - in the lifecycle of the resource.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/terms/date" target="_blank">Dublin Core: Date</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Experimental Facility</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">The site where an experiment is planned, built, instrumented, and conducted.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.designsafe-ci.org/facilities/experimental/" target="_blank">DesignSafe</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Experiment Type</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">The nature or genre of the resource (experiment).</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/elements/1.1/type" target="_blank">Dublin Core: Type</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Model Configuration</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">Files describing the design and layout of what is being tested (some call this a specimen).</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://schema.datacite.org/meta/kernel-4.3/doc/DataCite-MetadataKernel_v4.3.pdf" target="_blank">DataCite: Model</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Sensor Information</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">Files about the sensor instrumentation used in a model configuration to conduct one or more event.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">DesignSafe</p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Event</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">Files from unique occurrences during which data are generated.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/dcmitype/Event" target="_blank">DublinCore: Event</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Analysis</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">Tables, graphs, visualizations, Jupyter Notebooks, or other representations of the results.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">DesignSafe</p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Analysis Title</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">A name given to the resource.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/terms/title" target="_blank">Dublin Core: Title</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Analysis Description</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">An account of the resource.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/terms/description" target="_blank">Dublin Core: Description</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Referenced Data</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">A related resource that is referenced, cited, or otherwise pointed to by the described resource.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/terms/references" target="_blank">Dublin Core: References</a></p>
			</td>
		</tr>
	</tbody>
</table>

