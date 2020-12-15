df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Pharmacy  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Encounter, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
'MedicationRequest', 'An order for both supply of the medication and the instructions for administration of the medicine to a patient.',
'MedicationDispense', 'Provision of a supply of a medication with the intention that it is subsequently consumed by a patient (usually in response to a prescription).',
'MedicationAdministration', 'When a patient actually consumes a medicine, or it is otherwise administered to them',
'MedicationStatement', 'This is a record of a medication being taken by a patient or that a medication has been given to a patient, where the record is the result of a report from the patient or another clinician. 
          A medication statement is not a part of the prescribe->dispense->administer sequence but is a report that such a sequence (or at least a part of it) did take place, resulting in a belief that the patient has received a particular medication.',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicationAdministration', 'TU', '', 'DomainResource', 'Administration of medication to a patientElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'External identifier',
'instantiates', 'Σ', '0..*', 'uri', 'Instantiates protocol or definition',
'partOf', 'Σ', '0..*', 'Reference(MedicationAdministration | Procedure)', 'Part of referenced event',
'status', '?!Σ', '1..1', 'code', 'in-progress | not-done | on-hold | completed | entered-in-error | stopped | unknownMedication administration  status  codes (Required)',
'statusReason', '', '0..*', 'CodeableConcept', 'Reason administration not performedSNOMED CT Reason Medication Not Given Codes (Example)',
'category', '', '0..1', 'CodeableConcept', 'Type of medication usageMedication administration  category  codes (Preferred)',
'medication[x]', 'Σ', '1..1', '', 'What was administeredSNOMED CT Medication Codes (Example)',
'medicationCodeableConcept', '', '', 'CodeableConcept', '',
'medicationReference', '', '', 'Reference(Medication)', '',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Who received medication',
'context', '', '0..1', 'Reference(Encounter | EpisodeOfCare)', 'Encounter or Episode of Care administered as part of',
'supportingInformation', '', '0..*', 'Reference(Any)', 'Additional information to support administration',
'effective[x]', 'Σ', '1..1', '', 'Start and end time of administration',
'effectiveDateTime', '', '', 'dateTime', '',
'effectivePeriod', '', '', 'Period', '',
'performer', 'Σ', '0..*', 'BackboneElement', 'Who performed the medication administration and what they did',
'function', '', '0..1', 'CodeableConcept', 'Type of performanceMedication administration  performer  function  codes (Example)',
'actor', 'Σ', '1..1', 'Reference(Practitioner | PractitionerRole | Patient | RelatedPerson | Device)', 'Who performed the medication administration',
'reasonCode', '', '0..*', 'CodeableConcept', 'Reason administration performedReason Medication Given Codes (Example)',
'reasonReference', '', '0..*', 'Reference(Condition | Observation | DiagnosticReport)', 'Condition or observation that supports why the medication was administered',
'request', '', '0..1', 'Reference(MedicationRequest)', 'Request administration performed against',
'device', '', '0..*', 'Reference(Device)', 'Device used to administer',
'note', '', '0..*', 'Annotation', 'Information about the administration',
'dosage', 'I', '0..1', 'BackboneElement', 'Details of how medication was taken+ Rule: SHALL have at least one of dosage.dose or dosage.rate[x]',
'text', '', '0..1', 'string', 'Free text dosage instructions e.g. SIG',
'site', '', '0..1', 'CodeableConcept', 'Body site administered toSNOMED CT Anatomical Structure for Administration Site Codes (Example)',
'route', '', '0..1', 'CodeableConcept', 'Path of substance into bodySNOMED CT Route Codes (Example)',
'method', '', '0..1', 'CodeableConcept', 'How drug was administeredSNOMED CT Administration Method Codes (Example)',
'dose', '', '0..1', 'SimpleQuantity', 'Amount of medication per dose',
'rate[x]', '', '0..1', '', 'Dose quantity per unit of time',
'rateRatio', '', '', 'Ratio', '',
'rateQuantity', '', '', 'SimpleQuantity', '',
'eventHistory', '', '0..*', 'Reference(Provenance)', 'A list of events of interest in the lifecycle',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'MedicationAdministration', '',
'MedicationAdministration.instantiates', 'Added Element',
'MedicationAdministration.status', 'Change value set from http://hl7.org/fhir/ValueSet/medication-admin-status to http://hl7.org/fhir/ValueSet/medication-admin-status|4.0.1',
'MedicationAdministration.statusReason', 'Added Element',
'MedicationAdministration.performer.function', 'Added Element',
'MedicationAdministration.performer.actor', 'Type Reference: Added Target Type PractitionerRole',
'MedicationAdministration.reasonReference', 'Type Reference: Added Target Type DiagnosticReport',
'MedicationAdministration.request', 'Added Element',
'MedicationAdministration.dosage.rate[x]', 'Add Type Quantity()
        Remove Type Quantity()',
