# HPC Allocations

## Introduction { #intro }

The following are the policies governing allocations for compute time and storage on the DesignSafe platform, a comprehensive natural hazards research environment for experimental, theoretical, and computational science. The allocation policy for DesignSafe considers that users may have a range of use cases, from short term analysis work to long term data storage, for very large or very small experiments. All registered users are provided access to the Tools &amp; Applications in a controlled manner that limits the amount of computing capacity, and they may request an additional allocation for various purposes such as the need for larger scale computation or to run applications that are not provided via the portal. New use cases for DesignSafe may emerge—please don’t hesitate to <a href="/help/submit-ticket/" target="_blank">contact the project team</a> if you have additional needs.

## Who is eligible for an Account { #account }

DesignSafe is broadly available to any researcher or practitioner working in <em>open</em> Natural Hazards Engineering and Social Science research. By “<em>open</em>,” the expectation is that any research performed on DesignSafe is unclassified, and will result in publication in a broadly available journal or conference. We also strongly encourage you to <a href="/user-guide/curating/guides/" target="_blank">publish your datasets</a> in our CoreTrustSeal certified data repository.

## Who is eligible for Allocations { #allocation }

All registered users are provided access to the Tools &amp; Applications in a controlled manner that limits the amount of computing capacity, and may request an additional Allocation for various purposes such as the need for larger scale computation or to run applications that are not provided via the portal. An additional allocation via DesignSafe is headed by a project PI, typically a faculty member or research scientist at a US-based academic institution (private sector users are also welcome, see below). The PI may then add additional researchers to their allocation at their discretion. PIs are responsible for ensuring that any users added to their allocation comply with the terms and conditions for use of the DesignSafe and TACC resources. Collaborative projects involving non-U.S. researchers are encouraged as long as they include substantive intellectual participation by the U.S. researchers. In joint research projects, foreign collaborators are eligible to make use of that allocation in a manner consistent with the request. <strong>While a PI is typically a faculty member or staff researcher at a U.S. academic institution</strong>, there are a number of other cases where an individual may be eligible to be a PI:

<ul>
	<li>NSF Graduate Student Research Fellowships: While in most cases, a graduate student is ineligible to be PI of an allocation request, an exception is made for recipients of NSF Graduate Student Fellowships. </li>
	<li>Other federal agencies: Research staff employed by federal agencies or non-NSF FFRDCs are eligible to apply for an allocation if their agency or center does not typically provide research staff with access to resources of adequate scope for the planned research.</li>
	<li>State educational offices or organizations and local school districts may submit allocation requests intended to broaden the impact, accelerate the pace, and increase the effectiveness of improvements in science, mathematics, and engineering education in both K-12 and post-secondary levels. A teacher or educator at an accredited public or private K-12 school is eligible to apply for an allocation as PI.</li>
	<li>Independent museums, observatories, libraries, research laboratories, professional societies and similar organizations in the United States that are directly associated with educational or research activities are eligible.</li>
	<li>U.S. commercial organizations, especially small businesses with strong capabilities in scientific or engineering research or education may apply for an allocation. The DesignSafe project is interested in supporting projects that couple industrial research resources and perspectives with those of universities; therefore, it especially welcomes requests from cooperative projects involving both universities and the private commercial sector. It is necessary for these projects to submit their work in an open forum, and make the work readily available to the public.</li>
</ul>

## Allocation Types and Constraints { #description }

DesignSafe provides access to a variety of computing and storage resources, accessible through several different interfaces: via the web-based Tools &amp; Applications portal, or via API's, or via direct command-line access to TACC's HPC systems. Web-based access via Tools &amp; Applications has built-in constraints that limit the amount of compute time. For users requiring access via API or direct command-line access to HPC resources, they can request additional allocations of computational time and/or data storage. TACC has <a href="https://docs.tacc.utexas.edu/" target="_blank">several different HPC resources</a> and we will provide allocation on the resource that is best suited to achieve your research goals.

### Allocation Sizes and Limits { #allocationsizes }

