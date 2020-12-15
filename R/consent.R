df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Community Based Collaborative Care  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
'Consent', 'The record of a healthcare consumer’s policy choices, which permits or denies identified recipient(s) or recipient role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time',
'Consent Directive', 'The legal record of a healthcare consumer's agreement with a party responsible for enforcing the consumer’s choices, which permits or denies identified actors or roles to perform actions affecting the consumer within a given context for specific purposes and periods of time',
'Consent Form', 'Human readable consent content describing one or more actions impacting the grantor for which the grantee would be authorized or prohibited from performing.  It includes the terms, rules, and conditions pertaining to the authorization or restrictions, such as effective time, applicability or scope, purposes of use, obligations and prohibitions to which the grantee must comply. Once a Consent Form is “executed” by means required by policy, such as verbal agreement, wet signature, or electronic/digital signature, it becomes a legally binding Consent Directive.',
'Consent Directive Derivative', 'Consent Content that conveys the minimal set of information needed to manage Consent Directive workflow, including providing Consent Directive content sufficient to:
Represent a Consent Directive
Register or index a Consent Directive
Query and respond about a Consent Directive
Retrieve a Consent Directive
Notify authorized entities about Consent Directive status changes
Determine entities authorized to collect, access, use or disclose information about the Consent Directive or about the information governed by the Consent Directive.
Derived Consent content includes the Security Labels encoding the applicable privacy and security policies.  Consent Security Labels inform recipients about specific access control measures required for compliance.',
'Consent Statement', 'A Consent Directive derivative has less than full fidelity to the legally binding Consent Directive from which it was "transcribed".  It  provides recipients with the full content representation they may require for compliance purposes, and typically include a reference to or an attached unstructured representation for recipients needing an exact copy of the legal agreement.',
'Consent Registration', 'The legal record of a healthcare consumer's agreement with a party responsible for enforcing the consumer’s choices, which permits or denies identified actors or roles to perform actions affecting the consumer within a given context for specific purposes and periods of timeA Consent Directive derivative that conveys the minimal set of information needed to register an active and revoked Consent Directive, or to update Consent status as it changes during its lifecycle.',
'Consent Query/Response Types', 'The FHIR Consent Resource specifies multiple Consent Search parameters, which support many types of queries for Consent Resource content. There are several Query/Response patterns that are typically used for obtaining information about consent directive content for the following use cases:
Find Active Consent Directive:  A query that includes sufficient consent directive content to determine whether a specific party is authorized to share information governed by a consent directive with another specific party.  The Response is either:
“Yes” meaning that both parties are authorized to share the information with one another.
“No” meaning that the authorized querier is not permitted to share with another specific party
“No information found” meaning that there is no active Consent Directive in which the querier is authorized to share the governed information.

