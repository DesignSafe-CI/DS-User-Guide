Below are the minimal amount of elements required to describe the simulation datasets in DesignSafe. The elements represent the structure of the datasets, are useful for data discovery and allow proper citation of the data publication. The tables show the definition of each metadata element and how it maps to a <a href="https://en.wikipedia.org/wiki/Metadata_standard" target="_blank">metadata standard</a> such as <a href="https://dublincore.org/specifications/dublin-core/dcmi-terms/#contributor" target="_blank">Dublin Core</a> or <a href="https://ddialliance.org/Specification/DDI-Lifecycle/3.2/XMLSchema/FieldLevelDocumentation/" target="_blank">Data Documentation Initiative</a>. Elements specific to natural hazards engineering that do not map to a metadata standard were defined by DesignSafe simulation and data requirements team members. All research project types share some basic metadata elements. Those metadata elements are listed in the generic [Other Project Type](/user-guide/dictionary/#other).

<table border="1" cellpadding="0" width="100%">
	<thead>
		<tr>
			<th width="20%">
			<p style="margin: 0px; padding: 10px 5px;">Metadata Term</p>
			</th>
			<th width="60%">
			<p style="margin: 0px; padding: 10px 5px;">Definition</p>
			</th>
			<th width="20%">
			<p style="margin: 0px; padding: 10px 5px;">Metadata Standard Mapping</p>
			</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Simulation</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">The imitation of the operation of a real-world process or system over time.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://en.wikipedia.org/wiki/Simulation" target="_blank">DesignSafe</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Simulation Title</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">A name given to the resource</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/terms/title" target="_blank">Dublin Core: Title</a></p>
			</td>
		</tr>
		<tr>
			<td><p style="margin: 0px; padding: 5px;">DOI</p></td>
			<td><p style="margin: 0px; padding: 5px;">Digital Object Identifier. An unambiguous reference to the resource within a given context.</p></td>
			<td><p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/terms/identifier" target="_blank">Dublin Core: Identifier</a></p></td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Author</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">The creator of a resource.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/elements/1.1/creator" target="_blank">Dublin Core: Creator</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Simulation Description</p>
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
			<p style="margin: 0px; padding: 5px;">Simulation Type</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">The nature or genre of the resource (simulation).</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/elements/1.1/type" target="_blank">Dublin Core: Type</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Simulation Model</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">Files and/or information describing the design, geometry, and/or code of a simulation.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://schema.datacite.org/meta/kernel-4.3/doc/DataCite-MetadataKernel_v4.3.pdf" target="_blank">Data Cite: Model</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Simulation Input</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">Files containing the parameters of the simulation.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">DesignSafe</p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Simulation Output</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">Files containing the results of a simulation.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">DesignSafe</p>
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
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Simulation Report</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">Written accounts made to convey information about an entire project or simulation.</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;"><a href="https://schema.datacite.org/meta/kernel-4.3/doc/DataCite-MetadataKernel_v4.3.pdf" target="_blank">Data Cite: ResourceType: Data Paper</a></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="margin: 0px; padding: 5px;">Analysis</p>
			</td>
			<td>
			<p style="margin: 0px; padding: 5px;">A computational examination of the data resultant from an experiment, simulation, or hybrid simulation typically as a basis for discussion or interpretation.</p>
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
	</tbody>
</table>

