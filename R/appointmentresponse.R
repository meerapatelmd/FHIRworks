df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'AppointmentResponse', 'ITU', '', 'DomainResource', 'A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection+ Rule: Either the participantType or actor must be specifiedElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Ids for this item',
'appointment', 'Σ', '1..1', 'Reference(Appointment)', 'Appointment this response relates to',
'start', '', '0..1', 'instant', 'Time from appointment, or requested new start time',
'end', '', '0..1', 'instant', 'Time from appointment, or requested new end time',
'participantType', 'Σ', '0..*', 'CodeableConcept', 'Role of participant in the appointmentParticipant type (Extensible)',
'actor', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson | Device | HealthcareService | Location)', 'Person, Location, HealthcareService, or Device',
'participantStatus', '?!Σ', '1..1', 'code', 'accepted | declined | tentative | needs-actionParticipationStatus (Required)',
'comment', '', '0..1', 'string', 'Additional comments',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'AppointmentResponse', '',
'AppointmentResponse.actor', 'Type Reference: Added Target Type PractitionerRole',
'AppointmentResponse.participantStatus', 'Change value set from http://hl7.org/fhir/ValueSet/participationstatus to http://hl7.org/fhir/ValueSet/participationstatus|4.0.1',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'AppointmentResponse', 'ITU', '', 'DomainResource', 'A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection+ Rule: Either the participantType or actor must be specifiedElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Ids for this item',
'appointment', 'Σ', '1..1', 'Reference(Appointment)', 'Appointment this response relates to',
'start', '', '0..1', 'instant', 'Time from appointment, or requested new start time',
'end', '', '0..1', 'instant', 'Time from appointment, or requested new end time',
'participantType', 'Σ', '0..*', 'CodeableConcept', 'Role of participant in the appointmentParticipant type (Extensible)',
'actor', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson | Device | HealthcareService | Location)', 'Person, Location, HealthcareService, or Device',
'participantStatus', '?!Σ', '1..1', 'code', 'accepted | declined | tentative | needs-actionParticipationStatus (Required)',
'comment', '', '0..1', 'string', 'Additional comments',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'AppointmentResponse', '',
'AppointmentResponse.actor', 'Type Reference: Added Target Type PractitionerRole',
'AppointmentResponse.participantStatus', 'Change value set from http://hl7.org/fhir/ValueSet/participationstatus to http://hl7.org/fhir/ValueSet/participationstatus|4.0.1',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'AppointmentResponse.participantType', 'Role of participant in encounter.', 'Extensible', 'ParticipantType',
'AppointmentResponse.participantStatus', 'The Participation status of an appointment.', 'Required', 'ParticipationStatus',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'apr-1', 'Rule', '(base)', 'Either the participantType or actor must be specified', 'participantType.exists() or actor.exists()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'actor', 'reference', 'The Person, Location/HealthcareService or Device that this appointment response replies for', 'AppointmentResponse.actor(Practitioner, Device, Patient, HealthcareService, PractitionerRole, RelatedPerson, Location)', '',
'appointment', 'reference', 'The appointment that the response is attached to', 'AppointmentResponse.appointment(Appointment)', '',
'identifier', 'token', 'An Identifier in this appointment response', 'AppointmentResponse.identifier', '',
'location', 'reference', 'This Response is for this Location', 'AppointmentResponse.actor.where(resolve() is Location)(Location)', '',
'part-status', 'token', 'The participants acceptance status for this appointment', 'AppointmentResponse.participantStatus', '',
'patient', 'reference', 'This Response is for this Patient', 'AppointmentResponse.actor.where(resolve() is Patient)(Patient)', '',
'practitioner', 'reference', 'This Response is for this Practitioner', 'AppointmentResponse.actor.where(resolve() is Practitioner)(Practitioner)', '',
)