Find Consent Directive Authorized Entities: A query that includes sufficient consent directive content to return a list of entities with which the querier is authorized to share governed information.  The response to an authorized querier is the list of any authorized entities with which the querier is permitted to share governed information.  The response to an unauthorized querier is that “no information is found”.
Find Consent Directive(s): A query that includes sufficient consent directive content to return a list of Consent Directive metadata for an authorized querier to determine what Consent Directives are available, and to locate and retrieve one or more of those Consent Directives as needed.',
'Policy context', 'Any organizational or jurisdictional policies, which may limit the consumer’s policy choices, and which includes the named range of actions allowed',
'Healthcare Consumer', 'The individual establishing his/her personal consent (i.e. Consenter). In FHIR, this is referred to as the 'Patient' though this word is not used across all contexts of care',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Consent', 'ITU', '', 'DomainResource', 'A healthcare consumer's  choices to permit or deny recipients or roles to perform actions for specific purposes and periods of time+ Rule: Either a Policy or PolicyRule+ Rule: IF Scope=privacy, there must be a patient+ Rule: IF Scope=research, there must be a patient+ Rule: IF Scope=adr, there must be a patient+ Rule: IF Scope=treatment, there must be a patientElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Identifier for this record (external references)',
'status', '?!Σ', '1..1', 'code', 'draft | proposed | active | rejected | inactive | entered-in-errorConsentState (Required)',
'scope', '?!Σ', '1..1', 'CodeableConcept', 'Which of the four areas this resource covers (extensible)Consent Scope Codes (Extensible)',
'category', 'Σ', '1..*', 'CodeableConcept', 'Classification of the consent statement - for indexing/retrievalConsent Category Codes (Extensible)',
'patient', 'Σ', '0..1', 'Reference(Patient)', 'Who the consent applies to',
'dateTime', 'Σ', '0..1', 'dateTime', 'When this Consent was created or indexed',
'performer', 'Σ', '0..*', 'Reference(Organization | Patient | Practitioner | RelatedPerson | PractitionerRole)', 'Who is agreeing to the policy and rules',
'organization', 'Σ', '0..*', 'Reference(Organization)', 'Custodian of the consent',
'source[x]', 'Σ', '0..1', '', 'Source from which this consent is taken',
'sourceAttachment', '', '', 'Attachment', '',
'sourceReference', '', '', 'Reference(Consent | DocumentReference | Contract | QuestionnaireResponse)', '',
'policy', '', '0..*', 'BackboneElement', 'Policies covered by this consent',
'authority', 'I', '0..1', 'uri', 'Enforcement source for policy',
'uri', 'I', '0..1', 'uri', 'Specific policy covered by this consent',
'policyRule', 'ΣI', '0..1', 'CodeableConcept', 'Regulation that this consents toConsent PolicyRule Codes (Extensible)',
'verification', 'Σ', '0..*', 'BackboneElement', 'Consent Verified by patient or family',
'verified', 'Σ', '1..1', 'boolean', 'Has been verified',
'verifiedWith', '', '0..1', 'Reference(Patient | RelatedPerson)', 'Person who verified',
'verificationDate', '', '0..1', 'dateTime', 'When consent verified',
'provision', 'Σ', '0..1', 'BackboneElement', 'Constraints to the base Consent.policyRule',
'type', 'Σ', '0..1', 'code', 'deny | permitConsentProvisionType (Required)',
'period', 'Σ', '0..1', 'Period', 'Timeframe for this rule',
'actor', '', '0..*', 'BackboneElement', 'Who|what controlled by this rule (or group, by role)',
'role', '', '1..1', 'CodeableConcept', 'How the actor is involvedSecurityRoleType (Extensible)',
'reference', '', '1..1', 'Reference(Device | Group | CareTeam | Organization | Patient | Practitioner | RelatedPerson | PractitionerRole)', 'Resource for the actor (or group, by role)',
'action', 'Σ', '0..*', 'CodeableConcept', 'Actions controlled by this ruleConsent Action Codes (Example)',
'securityLabel', 'Σ', '0..*', 'Coding', 'Security Labels that define affected resourcesSecurityLabels (Extensible)',
'purpose', 'Σ', '0..*', 'Coding', 'Context of activities covered by this ruleV3 Value SetPurposeOfUse (Extensible)',
'class', 'Σ', '0..*', 'Coding', 'e.g. Resource Type, Profile, CDA, etc.Consent Content Class (Extensible)',
'code', 'Σ', '0..*', 'CodeableConcept', 'e.g. LOINC or SNOMED CT code, etc. in the contentConsent Content Codes (Example)',
'dataPeriod', 'Σ', '0..1', 'Period', 'Timeframe for data controlled by this rule',
'data', 'Σ', '0..*', 'BackboneElement', 'Data controlled by this rule',
'meaning', 'Σ', '1..1', 'code', 'instance | related | dependents | authoredbyConsentDataMeaning (Required)',
'reference', 'Σ', '1..1', 'Reference(Any)', 'The actual data reference',
'provision', '', '0..*', 'see provision', 'Nested Exception Rules',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'Consent', '',
'Consent.identifier', 'Max Cardinality changed from 1 to *',
'Consent.status', 'Change value set from http://hl7.org/fhir/ValueSet/consent-state-codes to http://hl7.org/fhir/ValueSet/consent-state-codes|4.0.1',
'Consent.scope', 'Added Mandatory Element',
'Consent.category', 'Min Cardinality changed from 0 to 1
        
