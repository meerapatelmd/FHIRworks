df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Clinical Decision Support  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DetectedIssue', 'TU', '', 'DomainResource', 'Clinical issue with actionElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique id for the detected issue',
'status', '?!Σ', '1..1', 'code', 'registered | preliminary | final | amended +ObservationStatus (Required)',
'code', 'Σ', '0..1', 'CodeableConcept', 'Issue Category, e.g. drug-drug, duplicate therapy, etc.Detected Issue Category (Preferred)',
'severity', 'Σ', '0..1', 'code', 'high | moderate | lowDetectedIssueSeverity (Required)',
'patient', 'Σ', '0..1', 'Reference(Patient)', 'Associated patient',
'identified[x]', 'Σ', '0..1', '', 'When identified',
'identifiedDateTime', '', '', 'dateTime', '',
'identifiedPeriod', '', '', 'Period', '',
'author', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Device)', 'The provider or device that identified the issue',
'implicated', 'Σ', '0..*', 'Reference(Any)', 'Problem resource',
'evidence', '', '0..*', 'BackboneElement', 'Supporting evidence',
'code', '', '0..*', 'CodeableConcept', 'ManifestationManifestation and Symptom Codes (Example)',
'detail', '', '0..*', 'Reference(Any)', 'Supporting information',
'detail', '', '0..1', 'string', 'Description and context',
'reference', '', '0..1', 'uri', 'Authority for issue',
'mitigation', '', '0..*', 'BackboneElement', 'Step taken to address',
'action', '', '1..1', 'CodeableConcept', 'What mitigation?Detected Issue Mitigation Action (Preferred)',
'date', '', '0..1', 'dateTime', 'Date committed',
'author', '', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Who is committing?',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'DetectedIssue', '',
'DetectedIssue.identifier', 'Max Cardinality changed from 1 to *',
'DetectedIssue.status', 'Change value set from http://hl7.org/fhir/ValueSet/observation-status to http://hl7.org/fhir/ValueSet/observation-status|4.0.1',
'DetectedIssue.code', 'Renamed from category to code',
'DetectedIssue.severity', 'Change value set from http://hl7.org/fhir/ValueSet/detectedissue-severity to http://hl7.org/fhir/ValueSet/detectedissue-severity|4.0.1',
'DetectedIssue.identified[x]', 'Added Element',
'DetectedIssue.author', 'Type Reference: Added Target Type PractitionerRole',
'DetectedIssue.evidence', 'Added Element',
'DetectedIssue.evidence.code', 'Added Element',
'DetectedIssue.evidence.detail', 'Added Element',
'DetectedIssue.mitigation.author', 'Type Reference: Added Target Type PractitionerRole',
'DetectedIssue.date', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DetectedIssue', 'TU', '', 'DomainResource', 'Clinical issue with actionElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique id for the detected issue',
'status', '?!Σ', '1..1', 'code', 'registered | preliminary | final | amended +ObservationStatus (Required)',
'code', 'Σ', '0..1', 'CodeableConcept', 'Issue Category, e.g. drug-drug, duplicate therapy, etc.Detected Issue Category (Preferred)',
'severity', 'Σ', '0..1', 'code', 'high | moderate | lowDetectedIssueSeverity (Required)',
'patient', 'Σ', '0..1', 'Reference(Patient)', 'Associated patient',
'identified[x]', 'Σ', '0..1', '', 'When identified',
'identifiedDateTime', '', '', 'dateTime', '',
'identifiedPeriod', '', '', 'Period', '',
'author', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Device)', 'The provider or device that identified the issue',
'implicated', 'Σ', '0..*', 'Reference(Any)', 'Problem resource',
'evidence', '', '0..*', 'BackboneElement', 'Supporting evidence',
'code', '', '0..*', 'CodeableConcept', 'ManifestationManifestation and Symptom Codes (Example)',
'detail', '', '0..*', 'Reference(Any)', 'Supporting information',
'detail', '', '0..1', 'string', 'Description and context',
'reference', '', '0..1', 'uri', 'Authority for issue',
'mitigation', '', '0..*', 'BackboneElement', 'Step taken to address',
'action', '', '1..1', 'CodeableConcept', 'What mitigation?Detected Issue Mitigation Action (Preferred)',
'date', '', '0..1', 'dateTime', 'Date committed',
'author', '', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Who is committing?',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'DetectedIssue', '',
'DetectedIssue.identifier', 'Max Cardinality changed from 1 to *',
'DetectedIssue.status', 'Change value set from http://hl7.org/fhir/ValueSet/observation-status to http://hl7.org/fhir/ValueSet/observation-status|4.0.1',
'DetectedIssue.code', 'Renamed from category to code',
'DetectedIssue.severity', 'Change value set from http://hl7.org/fhir/ValueSet/detectedissue-severity to http://hl7.org/fhir/ValueSet/detectedissue-severity|4.0.1',
'DetectedIssue.identified[x]', 'Added Element',
'DetectedIssue.author', 'Type Reference: Added Target Type PractitionerRole',
'DetectedIssue.evidence', 'Added Element',
'DetectedIssue.evidence.code', 'Added Element',
'DetectedIssue.evidence.detail', 'Added Element',
'DetectedIssue.mitigation.author', 'Type Reference: Added Target Type PractitionerRole',
'DetectedIssue.date', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'DetectedIssue.status', 'Indicates the status of the identified issue.', 'Required', 'ObservationStatus',
'DetectedIssue.code', 'Codes identifying the general type of detected issue; e.g. Drug-drug interaction, Timing issue, Duplicate therapy, etc.', 'Preferred', 'DetectedIssueCategory',
'DetectedIssue.severity', 'Indicates the potential degree of impact of the identified issue on the patient.', 'Required', 'DetectedIssueSeverity',
'DetectedIssue.evidence.code', 'Codes that describes the types of evidence for a detected issue.', 'Example', 'ManifestationAndSymptomCodes',
'DetectedIssue.mitigation.action', 'Codes describing steps taken to resolve the issue or other circumstances that mitigate the risk associated with the issue; e.g. 'added concurrent therapy', 'prior therapy documented', etc.', 'Preferred', 'DetectedIssueMitigationAction',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'author', 'reference', 'The provider or device that identified the issue', 'DetectedIssue.author(Practitioner, Device, PractitionerRole)', '',
'code', 'token', 'Issue Category, e.g. drug-drug, duplicate therapy, etc.', 'DetectedIssue.code', '',
'identified', 'date', 'When identified', 'DetectedIssue.identified', '',
'identifier', 'token', 'Unique id for the detected issue', 'DetectedIssue.identifier', '30 Resources',
'implicated', 'reference', 'Problem resource', 'DetectedIssue.implicated(Any)', '',
'patient', 'reference', 'Associated patient', 'DetectedIssue.patient(Patient)', '33 Resources',
)