'MedicationAdministration.definition', 'deleted',
'MedicationAdministration.performer.onBehalfOf', 'deleted',
'MedicationAdministration.notGiven', 'deleted',
'MedicationAdministration.reasonNotGiven', 'deleted',
'MedicationAdministration.prescription', 'deleted',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicationAdministration', 'TU', '', 'DomainResource', 'Administration of medication to a patientElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'External identifier',
'instantiates', 'Σ', '0..*', 'uri', 'Instantiates protocol or definition',
'partOf', 'Σ', '0..*', 'Reference(MedicationAdministration | Procedure)', 'Part of referenced event',
'status', '?!Σ', '1..1', 'code', 'in-progress | not-done | on-hold | completed | entered-in-error | stopped | unknownMedication administration  status  codes (Required)',
'statusReason', '', '0..*', 'CodeableConcept', 'Reason administration not performedSNOMED CT Reason Medication Not Given Codes (Example)',
'category', '', '0..1', 'CodeableConcept', 'Type of medication usageMedication administration  category  codes (Preferred)',
'medication[x]', 'Σ', '1..1', '', 'What was administeredSNOMED CT Medication Codes (Example)',
'medicationCodeableConcept', '', '', 'CodeableConcept', '',
'medicationReference', '', '', 'Reference(Medication)', '',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Who received medication',
'context', '', '0..1', 'Reference(Encounter | EpisodeOfCare)', 'Encounter or Episode of Care administered as part of',
'supportingInformation', '', '0..*', 'Reference(Any)', 'Additional information to support administration',
'effective[x]', 'Σ', '1..1', '', 'Start and end time of administration',
'effectiveDateTime', '', '', 'dateTime', '',
'effectivePeriod', '', '', 'Period', '',
'performer', 'Σ', '0..*', 'BackboneElement', 'Who performed the medication administration and what they did',
'function', '', '0..1', 'CodeableConcept', 'Type of performanceMedication administration  performer  function  codes (Example)',
'actor', 'Σ', '1..1', 'Reference(Practitioner | PractitionerRole | Patient | RelatedPerson | Device)', 'Who performed the medication administration',
'reasonCode', '', '0..*', 'CodeableConcept', 'Reason administration performedReason Medication Given Codes (Example)',
'reasonReference', '', '0..*', 'Reference(Condition | Observation | DiagnosticReport)', 'Condition or observation that supports why the medication was administered',
'request', '', '0..1', 'Reference(MedicationRequest)', 'Request administration performed against',
'device', '', '0..*', 'Reference(Device)', 'Device used to administer',
'note', '', '0..*', 'Annotation', 'Information about the administration',
'dosage', 'I', '0..1', 'BackboneElement', 'Details of how medication was taken+ Rule: SHALL have at least one of dosage.dose or dosage.rate[x]',
'text', '', '0..1', 'string', 'Free text dosage instructions e.g. SIG',
'site', '', '0..1', 'CodeableConcept', 'Body site administered toSNOMED CT Anatomical Structure for Administration Site Codes (Example)',
'route', '', '0..1', 'CodeableConcept', 'Path of substance into bodySNOMED CT Route Codes (Example)',
'method', '', '0..1', 'CodeableConcept', 'How drug was administeredSNOMED CT Administration Method Codes (Example)',
'dose', '', '0..1', 'SimpleQuantity', 'Amount of medication per dose',
'rate[x]', '', '0..1', '', 'Dose quantity per unit of time',
'rateRatio', '', '', 'Ratio', '',
'rateQuantity', '', '', 'SimpleQuantity', '',
'eventHistory', '', '0..*', 'Reference(Provenance)', 'A list of events of interest in the lifecycle',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'MedicationAdministration', '',
'MedicationAdministration.instantiates', 'Added Element',
'MedicationAdministration.status', 'Change value set from http://hl7.org/fhir/ValueSet/medication-admin-status to http://hl7.org/fhir/ValueSet/medication-admin-status|4.0.1',
'MedicationAdministration.statusReason', 'Added Element',
'MedicationAdministration.performer.function', 'Added Element',
'MedicationAdministration.performer.actor', 'Type Reference: Added Target Type PractitionerRole',
'MedicationAdministration.reasonReference', 'Type Reference: Added Target Type DiagnosticReport',
'MedicationAdministration.request', 'Added Element',
'MedicationAdministration.dosage.rate[x]', 'Add Type Quantity()
        Remove Type Quantity()',
