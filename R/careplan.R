df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Care  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Encounter, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CarePlan', 'TU', '', 'DomainResource', 'Healthcare plan for patient or groupElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Ids for this plan',
'instantiatesCanonical', 'Σ', '0..*', 'canonical(PlanDefinition | Questionnaire | Measure | ActivityDefinition | OperationDefinition)', 'Instantiates FHIR protocol or definition',
'instantiatesUri', 'Σ', '0..*', 'uri', 'Instantiates external protocol or definition',
'basedOn', 'Σ', '0..*', 'Reference(CarePlan)', 'Fulfills CarePlan',
'replaces', 'Σ', '0..*', 'Reference(CarePlan)', 'CarePlan replaced by this CarePlan',
'partOf', 'Σ', '0..*', 'Reference(CarePlan)', 'Part of referenced CarePlan',
'status', '?!Σ', '1..1', 'code', 'draft | active | on-hold | revoked | completed | entered-in-error | unknownRequestStatus (Required)',
'intent', '?!Σ', '1..1', 'code', 'proposal | plan | order | optionCare Plan Intent (Required)',
'category', 'Σ', '0..*', 'CodeableConcept', 'Type of planCare Plan Category (Example)',
'title', 'Σ', '0..1', 'string', 'Human-friendly name for the care plan',
'description', 'Σ', '0..1', 'string', 'Summary of nature of plan',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Who the care plan is for',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter created as part of',
'period', 'Σ', '0..1', 'Period', 'Time period plan covers',
'created', 'Σ', '0..1', 'dateTime', 'Date record was first recorded',
'author', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | Device | RelatedPerson | Organization | CareTeam)', 'Who is the designated responsible party',
'contributor', '', '0..*', 'Reference(Patient | Practitioner | PractitionerRole | Device | RelatedPerson | Organization | CareTeam)', 'Who provided the content of the care plan',
'careTeam', '', '0..*', 'Reference(CareTeam)', 'Who's involved in plan?',
'addresses', 'Σ', '0..*', 'Reference(Condition)', 'Health issues this plan addresses',
'supportingInfo', '', '0..*', 'Reference(Any)', 'Information considered as part of plan',
'goal', '', '0..*', 'Reference(Goal)', 'Desired outcome of plan',
'activity', 'I', '0..*', 'BackboneElement', 'Action to occur as part of plan+ Rule: Provide a reference or detail, not both',
'outcomeCodeableConcept', '', '0..*', 'CodeableConcept', 'Results of the activityCare Plan Activity Outcome (Example)',
'outcomeReference', '', '0..*', 'Reference(Any)', 'Appointment, Encounter, Procedure, etc.',
'progress', '', '0..*', 'Annotation', 'Comments about the activity status/progress',
'reference', 'I', '0..1', 'Reference(Appointment | CommunicationRequest | DeviceRequest | MedicationRequest | NutritionOrder | Task | ServiceRequest | VisionPrescription | RequestGroup)', 'Activity details defined in specific resource',
'detail', 'I', '0..1', 'BackboneElement', 'In-line definition of activity',
'kind', '', '0..1', 'code', 'Appointment | CommunicationRequest | DeviceRequest | MedicationRequest | NutritionOrder | Task | ServiceRequest | VisionPrescriptionCare Plan Activity Kind (Required)',
'instantiatesCanonical', '', '0..*', 'canonical(PlanDefinition | ActivityDefinition | Questionnaire | Measure | OperationDefinition)', 'Instantiates FHIR protocol or definition',
'instantiatesUri', '', '0..*', 'uri', 'Instantiates external protocol or definition',
'code', '', '0..1', 'CodeableConcept', 'Detail type of activityProcedure Codes (SNOMED CT) (Example)',
'reasonCode', '', '0..*', 'CodeableConcept', 'Why activity should be done or why activity was prohibitedSNOMED CT Clinical Findings (Example)',
'reasonReference', '', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference)', 'Why activity is needed',
'goal', '', '0..*', 'Reference(Goal)', 'Goals this activity relates to',
'status', '?!', '1..1', 'code', 'not-started | scheduled | in-progress | on-hold | completed | cancelled | stopped | unknown | entered-in-errorCarePlanActivityStatus (Required)',
'statusReason', '', '0..1', 'CodeableConcept', 'Reason for current status',
'doNotPerform', '?!', '0..1', 'boolean', 'If true, activity is prohibiting action',
'scheduled[x]', '', '0..1', '', 'When activity is to occur',
'scheduledTiming', '', '', 'Timing', '',
'scheduledPeriod', '', '', 'Period', '',
'scheduledString', '', '', 'string', '',
'location', '', '0..1', 'Reference(Location)', 'Where it should happen',
'performer', '', '0..*', 'Reference(Practitioner | PractitionerRole | Organization | RelatedPerson | Patient | CareTeam | HealthcareService | Device)', 'Who will be responsible?',
'product[x]', '', '0..1', '', 'What is to be administered/suppliedSNOMED CT Medication Codes (Example)',
'productCodeableConcept', '', '', 'CodeableConcept', '',
'productReference', '', '', 'Reference(Medication | Substance)', '',
'dailyAmount', '', '0..1', 'SimpleQuantity', 'How to consume/day?',
'quantity', '', '0..1', 'SimpleQuantity', 'How much to administer/supply/consume',
'description', '', '0..1', 'string', 'Extra info describing activity to perform',
'note', '', '0..*', 'Annotation', 'Comments about the plan',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'CarePlan', '',
'CarePlan.instantiatesCanonical', 'Added Element',
'CarePlan.instantiatesUri', 'Added Element',
'CarePlan.status', 'Change value set from http://hl7.org/fhir/ValueSet/care-plan-status to http://hl7.org/fhir/ValueSet/request-status|4.0.1',
'CarePlan.intent', 'Change value set from http://hl7.org/fhir/ValueSet/care-plan-intent to http://hl7.org/fhir/ValueSet/care-plan-intent|4.0.1',
'CarePlan.encounter', 'Added Element',
'CarePlan.created', 'Added Element',
'CarePlan.author', 'Max Cardinality changed from * to 1
        Type Reference: Added Target Types PractitionerRole, Device',
