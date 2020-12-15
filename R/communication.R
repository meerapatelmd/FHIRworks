df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Care  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Encounter, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Communication', 'TU', '', 'DomainResource', 'A record of information transmitted from a sender to a receiverElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique identifier',
'instantiatesCanonical', 'Σ', '0..*', 'canonical(PlanDefinition | ActivityDefinition | Measure | OperationDefinition | Questionnaire)', 'Instantiates FHIR protocol or definition',
'instantiatesUri', 'Σ', '0..*', 'uri', 'Instantiates external protocol or definition',
'basedOn', 'Σ', '0..*', 'Reference(Any)', 'Request fulfilled by this communication',
'partOf', 'Σ', '0..*', 'Reference(Any)', 'Part of this action',
'inResponseTo', '', '0..*', 'Reference(Communication)', 'Reply to',
'status', '?!Σ', '1..1', 'code', 'preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknownEventStatus (Required)',
'statusReason', 'Σ', '0..1', 'CodeableConcept', 'Reason for current statusCommunicationNotDoneReason (Example)',
'category', '', '0..*', 'CodeableConcept', 'Message categoryCommunicationCategory (Example)',
'priority', 'Σ', '0..1', 'code', 'routine | urgent | asap | statRequest priority (Required)',
'medium', '', '0..*', 'CodeableConcept', 'A channel of communicationv3 Code System ParticipationMode (Example)',
'subject', 'Σ', '0..1', 'Reference(Patient | Group)', 'Focus of message',
'topic', '', '0..1', 'CodeableConcept', 'Description of the purpose/contentCommunicationTopic (Example)',
'about', '', '0..*', 'Reference(Any)', 'Resources that pertain to this communication',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter created as part of',
'sent', '', '0..1', 'dateTime', 'When sent',
'received', '', '0..1', 'dateTime', 'When received',
'recipient', '', '0..*', 'Reference(Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson | Group | CareTeam | HealthcareService)', 'Message recipient',
'sender', '', '0..1', 'Reference(Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson | HealthcareService)', 'Message sender',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Indication for messageSNOMED CT Clinical Findings (Example)',
'reasonReference', 'Σ', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference)', 'Why was communication done?',
'payload', '', '0..*', 'BackboneElement', 'Message payload',
'content[x]', '', '1..1', '', 'Message part content',
'contentString', '', '', 'string', '',
'contentAttachment', '', '', 'Attachment', '',
'contentReference', '', '', 'Reference(Any)', '',
'note', '', '0..*', 'Annotation', 'Comments made about the communication',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Communication', '',
'Communication.instantiatesCanonical', 'Added Element',
'Communication.instantiatesUri', 'Added Element',
'Communication.inResponseTo', 'Added Element',
'Communication.status', 'Change value set from http://hl7.org/fhir/ValueSet/event-status to http://hl7.org/fhir/ValueSet/event-status|4.0.1',
'Communication.statusReason', 'Added Element',
'Communication.priority', 'Added Element',
'Communication.topic', 'Max Cardinality changed from * to 1
        Type changed from Reference(Resource) to CodeableConcept',