Additional allocations available via DesignSafe enable researchers to directly access TACC's HPC systems via the command line interface. The following describes the types and sizes of allocations available via DesignSafe. Some users will ultimately require even larger amounts of compute time than is offered under this policy, and when that happens we will recommend other allocation methods for NSF-supported resources that are available such as <a href="https://frontera-portal.tacc.utexas.edu/allocations/" target="_blank">Frontera Allocations</a> or <a href="https://allocations.access-ci.org/" target="_blank">ACCESS Allocations</a>.

<ul>
	<li>Startup Allocation — Startup projects target new users exploring the use of DesignSafe beyond the level of computational time or capabilities provided by the portal-based Tools &amp; Applications and/or planning to submit more substantial requests for computational time in the future as well as users who have modest requirements that nonetheless can’t be met by their own local or institutional resources. A Startup Allocation may request up to 20,000 node-hours annually. </li>
	<li>Research Allocation -- Research projects are designated for projects that have progressed beyond the startup phase and are conducting production usage of the infrastructure in pursuit of their research goals. A Research allocation has a maximum size of 100,000 node-hours annually. Requests above this limit will be considered only in exceptional circumstances with additional justification, and it is recommended the requestor contact the project team to discuss the request before submitting. Otherwise, per the opening paragraph of this section we would direct you to other allocation methods for larger allocations.</li>
	<li>Educational Allocation — Education projects target faculty or teachers intending to use DesignSafe resources for classroom instruction or training classes related to cloud computing technologies. Educational Allocations receive fast track review. An Educational allocation may request up to 10,000 node-hours. </li>
	<li>Data Storage — TACC has <a href="https://docs.tacc.utexas.edu/" target="_blank">several data storage resources</a>. Each HPC resource has a scratch file system for your working files while you are doing your computations, and you can <a href="/user-guide/managingdata/datatransfer/" target="_blank">transfer files</a> you want to keep back to the DesignSafe Data Depot. If you find a need for additional data storage, such as TACC's archival tape system Ranch, you can request allocation as part of a Startup or Research Allocation. </li>
</ul>

Allocations are provided through NSF funding at no direct cost to the end user to anyone who meets the eligibility criteria above. Users who are not eligible for an NSF-provided allocation, may choose to purchase additional compute time or storage capacity from TACC. These services will be provided based on TACC's services rates in effect at the time of purchase. For example as of this writing in January 2024, storage is available for approximately $60/TB/year, and compute time is available for approximately $0.50 per node hour.

### Allocation Limit per PI { #allocationlimit }

An individual may be a PI on only one active DesignSafe additional allocation request at a given time. Several distinct research activities can be combined in a single allocation request, however, the allocation request for each activity must be justified, and any allocation-size limits apply to the aggregate request.

The single-allocation rule is designed to minimize the effort required by PIs for submitting allocation requests and the overhead to the process for reviewing those requests. While PIs may have several different funded grants that require computational support, these should be included as sub-sections within a single allocation request.

Similarly, to minimize the effort required to gain access to DesignSafe, closely collaborating researchers should submit a single collaborative allocation request rather than several individual requests. For example, a PI and associated post-doctoral researchers; investigators supported by the same funding grant; and researchers in the same lab group should consider submitting a request describing and justifying the various sub-activities. One of the collaborators is designated as the PI, and others can be designated as co-PIs.

### Allocation Duration { #duration }

Allocations for DesignSafe resources are made for up to a 12-month period. PIs can continue their activities in subsequent years through annual renewal requests. At the end of each 12-month allocation period, projects forfeit any unused compute SUs. Users with a Startup Allocation need not wait the full 12 months to apply for a Research Allocation, and can apply as soon as they receive preliminary results suitable for their request. Educational Allocations will typically be limited in duration to the academic semester of the class in which they take place.

## Review Criteria for Additional Allocation Proposals { #criteria }

DesignSafe additional allocations are reviewed for merit by a committee consisting of members of the Allocation Advisory Board.  The board makes recommendations to the project team based solely on the merit of the proposal, and not on overall availability of the resource. The board will review the proposal and make a recommendation to the project team based on the following criteria:

<ul>
	<li>Scientific merit and significance of the proposed experiment.</li>
	<li>A methodology appropriate to the use of the DesignSafe resources.</li>
	<li>Success of prior or other existing allocations (for renewals) in terms of published research results and new funding.</li>
	<li>Use of other NHERI-funded facilities.</li>
	<li>Any funded support for the project (not required, but preference may be given to NSF supported projects using NHERI infrastructure; startup allocations can be made for exploratory research that has not yet attracted a source of funding).</li>
</ul>

Proposals that are deemed competitive by the Allocation Advisory Board are then reviewed by the project team for technical feasibility (i.e., can the project be implemented in the DesignSafe environment?) and for the availability of time on the resource. For Research Allocations, proposals will be reviewed at least once per quarter. Startup and Educational Allocation requests receive a fast track review, bypassing the Allocation Advisory Board. DesignSafe project staff will review these requests according to the merit review criteria above, and will act on these requests within two weeks of their submission.

### Conflict of Interest and Confidentiality { #coi }

Every effort is made to avoid conflicts of interest. Reviewers are not allowed to review or be present for the discussion of requests from their home institution, former students, postdocs, advisors, or current and recent collaborators. If in the opinion of a PI a certain individual has a conflict of interest, the PI may request that the individual not act as reviewer on their request. All reviews remain confidential and are made available only to the PI and Co-PIs submitting the request, assigned reviewers from the Allocation Advisory Board, DesignSafe project staff involved in the allocation review process, and NSF program officers for the DesignSafe project. While the contents of reviews and details of allocation requests and experiments remain confidential, a list of projects receiving allocations and the general area of research may be made public on the DesignSafe web site and used in project reports and presentations.

## How to apply for an Additional Allocation { #apply }

A proposal for an additional allocation includes information about the eligibility of the requestor, a description of the research to be performed and its sources of support, and a justification for the amount of resources requested. Detailed guidance is in the following sections. When the proposal is complete it can be submitted via a <a href="/help/new-ticket/" target="_blank">help ticket</a>.

### Allocation Proposal Guidance { #guidance }

A Startup Allocation request consists of the following components:

<ul>
	<li>PI Name, Title, and Organization</li>
	<li>(optional) Co-investigator names, titles, and organizations</li>
	<li>Summary of the proposed research and need for computational resources (1 page maximum)</li>
	<li>Estimated resources required, which includes what software/applications will be used and an estimate of the number of node-hours need for the next 12 months. If you are unsure of how many node-hours to request initially, then request 1,000 node-hours. A Supplement can be requested later if additional time is needed. (1 page maximum)</li>
	<li>List any sources of funding (or pending funding) that support the proposed research, including funding agency and grant name(s) (Startup Allocations may be for unfunded exploratory research)</li>
</ul>

An Educational Allocation request consists of the following components:

<ul>
	<li>PI Name, Title, and Organization</li>
	<li>(optional) Co-investigator names, titles, and organizations</li>
	<li>Summary of the proposed course or training session to be supported, including the expected number of students who will participate (1 page maximum).</li>
	<li>Estimated resources required, which includes what software/applications will be used and an estimate of the number of node-hours need for the next 12 months. If you are unsure of how many node-hours to request initially, then request 1,000 node-hours. A Supplement can be requested later if additional time is needed. (1 page maximum)</li>
	<li>If applicable, list any sources of funding that support the proposed course, including funding agency and grant name(s) (Educational Allocations do not require any external funding)</li>
</ul>

A Research Allocation request consists of the following components:

<ul>
	<li>PI Name, Title, and Organization</li>
	<li>(optional) Co-investigator names, titles, and organizations</li>
	<li>Summary of the proposed research (2 pages maximum).</li>
	<li>Results from any prior Allocations, including Startups.
	<ul>
		<li>Include a list of any publications resulting from prior allocations, including conference presentations, technical reports, in preparation manuscripts, etc.</li>
		<li>Include a list of any broader impacts, including students or postdocs trained, etc.</li>
	</ul>
	</li>
	<li>Estimated resources required, which includes what software/applications will be used and a table that provides information to calculate the total amount of compute time requested for the next 12 months with table headings of (Number of Jobs, Number of Nodes per Job, Job Duration) and then rows for each different job configuration of Nodes per Job or Job Duration. (2 pages maximum)
	<ul>
	</ul>
	</li>
	<li>List any sources of funding (or pending funding) that support the proposed research, including funding agency and grant name(s).</li>
	<li>CVs (no page limit)</li>
	<li>References (optional, no page limit)</li>
