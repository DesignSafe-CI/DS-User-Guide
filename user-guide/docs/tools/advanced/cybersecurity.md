# Cybersecurity Policy

DesignSafe is an open CI that enables and supports leading-edge scientific discovery and promotes science and technology education. While it must be a widely accessible platform, a balanced approach to cybersecurity is required to support the confidentiality and integrity of the CI by architecting for security best practices, employing risk-based methodologies, and establishing a common project-wide approach to meet the needs of all NHERI awardees.

DesignSafe implements cybersecurity based upon TACC's well-established approach that is compliant with the federal standards in the Federal Information Security Management Act (FISMA) in NIST Special Publication 800-53 Revision 4. We implement authentication, authorization and accounting (AAA) based on TACC's mature, proven system, and featuring Toopher multi-factor authentication. The DesignSafe AAA will be federated with InCommon via TACC's current affiliation, providing users single sign-on convenience. DesignSafe benefits from The Bro Network Security Monitor intrusion detection system that is already implemented to protect all information systems in the TACCdatacenter. As the NHERI-CI lead, we establish and implement the NHERI-wide cybersecurity policy and procedure. The DesignSafe Cybersecurity lead, TACC's Information Security Officer Mendoza, will:

<ul>
	<li>lead a Security Working Group comprised of members from eachNHERI awardee,andestablish incident response protocols including coordinating with the 24/7/365 operations center at TACC;</li>
	<li>develop cybersecurity policy and procedures for all awardees including baseline security guidelines/minimum requirements, user acceptable use policy, privileged user policy, network security, data confidentiality and privacy;</li>
	<li>establish and perform risk/threat analysis with all NHERI awardees;</li>
	<li>adapt/modify TACC's current cybersecurity audit process for use in the NHERI program, conduct an annual cybersecurity audit, and provide an audit report toCouncil and NSF;</li>
	<li>collaborate with cybersecurity teams of other major CI projects (iPlant, XSEDE, OSG, etc.) to ensure continued best practices are employed, and for awareness of incidents on those other CI projects that could impact DesignSafe;</li>
	<li>attend and participate in an annual NSF-supported Cybersecurity Summit, such as those provided by the Center for Trustworthy Scientific Cyberinfrastructure of which TACC attends regularly.</li>
</ul>

The following is the DesignSafe Security Plan, as adapted from TACC's Security Plan. This Security Plan forms the basis by which other NHERI sites will be audited and is the baseline security posture for NHERI Awardees. Successful implementation of the Cybersecurity Program will be measured by completing the security audits and by completing resolution of any audit results.

## 1. Roles and Responsibilities { #1 }

While cybersecurity is the responsibility of all stakeholders, specific duties and responsibilities of certain key individuals is made explicit here for the sake of clear accountability.

### 1.1. DesignSafe Management Team { #1.1 }

Ultimately, overall responsibility for the success of the DesignSafe CI lies with the management team comprised of the DesignSafe PI/Project Director Ellen Rathje, co-PI's Clint Dawson, Jamie Padgett, Jean-Paul Pinelli, and Dan Stanzione, Deputy Project Director Tim Cockerill, Project Manager Natalie Henriques and Portal Lead Steve Mock. This management team will be assisted by the DesignSafe CSO in the matter of the cybersecurity program and its overall goals, objectives, and priorities in order to support the overall mission of DesignSafe. The senior management team is also responsible for ensuring that adequate resources are applied to the security program to ensure its success.

### 1.2. DesignSafe Chief Security Officer { #1.2 }

The DesignSafe CSO Nathaniel Mendoza, also TACC's Information Security Officer, directs DesignSafe's day-to-day management of its security program, including maintaining a secure environment for the DesignSafe CI, providing security advice to the DesignSafe user community, conducting regular security audits, and coordinating all security related interactions among the various participating NHERI organizations as the leader of the Security Working Group.

### 1.3. NHERI Awardees { #1.3 }

To ensure that proper security measures are taken by each of the NHERI Awardees (each EF, NCO, SimCenter, and RAPID), local site security is ultimately the responsibility of each NHERI Awardee Principal Investigator. Each awardee will identify a main point of contact to participate in the NHERIwide Security Working Group, coordinate with the DesignSafe CSO for security audits, and be a member of the incident response team.

