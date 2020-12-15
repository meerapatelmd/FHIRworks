df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Pharmacy  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Patient', 'Compartments: Encounter, Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
'MedicationRequest', 'An order for both supply of the medication and the instructions for administration of the medicine to a patient.',
'MedicationDispense', 'Provision of a supply of a medication with the intention that it is subsequently consumed by a patient (usually in response to a prescription).',
'MedicationAdministration', 'When a patient actually consumes a medicine, or it is otherwise administered to them',
'MedicationStatement', 'This is a record of medication being taken by a patient, or that the medication has been given to a patient where the record is the result of a report from the patient, or another clinician.
          A medication statement is not a part of the prescribe->dispense->administer sequence but is a report that such a sequence (or at least a part of it) did take place resulting in a belief that the patient has received a particular medication.',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicationRequest', 'TU', '', 'DomainResource', 'Ordering of medication for patient or groupElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'External ids for this request',
'status', '?!Σ', '1..1', 'code', 'active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknownMedicationrequest  status (Required)',
'statusReason', '', '0..1', 'CodeableConcept', 'Reason for current statusMedication request  status  reason  codes (Example)',
'intent', '?!Σ', '1..1', 'code', 'proposal | plan | order | original-order | reflex-order | filler-order | instance-order | optionMedication request  intent (Required)',
'category', '', '0..*', 'CodeableConcept', 'Type of medication usageMedication request  category  codes (Example)',
'priority', 'Σ', '0..1', 'code', 'routine | urgent | asap | statRequest priority (Required)',
'doNotPerform', '?!Σ', '0..1', 'boolean', 'True if request is prohibiting action',
'reported[x]', 'Σ', '0..1', '', 'Reported rather than primary record',
'reportedBoolean', '', '', 'boolean', '',
'reportedReference', '', '', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson | Organization)', '',
'medication[x]', 'Σ', '1..1', '', 'Medication to be takenSNOMED CT Medication Codes (Example)',
'medicationCodeableConcept', '', '', 'CodeableConcept', '',
'medicationReference', '', '', 'Reference(Medication)', '',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Who or group medication request is for',
'encounter', '', '0..1', 'Reference(Encounter)', 'Encounter created as part of encounter/admission/stay',
'supportingInformation', '', '0..*', 'Reference(Any)', 'Information to support ordering of the medication',
'authoredOn', 'Σ', '0..1', 'dateTime', 'When request was initially authored',
'requester', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device)', 'Who/What requested the Request',
'performer', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | Patient | Device | RelatedPerson | CareTeam)', 'Intended performer of administration',
'performerType', 'Σ', '0..1', 'CodeableConcept', 'Desired kind of performer of the medication administrationProcedure Performer Role Codes (Example)',
'recorder', '', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Person who entered the request',
'reasonCode', '', '0..*', 'CodeableConcept', 'Reason or indication for ordering or not ordering the medicationCondition/Problem/Diagnosis Codes (Example)',
'reasonReference', '', '0..*', 'Reference(Condition | Observation)', 'Condition or observation that supports why the prescription is being written',
'instantiatesCanonical', 'Σ', '0..*', 'canonical()', 'Instantiates FHIR protocol or definition',
'instantiatesUri', 'Σ', '0..*', 'uri', 'Instantiates external protocol or definition',
'basedOn', 'Σ', '0..*', 'Reference(CarePlan | MedicationRequest | ServiceRequest | ImmunizationRecommendation)', 'What request fulfills',
'groupIdentifier', 'Σ', '0..1', 'Identifier', 'Composite request this is part of',
'courseOfTherapyType', '', '0..1', 'CodeableConcept', 'Overall pattern of medication administrationMedication request  course of  therapy  codes (Example)',
'insurance', '', '0..*', 'Reference(Coverage | ClaimResponse)', 'Associated insurance coverage',
'note', '', '0..*', 'Annotation', 'Information about the prescription',
'dosageInstruction', '', '0..*', 'Dosage', 'How the medication should be taken',
'dispenseRequest', '', '0..1', 'BackboneElement', 'Medication supply authorization',
'initialFill', '', '0..1', 'BackboneElement', 'First fill details',
'quantity', '', '0..1', 'SimpleQuantity', 'First fill quantity',
'duration', '', '0..1', 'Duration', 'First fill duration',
'dispenseInterval', '', '0..1', 'Duration', 'Minimum period of time between dispenses',
'validityPeriod', '', '0..1', 'Period', 'Time period supply is authorized for',
'numberOfRepeatsAllowed', '', '0..1', 'unsignedInt', 'Number of refills authorized',
'quantity', '', '0..1', 'SimpleQuantity', 'Amount of medication to supply per dispense',
'expectedSupplyDuration', '', '0..1', 'Duration', 'Number of days supply per dispense',
'performer', '', '0..1', 'Reference(Organization)', 'Intended dispenser',
'substitution', '', '0..1', 'BackboneElement', 'Any restrictions on medication substitution',
'allowed[x]', '', '1..1', '', 'Whether substitution is allowed or notV3 Value SetActSubstanceAdminSubstitutionCode (Example)',
'allowedBoolean', '', '', 'boolean', '',
'allowedCodeableConcept', '', '', 'CodeableConcept', '',
'reason', '', '0..1', 'CodeableConcept', 'Why should (not) substitution be madeV3 Value SetSubstanceAdminSubstitutionReason (Example)',
'priorPrescription', '', '0..1', 'Reference(MedicationRequest)', 'An order/prescription that is being replaced',
'detectedIssue', '', '0..*', 'Reference(DetectedIssue)', 'Clinical Issue with action',
'eventHistory', '', '0..*', 'Reference(Provenance)', 'A list of events of interest in the lifecycle',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'MedicationRequest', '',
'MedicationRequest.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/medication-request-status to http://hl7.org/fhir/ValueSet/medicationrequest-status|4.0.1',
'MedicationRequest.statusReason', 'Added Element',
'MedicationRequest.intent', 'Change value set from http://hl7.org/fhir/ValueSet/medication-request-intent to http://hl7.org/fhir/ValueSet/medicationrequest-intent|4.0.1',
'MedicationRequest.category', 'Max Cardinality changed from 1 to *',
'MedicationRequest.priority', 'Change value set from http://hl7.org/fhir/ValueSet/medication-request-priority to http://hl7.org/fhir/ValueSet/request-priority|4.0.1',
'MedicationRequest.doNotPerform', 'Added Element',
'MedicationRequest.reported[x]', 'Added Element',
'MedicationRequest.encounter', 'Added Element',
'MedicationRequest.requester', 'Type changed from BackboneElement to Reference(Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device)',
'MedicationRequest.performer', 'Added Element',
'MedicationRequest.performerType', 'Added Element',
'MedicationRequest.recorder', 'Type Reference: Added Target Type PractitionerRole',
'MedicationRequest.instantiatesCanonical', 'Added Element',
'MedicationRequest.instantiatesUri', 'Added Element',
'MedicationRequest.basedOn', 'Type Reference: Added Target Types ServiceRequest, ImmunizationRecommendation
        Type Reference: Removed Target Types ProcedureRequest, ReferralRequest',
