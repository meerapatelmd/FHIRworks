df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Clinical Decision Support  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'RiskAssessment', 'TU', '', 'DomainResource', 'Potential outcomes for a subject with likelihoodElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique identifier for the assessment',
'basedOn', '', '0..1', 'Reference(Any)', 'Request fulfilled by this assessment',
'parent', '', '0..1', 'Reference(Any)', 'Part of this occurrence',
'status', 'Σ', '1..1', 'code', 'registered | preliminary | final | amended +ObservationStatus (Required)',
'method', 'Σ', '0..1', 'CodeableConcept', 'Evaluation mechanism',
'code', 'Σ', '0..1', 'CodeableConcept', 'Type of assessment',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Who/what does assessment apply to?',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Where was assessment performed?',
'occurrence[x]', 'Σ', '0..1', '', 'When was assessment made?',
'occurrenceDateTime', '', '', 'dateTime', '',
'occurrencePeriod', '', '', 'Period', '',
'condition', 'Σ', '0..1', 'Reference(Condition)', 'Condition assessed',
'performer', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Device)', 'Who did assessment?',
'reasonCode', '', '0..*', 'CodeableConcept', 'Why the assessment was necessary?',
'reasonReference', '', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference)', 'Why the assessment was necessary?',
'basis', '', '0..*', 'Reference(Any)', 'Information used in assessment',
'prediction', 'I', '0..*', 'BackboneElement', 'Outcome predicted+ Rule: Must be <= 100',
'outcome', '', '0..1', 'CodeableConcept', 'Possible outcome for the subject',
'probability[x]', 'I', '0..1', '', 'Likelihood of specified outcome+ Rule: low and high must be percentages, if present',
'probabilityDecimal', '', '', 'decimal', '',
'probabilityRange', '', '', 'Range', '',
'qualitativeRisk', '', '0..1', 'CodeableConcept', 'Likelihood of specified outcome as a qualitative valueRisk Probability (Example)',
'relativeRisk', '', '0..1', 'decimal', 'Relative likelihood',
'when[x]', '', '0..1', '', 'Timeframe or age range',
'whenPeriod', '', '', 'Period', '',
'whenRange', '', '', 'Range', '',
'rationale', '', '0..1', 'string', 'Explanation of prediction',
'mitigation', '', '0..1', 'string', 'How to reduce risk',
'note', '', '0..*', 'Annotation', 'Comments on the risk assessment',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'RiskAssessment', '',
'RiskAssessment.identifier', 'Max Cardinality changed from 1 to *',
'RiskAssessment.status', 'Change value set from http://hl7.org/fhir/ValueSet/observation-status to http://hl7.org/fhir/ValueSet/observation-status|4.0.1',
'RiskAssessment.subject', 'Min Cardinality changed from 0 to 1',
'RiskAssessment.encounter', 'Added Element',
'RiskAssessment.performer', 'Type Reference: Added Target Type PractitionerRole',
'RiskAssessment.reasonCode', 'Added Element',
'RiskAssessment.reasonReference', 'Added Element',
'RiskAssessment.prediction.outcome', 'Min Cardinality changed from 1 to 0',
'RiskAssessment.note', 'Renamed from comment to note
        Max Cardinality changed from 1 to *
        Type changed from string to Annotation',