### 1.4. Security Working Group { #1.4 }

The DesignSafe CSO is the leader of this working group, and members are the local site security points of contact from each of the other NHERI awardees – one each from the seven EF's, one from the RAPID facility, one from the SimCenter, and one from the NCO. Communications will be maintained via a monthly Zoom virtual meeting and via an email list. The annual security audits will be done virtually as well.

## 2. Administrative Safeguards { #2 }

### 2.1. Risk Assessment { #2.1 }

#### 2.1.1.Risk Assessment Policy and Procedures { #2.1.1 }

DesignSafe's risk assessment policy and procedures are developed, reviewed, updated and disseminated by the DesignSafe CSO. This is done annually, or as needed if urgent security information becomes available and new resources are brought online in the information system. Risk assessment identifies threats to and vulnerabilities of DesignSafe's information system.

#### 2.1.2.Risk Assessment { #2.1.2 }

DesignSafe risk assessment takes into account vulnerabilities, threat sources and security controls that are planned or in place to determine the resulting level of residual risk posed to DesignSafe's operations, assets or individuals based on the operation of the information system. Risk assessments are conducted and results documented as threats are identified and addressed.

### 2.2. Audit { #2.2 }

DesignSafe's comprehensive cybersecurity approach includes a security audit at each of the NHERI Awardees performed once a year. The audits use security best practices to verify that each server-class system operating at a NHERI Awardee site is operating in a manner to limit the potential for security incidents and breaches. Security incidents and data breaches could invalidate data being collected by scientists, damage experimental equipment, and spread the damage to the DesignSafe resources. No system can be perfectly secure, but regular audits of the system provide vital information for the regular upkeep and secure maintenance of the server systems.

#### 2.2.1.Schedule for Audits { #2.2.1 }

Each NHERI Awardee together with the DesignSafe CSO will determine an appropriate time schedule for performing the audit. This will be coordinated within 6 months after NSF awards are made with each NHERI Awardee. The audits will generally be done once a year, and will be performed virtually. However, in the event that a security incident occurs then further audits may be done. In all cases, the timing for the audit will be decided in consultation with the NHERI Awardee, such that the site operations are minimally affected and the resources of the site IT staff are optimally utilized.

#### 2.2.2.Actions following the Audits { #2.2.2 }

If there are audit findings, the DesignSafe CSO will recommend corrective actions for the NHERI Awardee to implement. A formal report will be generated once a year that summarizes the results of the audits for each NHERI Awardee. The report will identify the assets that were a part of the audit, where the audit did find vulnerabilities and security breaches, and remediation actions, both short term and long term. This report will not be for public disclosure, keeping in view the security sensitive nature of the information, but will be made available to the NSF.

## 3. Technical Safeguards { #3 }

### 3.1. Proactive Security Monitoring and Detection { #3.1 }

The DesignSafe resources are protected within the TACC datacenter by a firewall and a Bro Intrusion Detection system that monitors 100% of the network traffic and can automatically block IP's. Further automated analysis and detection is accomplished by ingesting logs from all datacenter resources into TACC's Splunk Operational Intelligence system. TACC's 24/7/365 Operations staff receive notifications from these monitoring systems and can take corrective action and notify the CSO which initiates the formal incident response. Additionally, users can report an incident via the DesignSafe Help system that will also notify TACC's Operations staff.

All connection to the DesignSafe CI, for example from EF site servers, must be encrypted and all data transport is encrypted e.g. using SSH, HTTPS, etc.

### 3.2. Vulnerability Scanning { #3.2 }

DesignSafe uses appropriate vulnerability scanning tools and techniques, scanning for vulnerabilities in the information system weekly using a third-party software tool and ad-hoc as needed such as after major systems changes or when significant new vulnerabilities potentially affecting the system are identified and reported.

## 4. Administrative Safeguards { #4 }

### 4.1. Authentication and Authorization { #4.1 }

DesignSafe's plan for Authentication and Authorization is utilizes TACC's well-established and proven infrastructure for a secure CI environment.

### 4.2. Access Control { #4.2 }

