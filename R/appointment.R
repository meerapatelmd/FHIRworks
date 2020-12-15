df1 <-
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Patient, Practitioner, RelatedPerson',
)


df2 <-
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Appointment', 'ITU', '', 'DomainResource', 'A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s)+ Rule: Either start and end are specified, or neither+ Rule: Only proposed or cancelled appointments can be missing start/end dates+ Rule: Cancelation reason is only used for appointments that have been cancelled, or no-showElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Ids for this item',
'status', '?!Σ', '1..1', 'code', 'proposed | pending | booked | arrived | fulfilled | cancelled | noshow | entered-in-error | checked-in | waitlistAppointmentStatus (Required)',
'cancelationReason', 'Σ', '0..1', 'CodeableConcept', 'The coded reason for the appointment being cancelledAppointment cancellation reason (Example)',
'serviceCategory', 'Σ', '0..*', 'CodeableConcept', 'A broad categorization of the service that is to be performed during this appointmentService category (Example)',
'serviceType', 'Σ', '0..*', 'CodeableConcept', 'The specific service that is to be performed during this appointmentService type (Example)',
'specialty', 'Σ', '0..*', 'CodeableConcept', 'The specialty of a practitioner that would be required to perform the service requested in this appointmentPractice Setting Code Value Set (Preferred)',
'appointmentType', 'Σ', '0..1', 'CodeableConcept', 'The style of appointment or patient that has been booked in the slot (not service type)v2 Appointment Reason Codes (Preferred)',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Coded reason this appointment is scheduledEncounter Reason Codes (Preferred)',
'reasonReference', '', '0..*', 'Reference(Condition | Procedure | Observation | ImmunizationRecommendation)', 'Reason the appointment is to take place (resource)',
'priority', '', '0..1', 'unsignedInt', 'Used to make informed decisions if needing to re-prioritize',
'description', '', '0..1', 'string', 'Shown on a subject line in a meeting request, or appointment list',
'supportingInformation', '', '0..*', 'Reference(Any)', 'Additional information to support the appointment',
'start', 'Σ', '0..1', 'instant', 'When appointment is to take place',
'end', 'Σ', '0..1', 'instant', 'When appointment is to conclude',
'minutesDuration', '', '0..1', 'positiveInt', 'Can be less than start/end (e.g. estimate)',
'slot', '', '0..*', 'Reference(Slot)', 'The slots that this appointment is filling',
'created', '', '0..1', 'dateTime', 'The date that this appointment was initially created',
'comment', '', '0..1', 'string', 'Additional comments',
'patientInstruction', '', '0..1', 'string', 'Detailed information and instructions for the patient',
'basedOn', '', '0..*', 'Reference(ServiceRequest)', 'The service request this appointment is allocated to assess',
'participant', 'I', '1..*', 'BackboneElement', 'Participants involved in appointment+ Rule: Either the type or actor on the participant SHALL be specified',
'type', 'Σ', '0..*', 'CodeableConcept', 'Role of participant in the appointmentParticipant type (Extensible)',
'actor', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson | Device | HealthcareService | Location)', 'Person, Location/HealthcareService or Device',
'required', 'Σ', '0..1', 'code', 'required | optional | information-onlyParticipantRequired (Required)',
'status', 'Σ', '1..1', 'code', 'accepted | declined | tentative | needs-actionParticipationStatus (Required)',
'period', '', '0..1', 'Period', 'Participation period of the actor',
'requestedPeriod', '', '0..*', 'Period', 'Potential date/time interval(s) requested to allocate the appointment within',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <-
tibble::tribble(
~`X1`,~`X2`,
'Appointment', '',
'Appointment.status', 'Change value set from http://hl7.org/fhir/ValueSet/appointmentstatus to http://hl7.org/fhir/ValueSet/appointmentstatus|4.0.1',
'Appointment.cancelationReason', 'Added Element',
'Appointment.serviceCategory', 'Max Cardinality changed from 1 to *',
'Appointment.reasonCode', 'Added Element',
'Appointment.reasonReference', 'Added Element',
'Appointment.patientInstruction', 'Added Element',
'Appointment.basedOn', 'Added Element',
'Appointment.participant.actor', 'Type Reference: Added Target Type PractitionerRole',
'Appointment.participant.required', 'Change value set from http://hl7.org/fhir/ValueSet/participantrequired to http://hl7.org/fhir/ValueSet/participantrequired|4.0.1',
'Appointment.participant.status', 'Change value set from http://hl7.org/fhir/ValueSet/participationstatus to http://hl7.org/fhir/ValueSet/participationstatus|4.0.1',
'Appointment.participant.period', 'Added Element',
'Appointment.reason', 'deleted',
'Appointment.indication', 'deleted',
'Appointment.incomingReferral', 'deleted',
)


