df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Encounter, Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DeviceRequest', 'TU', '', 'DomainResource', 'Medical device requestElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Request identifier',
'instantiatesCanonical', 'Σ', '0..*', 'canonical(ActivityDefinition | PlanDefinition)', 'Instantiates FHIR protocol or definition',
'instantiatesUri', 'Σ', '0..*', 'uri', 'Instantiates external protocol or definition',
'basedOn', 'Σ', '0..*', 'Reference(Any)', 'What request fulfills',
'priorRequest', 'Σ', '0..*', 'Reference(Any)', 'What request replaces',
'groupIdentifier', 'Σ', '0..1', 'Identifier', 'Identifier of composite request',
'status', '?!Σ', '0..1', 'code', 'draft | active | on-hold | revoked | completed | entered-in-error | unknownRequestStatus (Required)',
'intent', '?!Σ', '1..1', 'code', 'proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | optionRequestIntent (Required)',
'priority', 'Σ', '0..1', 'code', 'routine | urgent | asap | statRequest priority (Required)',
'code[x]', 'Σ', '1..1', '', 'Device requestedFHIR Device Types (Example)',
'codeReference', '', '', 'Reference(Device)', '',
'codeCodeableConcept', '', '', 'CodeableConcept', '',
'parameter', '', '0..*', 'BackboneElement', 'Device details',
'code', '', '0..1', 'CodeableConcept', 'Device detail',
'value[x]', '', '0..1', '', 'Value of detail',
'valueCodeableConcept', '', '', 'CodeableConcept', '',
'valueQuantity', '', '', 'Quantity', '',
'valueRange', '', '', 'Range', '',
'valueBoolean', '', '', 'boolean', '',
'subject', 'Σ', '1..1', 'Reference(Patient | Group | Location | Device)', 'Focus of request',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter motivating request',
'occurrence[x]', 'Σ', '0..1', '', 'Desired time or schedule for use',
'occurrenceDateTime', '', '', 'dateTime', '',
'occurrencePeriod', '', '', 'Period', '',
'occurrenceTiming', '', '', 'Timing', '',
'authoredOn', 'Σ', '0..1', 'dateTime', 'When recorded',
'requester', 'Σ', '0..1', 'Reference(Device | Practitioner | PractitionerRole | Organization)', 'Who/what is requesting diagnostics',
'performerType', 'Σ', '0..1', 'CodeableConcept', 'Filler roleParticipant Roles (Example)',
'performer', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam | HealthcareService | Patient | Device | RelatedPerson)', 'Requested Filler',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Coded Reason for requestCondition/Problem/Diagnosis Codes (Example)',
'reasonReference', 'Σ', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference)', 'Linked Reason for request',
'insurance', '', '0..*', 'Reference(Coverage | ClaimResponse)', 'Associated insurance coverage',
'supportingInfo', '', '0..*', 'Reference(Any)', 'Additional clinical information',
'note', '', '0..*', 'Annotation', 'Notes or comments',
'relevantHistory', '', '0..*', 'Reference(Provenance)', 'Request provenance',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'DeviceRequest', '',
'DeviceRequest.instantiatesCanonical', 'Added Element',
'DeviceRequest.instantiatesUri', 'Added Element',
'DeviceRequest.status', 'Change value set from http://hl7.org/fhir/ValueSet/request-status to http://hl7.org/fhir/ValueSet/request-status|4.0.1',
'DeviceRequest.intent', 'Type changed from CodeableConcept to code
        Change value set from http://build.fhir.org/valueset-request-intent.html to http://hl7.org/fhir/ValueSet/request-intent|4.0.1',
'DeviceRequest.priority', 'Change value set from http://hl7.org/fhir/ValueSet/request-priority to http://hl7.org/fhir/ValueSet/request-priority|4.0.1
        Default Value "If missing, normal priority" removed',
'DeviceRequest.parameter', 'Added Element',
'DeviceRequest.parameter.code', 'Added Element',
'DeviceRequest.parameter.value[x]', 'Added Element',
'DeviceRequest.encounter', 'Added Element',
'DeviceRequest.requester', 'Type changed from BackboneElement to Reference(Device | Practitioner | PractitionerRole | Organization)',
'DeviceRequest.performer', 'Type Reference: Added Target Types PractitionerRole, CareTeam',
'DeviceRequest.reasonReference', 'Type Reference: Added Target Types Condition, Observation, DiagnosticReport, DocumentReference
        Type Reference: Removed Target Type Resource',
