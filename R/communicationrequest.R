df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Care  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Encounter, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CommunicationRequest', 'TU', '', 'DomainResource', 'A request for information to be sent to a receiverElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique identifier',
'basedOn', 'Σ', '0..*', 'Reference(Any)', 'Fulfills plan or proposal',
'replaces', 'Σ', '0..*', 'Reference(CommunicationRequest)', 'Request(s) replaced by this request',
'groupIdentifier', 'Σ', '0..1', 'Identifier', 'Composite request this is part of',
'status', '?!Σ', '1..1', 'code', 'draft | active | on-hold | revoked | completed | entered-in-error | unknownRequestStatus (Required)',
'statusReason', '', '0..1', 'CodeableConcept', 'Reason for current status',
'category', '', '0..*', 'CodeableConcept', 'Message categoryCommunicationCategory (Example)',
'priority', 'Σ', '0..1', 'code', 'routine | urgent | asap | statRequest priority (Required)',
'doNotPerform', '?!Σ', '0..1', 'boolean', 'True if request is prohibiting action',
'medium', '', '0..*', 'CodeableConcept', 'A channel of communicationv3 Code System ParticipationMode (Example)',
'subject', '', '0..1', 'Reference(Patient | Group)', 'Focus of message',
'about', '', '0..*', 'Reference(Any)', 'Resources that pertain to this communication request',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter created as part of',
'payload', '', '0..*', 'BackboneElement', 'Message payload',
'content[x]', '', '1..1', '', 'Message part content',
'contentString', '', '', 'string', '',
'contentAttachment', '', '', 'Attachment', '',
'contentReference', '', '', 'Reference(Any)', '',
'occurrence[x]', 'Σ', '0..1', '', 'When scheduled',
'occurrenceDateTime', '', '', 'dateTime', '',
'occurrencePeriod', '', '', 'Period', '',
'authoredOn', 'Σ', '0..1', 'dateTime', 'When request transitioned to being actionable',
'requester', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device)', 'Who/what is requesting service',
'recipient', '', '0..*', 'Reference(Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson | Group | CareTeam | HealthcareService)', 'Message recipient',
'sender', 'Σ', '0..1', 'Reference(Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson | HealthcareService)', 'Message sender',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Why is communication needed?v3 Code System ActReason (Example)',
'reasonReference', 'Σ', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference)', 'Why is communication needed?',
'note', '', '0..*', 'Annotation', 'Comments made about communication request',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'CommunicationRequest', '',
'CommunicationRequest.status', 'Change value set from http://hl7.org/fhir/ValueSet/request-status to http://hl7.org/fhir/ValueSet/request-status|4.0.1',
'CommunicationRequest.statusReason', 'Added Element',
'CommunicationRequest.priority', 'Change value set from http://hl7.org/fhir/ValueSet/request-priority to http://hl7.org/fhir/ValueSet/request-priority|4.0.1',
'CommunicationRequest.doNotPerform', 'Added Element',
'CommunicationRequest.about', 'Added Element',
'CommunicationRequest.encounter', 'Added Element',
'CommunicationRequest.requester', 'Type changed from BackboneElement to Reference(Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device)',
'CommunicationRequest.recipient', 'Type Reference: Added Target Types PractitionerRole, HealthcareService',
'CommunicationRequest.sender', 'Type Reference: Added Target Types PractitionerRole, HealthcareService',
'CommunicationRequest.reasonReference', 'Type Reference: Added Target Types DiagnosticReport, DocumentReference',
'CommunicationRequest.topic', 'deleted',
'CommunicationRequest.context', 'deleted',
'CommunicationRequest.requester.agent', 'deleted',
'CommunicationRequest.requester.onBehalfOf', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CommunicationRequest', 'TU', '', 'DomainResource', 'A request for information to be sent to a receiverElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique identifier',
'basedOn', 'Σ', '0..*', 'Reference(Any)', 'Fulfills plan or proposal',
'replaces', 'Σ', '0..*', 'Reference(CommunicationRequest)', 'Request(s) replaced by this request',
'groupIdentifier', 'Σ', '0..1', 'Identifier', 'Composite request this is part of',
'status', '?!Σ', '1..1', 'code', 'draft | active | on-hold | revoked | completed | entered-in-error | unknownRequestStatus (Required)',
'statusReason', '', '0..1', 'CodeableConcept', 'Reason for current status',
'category', '', '0..*', 'CodeableConcept', 'Message categoryCommunicationCategory (Example)',
'priority', 'Σ', '0..1', 'code', 'routine | urgent | asap | statRequest priority (Required)',
'doNotPerform', '?!Σ', '0..1', 'boolean', 'True if request is prohibiting action',
'medium', '', '0..*', 'CodeableConcept', 'A channel of communicationv3 Code System ParticipationMode (Example)',
'subject', '', '0..1', 'Reference(Patient | Group)', 'Focus of message',
'about', '', '0..*', 'Reference(Any)', 'Resources that pertain to this communication request',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter created as part of',
'payload', '', '0..*', 'BackboneElement', 'Message payload',
'content[x]', '', '1..1', '', 'Message part content',
'contentString', '', '', 'string', '',
'contentAttachment', '', '', 'Attachment', '',
'contentReference', '', '', 'Reference(Any)', '',
'occurrence[x]', 'Σ', '0..1', '', 'When scheduled',
'occurrenceDateTime', '', '', 'dateTime', '',
'occurrencePeriod', '', '', 'Period', '',
'authoredOn', 'Σ', '0..1', 'dateTime', 'When request transitioned to being actionable',
'requester', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device)', 'Who/what is requesting service',
'recipient', '', '0..*', 'Reference(Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson | Group | CareTeam | HealthcareService)', 'Message recipient',
'sender', 'Σ', '0..1', 'Reference(Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson | HealthcareService)', 'Message sender',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Why is communication needed?v3 Code System ActReason (Example)',
'reasonReference', 'Σ', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference)', 'Why is communication needed?',
'note', '', '0..*', 'Annotation', 'Comments made about communication request',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'CommunicationRequest', '',
'CommunicationRequest.status', 'Change value set from http://hl7.org/fhir/ValueSet/request-status to http://hl7.org/fhir/ValueSet/request-status|4.0.1',
'CommunicationRequest.statusReason', 'Added Element',
'CommunicationRequest.priority', 'Change value set from http://hl7.org/fhir/ValueSet/request-priority to http://hl7.org/fhir/ValueSet/request-priority|4.0.1',
'CommunicationRequest.doNotPerform', 'Added Element',
'CommunicationRequest.about', 'Added Element',
'CommunicationRequest.encounter', 'Added Element',
'CommunicationRequest.requester', 'Type changed from BackboneElement to Reference(Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device)',
'CommunicationRequest.recipient', 'Type Reference: Added Target Types PractitionerRole, HealthcareService',
'CommunicationRequest.sender', 'Type Reference: Added Target Types PractitionerRole, HealthcareService',
'CommunicationRequest.reasonReference', 'Type Reference: Added Target Types DiagnosticReport, DocumentReference',
'CommunicationRequest.topic', 'deleted',
'CommunicationRequest.context', 'deleted',
'CommunicationRequest.requester.agent', 'deleted',
'CommunicationRequest.requester.onBehalfOf', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'CommunicationRequest.status', 'The status of the communication request.', 'Required', 'RequestStatus',
'CommunicationRequest.statusReason', 'Codes identifying the reason for the current state of a request.', 'Unknown', 'No details provided yet',
'CommunicationRequest.category', 'Codes for general categories of communications such as alerts, instruction, etc.', 'Example', 'CommunicationCategory',
'CommunicationRequest.priority', 'Codes indicating the relative importance of a communication request.', 'Required', 'RequestPriority',
'CommunicationRequest.medium', 'Codes for communication mediums such as phone, fax, email, in person, etc.', 'Example', 'v3.ParticipationMode',
'CommunicationRequest.reasonCode', 'Codes for describing reasons for the occurrence of a communication.', 'Example', 'v3.ActReason',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'authored', 'date', 'When request transitioned to being actionable', 'CommunicationRequest.authoredOn', '',
'based-on', 'reference', 'Fulfills plan or proposal', 'CommunicationRequest.basedOn(Any)', '',
'category', 'token', 'Message category', 'CommunicationRequest.category', '',
'encounter', 'reference', 'Encounter created as part of', 'CommunicationRequest.encounter(Encounter)', '',
'group-identifier', 'token', 'Composite request this is part of', 'CommunicationRequest.groupIdentifier', '',
'identifier', 'token', 'Unique identifier', 'CommunicationRequest.identifier', '',
'medium', 'token', 'A channel of communication', 'CommunicationRequest.medium', '',
'occurrence', 'date', 'When scheduled', '(CommunicationRequest.occurrence as dateTime)', '',
'patient', 'reference', 'Focus of message', 'CommunicationRequest.subject.where(resolve() is Patient)(Patient)', '',
'priority', 'token', 'routine | urgent | asap | stat', 'CommunicationRequest.priority', '',
'recipient', 'reference', 'Message recipient', 'CommunicationRequest.recipient(Practitioner, Group, Organization, CareTeam, Device, Patient, HealthcareService, PractitionerRole, RelatedPerson)', '',
'replaces', 'reference', 'Request(s) replaced by this request', 'CommunicationRequest.replaces(CommunicationRequest)', '',
'requester', 'reference', 'Who/what is requesting service', 'CommunicationRequest.requester(Practitioner, Organization, Device, Patient, PractitionerRole, RelatedPerson)', '',
'sender', 'reference', 'Message sender', 'CommunicationRequest.sender(Practitioner, Organization, Device, Patient, HealthcareService, PractitionerRole, RelatedPerson)', '',
'status', 'token', 'draft | active | on-hold | revoked | completed | entered-in-error | unknown', 'CommunicationRequest.status', '',
'subject', 'reference', 'Focus of message', 'CommunicationRequest.subject(Group, Patient)', '',
)