df4 <-
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Appointment', 'ITU', '', 'DomainResource', 'A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s)+ Rule: Either start and end are specified, or neither+ Rule: Only proposed or cancelled appointments can be missing start/end dates+ Rule: Cancelation reason is only used for appointments that have been cancelled, or no-showElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Ids for this item',
'status', '?!Σ', '1..1', 'code', 'proposed | pending | booked | arrived | fulfilled | cancelled | noshow | entered-in-error | checked-in | waitlistAppointmentStatus (Required)',
'cancelationReason', 'Σ', '0..1', 'CodeableConcept', 'The coded reason for the appointment being cancelledAppointment cancellation reason (Example)',
'serviceCategory', 'Σ', '0..*', 'CodeableConcept', 'A broad categorization of the service that is to be performed during this appointmentService category (Example)',
'serviceType', 'Σ', '0..*', 'CodeableConcept', 'The specific service that is to be performed during this appointmentService type (Example)',
'specialty', 'Σ', '0..*', 'CodeableConcept', 'The specialty of a practitioner that would be required to perform the service requested in this appointmentPractice Setting Code Value Set (Preferred)',
'appointmentType', 'Σ', '0..1', 'CodeableConcept', 'The style of appointment or patient that has been booked in the slot (not service type)v2 Appointment Reason Codes (Preferred)',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Coded reason this appointment is scheduledEncounter Reason Codes (Preferred)',
'reasonReference', '', '0..*', 'Reference(Condition | Procedure | Observation | ImmunizationRecommendation)', 'Reason the appointment is to take place (resource)',
'priority', '', '0..1', 'unsignedInt', 'Used to make informed decisions if needing to re-prioritize',
'description', '', '0..1', 'string', 'Shown on a subject line in a meeting request, or appointment list',
'supportingInformation', '', '0..*', 'Reference(Any)', 'Additional information to support the appointment',
'start', 'Σ', '0..1', 'instant', 'When appointment is to take place',
'end', 'Σ', '0..1', 'instant', 'When appointment is to conclude',
'minutesDuration', '', '0..1', 'positiveInt', 'Can be less than start/end (e.g. estimate)',
'slot', '', '0..*', 'Reference(Slot)', 'The slots that this appointment is filling',
'created', '', '0..1', 'dateTime', 'The date that this appointment was initially created',
'comment', '', '0..1', 'string', 'Additional comments',
'patientInstruction', '', '0..1', 'string', 'Detailed information and instructions for the patient',
'basedOn', '', '0..*', 'Reference(ServiceRequest)', 'The service request this appointment is allocated to assess',
'participant', 'I', '1..*', 'BackboneElement', 'Participants involved in appointment+ Rule: Either the type or actor on the participant SHALL be specified',
'type', 'Σ', '0..*', 'CodeableConcept', 'Role of participant in the appointmentParticipant type (Extensible)',
'actor', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson | Device | HealthcareService | Location)', 'Person, Location/HealthcareService or Device',
'required', 'Σ', '0..1', 'code', 'required | optional | information-onlyParticipantRequired (Required)',
'status', 'Σ', '1..1', 'code', 'accepted | declined | tentative | needs-actionParticipationStatus (Required)',
'period', '', '0..1', 'Period', 'Participation period of the actor',
'requestedPeriod', '', '0..*', 'Period', 'Potential date/time interval(s) requested to allocate the appointment within',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <-
tibble::tribble(
~`X1`,~`X2`,
'Appointment', '',
'Appointment.status', 'Change value set from http://hl7.org/fhir/ValueSet/appointmentstatus to http://hl7.org/fhir/ValueSet/appointmentstatus|4.0.1',
'Appointment.cancelationReason', 'Added Element',
'Appointment.serviceCategory', 'Max Cardinality changed from 1 to *',
'Appointment.reasonCode', 'Added Element',
'Appointment.reasonReference', 'Added Element',
'Appointment.patientInstruction', 'Added Element',
'Appointment.basedOn', 'Added Element',
'Appointment.participant.actor', 'Type Reference: Added Target Type PractitionerRole',
'Appointment.participant.required', 'Change value set from http://hl7.org/fhir/ValueSet/participantrequired to http://hl7.org/fhir/ValueSet/participantrequired|4.0.1',
'Appointment.participant.status', 'Change value set from http://hl7.org/fhir/ValueSet/participationstatus to http://hl7.org/fhir/ValueSet/participationstatus|4.0.1',
'Appointment.participant.period', 'Added Element',
'Appointment.reason', 'deleted',
'Appointment.indication', 'deleted',
'Appointment.incomingReferral', 'deleted',
)