Identification, authentication, and authorization are controls that facilitate access to and protect DesignSafe resources and data. Access to non-public resources will be achieved by unique user credentials and will require authentication.

DesignSafe will assign a username and password for identification and authentication purposes to each individual that has a need to access DesignSafe resources. In all cases, only the minimum privileges necessary to complete required tasks are assigned to that individual. Privileges assigned to each individual will be reviewed on a periodic basis and modified or revoked upon a change in status within the DesignSafe community. All DesignSafe resources must use only encrypted authentication and authorization mechanisms unless otherwise authorized by the CSO.

## 5. Policy and Procedures { #5 }

### 5.1. Creating User Accounts { #5.1 }

DesignSafe user accounts will be created as TACC user accounts, and users will be required to provide identification information that enables TACC user services personnel to ensure we are compliant with University of Texas, state, and federal laws and regulations per standard TACC user policies. We will also federate account creation with InCommon, such that users can link their InCommon identity with a TACC identity and use their local institution credentials.

### 5.2. User Credentials { #5.2 }

DesignSafe will initially use single-factor authentication via a user password. Multi-factor authentication is being phased into TACC's authentication infrastructure, and if deemed necessary will be applied to the DesignSafe CI. For multi-factor authentication, users would have a password and in addition a second mechanism of a short-lived access code provided by a fob or via mobile device app. The use of group accounts for administrative purposes and shared passwords for those accounts will be minimized where technically feasible. DesignSafe staff requiring privileged user access will be using RSASecurID fobs for controlling root access to resources.

Credentials may be used only by the authorized user. Passwords or accounts should never be shared with anyone. Account owners will be held responsible for any actions performed using their accounts. DesignSafe staff will never ask users to disclose their passwords in any manner. Passwords should never be written down and left in plain sight, or stored in plain text online.

### 5.3. Inactive Account Expiration { #5.3 }

DesignSafe accounts that are inactive for 120 days will be deactivated, and the user will need to request reactivation of the account.

## 6. Physical Safeguards { #6 }

### 6.1. Physical Access Authorization { #6.1 }

DesignSafe controls physical access points (including designated entry/exit points) to facilities containing information systems (except for those areas within the facilities officially designated as publicly accessible) and to verify individual access authorizations before granting access to the facilities. Senior management decides who is authorized to enter controlled areas, and the CISO or designated personnel are responsible for enabling access.

### 6.2. Access Control for Transmission Medium { #6.2 }

Adequate physical protection is in place for wiring closets and communication demark areas to prevent accidental damage, disruption, or intentional physical tampering of transmission lines.

## 7. Awareness and Training { #7 }

Awareness of the DesignSafe Cybersecurity Plan for NHERI Awardees will be achieved via the Security Working Group, and assurance of awareness and compliance is achieved via the aforementioned audits.

NHERI Awardees shall adhere to their local University cybersecurity policies, and participate in their local University cybersecurity awareness and training.

TACC follows the UT-Austin security awareness and training policy. Upon hiring, all UT-Austin staff are required to complete designated modules in the UT-Austin Compliance Training System <a href="http://www.utexas.edu/hr/hrpro/comply/training.html" target="_blank">www.utexas.edu/hr/hrpro/comply/training.html</a> based on job function, including CW 170 IT Security Awareness. Staff members are required to perform this testing every two (2) years. The Compliance Training System maintains a log of completed training and automatically notifies a staff member when retraining is required. All training modules are developed and facilitated by UT-Austin's University Compliance Services (UCS).

## 8. Incident Response and Notification Procedures { #8 }

Upon notification of a possible security incident, the DesignSafe CSO will lead a formal incident response. The DesignSafe Security Working Group will be informed that a response is being initiated, and the response team will be formed based upon the extent of the incident. It will be necessary to quickly suspend the suspected user account(s), services, or systems to prevent an escalation of the incident. The team will analyze all available information, interrogate any persons involved, determine corrective measures, and assure corrections are implemented and effective prior to allowing any accounts, services or systems to be brought back online. An incident report will be generated and shared with the Security Working Group. Relevant information from the report will be shared with the DesignSafe Management Team and NSF as appropriate.

