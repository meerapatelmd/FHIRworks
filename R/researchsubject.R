df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Biomedical Research and Regulation  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ResearchSubject', 'TU', '', 'DomainResource', 'Physical entity which is the primary unit of interest in the studyElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for research subject in a study',
'status', '?!Σ', '1..1', 'code', 'candidate | eligible | follow-up | ineligible | not-registered | off-study | on-study | on-study-intervention | on-study-observation | pending-on-study | potential-candidate | screening | withdrawnResearchSubjectStatus (Required)',
'period', 'Σ', '0..1', 'Period', 'Start and end of participation',
'study', 'Σ', '1..1', 'Reference(ResearchStudy)', 'Study subject is part of',
'individual', 'Σ', '1..1', 'Reference(Patient)', 'Who is part of study',
'assignedArm', '', '0..1', 'string', 'What path should be followed',
'actualArm', '', '0..1', 'string', 'What path was followed',
'consent', '', '0..1', 'Reference(Consent)', 'Agreement to participate in study',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'ResearchSubject', '',
'ResearchSubject.identifier', 'Max Cardinality changed from 1 to *',
'ResearchSubject.status', 'Change value set from http://hl7.org/fhir/ValueSet/research-subject-status to http://hl7.org/fhir/ValueSet/research-subject-status|4.0.1',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ResearchSubject', 'TU', '', 'DomainResource', 'Physical entity which is the primary unit of interest in the studyElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for research subject in a study',
'status', '?!Σ', '1..1', 'code', 'candidate | eligible | follow-up | ineligible | not-registered | off-study | on-study | on-study-intervention | on-study-observation | pending-on-study | potential-candidate | screening | withdrawnResearchSubjectStatus (Required)',
'period', 'Σ', '0..1', 'Period', 'Start and end of participation',
'study', 'Σ', '1..1', 'Reference(ResearchStudy)', 'Study subject is part of',
'individual', 'Σ', '1..1', 'Reference(Patient)', 'Who is part of study',
'assignedArm', '', '0..1', 'string', 'What path should be followed',
'actualArm', '', '0..1', 'string', 'What path was followed',
'consent', '', '0..1', 'Reference(Consent)', 'Agreement to participate in study',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'ResearchSubject', '',
'ResearchSubject.identifier', 'Max Cardinality changed from 1 to *',
'ResearchSubject.status', 'Change value set from http://hl7.org/fhir/ValueSet/research-subject-status to http://hl7.org/fhir/ValueSet/research-subject-status|4.0.1',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'ResearchSubject.status', 'Indicates the progression of a study subject through a study.', 'Required', 'ResearchSubjectStatus',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'date', 'date', 'Start and end of participation', 'ResearchSubject.period', '',
'identifier', 'token', 'Business Identifier for research subject in a study', 'ResearchSubject.identifier', '',
'individual', 'reference', 'Who is part of study', 'ResearchSubject.individual(Patient)', '',
'patient', 'reference', 'Who is part of study', 'ResearchSubject.individual(Patient)', '',
'status', 'token', 'candidate | eligible | follow-up | ineligible | not-registered | off-study | on-study | on-study-intervention | on-study-observation | pending-on-study | potential-candidate | screening | withdrawn', 'ResearchSubject.status', '',
'study', 'reference', 'Study subject is part of', 'ResearchSubject.study(ResearchStudy)', '',
)