'MedicationRequest.courseOfTherapyType', 'Added Element',
'MedicationRequest.insurance', 'Added Element',
'MedicationRequest.dispenseRequest.initialFill', 'Added Element',
'MedicationRequest.dispenseRequest.initialFill.quantity', 'Added Element',
'MedicationRequest.dispenseRequest.initialFill.duration', 'Added Element',
'MedicationRequest.dispenseRequest.dispenseInterval', 'Added Element',
'MedicationRequest.dispenseRequest.numberOfRepeatsAllowed', 'Type changed from positiveInt to unsignedInt',
'MedicationRequest.substitution.allowed[x]', 'Renamed from allowed to allowed[x]
        Add Type CodeableConcept
        No longer marked as Modifier',
'MedicationRequest.definition', 'deleted',
'MedicationRequest.context', 'deleted',
'MedicationRequest.requester.agent', 'deleted',
'MedicationRequest.requester.onBehalfOf', 'deleted',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicationRequest', 'TU', '', 'DomainResource', 'Ordering of medication for patient or groupElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'External ids for this request',
'status', '?!Σ', '1..1', 'code', 'active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknownMedicationrequest  status (Required)',
'statusReason', '', '0..1', 'CodeableConcept', 'Reason for current statusMedication request  status  reason  codes (Example)',
'intent', '?!Σ', '1..1', 'code', 'proposal | plan | order | original-order | reflex-order | filler-order | instance-order | optionMedication request  intent (Required)',
'category', '', '0..*', 'CodeableConcept', 'Type of medication usageMedication request  category  codes (Example)',
'priority', 'Σ', '0..1', 'code', 'routine | urgent | asap | statRequest priority (Required)',
'doNotPerform', '?!Σ', '0..1', 'boolean', 'True if request is prohibiting action',
'reported[x]', 'Σ', '0..1', '', 'Reported rather than primary record',
'reportedBoolean', '', '', 'boolean', '',
'reportedReference', '', '', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson | Organization)', '',
'medication[x]', 'Σ', '1..1', '', 'Medication to be takenSNOMED CT Medication Codes (Example)',
'medicationCodeableConcept', '', '', 'CodeableConcept', '',
'medicationReference', '', '', 'Reference(Medication)', '',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Who or group medication request is for',
'encounter', '', '0..1', 'Reference(Encounter)', 'Encounter created as part of encounter/admission/stay',
'supportingInformation', '', '0..*', 'Reference(Any)', 'Information to support ordering of the medication',
'authoredOn', 'Σ', '0..1', 'dateTime', 'When request was initially authored',
'requester', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device)', 'Who/What requested the Request',
'performer', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | Patient | Device | RelatedPerson | CareTeam)', 'Intended performer of administration',
'performerType', 'Σ', '0..1', 'CodeableConcept', 'Desired kind of performer of the medication administrationProcedure Performer Role Codes (Example)',
'recorder', '', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Person who entered the request',
'reasonCode', '', '0..*', 'CodeableConcept', 'Reason or indication for ordering or not ordering the medicationCondition/Problem/Diagnosis Codes (Example)',
'reasonReference', '', '0..*', 'Reference(Condition | Observation)', 'Condition or observation that supports why the prescription is being written',
'instantiatesCanonical', 'Σ', '0..*', 'canonical()', 'Instantiates FHIR protocol or definition',
'instantiatesUri', 'Σ', '0..*', 'uri', 'Instantiates external protocol or definition',
'basedOn', 'Σ', '0..*', 'Reference(CarePlan | MedicationRequest | ServiceRequest | ImmunizationRecommendation)', 'What request fulfills',
'groupIdentifier', 'Σ', '0..1', 'Identifier', 'Composite request this is part of',
'courseOfTherapyType', '', '0..1', 'CodeableConcept', 'Overall pattern of medication administrationMedication request  course of  therapy  codes (Example)',
'insurance', '', '0..*', 'Reference(Coverage | ClaimResponse)', 'Associated insurance coverage',
'note', '', '0..*', 'Annotation', 'Information about the prescription',
'dosageInstruction', '', '0..*', 'Dosage', 'How the medication should be taken',
'dispenseRequest', '', '0..1', 'BackboneElement', 'Medication supply authorization',
'initialFill', '', '0..1', 'BackboneElement', 'First fill details',
'quantity', '', '0..1', 'SimpleQuantity', 'First fill quantity',
'duration', '', '0..1', 'Duration', 'First fill duration',
'dispenseInterval', '', '0..1', 'Duration', 'Minimum period of time between dispenses',
'validityPeriod', '', '0..1', 'Period', 'Time period supply is authorized for',
'numberOfRepeatsAllowed', '', '0..1', 'unsignedInt', 'Number of refills authorized',
'quantity', '', '0..1', 'SimpleQuantity', 'Amount of medication to supply per dispense',
'expectedSupplyDuration', '', '0..1', 'Duration', 'Number of days supply per dispense',
'performer', '', '0..1', 'Reference(Organization)', 'Intended dispenser',
'substitution', '', '0..1', 'BackboneElement', 'Any restrictions on medication substitution',
'allowed[x]', '', '1..1', '', 'Whether substitution is allowed or notV3 Value SetActSubstanceAdminSubstitutionCode (Example)',
'allowedBoolean', '', '', 'boolean', '',
'allowedCodeableConcept', '', '', 'CodeableConcept', '',
'reason', '', '0..1', 'CodeableConcept', 'Why should (not) substitution be madeV3 Value SetSubstanceAdminSubstitutionReason (Example)',
'priorPrescription', '', '0..1', 'Reference(MedicationRequest)', 'An order/prescription that is being replaced',
'detectedIssue', '', '0..*', 'Reference(DetectedIssue)', 'Clinical Issue with action',
'eventHistory', '', '0..*', 'Reference(Provenance)', 'A list of events of interest in the lifecycle',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'MedicationRequest', '',
'MedicationRequest.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/medication-request-status to http://hl7.org/fhir/ValueSet/medicationrequest-status|4.0.1',
'MedicationRequest.statusReason', 'Added Element',
'MedicationRequest.intent', 'Change value set from http://hl7.org/fhir/ValueSet/medication-request-intent to http://hl7.org/fhir/ValueSet/medicationrequest-intent|4.0.1',
'MedicationRequest.category', 'Max Cardinality changed from 1 to *',
'MedicationRequest.priority', 'Change value set from http://hl7.org/fhir/ValueSet/medication-request-priority to http://hl7.org/fhir/ValueSet/request-priority|4.0.1',
'MedicationRequest.doNotPerform', 'Added Element',
'MedicationRequest.reported[x]', 'Added Element',
'MedicationRequest.encounter', 'Added Element',
'MedicationRequest.requester', 'Type changed from BackboneElement to Reference(Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device)',
'MedicationRequest.performer', 'Added Element',
'MedicationRequest.performerType', 'Added Element',
'MedicationRequest.recorder', 'Type Reference: Added Target Type PractitionerRole',
'MedicationRequest.instantiatesCanonical', 'Added Element',
'MedicationRequest.instantiatesUri', 'Added Element',
'MedicationRequest.basedOn', 'Type Reference: Added Target Types ServiceRequest, ImmunizationRecommendation
        Type Reference: Removed Target Types ProcedureRequest, ReferralRequest',