'DeviceRequest.insurance', 'Added Element',
'DeviceRequest.definition', 'deleted',
'DeviceRequest.context', 'deleted',
'DeviceRequest.requester.agent', 'deleted',
'DeviceRequest.requester.onBehalfOf', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DeviceRequest', 'TU', '', 'DomainResource', 'Medical device requestElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Request identifier',
'instantiatesCanonical', 'Σ', '0..*', 'canonical(ActivityDefinition | PlanDefinition)', 'Instantiates FHIR protocol or definition',
'instantiatesUri', 'Σ', '0..*', 'uri', 'Instantiates external protocol or definition',
'basedOn', 'Σ', '0..*', 'Reference(Any)', 'What request fulfills',
'priorRequest', 'Σ', '0..*', 'Reference(Any)', 'What request replaces',
'groupIdentifier', 'Σ', '0..1', 'Identifier', 'Identifier of composite request',
'status', '?!Σ', '0..1', 'code', 'draft | active | on-hold | revoked | completed | entered-in-error | unknownRequestStatus (Required)',
'intent', '?!Σ', '1..1', 'code', 'proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | optionRequestIntent (Required)',
'priority', 'Σ', '0..1', 'code', 'routine | urgent | asap | statRequest priority (Required)',
'code[x]', 'Σ', '1..1', '', 'Device requestedFHIR Device Types (Example)',
'codeReference', '', '', 'Reference(Device)', '',
'codeCodeableConcept', '', '', 'CodeableConcept', '',
'parameter', '', '0..*', 'BackboneElement', 'Device details',
'code', '', '0..1', 'CodeableConcept', 'Device detail',
'value[x]', '', '0..1', '', 'Value of detail',
'valueCodeableConcept', '', '', 'CodeableConcept', '',
'valueQuantity', '', '', 'Quantity', '',
'valueRange', '', '', 'Range', '',
'valueBoolean', '', '', 'boolean', '',
'subject', 'Σ', '1..1', 'Reference(Patient | Group | Location | Device)', 'Focus of request',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter motivating request',
'occurrence[x]', 'Σ', '0..1', '', 'Desired time or schedule for use',
'occurrenceDateTime', '', '', 'dateTime', '',
'occurrencePeriod', '', '', 'Period', '',
'occurrenceTiming', '', '', 'Timing', '',
'authoredOn', 'Σ', '0..1', 'dateTime', 'When recorded',
'requester', 'Σ', '0..1', 'Reference(Device | Practitioner | PractitionerRole | Organization)', 'Who/what is requesting diagnostics',
'performerType', 'Σ', '0..1', 'CodeableConcept', 'Filler roleParticipant Roles (Example)',
'performer', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam | HealthcareService | Patient | Device | RelatedPerson)', 'Requested Filler',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Coded Reason for requestCondition/Problem/Diagnosis Codes (Example)',
'reasonReference', 'Σ', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference)', 'Linked Reason for request',
'insurance', '', '0..*', 'Reference(Coverage | ClaimResponse)', 'Associated insurance coverage',
'supportingInfo', '', '0..*', 'Reference(Any)', 'Additional clinical information',
'note', '', '0..*', 'Annotation', 'Notes or comments',
'relevantHistory', '', '0..*', 'Reference(Provenance)', 'Request provenance',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'DeviceRequest', '',
'DeviceRequest.instantiatesCanonical', 'Added Element',
'DeviceRequest.instantiatesUri', 'Added Element',
'DeviceRequest.status', 'Change value set from http://hl7.org/fhir/ValueSet/request-status to http://hl7.org/fhir/ValueSet/request-status|4.0.1',
'DeviceRequest.intent', 'Type changed from CodeableConcept to code
        Change value set from http://build.fhir.org/valueset-request-intent.html to http://hl7.org/fhir/ValueSet/request-intent|4.0.1',
'DeviceRequest.priority', 'Change value set from http://hl7.org/fhir/ValueSet/request-priority to http://hl7.org/fhir/ValueSet/request-priority|4.0.1
        Default Value "If missing, normal priority" removed',
