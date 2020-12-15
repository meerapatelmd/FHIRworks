df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Pharmacy  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
'MedicationRequest', 'An order for both supply of the medication and the instructions for administration of the medicine to a patient.',
'MedicationDispense', 'Provision of a supply of a medication with the intention that it is subsequently consumed by a patient (usually in response to a prescription).',
'MedicationAdministration', 'When a patient actually consumes a medicine, or the medication is otherwise administered to them',
'MedicationStatement', 'This is a record of a medication being taken by a patient or that a medication has been given to a patient, where the record is the result of a report from the patient or another clinician. 
          A medication statement is not a part of the prescribe->dispense->administer sequence but is a report that such a sequence (or at least a part of it) did take place, resulting in a belief that the patient has received a particular medication.',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicationDispense', 'ITU', '', 'DomainResource', 'Dispensing a medication to a named patient+ Rule: whenHandedOver cannot be before whenPreparedElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'External identifier',
'partOf', '', '0..*', 'Reference(Procedure)', 'Event that dispense is part of',
'status', '?!Σ', '1..1', 'code', 'preparation | in-progress | cancelled | on-hold | completed | entered-in-error | stopped | declined | unknownMedication dispense  status  codes (Required)',
'statusReason[x]', '', '0..1', '', 'Why a dispense was not performedMedication dispense  status  reason  codes (Example)',
'statusReasonCodeableConcept', '', '', 'CodeableConcept', '',
'statusReasonReference', '', '', 'Reference(DetectedIssue)', '',
'category', '', '0..1', 'CodeableConcept', 'Type of medication dispenseMedication dispense  category  codes (Preferred)',
'medication[x]', 'Σ', '1..1', '', 'What medication was suppliedSNOMED CT Medication Codes (Example)',
'medicationCodeableConcept', '', '', 'CodeableConcept', '',
'medicationReference', '', '', 'Reference(Medication)', '',
'subject', 'Σ', '0..1', 'Reference(Patient | Group)', 'Who the dispense is for',
'context', '', '0..1', 'Reference(Encounter | EpisodeOfCare)', 'Encounter / Episode associated with event',
'supportingInformation', '', '0..*', 'Reference(Any)', 'Information that supports the dispensing of the medication',
'performer', '', '0..*', 'BackboneElement', 'Who performed event',
'function', '', '0..1', 'CodeableConcept', 'Who performed the dispense and what they didMedication dispense  performer  function  codes (Example)',
'actor', '', '1..1', 'Reference(Practitioner | PractitionerRole | Organization | Patient | Device | RelatedPerson)', 'Individual who was performing',
'location', '', '0..1', 'Reference(Location)', 'Where the dispense occurred',
'authorizingPrescription', '', '0..*', 'Reference(MedicationRequest)', 'Medication order that authorizes the dispense',
'type', '', '0..1', 'CodeableConcept', 'Trial fill, partial fill, emergency fill, etc.V3 Value SetActPharmacySupplyType (Example)',
'quantity', '', '0..1', 'SimpleQuantity', 'Amount dispensed',
'daysSupply', '', '0..1', 'SimpleQuantity', 'Amount of medication expressed as a timing amount',
'whenPrepared', 'Σ', '0..1', 'dateTime', 'When product was packaged and reviewed',
'whenHandedOver', '', '0..1', 'dateTime', 'When product was given out',
'destination', '', '0..1', 'Reference(Location)', 'Where the medication was sent',
'receiver', '', '0..*', 'Reference(Patient | Practitioner)', 'Who collected the medication',
'note', '', '0..*', 'Annotation', 'Information about the dispense',
'dosageInstruction', '', '0..*', 'Dosage', 'How the medication is to be used by the patient or administered by the caregiver',
'substitution', '', '0..1', 'BackboneElement', 'Whether a substitution was performed on the dispense',
'wasSubstituted', '', '1..1', 'boolean', 'Whether a substitution was or was not performed on the dispense',
'type', '', '0..1', 'CodeableConcept', 'Code signifying whether a different drug was dispensed from what was prescribedV3 Value SetActSubstanceAdminSubstitutionCode (Example)',
'reason', '', '0..*', 'CodeableConcept', 'Why was substitution madeV3 Value SetSubstanceAdminSubstitutionReason (Example)',
'responsibleParty', '', '0..*', 'Reference(Practitioner | PractitionerRole)', 'Who is responsible for the substitution',
'detectedIssue', '', '0..*', 'Reference(DetectedIssue)', 'Clinical issue with action',
'eventHistory', '', '0..*', 'Reference(Provenance)', 'A list of relevant lifecycle events',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'MedicationDispense', '',
'MedicationDispense.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/medication-dispense-status to http://hl7.org/fhir/ValueSet/medicationdispense-status|4.0.1',
'MedicationDispense.statusReason[x]', 'Added Element',
'MedicationDispense.performer.function', 'Added Element',
'MedicationDispense.performer.actor', 'Type Reference: Added Target Type PractitionerRole',
'MedicationDispense.location', 'Added Element',
'MedicationDispense.substitution.responsibleParty', 'Type Reference: Added Target Type PractitionerRole',
'MedicationDispense.performer.onBehalfOf', 'deleted',
'MedicationDispense.notDone', 'deleted',
'MedicationDispense.notDoneReason[x]', 'deleted',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicationDispense', 'ITU', '', 'DomainResource', 'Dispensing a medication to a named patient+ Rule: whenHandedOver cannot be before whenPreparedElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'External identifier',
'partOf', '', '0..*', 'Reference(Procedure)', 'Event that dispense is part of',
'status', '?!Σ', '1..1', 'code', 'preparation | in-progress | cancelled | on-hold | completed | entered-in-error | stopped | declined | unknownMedication dispense  status  codes (Required)',
'statusReason[x]', '', '0..1', '', 'Why a dispense was not performedMedication dispense  status  reason  codes (Example)',
'statusReasonCodeableConcept', '', '', 'CodeableConcept', '',
'statusReasonReference', '', '', 'Reference(DetectedIssue)', '',
'category', '', '0..1', 'CodeableConcept', 'Type of medication dispenseMedication dispense  category  codes (Preferred)',
'medication[x]', 'Σ', '1..1', '', 'What medication was suppliedSNOMED CT Medication Codes (Example)',
'medicationCodeableConcept', '', '', 'CodeableConcept', '',
'medicationReference', '', '', 'Reference(Medication)', '',
'subject', 'Σ', '0..1', 'Reference(Patient | Group)', 'Who the dispense is for',
'context', '', '0..1', 'Reference(Encounter | EpisodeOfCare)', 'Encounter / Episode associated with event',
'supportingInformation', '', '0..*', 'Reference(Any)', 'Information that supports the dispensing of the medication',
'performer', '', '0..*', 'BackboneElement', 'Who performed event',
'function', '', '0..1', 'CodeableConcept', 'Who performed the dispense and what they didMedication dispense  performer  function  codes (Example)',
'actor', '', '1..1', 'Reference(Practitioner | PractitionerRole | Organization | Patient | Device | RelatedPerson)', 'Individual who was performing',
'location', '', '0..1', 'Reference(Location)', 'Where the dispense occurred',
'authorizingPrescription', '', '0..*', 'Reference(MedicationRequest)', 'Medication order that authorizes the dispense',
'type', '', '0..1', 'CodeableConcept', 'Trial fill, partial fill, emergency fill, etc.V3 Value SetActPharmacySupplyType (Example)',
'quantity', '', '0..1', 'SimpleQuantity', 'Amount dispensed',
'daysSupply', '', '0..1', 'SimpleQuantity', 'Amount of medication expressed as a timing amount',
'whenPrepared', 'Σ', '0..1', 'dateTime', 'When product was packaged and reviewed',
'whenHandedOver', '', '0..1', 'dateTime', 'When product was given out',
'destination', '', '0..1', 'Reference(Location)', 'Where the medication was sent',
'receiver', '', '0..*', 'Reference(Patient | Practitioner)', 'Who collected the medication',
'note', '', '0..*', 'Annotation', 'Information about the dispense',
'dosageInstruction', '', '0..*', 'Dosage', 'How the medication is to be used by the patient or administered by the caregiver',
'substitution', '', '0..1', 'BackboneElement', 'Whether a substitution was performed on the dispense',
'wasSubstituted', '', '1..1', 'boolean', 'Whether a substitution was or was not performed on the dispense',
'type', '', '0..1', 'CodeableConcept', 'Code signifying whether a different drug was dispensed from what was prescribedV3 Value SetActSubstanceAdminSubstitutionCode (Example)',
'reason', '', '0..*', 'CodeableConcept', 'Why was substitution madeV3 Value SetSubstanceAdminSubstitutionReason (Example)',
'responsibleParty', '', '0..*', 'Reference(Practitioner | PractitionerRole)', 'Who is responsible for the substitution',
'detectedIssue', '', '0..*', 'Reference(DetectedIssue)', 'Clinical issue with action',
'eventHistory', '', '0..*', 'Reference(Provenance)', 'A list of relevant lifecycle events',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'MedicationDispense', '',
'MedicationDispense.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/medication-dispense-status to http://hl7.org/fhir/ValueSet/medicationdispense-status|4.0.1',
'MedicationDispense.statusReason[x]', 'Added Element',
'MedicationDispense.performer.function', 'Added Element',
'MedicationDispense.performer.actor', 'Type Reference: Added Target Type PractitionerRole',
'MedicationDispense.location', 'Added Element',
'MedicationDispense.substitution.responsibleParty', 'Type Reference: Added Target Type PractitionerRole',
'MedicationDispense.performer.onBehalfOf', 'deleted',
'MedicationDispense.notDone', 'deleted',
'MedicationDispense.notDoneReason[x]', 'deleted',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'MedicationDispense.status', 'A coded concept specifying the state of the dispense event.', 'Required', 'MedicationDispense Status Codes',
'MedicationDispense.statusReason[x]', 'A code describing why a dispense was not performed.', 'Example', 'MedicationDispense Status Reason Codes',
'MedicationDispense.category', 'A code describing where the dispensed medication is expected to be consumed or administered.', 'Preferred', 'MedicationDispense Category Codes',
'MedicationDispense.medication[x]', 'A coded concept identifying which substance or product can be dispensed.', 'Example', 'SNOMEDCTMedicationCodes',
'MedicationDispense.performer.function', 'A code describing the role an individual played in dispensing a medication.', 'Example', 'MedicationDispense Performer Function Codes',
'MedicationDispense.type', 'Indicates the type of dispensing event that is performed. For example, Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples, etc.', 'Example', 'v3.ActPharmacySupplyType',
'MedicationDispense.substitution.type', 'A coded concept describing whether a different medicinal product may be dispensed other than the product as specified exactly in the prescription.', 'Example', 'v3.ActSubstanceAdminSubstitutionCode',
'MedicationDispense.substitution.reason', 'A coded concept describing the reason that a different medication should (or should not) be substituted from what was prescribed.', 'Example', 'v3.SubstanceAdminSubstitutionReason',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'mdd-1', 'Rule', '(base)', 'whenHandedOver cannot be before whenPrepared', 'whenHandedOver.empty() or whenPrepared.empty() or whenHandedOver >= whenPrepared',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'code', 'token', 'Returns dispenses of this medicine code', '(MedicationDispense.medication as CodeableConcept)', '13 Resources',
'context', 'reference', 'Returns dispenses with a specific context (episode or episode of care)', 'MedicationDispense.context(EpisodeOfCare, Encounter)', '',
'destination', 'reference', 'Returns dispenses that should be sent to a specific destination', 'MedicationDispense.destination(Location)', '',
'identifier', 'token', 'Returns dispenses with this external identifier', 'MedicationDispense.identifier', '30 Resources',
'medication', 'reference', 'Returns dispenses of this medicine resource', '(MedicationDispense.medication as Reference)(Medication)', '3 Resources',
'patient', 'reference', 'The identity of a patient to list dispenses  for', 'MedicationDispense.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'performer', 'reference', 'Returns dispenses performed by a specific individual', 'MedicationDispense.performer.actor(Practitioner, Organization, Device, Patient, PractitionerRole, RelatedPerson)', '',
'prescription', 'reference', 'The identity of a prescription to list dispenses from', 'MedicationDispense.authorizingPrescription(MedicationRequest)', '1 Resources',
'receiver', 'reference', 'The identity of a receiver to list dispenses for', 'MedicationDispense.receiver(Practitioner, Patient)', '',
'responsibleparty', 'reference', 'Returns dispenses with the specified responsible party', 'MedicationDispense.substitution.responsibleParty(Practitioner, PractitionerRole)', '',
'status', 'token', 'Returns dispenses with a specified dispense status', 'MedicationDispense.status', '3 Resources',
'subject', 'reference', 'The identity of a patient for whom to list dispenses', 'MedicationDispense.subject(Group, Patient)', '',
'type', 'token', 'Returns dispenses of a specific type', 'MedicationDispense.type', '',
'whenhandedover', 'date', 'Returns dispenses handed over on this date', 'MedicationDispense.whenHandedOver', '',
'whenprepared', 'date', 'Returns dispenses prepared on this date', 'MedicationDispense.whenPrepared', '',
)