'Communication.about', 'Added Element',
'Communication.encounter', 'Added Element',
'Communication.recipient', 'Type Reference: Added Target Types PractitionerRole, CareTeam, HealthcareService',
'Communication.sender', 'Type Reference: Added Target Types PractitionerRole, HealthcareService',
'Communication.reasonReference', 'Type Reference: Added Target Types DiagnosticReport, DocumentReference',
'Communication.definition', 'deleted',
'Communication.notDone', 'deleted',
'Communication.notDoneReason', 'deleted',
'Communication.context', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Communication', 'TU', '', 'DomainResource', 'A record of information transmitted from a sender to a receiverElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique identifier',
'instantiatesCanonical', 'Σ', '0..*', 'canonical(PlanDefinition | ActivityDefinition | Measure | OperationDefinition | Questionnaire)', 'Instantiates FHIR protocol or definition',
'instantiatesUri', 'Σ', '0..*', 'uri', 'Instantiates external protocol or definition',
'basedOn', 'Σ', '0..*', 'Reference(Any)', 'Request fulfilled by this communication',
'partOf', 'Σ', '0..*', 'Reference(Any)', 'Part of this action',
'inResponseTo', '', '0..*', 'Reference(Communication)', 'Reply to',
'status', '?!Σ', '1..1', 'code', 'preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknownEventStatus (Required)',
'statusReason', 'Σ', '0..1', 'CodeableConcept', 'Reason for current statusCommunicationNotDoneReason (Example)',
'category', '', '0..*', 'CodeableConcept', 'Message categoryCommunicationCategory (Example)',
'priority', 'Σ', '0..1', 'code', 'routine | urgent | asap | statRequest priority (Required)',
'medium', '', '0..*', 'CodeableConcept', 'A channel of communicationv3 Code System ParticipationMode (Example)',
'subject', 'Σ', '0..1', 'Reference(Patient | Group)', 'Focus of message',
'topic', '', '0..1', 'CodeableConcept', 'Description of the purpose/contentCommunicationTopic (Example)',
'about', '', '0..*', 'Reference(Any)', 'Resources that pertain to this communication',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter created as part of',
'sent', '', '0..1', 'dateTime', 'When sent',
'received', '', '0..1', 'dateTime', 'When received',
'recipient', '', '0..*', 'Reference(Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson | Group | CareTeam | HealthcareService)', 'Message recipient',
'sender', '', '0..1', 'Reference(Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson | HealthcareService)', 'Message sender',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Indication for messageSNOMED CT Clinical Findings (Example)',
'reasonReference', 'Σ', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference)', 'Why was communication done?',
'payload', '', '0..*', 'BackboneElement', 'Message payload',
'content[x]', '', '1..1', '', 'Message part content',
'contentString', '', '', 'string', '',
'contentAttachment', '', '', 'Attachment', '',
'contentReference', '', '', 'Reference(Any)', '',
'note', '', '0..*', 'Annotation', 'Comments made about the communication',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Communication', '',
'Communication.instantiatesCanonical', 'Added Element',
'Communication.instantiatesUri', 'Added Element',
'Communication.inResponseTo', 'Added Element',
'Communication.status', 'Change value set from http://hl7.org/fhir/ValueSet/event-status to http://hl7.org/fhir/ValueSet/event-status|4.0.1',
'Communication.statusReason', 'Added Element',
'Communication.priority', 'Added Element',
'Communication.topic', 'Max Cardinality changed from * to 1
        Type changed from Reference(Resource) to CodeableConcept',
'Communication.about', 'Added Element',
'Communication.encounter', 'Added Element',
'Communication.recipient', 'Type Reference: Added Target Types PractitionerRole, CareTeam, HealthcareService',
'Communication.sender', 'Type Reference: Added Target Types PractitionerRole, HealthcareService',
'Communication.reasonReference', 'Type Reference: Added Target Types DiagnosticReport, DocumentReference',
'Communication.definition', 'deleted',
'Communication.notDone', 'deleted',
'Communication.notDoneReason', 'deleted',
'Communication.context', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Communication.status', 'The status of the communication.', 'Required', 'EventStatus',
'Communication.statusReason', 'Codes for the reason why a communication did not happen.', 'Example', 'CommunicationNotDoneReason',
'Communication.category', 'Codes for general categories of communications such as alerts, instructions, etc.', 'Example', 'CommunicationCategory',
'Communication.priority', 'Codes indicating the relative importance of a communication.', 'Required', 'RequestPriority',
'Communication.medium', 'Codes for communication mediums such as phone, fax, email, in person, etc.', 'Example', 'v3.ParticipationMode',
'Communication.topic', 'Codes describing the purpose or content of the communication.', 'Example', 'CommunicationTopic',
'Communication.reasonCode', 'Codes for describing reasons for the occurrence of a communication.', 'Example', 'SNOMEDCTClinicalFindings',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'based-on', 'reference', 'Request fulfilled by this communication', 'Communication.basedOn(Any)', '',
'category', 'token', 'Message category', 'Communication.category', '',
'encounter', 'reference', 'Encounter created as part of', 'Communication.encounter(Encounter)', '',
'identifier', 'token', 'Unique identifier', 'Communication.identifier', '',
'instantiates-canonical', 'reference', 'Instantiates FHIR protocol or definition', 'Communication.instantiatesCanonical(Questionnaire, Measure, PlanDefinition, OperationDefinition, ActivityDefinition)', '',
'instantiates-uri', 'uri', 'Instantiates external protocol or definition', 'Communication.instantiatesUri', '',
'medium', 'token', 'A channel of communication', 'Communication.medium', '',
'part-of', 'reference', 'Part of this action', 'Communication.partOf(Any)', '',
'patient', 'reference', 'Focus of message', 'Communication.subject.where(resolve() is Patient)(Patient)', '',
'received', 'date', 'When received', 'Communication.received', '',
'recipient', 'reference', 'Message recipient', 'Communication.recipient(Practitioner, Group, Organization, CareTeam, Device, Patient, HealthcareService, PractitionerRole, RelatedPerson)', '',
'sender', 'reference', 'Message sender', 'Communication.sender(Practitioner, Organization, Device, Patient, HealthcareService, PractitionerRole, RelatedPerson)', '',
'sent', 'date', 'When sent', 'Communication.sent', '',
'status', 'token', 'preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown', 'Communication.status', '',
'subject', 'reference', 'Focus of message', 'Communication.subject(Group, Patient)', '',
)