'RiskAssessment.context', 'deleted',
'RiskAssessment.reason[x]', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'RiskAssessment', 'TU', '', 'DomainResource', 'Potential outcomes for a subject with likelihoodElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique identifier for the assessment',
'basedOn', '', '0..1', 'Reference(Any)', 'Request fulfilled by this assessment',
'parent', '', '0..1', 'Reference(Any)', 'Part of this occurrence',
'status', 'Σ', '1..1', 'code', 'registered | preliminary | final | amended +ObservationStatus (Required)',
'method', 'Σ', '0..1', 'CodeableConcept', 'Evaluation mechanism',
'code', 'Σ', '0..1', 'CodeableConcept', 'Type of assessment',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Who/what does assessment apply to?',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Where was assessment performed?',
'occurrence[x]', 'Σ', '0..1', '', 'When was assessment made?',
'occurrenceDateTime', '', '', 'dateTime', '',
'occurrencePeriod', '', '', 'Period', '',
'condition', 'Σ', '0..1', 'Reference(Condition)', 'Condition assessed',
'performer', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Device)', 'Who did assessment?',
'reasonCode', '', '0..*', 'CodeableConcept', 'Why the assessment was necessary?',
'reasonReference', '', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference)', 'Why the assessment was necessary?',
'basis', '', '0..*', 'Reference(Any)', 'Information used in assessment',
'prediction', 'I', '0..*', 'BackboneElement', 'Outcome predicted+ Rule: Must be <= 100',
'outcome', '', '0..1', 'CodeableConcept', 'Possible outcome for the subject',
'probability[x]', 'I', '0..1', '', 'Likelihood of specified outcome+ Rule: low and high must be percentages, if present',
'probabilityDecimal', '', '', 'decimal', '',
'probabilityRange', '', '', 'Range', '',
'qualitativeRisk', '', '0..1', 'CodeableConcept', 'Likelihood of specified outcome as a qualitative valueRisk Probability (Example)',
'relativeRisk', '', '0..1', 'decimal', 'Relative likelihood',
'when[x]', '', '0..1', '', 'Timeframe or age range',
'whenPeriod', '', '', 'Period', '',
'whenRange', '', '', 'Range', '',
'rationale', '', '0..1', 'string', 'Explanation of prediction',
'mitigation', '', '0..1', 'string', 'How to reduce risk',
'note', '', '0..*', 'Annotation', 'Comments on the risk assessment',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'RiskAssessment', '',
'RiskAssessment.identifier', 'Max Cardinality changed from 1 to *',
'RiskAssessment.status', 'Change value set from http://hl7.org/fhir/ValueSet/observation-status to http://hl7.org/fhir/ValueSet/observation-status|4.0.1',
'RiskAssessment.subject', 'Min Cardinality changed from 0 to 1',
'RiskAssessment.encounter', 'Added Element',
'RiskAssessment.performer', 'Type Reference: Added Target Type PractitionerRole',
'RiskAssessment.reasonCode', 'Added Element',
'RiskAssessment.reasonReference', 'Added Element',
'RiskAssessment.prediction.outcome', 'Min Cardinality changed from 1 to 0',
'RiskAssessment.note', 'Renamed from comment to note
        Max Cardinality changed from 1 to *
        Type changed from string to Annotation',
'RiskAssessment.context', 'deleted',
'RiskAssessment.reason[x]', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'RiskAssessment.status', 'The status of the risk assessment; e.g. preliminary, final, amended, etc.', 'Required', 'ObservationStatus',
'RiskAssessment.method', 'The mechanism or algorithm used to make the assessment; e.g. TIMI, PRISM, Cardiff Type 2 diabetes, etc.', 'Unknown', 'No details provided yet',
'RiskAssessment.prediction.outcome', 'The condition or other outcome; e.g. death, remission, amputation, infection, etc.', 'Unknown', 'No details provided yet',
'RiskAssessment.prediction.qualitativeRisk', 'The likelihood of the occurrence of a specified outcome.', 'Example', 'RiskProbability',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'ras-1', 'Rule', 'RiskAssessment.prediction.probability[x]', 'low and high must be percentages, if present', '(low.empty() or ((low.code = '%') and (low.system = %ucum))) and (high.empty() or ((high.code = '%') and (high.system = %ucum)))',
'ras-2', 'Rule', 'RiskAssessment.prediction', 'Must be <= 100', 'probability is decimal implies (probability as decimal) <= 100',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'condition', 'reference', 'Condition assessed', 'RiskAssessment.condition(Condition)', '',
'date', 'date', 'When was assessment made?', '(RiskAssessment.occurrence as dateTime)', '17 Resources',
'encounter', 'reference', 'Where was assessment performed?', 'RiskAssessment.encounter(Encounter)', '12 Resources',
'identifier', 'token', 'Unique identifier for the assessment', 'RiskAssessment.identifier', '30 Resources',
'method', 'token', 'Evaluation mechanism', 'RiskAssessment.method', '',
'patient', 'reference', 'Who/what does assessment apply to?', 'RiskAssessment.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'performer', 'reference', 'Who did assessment?', 'RiskAssessment.performer(Practitioner, Device, PractitionerRole)', '',
'probability', 'number', 'Likelihood of specified outcome', 'RiskAssessment.prediction.probability', '',
'risk', 'token', 'Likelihood of specified outcome as a qualitative value', 'RiskAssessment.prediction.qualitativeRisk', '',
'subject', 'reference', 'Who/what does assessment apply to?', 'RiskAssessment.subject(Group, Patient)', '',
)