'MedicationAdministration.definition', 'deleted',
'MedicationAdministration.performer.onBehalfOf', 'deleted',
'MedicationAdministration.notGiven', 'deleted',
'MedicationAdministration.reasonNotGiven', 'deleted',
'MedicationAdministration.prescription', 'deleted',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'MedicationAdministration.status', 'A set of codes indicating the current status of a MedicationAdministration.', 'Required', 'MedicationAdministration Status Codes',
'MedicationAdministration.statusReason', 'A set of codes indicating the reason why the MedicationAdministration is negated.', 'Example', 'SNOMEDCTReasonMedicationNotGivenCodes',
'MedicationAdministration.category', 'A coded concept describing where the medication administered is expected to occur.', 'Preferred', 'MedicationAdministration Category Codes',
'MedicationAdministration.medication[x]', 'Codes identifying substance or product that can be administered.', 'Example', 'SNOMEDCTMedicationCodes',
'MedicationAdministration.performer.function', 'A code describing the role an individual played in administering the medication.', 'Example', 'MedicationAdministration Performer Function Codes',
'MedicationAdministration.reasonCode', 'A set of codes indicating the reason why the MedicationAdministration was made.', 'Example', 'ReasonMedicationGivenCodes',
'MedicationAdministration.dosage.site', 'A coded concept describing the site location the medicine enters into or onto the body.', 'Example', 'SNOMEDCTAnatomicalStructureForAdministrationSiteCodes',
'MedicationAdministration.dosage.route', 'A coded concept describing the route or physiological path of administration of a therapeutic agent into or onto the body of a subject.', 'Example', 'SNOMEDCTRouteCodes',
'MedicationAdministration.dosage.method', 'A coded concept describing the technique by which the medicine is administered.', 'Example', 'SNOMEDCTAdministrationMethodCodes',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'mad-1', 'Rule', 'MedicationAdministration.dosage', 'SHALL have at least one of dosage.dose or dosage.rate[x]', 'dose.exists() or rate.exists()',
)


df9 <- 
tibble::tribble(
~`Issue`,~`Comments`,
'Medication Resource', 'A medication will typically be referred to by means of a code drawn from a suitable medication terminology.  However, on occasion a product will be required for which the "recipe" must be specified.  This implies a requirement to deal with a choice of either a code or a much more complete resource.Currently that resource has not been created.',
'Contrast Media', 'Is this resource adequate for administering contrast media to a patient?',
'Author (accountability)', 'Authorship (and any other accountability) is assumed to be dealt with by the standard FHIR methods.',
)


df10 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'code', 'token', 'Return administrations of this medication code', '(MedicationAdministration.medication as CodeableConcept)', '13 Resources',
'context', 'reference', 'Return administrations that share this encounter or episode of care', 'MedicationAdministration.context(EpisodeOfCare, Encounter)', '',
'device', 'reference', 'Return administrations with this administration device identity', 'MedicationAdministration.device(Device)', '',
'effective-time', 'date', 'Date administration happened (or did not happen)', 'MedicationAdministration.effective', '',
'identifier', 'token', 'Return administrations with this external identifier', 'MedicationAdministration.identifier', '30 Resources',
'medication', 'reference', 'Return administrations of this medication resource', '(MedicationAdministration.medication as Reference)(Medication)', '3 Resources',
'patient', 'reference', 'The identity of a patient to list administrations  for', 'MedicationAdministration.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'performer', 'reference', 'The identity of the individual who administered the medication', 'MedicationAdministration.performer.actor(Practitioner, Device, Patient, PractitionerRole, RelatedPerson)', '',
'reason-given', 'token', 'Reasons for administering the medication', 'MedicationAdministration.reasonCode', '',
'reason-not-given', 'token', 'Reasons for not administering the medication', 'MedicationAdministration.statusReason', '',
'request', 'reference', 'The identity of a request to list administrations from', 'MedicationAdministration.request(MedicationRequest)', '',
'status', 'token', 'MedicationAdministration event status (for example one of active/paused/completed/nullified)', 'MedicationAdministration.status', '3 Resources',
'subject', 'reference', 'The identity of the individual or group to list administrations for', 'MedicationAdministration.subject(Group, Patient)', '',
)