Add Binding http://hl7.org/fhir/ValueSet/consent-category (extensible)',
'Consent.patient', 'Min Cardinality changed from 1 to 0',
'Consent.performer', 'Added Element',
'Consent.source[x]', 'Remove Type Identifier',
'Consent.policyRule', 'Type changed from uri to CodeableConcept
        
Add Binding http://hl7.org/fhir/ValueSet/consent-policy (extensible)',
'Consent.verification', 'Added Element',
'Consent.verification.verified', 'Added Mandatory Element',
'Consent.verification.verifiedWith', 'Added Element',
'Consent.verification.verificationDate', 'Added Element',
'Consent.provision', 'Added Element',
'Consent.provision.type', 'Added Element',
'Consent.provision.period', 'Added Element',
'Consent.provision.actor', 'Added Element',
'Consent.provision.actor.role', 'Added Mandatory Element',
'Consent.provision.actor.reference', 'Added Mandatory Element',
'Consent.provision.action', 'Added Element',
'Consent.provision.securityLabel', 'Added Element',
'Consent.provision.purpose', 'Added Element',
'Consent.provision.class', 'Added Element',
'Consent.provision.code', 'Added Element',
'Consent.provision.dataPeriod', 'Added Element',
'Consent.provision.data', 'Added Element',
'Consent.provision.data.meaning', 'Added Mandatory Element',
'Consent.provision.data.reference', 'Added Mandatory Element',
'Consent.provision.provision', 'Added Element',
'Consent.period', 'deleted',
'Consent.consentingParty', 'deleted',
'Consent.actor', 'deleted',
'Consent.action', 'deleted',
'Consent.securityLabel', 'deleted',
'Consent.purpose', 'deleted',
'Consent.dataPeriod', 'deleted',
'Consent.data', 'deleted',
'Consent.except', 'deleted',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Consent', 'ITU', '', 'DomainResource', 'A healthcare consumer's  choices to permit or deny recipients or roles to perform actions for specific purposes and periods of time+ Rule: Either a Policy or PolicyRule+ Rule: IF Scope=privacy, there must be a patient+ Rule: IF Scope=research, there must be a patient+ Rule: IF Scope=adr, there must be a patient+ Rule: IF Scope=treatment, there must be a patientElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Identifier for this record (external references)',
'status', '?!Σ', '1..1', 'code', 'draft | proposed | active | rejected | inactive | entered-in-errorConsentState (Required)',
'scope', '?!Σ', '1..1', 'CodeableConcept', 'Which of the four areas this resource covers (extensible)Consent Scope Codes (Extensible)',
'category', 'Σ', '1..*', 'CodeableConcept', 'Classification of the consent statement - for indexing/retrievalConsent Category Codes (Extensible)',
'patient', 'Σ', '0..1', 'Reference(Patient)', 'Who the consent applies to',
'dateTime', 'Σ', '0..1', 'dateTime', 'When this Consent was created or indexed',
'performer', 'Σ', '0..*', 'Reference(Organization | Patient | Practitioner | RelatedPerson | PractitionerRole)', 'Who is agreeing to the policy and rules',
'organization', 'Σ', '0..*', 'Reference(Organization)', 'Custodian of the consent',
'source[x]', 'Σ', '0..1', '', 'Source from which this consent is taken',
'sourceAttachment', '', '', 'Attachment', '',
'sourceReference', '', '', 'Reference(Consent | DocumentReference | Contract | QuestionnaireResponse)', '',
'policy', '', '0..*', 'BackboneElement', 'Policies covered by this consent',
'authority', 'I', '0..1', 'uri', 'Enforcement source for policy',
'uri', 'I', '0..1', 'uri', 'Specific policy covered by this consent',
'policyRule', 'ΣI', '0..1', 'CodeableConcept', 'Regulation that this consents toConsent PolicyRule Codes (Extensible)',
'verification', 'Σ', '0..*', 'BackboneElement', 'Consent Verified by patient or family',
'verified', 'Σ', '1..1', 'boolean', 'Has been verified',
'verifiedWith', '', '0..1', 'Reference(Patient | RelatedPerson)', 'Person who verified',
'verificationDate', '', '0..1', 'dateTime', 'When consent verified',
'provision', 'Σ', '0..1', 'BackboneElement', 'Constraints to the base Consent.policyRule',
'type', 'Σ', '0..1', 'code', 'deny | permitConsentProvisionType (Required)',
'period', 'Σ', '0..1', 'Period', 'Timeframe for this rule',
'actor', '', '0..*', 'BackboneElement', 'Who|what controlled by this rule (or group, by role)',
'role', '', '1..1', 'CodeableConcept', 'How the actor is involvedSecurityRoleType (Extensible)',
'reference', '', '1..1', 'Reference(Device | Group | CareTeam | Organization | Patient | Practitioner | RelatedPerson | PractitionerRole)', 'Resource for the actor (or group, by role)',
'action', 'Σ', '0..*', 'CodeableConcept', 'Actions controlled by this ruleConsent Action Codes (Example)',
'securityLabel', 'Σ', '0..*', 'Coding', 'Security Labels that define affected resourcesSecurityLabels (Extensible)',
'purpose', 'Σ', '0..*', 'Coding', 'Context of activities covered by this ruleV3 Value SetPurposeOfUse (Extensible)',
'class', 'Σ', '0..*', 'Coding', 'e.g. Resource Type, Profile, CDA, etc.Consent Content Class (Extensible)',
'code', 'Σ', '0..*', 'CodeableConcept', 'e.g. LOINC or SNOMED CT code, etc. in the contentConsent Content Codes (Example)',
'dataPeriod', 'Σ', '0..1', 'Period', 'Timeframe for data controlled by this rule',
'data', 'Σ', '0..*', 'BackboneElement', 'Data controlled by this rule',
'meaning', 'Σ', '1..1', 'code', 'instance | related | dependents | authoredbyConsentDataMeaning (Required)',
'reference', 'Σ', '1..1', 'Reference(Any)', 'The actual data reference',
'provision', '', '0..*', 'see provision', 'Nested Exception Rules',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'Consent', '',
'Consent.identifier', 'Max Cardinality changed from 1 to *',
'Consent.status', 'Change value set from http://hl7.org/fhir/ValueSet/consent-state-codes to http://hl7.org/fhir/ValueSet/consent-state-codes|4.0.1',
'Consent.scope', 'Added Mandatory Element',
'Consent.category', 'Min Cardinality changed from 0 to 1
        
