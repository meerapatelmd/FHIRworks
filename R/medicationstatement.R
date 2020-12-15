df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Pharmacy  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
'MedicationRequest', 'An order for both supply of the medication and the instructions for
                    administration of the medicine to a patient.',
'MedicationDispense', 'Provision of a supply of a medication with the intention that it is subsequently
                    consumed by a patient (usually in response to a prescription).',
'MedicationAdministration', 'When a patient actually consumes a medicine, or it is otherwise administered to
                    them',
'MedicationStatement', 'This is a record of a medication being taken by a patient or that a medication
                    has been given to a patient, where the record is the result of a report from the
                    patient or another clinician, or derived from supporting information (for
                    example, Claim, Observation or MedicationRequest). A medication statement is
                    not a part of the prescribe->dispense->administer sequence but is a report that
                    such a sequence (or at least a part of it) did take place, resulting in a belief
                    that the patient has received a particular medication.',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicationStatement', 'TU', '', 'DomainResource', 'Record of medication being taken by a patientElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External identifier',
'basedOn', 'Σ', '0..*', 'Reference(MedicationRequest | CarePlan | ServiceRequest)', 'Fulfils plan, proposal or order',
'partOf', 'Σ', '0..*', 'Reference(MedicationAdministration | MedicationDispense | MedicationStatement | Procedure | Observation)', 'Part of referenced event',
'status', '?!Σ', '1..1', 'code', 'active | completed | entered-in-error | intended | stopped | on-hold | unknown | not-takenMedication  status  codes (Required)',
'statusReason', '', '0..*', 'CodeableConcept', 'Reason for current statusSNOMED CT Drug Therapy Status codes  (Example)',
'category', 'Σ', '0..1', 'CodeableConcept', 'Type of medication usageMedication usage category codes (Preferred)',
'medication[x]', 'Σ', '1..1', '', 'What medication was takenSNOMED CT Medication Codes (Example)',
'medicationCodeableConcept', '', '', 'CodeableConcept', '',
'medicationReference', '', '', 'Reference(Medication)', '',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Who is/was taking  the medication',
'context', 'Σ', '0..1', 'Reference(Encounter | EpisodeOfCare)', 'Encounter / Episode associated with MedicationStatement',
'effective[x]', 'Σ', '0..1', '', 'The date/time or interval when the medication is/was/will be taken',
'effectiveDateTime', '', '', 'dateTime', '',
'effectivePeriod', '', '', 'Period', '',
'dateAsserted', 'Σ', '0..1', 'dateTime', 'When the statement was asserted?',
'informationSource', '', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson | Organization)', 'Person or organization that provided the information about the taking of this medication',
'derivedFrom', '', '0..*', 'Reference(Any)', 'Additional supporting information',
'reasonCode', '', '0..*', 'CodeableConcept', 'Reason for why the medication is being/was takenCondition/Problem/Diagnosis Codes (Example)',
'reasonReference', '', '0..*', 'Reference(Condition | Observation | DiagnosticReport)', 'Condition or observation that supports why the medication is being/was taken',
'note', '', '0..*', 'Annotation', 'Further information about the statement',
'dosage', '', '0..*', 'Dosage', 'Details of how medication is/was taken or should be taken',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'MedicationStatement', '',
'MedicationStatement.basedOn', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Types ProcedureRequest, ReferralRequest',
'MedicationStatement.status', 'Change value set from http://hl7.org/fhir/ValueSet/medication-statement-status to http://hl7.org/fhir/ValueSet/medication-statement-status|4.0.1',
'MedicationStatement.statusReason', 'Added Element',
'MedicationStatement.informationSource', 'Type Reference: Added Target Type PractitionerRole',
'MedicationStatement.reasonReference', 'Type Reference: Added Target Type DiagnosticReport',
'MedicationStatement.taken', 'deleted',
'MedicationStatement.reasonNotTaken', 'deleted',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicationStatement', 'TU', '', 'DomainResource', 'Record of medication being taken by a patientElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External identifier',
'basedOn', 'Σ', '0..*', 'Reference(MedicationRequest | CarePlan | ServiceRequest)', 'Fulfils plan, proposal or order',
'partOf', 'Σ', '0..*', 'Reference(MedicationAdministration | MedicationDispense | MedicationStatement | Procedure | Observation)', 'Part of referenced event',
'status', '?!Σ', '1..1', 'code', 'active | completed | entered-in-error | intended | stopped | on-hold | unknown | not-takenMedication  status  codes (Required)',
'statusReason', '', '0..*', 'CodeableConcept', 'Reason for current statusSNOMED CT Drug Therapy Status codes  (Example)',
'category', 'Σ', '0..1', 'CodeableConcept', 'Type of medication usageMedication usage category codes (Preferred)',
'medication[x]', 'Σ', '1..1', '', 'What medication was takenSNOMED CT Medication Codes (Example)',
'medicationCodeableConcept', '', '', 'CodeableConcept', '',
'medicationReference', '', '', 'Reference(Medication)', '',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Who is/was taking  the medication',
'context', 'Σ', '0..1', 'Reference(Encounter | EpisodeOfCare)', 'Encounter / Episode associated with MedicationStatement',
'effective[x]', 'Σ', '0..1', '', 'The date/time or interval when the medication is/was/will be taken',
'effectiveDateTime', '', '', 'dateTime', '',
'effectivePeriod', '', '', 'Period', '',
'dateAsserted', 'Σ', '0..1', 'dateTime', 'When the statement was asserted?',
'informationSource', '', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson | Organization)', 'Person or organization that provided the information about the taking of this medication',
'derivedFrom', '', '0..*', 'Reference(Any)', 'Additional supporting information',
'reasonCode', '', '0..*', 'CodeableConcept', 'Reason for why the medication is being/was takenCondition/Problem/Diagnosis Codes (Example)',
'reasonReference', '', '0..*', 'Reference(Condition | Observation | DiagnosticReport)', 'Condition or observation that supports why the medication is being/was taken',
'note', '', '0..*', 'Annotation', 'Further information about the statement',
'dosage', '', '0..*', 'Dosage', 'Details of how medication is/was taken or should be taken',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'MedicationStatement', '',
'MedicationStatement.basedOn', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Types ProcedureRequest, ReferralRequest',
'MedicationStatement.status', 'Change value set from http://hl7.org/fhir/ValueSet/medication-statement-status to http://hl7.org/fhir/ValueSet/medication-statement-status|4.0.1',
'MedicationStatement.statusReason', 'Added Element',
'MedicationStatement.informationSource', 'Type Reference: Added Target Type PractitionerRole',
'MedicationStatement.reasonReference', 'Type Reference: Added Target Type DiagnosticReport',
'MedicationStatement.taken', 'deleted',
'MedicationStatement.reasonNotTaken', 'deleted',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'MedicationStatement.status', 'A coded concept indicating the current status of a MedicationStatement.', 'Required', 'Medication Status Codes',
'MedicationStatement.statusReason', 'A coded concept indicating the reason for the status of the statement.', 'Example', 'SNOMEDCTDrugTherapyStatusCodes',
'MedicationStatement.category', 'A coded concept identifying where the medication included in the MedicationStatement is expected to be consumed or administered.', 'Preferred', 'Medication usage category codes',
'MedicationStatement.medication[x]', 'A coded concept identifying the substance or product being taken.', 'Example', 'SNOMEDCTMedicationCodes',
'MedicationStatement.reasonCode', 'A coded concept identifying why the medication is being taken.', 'Example', 'Condition/Problem/DiagnosisCodes',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'category', 'token', 'Returns statements of this category of medicationstatement', 'MedicationStatement.category', '',
'code', 'token', 'Return statements of this medication code', '(MedicationStatement.medication as CodeableConcept)', '13 Resources',
'context', 'reference', 'Returns statements for a specific context (episode or episode of Care).', 'MedicationStatement.context(EpisodeOfCare, Encounter)', '',
'effective', 'date', 'Date when patient was taking (or not taking) the medication', 'MedicationStatement.effective', '',
'identifier', 'token', 'Return statements with this external identifier', 'MedicationStatement.identifier', '30 Resources',
'medication', 'reference', 'Return statements of this medication reference', '(MedicationStatement.medication as Reference)(Medication)', '3 Resources',
'part-of', 'reference', 'Returns statements that are part of another event.', 'MedicationStatement.partOf(MedicationDispense, Observation, MedicationAdministration, Procedure, MedicationStatement)', '',
'patient', 'reference', 'Returns statements for a specific patient.', 'MedicationStatement.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'source', 'reference', 'Who or where the information in the statement came from', 'MedicationStatement.informationSource(Practitioner, Organization, Patient, PractitionerRole, RelatedPerson)', '',
'status', 'token', 'Return statements that match the given status', 'MedicationStatement.status', '3 Resources',
'subject', 'reference', 'The identity of a patient, animal or group to list statements for', 'MedicationStatement.subject(Group, Patient)', '',
)