'CarePlan.contributor', 'Added Element',
'CarePlan.activity.reference', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Types ProcedureRequest, ReferralRequest',
'CarePlan.activity.detail.kind', 'Renamed from category to kind
        Type changed from CodeableConcept to code
        
Add Binding http://hl7.org/fhir/ValueSet/care-plan-activity-kind|4.0.1 (required)',
'CarePlan.activity.detail.instantiatesCanonical', 'Added Element',
'CarePlan.activity.detail.instantiatesUri', 'Added Element',
'CarePlan.activity.detail.reasonReference', 'Type Reference: Added Target Types Observation, DiagnosticReport, DocumentReference',
'CarePlan.activity.detail.status', 'Change value set from http://hl7.org/fhir/ValueSet/care-plan-activity-status to http://hl7.org/fhir/ValueSet/care-plan-activity-status|4.0.1',
'CarePlan.activity.detail.statusReason', 'Type changed from string to CodeableConcept',
'CarePlan.activity.detail.doNotPerform', 'Renamed from prohibited to doNotPerform
        Default Value "false" removed',
'CarePlan.activity.detail.performer', 'Type Reference: Added Target Types PractitionerRole, HealthcareService, Device',
'CarePlan.definition', 'deleted',
'CarePlan.context', 'deleted',
'CarePlan.activity.detail.definition', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CarePlan', 'TU', '', 'DomainResource', 'Healthcare plan for patient or groupElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Ids for this plan',
'instantiatesCanonical', 'Σ', '0..*', 'canonical(PlanDefinition | Questionnaire | Measure | ActivityDefinition | OperationDefinition)', 'Instantiates FHIR protocol or definition',
'instantiatesUri', 'Σ', '0..*', 'uri', 'Instantiates external protocol or definition',
'basedOn', 'Σ', '0..*', 'Reference(CarePlan)', 'Fulfills CarePlan',
'replaces', 'Σ', '0..*', 'Reference(CarePlan)', 'CarePlan replaced by this CarePlan',
'partOf', 'Σ', '0..*', 'Reference(CarePlan)', 'Part of referenced CarePlan',
'status', '?!Σ', '1..1', 'code', 'draft | active | on-hold | revoked | completed | entered-in-error | unknownRequestStatus (Required)',
'intent', '?!Σ', '1..1', 'code', 'proposal | plan | order | optionCare Plan Intent (Required)',
'category', 'Σ', '0..*', 'CodeableConcept', 'Type of planCare Plan Category (Example)',
'title', 'Σ', '0..1', 'string', 'Human-friendly name for the care plan',
'description', 'Σ', '0..1', 'string', 'Summary of nature of plan',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Who the care plan is for',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter created as part of',
'period', 'Σ', '0..1', 'Period', 'Time period plan covers',
'created', 'Σ', '0..1', 'dateTime', 'Date record was first recorded',
'author', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | Device | RelatedPerson | Organization | CareTeam)', 'Who is the designated responsible party',
'contributor', '', '0..*', 'Reference(Patient | Practitioner | PractitionerRole | Device | RelatedPerson | Organization | CareTeam)', 'Who provided the content of the care plan',
'careTeam', '', '0..*', 'Reference(CareTeam)', 'Who's involved in plan?',
'addresses', 'Σ', '0..*', 'Reference(Condition)', 'Health issues this plan addresses',
'supportingInfo', '', '0..*', 'Reference(Any)', 'Information considered as part of plan',
'goal', '', '0..*', 'Reference(Goal)', 'Desired outcome of plan',
'activity', 'I', '0..*', 'BackboneElement', 'Action to occur as part of plan+ Rule: Provide a reference or detail, not both',
'outcomeCodeableConcept', '', '0..*', 'CodeableConcept', 'Results of the activityCare Plan Activity Outcome (Example)',
'outcomeReference', '', '0..*', 'Reference(Any)', 'Appointment, Encounter, Procedure, etc.',
'progress', '', '0..*', 'Annotation', 'Comments about the activity status/progress',
'reference', 'I', '0..1', 'Reference(Appointment | CommunicationRequest | DeviceRequest | MedicationRequest | NutritionOrder | Task | ServiceRequest | VisionPrescription | RequestGroup)', 'Activity details defined in specific resource',
'detail', 'I', '0..1', 'BackboneElement', 'In-line definition of activity',
'kind', '', '0..1', 'code', 'Appointment | CommunicationRequest | DeviceRequest | MedicationRequest | NutritionOrder | Task | ServiceRequest | VisionPrescriptionCare Plan Activity Kind (Required)',
'instantiatesCanonical', '', '0..*', 'canonical(PlanDefinition | ActivityDefinition | Questionnaire | Measure | OperationDefinition)', 'Instantiates FHIR protocol or definition',
'instantiatesUri', '', '0..*', 'uri', 'Instantiates external protocol or definition',
'code', '', '0..1', 'CodeableConcept', 'Detail type of activityProcedure Codes (SNOMED CT) (Example)',
'reasonCode', '', '0..*', 'CodeableConcept', 'Why activity should be done or why activity was prohibitedSNOMED CT Clinical Findings (Example)',
'reasonReference', '', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference)', 'Why activity is needed',
'goal', '', '0..*', 'Reference(Goal)', 'Goals this activity relates to',
'status', '?!', '1..1', 'code', 'not-started | scheduled | in-progress | on-hold | completed | cancelled | stopped | unknown | entered-in-errorCarePlanActivityStatus (Required)',
'statusReason', '', '0..1', 'CodeableConcept', 'Reason for current status',
'doNotPerform', '?!', '0..1', 'boolean', 'If true, activity is prohibiting action',
'scheduled[x]', '', '0..1', '', 'When activity is to occur',
'scheduledTiming', '', '', 'Timing', '',
'scheduledPeriod', '', '', 'Period', '',
'scheduledString', '', '', 'string', '',
'location', '', '0..1', 'Reference(Location)', 'Where it should happen',
'performer', '', '0..*', 'Reference(Practitioner | PractitionerRole | Organization | RelatedPerson | Patient | CareTeam | HealthcareService | Device)', 'Who will be responsible?',
'product[x]', '', '0..1', '', 'What is to be administered/suppliedSNOMED CT Medication Codes (Example)',
'productCodeableConcept', '', '', 'CodeableConcept', '',
'productReference', '', '', 'Reference(Medication | Substance)', '',
'dailyAmount', '', '0..1', 'SimpleQuantity', 'How to consume/day?',
'quantity', '', '0..1', 'SimpleQuantity', 'How much to administer/supply/consume',
'description', '', '0..1', 'string', 'Extra info describing activity to perform',
'note', '', '0..*', 'Annotation', 'Comments about the plan',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'CarePlan', '',
'CarePlan.instantiatesCanonical', 'Added Element',
'CarePlan.instantiatesUri', 'Added Element',
'CarePlan.status', 'Change value set from http://hl7.org/fhir/ValueSet/care-plan-status to http://hl7.org/fhir/ValueSet/request-status|4.0.1',
'CarePlan.intent', 'Change value set from http://hl7.org/fhir/ValueSet/care-plan-intent to http://hl7.org/fhir/ValueSet/care-plan-intent|4.0.1',
'CarePlan.encounter', 'Added Element',
'CarePlan.created', 'Added Element',
'CarePlan.author', 'Max Cardinality changed from * to 1
        Type Reference: Added Target Types PractitionerRole, Device',