Add Binding http://hl7.org/fhir/ValueSet/consent-category (extensible)',
'Consent.patient', 'Min Cardinality changed from 1 to 0',
'Consent.performer', 'Added Element',
'Consent.source[x]', 'Remove Type Identifier',
'Consent.policyRule', 'Type changed from uri to CodeableConcept
        
Add Binding http://hl7.org/fhir/ValueSet/consent-policy (extensible)',
'Consent.verification', 'Added Element',
'Consent.verification.verified', 'Added Mandatory Element',
'Consent.verification.verifiedWith', 'Added Element',
'Consent.verification.verificationDate', 'Added Element',
'Consent.provision', 'Added Element',
'Consent.provision.type', 'Added Element',
'Consent.provision.period', 'Added Element',
'Consent.provision.actor', 'Added Element',
'Consent.provision.actor.role', 'Added Mandatory Element',
'Consent.provision.actor.reference', 'Added Mandatory Element',
'Consent.provision.action', 'Added Element',
'Consent.provision.securityLabel', 'Added Element',
'Consent.provision.purpose', 'Added Element',
'Consent.provision.class', 'Added Element',
'Consent.provision.code', 'Added Element',
'Consent.provision.dataPeriod', 'Added Element',
'Consent.provision.data', 'Added Element',
'Consent.provision.data.meaning', 'Added Mandatory Element',
'Consent.provision.data.reference', 'Added Mandatory Element',
'Consent.provision.provision', 'Added Element',
'Consent.period', 'deleted',
'Consent.consentingParty', 'deleted',
'Consent.actor', 'deleted',
'Consent.action', 'deleted',
'Consent.securityLabel', 'deleted',
'Consent.purpose', 'deleted',
'Consent.dataPeriod', 'deleted',
'Consent.data', 'deleted',
'Consent.except', 'deleted',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Consent.status', 'Indicates the state of the consent.', 'Required', 'ConsentState',
'Consent.scope', 'The four anticipated uses for the Consent Resource.', 'Extensible', 'ConsentScopeCodes',
'Consent.category', 'A classification of the type of consents found in a consent statement.', 'Extensible', 'ConsentCategoryCodes',
'Consent.policyRule', 'Regulatory policy examples.', 'Extensible', 'ConsentPolicyRuleCodes',
'Consent.provision.type', 'How a rule statement is applied, such as adding additional consent or removing consent.', 'Required', 'ConsentProvisionType',
'Consent.provision.actor.role', 'How an actor is involved in the consent considerations.', 'Extensible', 'SecurityRoleType',
'Consent.provision.action', 'Detailed codes for the consent action.', 'Example', 'ConsentActionCodes',
'Consent.provision.securityLabel', 'Security Labels from the Healthcare Privacy and Security Classification System.', 'Extensible', 'All Security Labels',
'Consent.provision.purpose', 'What purposes of use are controlled by this exception. If more than one label is specified, operations must have all the specified labels.', 'Extensible', 'v3.PurposeOfUse',
'Consent.provision.class', 'The class (type) of information a consent rule covers.', 'Extensible', 'ConsentContentClass',
'Consent.provision.code', 'If this code is found in an instance, then the exception applies.', 'Example', 'ConsentContentCodes',
'Consent.provision.data.meaning', 'How a resource reference is interpreted when testing consent restrictions.', 'Required', 'ConsentDataMeaning',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'ppc-1', 'Rule', '(base)', 'Either a Policy or PolicyRule', 'policy.exists() or policyRule.exists()',
'ppc-2', 'Rule', '(base)', 'IF Scope=privacy, there must be a patient', 'patient.exists() or scope.coding.where(system='something' and code='patient-privacy').exists().not()',
'ppc-3', 'Rule', '(base)', 'IF Scope=research, there must be a patient', 'patient.exists() or scope.coding.where(system='something' and code='research').exists().not()',
'ppc-4', 'Rule', '(base)', 'IF Scope=adr, there must be a patient', 'patient.exists() or scope.coding.where(system='something' and code='adr').exists().not()',
'ppc-5', 'Rule', '(base)', 'IF Scope=treatment, there must be a patient', 'patient.exists() or scope.coding.where(system='something' and code='treatment').exists().not()',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'action', 'token', 'Actions controlled by this rule', 'Consent.provision.action', '',
'actor', 'reference', 'Resource for the actor (or group, by role)', 'Consent.provision.actor.reference(Practitioner, Group, Organization, CareTeam, Device, Patient, PractitionerRole, RelatedPerson)', '',
'category', 'token', 'Classification of the consent statement - for indexing/retrieval', 'Consent.category', '',
'consentor', 'reference', 'Who is agreeing to the policy and rules', 'Consent.performer(Practitioner, Organization, Patient, PractitionerRole, RelatedPerson)', '',
'data', 'reference', 'The actual data reference', 'Consent.provision.data.reference(Any)', '',
'date', 'date', 'When this Consent was created or indexed', 'Consent.dateTime', '17 Resources',
'identifier', 'token', 'Identifier for this record (external references)', 'Consent.identifier', '30 Resources',
'organization', 'reference', 'Custodian of the consent', 'Consent.organization(Organization)', '',
'patient', 'reference', 'Who the consent applies to', 'Consent.patient(Patient)', '33 Resources',
'period', 'date', 'Timeframe for this rule', 'Consent.provision.period', '',
'purpose', 'token', 'Context of activities covered by this rule', 'Consent.provision.purpose', '',
'scope', 'token', 'Which of the four areas this resource covers (extensible)', 'Consent.scope', '',
'security-label', 'token', 'Security Labels that define affected resources', 'Consent.provision.securityLabel', '',
'source-reference', 'reference', 'Search by reference to a Consent, DocumentReference, Contract  or QuestionnaireResponse', 'Consent.source(Consent, Contract, QuestionnaireResponse, DocumentReference)', '',
'status', 'token', 'draft | proposed | active | rejected | inactive | entered-in-error', 'Consent.status', '',
)