df6 <-
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Appointment.status', 'The free/busy status of an appointment.', 'Required', 'AppointmentStatus',
'Appointment.cancelationReason', '', 'Example', 'AppointmentCancellationReason',
'Appointment.serviceCategory', '', 'Example', 'ServiceCategory',
'Appointment.serviceType', '', 'Example', 'ServiceType',
'Appointment.specialty', '', 'Preferred', 'PracticeSettingCodeValueSet',
'Appointment.appointmentType', '', 'Preferred', 'v2.0276',
'Appointment.reasonCode', 'The Reason for the appointment to take place.', 'Preferred', 'EncounterReasonCodes',
'Appointment.participant.type', 'Role of participant in encounter.', 'Extensible', 'ParticipantType',
'Appointment.participant.required', 'Is the Participant required to attend the appointment.', 'Required', 'ParticipantRequired',
'Appointment.participant.status', 'The Participation status of an appointment.', 'Required', 'ParticipationStatus',
)


df7 <-
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'app-1', 'Rule', 'Appointment.participant', 'Either the type or actor on the participant SHALL be specified', 'type.exists() or actor.exists()',
'app-2', 'Rule', '(base)', 'Either start and end are specified, or neither', 'start.exists() = end.exists()',
'app-3', 'Rule', '(base)', 'Only proposed or cancelled appointments can be missing start/end dates', '(start.exists() and end.exists()) or (status in ('proposed' | 'cancelled' | 'waitlist'))',
'app-4', 'Rule', '(base)', 'Cancelation reason is only used for appointments that have been cancelled, or no-show', 'Appointment.cancelationReason.exists() implies (Appointment.status='no-show' or Appointment.status='cancelled')',
)


df8 <-
tibble::tribble(
~`Activity Description`,~`Slot`,~`Appointment`,~`Appointment Response`,~`Encounter`,
'The schedule is created/published (Role: Scheduler)', 'freeBusyType = FREE', '', '', '',
'An appointment request is created after locating an available slot (Role: Requester)', '', 'status = pending
				participant.status = needs-action', '', '',
'The appointment request is processed and the slot status updated(Role: Scheduler)', 'freeBusyType = BUSY-TENTATIVE', '', '', '',
'The appointment is accepted as described – by all participants (Role: Participant(s))', '', '', 'participantStatus = accepted', '',
'The appointment is confirmed as accepted by all participants(Role: Scheduler)', 'freeBusyType = BUSY', 'status = bookedparticipant.status = accepted', '', '',
'Optional: Preparation for the appointment begins – could be preparing a room for the appointment, etc.(Role: Participants/Admin)', '', '', '', 'status = planned (optional)
				location.status = planned',
'The patient arrives for the appointment, often sitting in a waiting room(Role: Admin)', '', 'status = arrived', '', 'status = arrived
				location.status = present',
'The practitioner and the patient meet and the provision of the service begins(Role: Scheduler/Participant(s)/Admin)', '', 'status = fulfilled', '', 'status = in-progress',
'The encounter concludes(Role: Scheduler/Participant(s)/Admin)', '', '', '', 'status = finished',
)


df9 <-
tibble::tribble(
~`Activity Description`,~`Slot`,~`Appointment`,~`Appointment Response`,
'The schedule is created/published (Role: Scheduler)', 'freeBusyType = FREE', '', '',
'An appointment request is created(Role: Requester)', '', 'status = pending
				participant.status = needs-action', '',
'The appointment request is processed and the slot status updated(Role: Scheduler)', 'freeBusyType = BUSY-TENTATIVE', '', '',
'Participant declines the Appointment(Role: Participant)', '', '', 'participantStatus = declined',
'The appointment is cancelled(Role: Scheduler)', 'freeBusyType = FREE', 'status = cancelled
				participant.status = declined', '',
)