'CarePlan.contributor', 'Added Element',
'CarePlan.activity.reference', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Types ProcedureRequest, ReferralRequest',
'CarePlan.activity.detail.kind', 'Renamed from category to kind
        Type changed from CodeableConcept to code
        
Add Binding http://hl7.org/fhir/ValueSet/care-plan-activity-kind|4.0.1 (required)',
'CarePlan.activity.detail.instantiatesCanonical', 'Added Element',
'CarePlan.activity.detail.instantiatesUri', 'Added Element',
'CarePlan.activity.detail.reasonReference', 'Type Reference: Added Target Types Observation, DiagnosticReport, DocumentReference',
'CarePlan.activity.detail.status', 'Change value set from http://hl7.org/fhir/ValueSet/care-plan-activity-status to http://hl7.org/fhir/ValueSet/care-plan-activity-status|4.0.1',
'CarePlan.activity.detail.statusReason', 'Type changed from string to CodeableConcept',
'CarePlan.activity.detail.doNotPerform', 'Renamed from prohibited to doNotPerform
        Default Value "false" removed',
'CarePlan.activity.detail.performer', 'Type Reference: Added Target Types PractitionerRole, HealthcareService, Device',
'CarePlan.definition', 'deleted',
'CarePlan.context', 'deleted',
'CarePlan.activity.detail.definition', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'CarePlan.status', 'Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical record.', 'Required', 'RequestStatus',
'CarePlan.intent', 'Codes indicating the degree of authority/intentionality associated with a care plan.', 'Required', 'CarePlanIntent',
'CarePlan.category', 'Identifies what "kind" of plan this is to support differentiation between multiple co-existing plans; e.g. "Home health", "psychiatric", "asthma", "disease management", etc.', 'Example', 'CarePlanCategory',
'CarePlan.activity.outcomeCodeableConcept', 'Identifies the results of the activity.', 'Example', 'CarePlanActivityOutcome',
'CarePlan.activity.detail.kind', 'Resource types defined as part of FHIR that can be represented as in-line definitions of a care plan activity.', 'Required', 'CarePlanActivityKind',
'CarePlan.activity.detail.code', 'Detailed description of the type of activity; e.g. What lab test, what procedure, what kind of encounter.', 'Example', 'ProcedureCodes(SNOMEDCT)',
'CarePlan.activity.detail.reasonCode', 'Identifies why a care plan activity is needed.  Can include any health condition codes as well as such concepts as "general wellness", prophylaxis, surgical preparation, etc.', 'Example', 'SNOMEDCTClinicalFindings',
'CarePlan.activity.detail.status', 'Codes that reflect the current state of a care plan activity within its overall life cycle.', 'Required', 'CarePlanActivityStatus',
'CarePlan.activity.detail.product[x]', 'A product supplied or administered as part of a care plan activity.', 'Example', 'SNOMEDCTMedicationCodes',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'cpl-3', 'Rule', 'CarePlan.activity', 'Provide a reference or detail, not both', 'detail.empty() or reference.empty()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'activity-code', 'token', 'Detail type of activity', 'CarePlan.activity.detail.code', '',
'activity-date', 'date', 'Specified date occurs within period specified by CarePlan.activity.detail.scheduled[x]', 'CarePlan.activity.detail.scheduled', '',
'activity-reference', 'reference', 'Activity details defined in specific resource', 'CarePlan.activity.reference(Appointment, MedicationRequest, Task, NutritionOrder, RequestGroup, VisionPrescription, DeviceRequest, ServiceRequest, CommunicationRequest)', '',
'based-on', 'reference', 'Fulfills CarePlan', 'CarePlan.basedOn(CarePlan)', '',
'care-team', 'reference', 'Who's involved in plan?', 'CarePlan.careTeam(CareTeam)', '',
'category', 'token', 'Type of plan', 'CarePlan.category', '',
'condition', 'reference', 'Health issues this plan addresses', 'CarePlan.addresses(Condition)', '',
'date', 'date', 'Time period plan covers', 'CarePlan.period', '17 Resources',
'encounter', 'reference', 'Encounter created as part of', 'CarePlan.encounter(Encounter)', '',
'goal', 'reference', 'Desired outcome of plan', 'CarePlan.goal(Goal)', '',
'identifier', 'token', 'External Ids for this plan', 'CarePlan.identifier', '30 Resources',
'instantiates-canonical', 'reference', 'Instantiates FHIR protocol or definition', 'CarePlan.instantiatesCanonical(Questionnaire, Measure, PlanDefinition, OperationDefinition, ActivityDefinition)', '',
'instantiates-uri', 'uri', 'Instantiates external protocol or definition', 'CarePlan.instantiatesUri', '',
'intent', 'token', 'proposal | plan | order | option', 'CarePlan.intent', '',
'part-of', 'reference', 'Part of referenced CarePlan', 'CarePlan.partOf(CarePlan)', '',
'patient', 'reference', 'Who the care plan is for', 'CarePlan.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'performer', 'reference', 'Matches if the practitioner is listed as a performer in any of the "simple" activities.  (For performers of the detailed activities, chain through the activitydetail search parameter.)', 'CarePlan.activity.detail.performer(Practitioner, Organization, CareTeam, Device, Patient, HealthcareService, PractitionerRole, RelatedPerson)', '',
'replaces', 'reference', 'CarePlan replaced by this CarePlan', 'CarePlan.replaces(CarePlan)', '',
'status', 'token', 'draft | active | on-hold | revoked | completed | entered-in-error | unknown', 'CarePlan.status', '',
'subject', 'reference', 'Who the care plan is for', 'CarePlan.subject(Group, Patient)', '',
)


