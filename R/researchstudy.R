df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Biomedical Research and Regulation  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Business', 'Compartments: Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ResearchStudy', 'TU', '', 'DomainResource', 'Investigation to increase healthcare-related patient-independent knowledgeElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for study',
'title', 'Σ', '0..1', 'string', 'Name for this study',
'protocol', 'Σ', '0..*', 'Reference(PlanDefinition)', 'Steps followed in executing study',
'partOf', 'Σ', '0..*', 'Reference(ResearchStudy)', 'Part of larger study',
'status', '?!Σ', '1..1', 'code', 'active | administratively-completed | approved | closed-to-accrual | closed-to-accrual-and-intervention | completed | disapproved | in-review | temporarily-closed-to-accrual | temporarily-closed-to-accrual-and-intervention | withdrawnResearchStudyStatus (Required)',
'primaryPurposeType', 'Σ', '0..1', 'CodeableConcept', 'treatment | prevention | diagnostic | supportive-care | screening | health-services-research | basic-science | device-feasibilityResearchStudyPrimaryPurposeType (Extensible)',
'phase', 'Σ', '0..1', 'CodeableConcept', 'n-a | early-phase-1 | phase-1 | phase-1-phase-2 | phase-2 | phase-2-phase-3 | phase-3 | phase-4ResearchStudyPhase (Example)',
'category', 'Σ', '0..*', 'CodeableConcept', 'Classifications for the study',
'focus', 'Σ', '0..*', 'CodeableConcept', 'Drugs, devices, etc. under study',
'condition', 'Σ', '0..*', 'CodeableConcept', 'Condition being studiedCondition/Problem/Diagnosis Codes (Example)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the study',
'relatedArtifact', '', '0..*', 'RelatedArtifact', 'References and dependencies',
'keyword', 'Σ', '0..*', 'CodeableConcept', 'Used to search for the study',
'location', 'Σ', '0..*', 'CodeableConcept', 'Geographic region(s) for studyJurisdiction (Extensible)',
'description', '', '0..1', 'markdown', 'What this is study doing',
'enrollment', 'Σ', '0..*', 'Reference(Group)', 'Inclusion & exclusion criteria',
'period', 'Σ', '0..1', 'Period', 'When the study began and ended',
'sponsor', 'Σ', '0..1', 'Reference(Organization)', 'Organization that initiates and is legally responsible for the study',
'principalInvestigator', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Researcher who oversees multiple aspects of the study',
'site', 'Σ', '0..*', 'Reference(Location)', 'Facility where study activities are conducted',
'reasonStopped', 'Σ', '0..1', 'CodeableConcept', 'accrual-goal-met | closed-due-to-toxicity | closed-due-to-lack-of-study-progress | temporarily-closed-per-study-designResearchStudyReasonStopped (Example)',
'note', '', '0..*', 'Annotation', 'Comments made about the study',
'arm', '', '0..*', 'BackboneElement', 'Defined path through the study for a subject',
'name', '', '1..1', 'string', 'Label for study arm',
'type', '', '0..1', 'CodeableConcept', 'Categorization of study arm',
'description', '', '0..1', 'string', 'Short explanation of study path',
'objective', '', '0..*', 'BackboneElement', 'A goal for the study',
'name', '', '0..1', 'string', 'Label for the objective',
'type', '', '0..1', 'CodeableConcept', 'primary | secondary | exploratoryResearchStudyObjectiveType (Preferred)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'ResearchStudy', '',
'ResearchStudy.status', 'Change value set from http://hl7.org/fhir/ValueSet/research-study-status to http://hl7.org/fhir/ValueSet/research-study-status|4.0.1',
'ResearchStudy.primaryPurposeType', 'Added Element',
'ResearchStudy.phase', 'Added Element',
'ResearchStudy.condition', 'Added Element',
'ResearchStudy.location', 'Added Element',
'ResearchStudy.principalInvestigator', 'Type Reference: Added Target Type PractitionerRole',
'ResearchStudy.arm.type', 'Added Element',
'ResearchStudy.objective', 'Added Element',
'ResearchStudy.objective.name', 'Added Element',
'ResearchStudy.objective.type', 'Added Element',
'ResearchStudy.jurisdiction', 'deleted',
'ResearchStudy.arm.code', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ResearchStudy', 'TU', '', 'DomainResource', 'Investigation to increase healthcare-related patient-independent knowledgeElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for study',
'title', 'Σ', '0..1', 'string', 'Name for this study',
'protocol', 'Σ', '0..*', 'Reference(PlanDefinition)', 'Steps followed in executing study',
'partOf', 'Σ', '0..*', 'Reference(ResearchStudy)', 'Part of larger study',
'status', '?!Σ', '1..1', 'code', 'active | administratively-completed | approved | closed-to-accrual | closed-to-accrual-and-intervention | completed | disapproved | in-review | temporarily-closed-to-accrual | temporarily-closed-to-accrual-and-intervention | withdrawnResearchStudyStatus (Required)',
'primaryPurposeType', 'Σ', '0..1', 'CodeableConcept', 'treatment | prevention | diagnostic | supportive-care | screening | health-services-research | basic-science | device-feasibilityResearchStudyPrimaryPurposeType (Extensible)',
'phase', 'Σ', '0..1', 'CodeableConcept', 'n-a | early-phase-1 | phase-1 | phase-1-phase-2 | phase-2 | phase-2-phase-3 | phase-3 | phase-4ResearchStudyPhase (Example)',
'category', 'Σ', '0..*', 'CodeableConcept', 'Classifications for the study',
'focus', 'Σ', '0..*', 'CodeableConcept', 'Drugs, devices, etc. under study',
'condition', 'Σ', '0..*', 'CodeableConcept', 'Condition being studiedCondition/Problem/Diagnosis Codes (Example)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the study',
'relatedArtifact', '', '0..*', 'RelatedArtifact', 'References and dependencies',
'keyword', 'Σ', '0..*', 'CodeableConcept', 'Used to search for the study',
'location', 'Σ', '0..*', 'CodeableConcept', 'Geographic region(s) for studyJurisdiction (Extensible)',
'description', '', '0..1', 'markdown', 'What this is study doing',
'enrollment', 'Σ', '0..*', 'Reference(Group)', 'Inclusion & exclusion criteria',
'period', 'Σ', '0..1', 'Period', 'When the study began and ended',
'sponsor', 'Σ', '0..1', 'Reference(Organization)', 'Organization that initiates and is legally responsible for the study',
'principalInvestigator', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Researcher who oversees multiple aspects of the study',
'site', 'Σ', '0..*', 'Reference(Location)', 'Facility where study activities are conducted',
'reasonStopped', 'Σ', '0..1', 'CodeableConcept', 'accrual-goal-met | closed-due-to-toxicity | closed-due-to-lack-of-study-progress | temporarily-closed-per-study-designResearchStudyReasonStopped (Example)',
'note', '', '0..*', 'Annotation', 'Comments made about the study',
'arm', '', '0..*', 'BackboneElement', 'Defined path through the study for a subject',
'name', '', '1..1', 'string', 'Label for study arm',
'type', '', '0..1', 'CodeableConcept', 'Categorization of study arm',
'description', '', '0..1', 'string', 'Short explanation of study path',
'objective', '', '0..*', 'BackboneElement', 'A goal for the study',
'name', '', '0..1', 'string', 'Label for the objective',
'type', '', '0..1', 'CodeableConcept', 'primary | secondary | exploratoryResearchStudyObjectiveType (Preferred)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'ResearchStudy', '',
'ResearchStudy.status', 'Change value set from http://hl7.org/fhir/ValueSet/research-study-status to http://hl7.org/fhir/ValueSet/research-study-status|4.0.1',
'ResearchStudy.primaryPurposeType', 'Added Element',
'ResearchStudy.phase', 'Added Element',
'ResearchStudy.condition', 'Added Element',
'ResearchStudy.location', 'Added Element',
'ResearchStudy.principalInvestigator', 'Type Reference: Added Target Type PractitionerRole',
'ResearchStudy.arm.type', 'Added Element',
'ResearchStudy.objective', 'Added Element',
'ResearchStudy.objective.name', 'Added Element',
'ResearchStudy.objective.type', 'Added Element',
'ResearchStudy.jurisdiction', 'deleted',
'ResearchStudy.arm.code', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'ResearchStudy.status', 'Codes that convey the current status of the research study.', 'Required', 'ResearchStudyStatus',
'ResearchStudy.primaryPurposeType', 'Codes for the main intent of the study.', 'Extensible', 'ResearchStudyPrimaryPurposeType',
'ResearchStudy.phase', 'Codes for the stage in the progression of a therapy from initial experimental use in humans in clinical trials to post-market evaluation.', 'Example', 'ResearchStudyPhase',
'ResearchStudy.category', 'Codes that describe the type of research study.  E.g. Study phase, Interventional/Observational, blinding type, etc.', 'Unknown', 'No details provided yet',
'ResearchStudy.focus', 'Codes for medications, devices and other interventions.', 'Unknown', 'No details provided yet',
'ResearchStudy.condition', 'Identification of the condition or diagnosis.', 'Example', 'Condition/Problem/DiagnosisCodes',
'ResearchStudy.keyword', 'Words associated with the study that may be useful in discovery.', 'Unknown', 'No details provided yet',
'ResearchStudy.location', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'ResearchStudy.reasonStopped', 'Codes for why the study ended prematurely.', 'Example', 'ResearchStudyReasonStopped',
'ResearchStudy.objective.type', 'Codes for the kind of study objective.', 'Preferred', 'ResearchStudyObjectiveType',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'category', 'token', 'Classifications for the study', 'ResearchStudy.category', '',
'date', 'date', 'When the study began and ended', 'ResearchStudy.period', '',
'focus', 'token', 'Drugs, devices, etc. under study', 'ResearchStudy.focus', '',
'identifier', 'token', 'Business Identifier for study', 'ResearchStudy.identifier', '',
'keyword', 'token', 'Used to search for the study', 'ResearchStudy.keyword', '',
'location', 'token', 'Geographic region(s) for study', 'ResearchStudy.location', '',
'partof', 'reference', 'Part of larger study', 'ResearchStudy.partOf(ResearchStudy)', '',
'principalinvestigator', 'reference', 'Researcher who oversees multiple aspects of the study', 'ResearchStudy.principalInvestigator(Practitioner, PractitionerRole)', '',
'protocol', 'reference', 'Steps followed in executing study', 'ResearchStudy.protocol(PlanDefinition)', '',
'site', 'reference', 'Facility where study activities are conducted', 'ResearchStudy.site(Location)', '',
'sponsor', 'reference', 'Organization that initiates and is legally responsible for the study', 'ResearchStudy.sponsor(Organization)', '',
'status', 'token', 'active | administratively-completed | approved | closed-to-accrual | closed-to-accrual-and-intervention | completed | disapproved | in-review | temporarily-closed-to-accrual | temporarily-closed-to-accrual-and-intervention | withdrawn', 'ResearchStudy.status', '',
'title', 'string', 'Name for this study', 'ResearchStudy.title', '',
)