</ul>

### Document Formatting { #formatting }

While readability is of greatest importance, documents must satisfy the following minimum requirements. Documents that conform to NSF proposal format guidelines will satisfy these guidelines.

<ul>
	<li>Margins: Documents must have 2.5-cm (1-inch) margins at the top, bottom, and sides.</li>
	<li>Fonts and Spacing: The type size used throughout the documents must conform to the following three requirements:</li>
</ul>

Use one of the following typefaces identified below:

<ul>
	<li>Arial 11, Courier New, or Palatino Linotype at a font size of 10 points or larger;</li>
	<li>Times New Roman at a font size of 11 points or larger; or</li>
	<li>Computer Modern family of fonts at a font size of 11 points or larger.</li>
</ul>

A font size of less than 10 points may be used for mathematical formulas or equations, figures, table or diagram captions and when using a Symbol font to insert Greek letters or special characters. PIs are cautioned, however, that the text must still be readable.

<ul>
	<li>Page Numbering: Page numbers should be included in each file by the submitter.</li>
</ul>

### Supplemental Requests { #supplements }

A supplement is a request for additional resources during an existing allocation's one year time frame. Its purpose is to support changes in the original computational research plan that are required to achieve the scientific goals of the project. This may include altered or new goals, or support for projects proceeding more rapidly than anticipated or that require more resources than anticipated. Supplement awards are highly dependent upon availability of resources. Supplemental requests require a progress report that documents what has been done with the originally awarded allocation, and makes the case for additional resources.

### Extension Requests { #extensions }

Extensions of allocation periods beyond the normal 12-month duration can be requested. This request brings no new allocation, but keeps unused allocations from expiring. A brief reason is required for not using the awarded allocation, but no formal documentation is needed.

### Guidelines for a Successful Allocation Request { #guidelines }

Well-written research allocation requests will meet the following guidelines:

<ul>
	<li>The research is summarized in context of the current state of the art; outlines the computational methods to be used; and relates those methods to subsections of the request.</li>
	<li>Provide sufficient information, without overwhelming details to the reviewers.</li>
	<li>The justification for the request is clear, and closely coupled to the proposed experiments and needs, so that if the committee needs to reduce the original request, it can be done rationally with minimum disruption to the investigator.</li>
	<li>Summarize results from relevant previous allocations, including manuscripts published, accepted, submitted, or in preparation, and relate these results to the current request.</li>
</ul>

The purpose of DesignSafe is to accelerate research progress in natural hazards engineering and to provide cyber services to NHERI awardees. The purpose of the allocations policy is to insure the public investment in DesignSafe is used in the best and fairest possible way across the open research community, while making the request process as simple as possible. Following the principles above helps insure fast and fair decision making for this large public investment.

The project team is interested in receiving as many excellent requests as possible, and encourages any potential investigators who wish to use the resource to not hesitate in contacting the team for additional help in preparing this request, with questions about the process, or to discuss any type of project that may not fit the structure described here. The project team also welcomes input in improving this process, and encourages feedback on both this document and the process.

## Acknowledgement of Support { #support }

An acknowledgement of support from the DesignSafe project and the National Science Foundation should appear in any publication of material, whether copyrighted or not, that describes work which benefited from access to DesignSafe cyberinfrastructure resources. If you wish to acknowledge DesignSafe, the following paper can be used as a reference:

Rathje, E., Dawson, C. Padgett, J.E., Pinelli, J.-P., Stanzione, D., Adair, A., Arduino, P., Brandenberg, S.J., Cockerill, T., Dey, C., Esteva, M., Haan, Jr., F.L., Hanlon, M., Kareem, A., Lowes, L., Mock, S., and Mosqueda, G. 2017. “DesignSafe: A New Cyberinfrastructure for Natural Hazards Engineering,” ASCE Natural Hazards Review, doi:10.1061/(ASCE)NH.1527-6996.0000246.