'DeviceRequest.parameter', 'Added Element',
'DeviceRequest.parameter.code', 'Added Element',
'DeviceRequest.parameter.value[x]', 'Added Element',
'DeviceRequest.encounter', 'Added Element',
'DeviceRequest.requester', 'Type changed from BackboneElement to Reference(Device | Practitioner | PractitionerRole | Organization)',
'DeviceRequest.performer', 'Type Reference: Added Target Types PractitionerRole, CareTeam',
'DeviceRequest.reasonReference', 'Type Reference: Added Target Types Condition, Observation, DiagnosticReport, DocumentReference
        Type Reference: Removed Target Type Resource',
'DeviceRequest.insurance', 'Added Element',
'DeviceRequest.definition', 'deleted',
'DeviceRequest.context', 'deleted',
'DeviceRequest.requester.agent', 'deleted',
'DeviceRequest.requester.onBehalfOf', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'DeviceRequest.status', 'Codes representing the status of the request.', 'Required', 'RequestStatus',
'DeviceRequest.intent', 'The kind of diagnostic request.', 'Required', 'RequestIntent',
'DeviceRequest.priority', 'Identifies the level of importance to be assigned to actioning the request.', 'Required', 'RequestPriority',
'DeviceRequest.code[x]', 'Codes for devices that can be requested.', 'Example', 'FHIRDeviceTypes',
'DeviceRequest.parameter.code', 'A code that identifies the device detail.', 'Unknown', 'No details provided yet',
'DeviceRequest.performerType', 'Indicates specific responsibility of an individual within the care team, such as "Primary physician", "Team coordinator", "Caregiver", etc.', 'Example', 'ParticipantRoles',
'DeviceRequest.reasonCode', 'Diagnosis or problem codes justifying the reason for requesting the device.', 'Example', 'Condition/Problem/DiagnosisCodes',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'authored-on', 'date', 'When the request transitioned to being actionable', 'DeviceRequest.authoredOn', '',
'based-on', 'reference', 'Plan/proposal/order fulfilled by this request', 'DeviceRequest.basedOn(Any)', '',
'code', 'token', 'Code for what is being requested/ordered', '(DeviceRequest.code as CodeableConcept)', '13 Resources',
'device', 'reference', 'Reference to resource that is being requested/ordered', '(DeviceRequest.code as Reference)(Device)', '',
'encounter', 'reference', 'Encounter during which request was created', 'DeviceRequest.encounter(Encounter)', '12 Resources',
'event-date', 'date', 'When service should occur', '(DeviceRequest.occurrence as dateTime) | (DeviceRequest.occurrence as Period)', '',
'group-identifier', 'token', 'Composite request this is part of', 'DeviceRequest.groupIdentifier', '',
'identifier', 'token', 'Business identifier for request/order', 'DeviceRequest.identifier', '30 Resources',
'instantiates-canonical', 'reference', 'Instantiates FHIR protocol or definition', 'DeviceRequest.instantiatesCanonical(PlanDefinition, ActivityDefinition)', '',
'instantiates-uri', 'uri', 'Instantiates external protocol or definition', 'DeviceRequest.instantiatesUri', '',
'insurance', 'reference', 'Associated insurance coverage', 'DeviceRequest.insurance(ClaimResponse, Coverage)', '',
'intent', 'token', 'proposal | plan | original-order |reflex-order', 'DeviceRequest.intent', '',
'patient', 'reference', 'Individual the service is ordered for', 'DeviceRequest.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'performer', 'reference', 'Desired performer for service', 'DeviceRequest.performer(Practitioner, Organization, CareTeam, Device, Patient, HealthcareService, PractitionerRole, RelatedPerson)', '',
'prior-request', 'reference', 'Request takes the place of referenced completed or terminated requests', 'DeviceRequest.priorRequest(Any)', '',
'requester', 'reference', 'Who/what is requesting service', 'DeviceRequest.requester(Practitioner, Organization, Device, PractitionerRole)', '',
'status', 'token', 'entered-in-error | draft | active |suspended | completed', 'DeviceRequest.status', '',
'subject', 'reference', 'Individual the service is ordered for', 'DeviceRequest.subject(Group, Device, Patient, Location)', '',
)