'MedicationRequest.courseOfTherapyType', 'Added Element',
'MedicationRequest.insurance', 'Added Element',
'MedicationRequest.dispenseRequest.initialFill', 'Added Element',
'MedicationRequest.dispenseRequest.initialFill.quantity', 'Added Element',
'MedicationRequest.dispenseRequest.initialFill.duration', 'Added Element',
'MedicationRequest.dispenseRequest.dispenseInterval', 'Added Element',
'MedicationRequest.dispenseRequest.numberOfRepeatsAllowed', 'Type changed from positiveInt to unsignedInt',
'MedicationRequest.substitution.allowed[x]', 'Renamed from allowed to allowed[x]
        Add Type CodeableConcept
        No longer marked as Modifier',
'MedicationRequest.definition', 'deleted',
'MedicationRequest.context', 'deleted',
'MedicationRequest.requester.agent', 'deleted',
'MedicationRequest.requester.onBehalfOf', 'deleted',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'MedicationRequest.status', 'A coded concept specifying the state of the prescribing event. Describes the lifecycle of the prescription.', 'Required', 'medicationrequest Status',
'MedicationRequest.statusReason', 'Identifies the reasons for a given status.', 'Example', 'medicationRequest Status Reason Codes',
'MedicationRequest.intent', 'The kind of medication order.', 'Required', 'medicationRequest Intent',
'MedicationRequest.category', 'A coded concept identifying the category of medication request.  For example, where the medication is to be consumed or administered, or the type of medication treatment.', 'Example', 'medicationRequest Category Codes',
'MedicationRequest.priority', 'Identifies the level of importance to be assigned to actioning the request.', 'Required', 'RequestPriority',
'MedicationRequest.medication[x]', 'A coded concept identifying substance or product that can be ordered.', 'Example', 'SNOMEDCTMedicationCodes',
'MedicationRequest.performerType', 'Identifies the type of individual that is desired to administer the medication.', 'Example', 'ProcedurePerformerRoleCodes',
'MedicationRequest.reasonCode', 'A coded concept indicating why the medication was ordered.', 'Example', 'Condition/Problem/DiagnosisCodes',
'MedicationRequest.courseOfTherapyType', 'Identifies the overall pattern of medication administratio.', 'Example', 'medicationRequest Course of Therapy Codes',
'MedicationRequest.substitution.allowed[x]', 'Identifies the type of substitution allowed.', 'Example', 'v3.ActSubstanceAdminSubstitutionCode',
'MedicationRequest.substitution.reason', 'A coded concept describing the reason that a different medication should (or should not) be substituted from what was prescribed.', 'Example', 'v3.SubstanceAdminSubstitutionReason',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'authoredon', 'date', 'Return prescriptions written on this date', 'MedicationRequest.authoredOn', '',
'category', 'token', 'Returns prescriptions with different categories', 'MedicationRequest.category', '',
'code', 'token', 'Return prescriptions of this medication code', '(MedicationRequest.medication as CodeableConcept)', '13 Resources',
'date', 'date', 'Returns medication request to be administered on a specific date', 'MedicationRequest.dosageInstruction.timing.event', '3 Resources',
'encounter', 'reference', 'Return prescriptions with this encounter identifier', 'MedicationRequest.encounter(Encounter)', '1 Resources',
'identifier', 'token', 'Return prescriptions with this external identifier', 'MedicationRequest.identifier', '30 Resources',
'intended-dispenser', 'reference', 'Returns prescriptions intended to be dispensed by this Organization', 'MedicationRequest.dispenseRequest.performer(Organization)', '',
'intended-performer', 'reference', 'Returns the intended performer of the administration of the medication request', 'MedicationRequest.performer(Practitioner, Organization, CareTeam, Device, Patient, PractitionerRole, RelatedPerson)', '',
'intended-performertype', 'token', 'Returns requests for a specific type of performer', 'MedicationRequest.performerType', '',
'intent', 'token', 'Returns prescriptions with different intents', 'MedicationRequest.intent', '',
'medication', 'reference', 'Return prescriptions for this medication reference', '(MedicationRequest.medication as Reference)(Medication)', '3 Resources',
'patient', 'reference', 'Returns prescriptions for a specific patient', 'MedicationRequest.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'priority', 'token', 'Returns prescriptions with different priorities', 'MedicationRequest.priority', '',
'requester', 'reference', 'Returns prescriptions prescribed by this prescriber', 'MedicationRequest.requester(Practitioner, Organization, Device, Patient, PractitionerRole, RelatedPerson)', '',
'status', 'token', 'Status of the prescription', 'MedicationRequest.status', '3 Resources',
'subject', 'reference', 'The identity of a patient to list orders  for', 'MedicationRequest.subject(Group, Patient)', '',
)