df10 <-
tibble::tribble(
~`Activity Description`,~`Slot`,~`Appointment`,~`Appointment Response`,
'The schedule is created/published (Role: Scheduler)', 'freeBusyType = FREE', '', '',
'An appointment is requested (e.g. with Brian and Peter)(Role: Requester)', '', 'status = proposed
				participant(Brian).status = needs-action
				participant(Peter).status = needs-action', '',
'The schedule is updated to inform others of interest in the slot(Role: Scheduler)', 'freeBusyType = BUSY-TENTATIVE', '', '',
'Brian accepts the appointment(Role: Participant-Brian)', '', '', '(Brian).participantStatus = accepted',
'Appointment is updated with Brian\'s status(Role: Scheduler)', '', 'status = pending
				participant(Brian).status = accepted', '',
'Peter suggests a new time(Role: Participant-Peter)', '', '', '(Peter).participantStatus = tentative(with new time)',
'Appointment is updated with new time, and indicates that action is needed by both participants(Role: Scheduler)', '', '(new time details updated)
				participant(Brian).status = needs-action
				participant(Peter).status = needs-action', '',
'Brian accepts the appointment(Role: Participant-Brian)', '', '', '(Brian).participantStatus = accepted',
'Appointment updated(Role: Scheduler)', '', 'participant(Brian).status = accepted', '',
'(Role: Participant-Peter)', '', '', '(Peter).participantStatus = accepted',
'Appointment updated(Role: Scheduler)', 'freeBusyType = BUSY', 'status = booked
				participant(Peter).status = accepted', '',
)


df11 <-
tibble::tribble(
~`Activity Description`,~`Slot`,~`Appointment`,~`Appointment Response`,~`Encounter`,
'(from typical status flow)', 'freeBusyType = BUSY', 'status = booked
				participant.status = accepted', NA, '',
'Appointment is updated as a noshow(Role: Scheduler/Admin)', '', 'status = noshow', NA, '(no encounter created)',
)


df12 <-
tibble::tribble(
~`Activity Description`,~`Appointment (inconvenient)`,~`Appointment (preferred)`,
'An appointment is booked for an inconvenient time using a typical status flow', 'status = booked
				participant.status = accepted', '',
'Waitlist appointment created', 'status = booked
				participant.status = accepted', 'status = waitlist
				requestedPeriod = (more convenient time period)',
'Patient notified of availability of a better slot', 'status = booked', 'status = proposed
				participant.status = needs-action',
'Patient accepts better slot', 'status = cancelled', 'status = booked
				participant.status = accepted',
)


df13 <-
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'actor', 'reference', 'Any one of the individuals participating in the appointment', 'Appointment.participant.actor(Practitioner, Device, Patient, HealthcareService, PractitionerRole, RelatedPerson, Location)', '',
'appointment-type', 'token', 'The style of appointment or patient that has been booked in the slot (not service type)', 'Appointment.appointmentType', '',
'based-on', 'reference', 'The service request this appointment is allocated to assess', 'Appointment.basedOn(ServiceRequest)', '',
'date', 'date', 'Appointment date/time.', 'Appointment.start', '',
'identifier', 'token', 'An Identifier of the Appointment', 'Appointment.identifier', '',
'location', 'reference', 'This location is listed in the participants of the appointment', 'Appointment.participant.actor.where(resolve() is Location)(Location)', '',
'part-status', 'token', 'The Participation status of the subject, or other participant on the appointment. Can be used to locate participants that have not responded to meeting requests.', 'Appointment.participant.status', '',
'patient', 'reference', 'One of the individuals of the appointment is this patient', 'Appointment.participant.actor.where(resolve() is Patient)(Patient)', '',
'practitioner', 'reference', 'One of the individuals of the appointment is this practitioner', 'Appointment.participant.actor.where(resolve() is Practitioner)(Practitioner)', '',
'reason-code', 'token', 'Coded reason this appointment is scheduled', 'Appointment.reasonCode', '',
'reason-reference', 'reference', 'Reason the appointment is to take place (resource)', 'Appointment.reasonReference(Condition, Observation, Procedure, ImmunizationRecommendation)', '',
'service-category', 'token', 'A broad categorization of the service that is to be performed during this appointment', 'Appointment.serviceCategory', '',
'service-type', 'token', 'The specific service that is to be performed during this appointment', 'Appointment.serviceType', '',
'slot', 'reference', 'The slots that this appointment is filling', 'Appointment.slot(Slot)', '',
'specialty', 'token', 'The specialty of a practitioner that would be required to perform the service requested in this appointment', 'Appointment.specialty', '',
'status', 'token', 'The overall status of the appointment', 'Appointment.status', '',
'supporting-info', 'reference', 'Additional information to support the appointment', 'Appointment.supportingInformation(Any)', '',
)


