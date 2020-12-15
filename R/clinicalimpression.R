df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Care  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Patient', 'Compartments: Encounter, Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ClinicalImpression', 'TU', '', 'DomainResource', 'A clinical assessment performed when planning treatments and management strategies for a patientElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier',
'status', '?!Σ', '1..1', 'code', 'in-progress | completed | entered-in-errorClinical Impression Status (Required)',
'statusReason', '', '0..1', 'CodeableConcept', 'Reason for current status',
'code', 'Σ', '0..1', 'CodeableConcept', 'Kind of assessment performed',
'description', 'Σ', '0..1', 'string', 'Why/how the assessment was performed',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Patient or group assessed',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter created as part of',
'effective[x]', 'Σ', '0..1', '', 'Time of assessment',
'effectiveDateTime', '', '', 'dateTime', '',
'effectivePeriod', '', '', 'Period', '',
'date', 'Σ', '0..1', 'dateTime', 'When the assessment was documented',
'assessor', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'The clinician performing the assessment',
'previous', '', '0..1', 'Reference(ClinicalImpression)', 'Reference to last assessment',
'problem', 'Σ', '0..*', 'Reference(Condition | AllergyIntolerance)', 'Relevant impressions of patient state',
'investigation', '', '0..*', 'BackboneElement', 'One or more sets of investigations (signs, symptoms, etc.)',
'code', '', '1..1', 'CodeableConcept', 'A name/code for the setInvestigation Type (Example)',
'item', '', '0..*', 'Reference(Observation | QuestionnaireResponse | FamilyMemberHistory | DiagnosticReport | RiskAssessment | ImagingStudy | Media)', 'Record of a specific investigation',
'protocol', '', '0..*', 'uri', 'Clinical Protocol followed',
'summary', '', '0..1', 'string', 'Summary of the assessment',
'finding', '', '0..*', 'BackboneElement', 'Possible or likely findings and diagnoses',
'itemCodeableConcept', '', '0..1', 'CodeableConcept', 'What was foundCondition/Problem/Diagnosis Codes (Example)',
'itemReference', '', '0..1', 'Reference(Condition | Observation | Media)', 'What was found',
'basis', '', '0..1', 'string', 'Which investigations support finding',
'prognosisCodeableConcept', '', '0..*', 'CodeableConcept', 'Estimate of likely outcomeClinical Impression Prognosis (Example)',
'prognosisReference', '', '0..*', 'Reference(RiskAssessment)', 'RiskAssessment expressing likely outcome',
'supportingInfo', '', '0..*', 'Reference(Any)', 'Information supporting the clinical impression',
'note', '', '0..*', 'Annotation', 'Comments made about the ClinicalImpression',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'ClinicalImpression', '',
'ClinicalImpression.status', 'Change value set from http://hl7.org/fhir/ValueSet/clinical-impression-status to http://hl7.org/fhir/ValueSet/clinicalimpression-status|4.0.1',
'ClinicalImpression.statusReason', 'Added Element',
'ClinicalImpression.encounter', 'Added Element',
'ClinicalImpression.assessor', 'Type Reference: Added Target Type PractitionerRole',
'ClinicalImpression.investigation.item', 'Type Reference: Added Target Type Media',
'ClinicalImpression.finding.itemCodeableConcept', 'Added Element',
'ClinicalImpression.finding.itemReference', 'Added Element',
'ClinicalImpression.supportingInfo', 'Added Element',
'ClinicalImpression.context', 'deleted',
'ClinicalImpression.finding.item[x]', 'deleted',
'ClinicalImpression.action', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ClinicalImpression', 'TU', '', 'DomainResource', 'A clinical assessment performed when planning treatments and management strategies for a patientElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier',
'status', '?!Σ', '1..1', 'code', 'in-progress | completed | entered-in-errorClinical Impression Status (Required)',
'statusReason', '', '0..1', 'CodeableConcept', 'Reason for current status',
'code', 'Σ', '0..1', 'CodeableConcept', 'Kind of assessment performed',
'description', 'Σ', '0..1', 'string', 'Why/how the assessment was performed',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Patient or group assessed',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter created as part of',
'effective[x]', 'Σ', '0..1', '', 'Time of assessment',
'effectiveDateTime', '', '', 'dateTime', '',
'effectivePeriod', '', '', 'Period', '',
'date', 'Σ', '0..1', 'dateTime', 'When the assessment was documented',
'assessor', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'The clinician performing the assessment',
'previous', '', '0..1', 'Reference(ClinicalImpression)', 'Reference to last assessment',
'problem', 'Σ', '0..*', 'Reference(Condition | AllergyIntolerance)', 'Relevant impressions of patient state',
'investigation', '', '0..*', 'BackboneElement', 'One or more sets of investigations (signs, symptoms, etc.)',
'code', '', '1..1', 'CodeableConcept', 'A name/code for the setInvestigation Type (Example)',
'item', '', '0..*', 'Reference(Observation | QuestionnaireResponse | FamilyMemberHistory | DiagnosticReport | RiskAssessment | ImagingStudy | Media)', 'Record of a specific investigation',
'protocol', '', '0..*', 'uri', 'Clinical Protocol followed',
'summary', '', '0..1', 'string', 'Summary of the assessment',
'finding', '', '0..*', 'BackboneElement', 'Possible or likely findings and diagnoses',
'itemCodeableConcept', '', '0..1', 'CodeableConcept', 'What was foundCondition/Problem/Diagnosis Codes (Example)',
'itemReference', '', '0..1', 'Reference(Condition | Observation | Media)', 'What was found',
'basis', '', '0..1', 'string', 'Which investigations support finding',
'prognosisCodeableConcept', '', '0..*', 'CodeableConcept', 'Estimate of likely outcomeClinical Impression Prognosis (Example)',
'prognosisReference', '', '0..*', 'Reference(RiskAssessment)', 'RiskAssessment expressing likely outcome',
'supportingInfo', '', '0..*', 'Reference(Any)', 'Information supporting the clinical impression',
'note', '', '0..*', 'Annotation', 'Comments made about the ClinicalImpression',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'ClinicalImpression', '',
'ClinicalImpression.status', 'Change value set from http://hl7.org/fhir/ValueSet/clinical-impression-status to http://hl7.org/fhir/ValueSet/clinicalimpression-status|4.0.1',
'ClinicalImpression.statusReason', 'Added Element',
'ClinicalImpression.encounter', 'Added Element',
'ClinicalImpression.assessor', 'Type Reference: Added Target Type PractitionerRole',
'ClinicalImpression.investigation.item', 'Type Reference: Added Target Type Media',
'ClinicalImpression.finding.itemCodeableConcept', 'Added Element',
'ClinicalImpression.finding.itemReference', 'Added Element',
'ClinicalImpression.supportingInfo', 'Added Element',
'ClinicalImpression.context', 'deleted',
'ClinicalImpression.finding.item[x]', 'deleted',
'ClinicalImpression.action', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'ClinicalImpression.status', 'The workflow state of a clinical impression.', 'Required', 'ClinicalImpressionStatus',
'ClinicalImpression.statusReason', 'Codes identifying the reason for the current state of a clinical impression.', 'Unknown', 'No details provided yet',
'ClinicalImpression.code', 'Identifies categories of clinical impressions.  This is a place-holder only.  It may be removed.', 'Unknown', 'No details provided yet',
'ClinicalImpression.investigation.code', 'A name/code for a set of investigations.', 'Example', 'InvestigationType',
'ClinicalImpression.finding.itemCodeableConcept', 'Identification of the Condition or diagnosis.', 'Example', 'Condition/Problem/DiagnosisCodes',
'ClinicalImpression.prognosisCodeableConcept', 'Prognosis or outlook findings.', 'Example', 'ClinicalImpressionPrognosis',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'assessor', 'reference', 'The clinician performing the assessment', 'ClinicalImpression.assessor(Practitioner, PractitionerRole)', '',
'date', 'date', 'When the assessment was documented', 'ClinicalImpression.date', '17 Resources',
'encounter', 'reference', 'Encounter created as part of', 'ClinicalImpression.encounter(Encounter)', '',
'finding-code', 'token', 'What was found', 'ClinicalImpression.finding.itemCodeableConcept', '',
'finding-ref', 'reference', 'What was found', 'ClinicalImpression.finding.itemReference(Condition, Observation, Media)', '',
'identifier', 'token', 'Business identifier', 'ClinicalImpression.identifier', '',
'investigation', 'reference', 'Record of a specific investigation', 'ClinicalImpression.investigation.item(RiskAssessment, FamilyMemberHistory, Observation, Media, DiagnosticReport, ImagingStudy, QuestionnaireResponse)', '',
'patient', 'reference', 'Patient or group assessed', 'ClinicalImpression.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'previous', 'reference', 'Reference to last assessment', 'ClinicalImpression.previous(ClinicalImpression)', '',
'problem', 'reference', 'Relevant impressions of patient state', 'ClinicalImpression.problem(Condition, AllergyIntolerance)', '',
'status', 'token', 'in-progress | completed | entered-in-error', 'ClinicalImpression.status', '',
'subject', 'reference', 'Patient or group assessed', 'ClinicalImpression.subject(Group, Patient)', '',
'supporting-info', 'reference', 'Information supporting the clinical impression', 'ClinicalImpression.supportingInfo(Any)', '',
)


