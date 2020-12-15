df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Patient',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DeviceUseStatement', 'TU', '', 'DomainResource', 'Record of use of a deviceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External identifier for this record',
'basedOn', 'Σ', '0..*', 'Reference(ServiceRequest)', 'Fulfills plan, proposal or order',
'status', '?!Σ', '1..1', 'code', 'active | completed | entered-in-error +DeviceUseStatementStatus (Required)',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Patient using device',
'derivedFrom', 'Σ', '0..*', 'Reference(ServiceRequest | Procedure | Claim | Observation | QuestionnaireResponse | DocumentReference)', 'Supporting information',
'timing[x]', 'Σ', '0..1', '', 'How often  the device was used',
'timingTiming', '', '', 'Timing', '',
'timingPeriod', '', '', 'Period', '',
'timingDateTime', '', '', 'dateTime', '',
'recordedOn', 'Σ', '0..1', 'dateTime', 'When statement was recorded',
'source', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson)', 'Who made the statement',
'device', 'Σ', '1..1', 'Reference(Device)', 'Reference to device used',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Why device was used',
'reasonReference', 'Σ', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference | Media)', 'Why was DeviceUseStatement performed?',
'bodySite', 'Σ', '0..1', 'CodeableConcept', 'Target body siteSNOMED CT Body Structures (Example)',
'note', '', '0..*', 'Annotation', 'Addition details (comments, instructions)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'DeviceUseStatement', '',
'DeviceUseStatement.basedOn', 'Added Element',
'DeviceUseStatement.status', 'Change value set from http://hl7.org/fhir/ValueSet/device-statement-status to http://hl7.org/fhir/ValueSet/device-statement-status|4.0.1',
'DeviceUseStatement.derivedFrom', 'Added Element',
'DeviceUseStatement.source', 'Type Reference: Added Target Type PractitionerRole',
'DeviceUseStatement.reasonCode', 'Added Element',
'DeviceUseStatement.reasonReference', 'Added Element',
'DeviceUseStatement.whenUsed', 'deleted',
'DeviceUseStatement.indication', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DeviceUseStatement', 'TU', '', 'DomainResource', 'Record of use of a deviceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External identifier for this record',
'basedOn', 'Σ', '0..*', 'Reference(ServiceRequest)', 'Fulfills plan, proposal or order',
'status', '?!Σ', '1..1', 'code', 'active | completed | entered-in-error +DeviceUseStatementStatus (Required)',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Patient using device',
'derivedFrom', 'Σ', '0..*', 'Reference(ServiceRequest | Procedure | Claim | Observation | QuestionnaireResponse | DocumentReference)', 'Supporting information',
'timing[x]', 'Σ', '0..1', '', 'How often  the device was used',
'timingTiming', '', '', 'Timing', '',
'timingPeriod', '', '', 'Period', '',
'timingDateTime', '', '', 'dateTime', '',
'recordedOn', 'Σ', '0..1', 'dateTime', 'When statement was recorded',
'source', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson)', 'Who made the statement',
'device', 'Σ', '1..1', 'Reference(Device)', 'Reference to device used',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Why device was used',
'reasonReference', 'Σ', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference | Media)', 'Why was DeviceUseStatement performed?',
'bodySite', 'Σ', '0..1', 'CodeableConcept', 'Target body siteSNOMED CT Body Structures (Example)',
'note', '', '0..*', 'Annotation', 'Addition details (comments, instructions)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'DeviceUseStatement', '',
'DeviceUseStatement.basedOn', 'Added Element',
'DeviceUseStatement.status', 'Change value set from http://hl7.org/fhir/ValueSet/device-statement-status to http://hl7.org/fhir/ValueSet/device-statement-status|4.0.1',
'DeviceUseStatement.derivedFrom', 'Added Element',
'DeviceUseStatement.source', 'Type Reference: Added Target Type PractitionerRole',
'DeviceUseStatement.reasonCode', 'Added Element',
'DeviceUseStatement.reasonReference', 'Added Element',
'DeviceUseStatement.whenUsed', 'deleted',
'DeviceUseStatement.indication', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'DeviceUseStatement.status', 'A coded concept indicating the current status of the Device Usage.', 'Required', 'DeviceUseStatementStatus',
'DeviceUseStatement.bodySite', 'Codes describing anatomical locations. May include laterality.', 'Example', 'SNOMEDCTBodyStructures',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'device', 'reference', 'Search by device', 'DeviceUseStatement.device(Device)', '',
'identifier', 'token', 'Search by identifier', 'DeviceUseStatement.identifier', '',
'patient', 'reference', 'Search by subject - a patient', 'DeviceUseStatement.subject(Group, Patient)', '33 Resources',
'subject', 'reference', 'Search by subject', 'DeviceUseStatement.subject(Group, Patient)', '',
)


