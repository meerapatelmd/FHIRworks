df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Slot', 'TU', '', 'DomainResource', 'A slot of time on a schedule that may be available for booking appointmentsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Ids for this item',
'serviceCategory', 'Σ', '0..*', 'CodeableConcept', 'A broad categorization of the service that is to be performed during this appointmentService category (Example)',
'serviceType', 'Σ', '0..*', 'CodeableConcept', 'The type of appointments that can be booked into this slot (ideally this would be an identifiable service - which is at a location, rather than the location itself). If provided then this overrides the value provided on the availability resourceService type (Example)',
'specialty', 'Σ', '0..*', 'CodeableConcept', 'The specialty of a practitioner that would be required to perform the service requested in this appointmentPractice Setting Code Value Set (Preferred)',
'appointmentType', 'Σ', '0..1', 'CodeableConcept', 'The style of appointment or patient that may be booked in the slot (not service type)v2 Appointment Reason Codes (Preferred)',
'schedule', 'Σ', '1..1', 'Reference(Schedule)', 'The schedule resource that this slot defines an interval of status information',
'status', 'Σ', '1..1', 'code', 'busy | free | busy-unavailable | busy-tentative | entered-in-errorSlotStatus (Required)',
'start', 'Σ', '1..1', 'instant', 'Date/Time that the slot is to begin',
'end', 'Σ', '1..1', 'instant', 'Date/Time that the slot is to conclude',
'overbooked', '', '0..1', 'boolean', 'This slot has already been overbooked, appointments are unlikely to be accepted for this time',
'comment', '', '0..1', 'string', 'Comments on the slot to describe any extended information. Such as custom constraints on the slot',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Slot', '',
'Slot.serviceCategory', 'Max Cardinality changed from 1 to *',
'Slot.status', 'Change value set from http://hl7.org/fhir/ValueSet/slotstatus to http://hl7.org/fhir/ValueSet/slotstatus|4.0.1',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Slot', 'TU', '', 'DomainResource', 'A slot of time on a schedule that may be available for booking appointmentsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Ids for this item',
'serviceCategory', 'Σ', '0..*', 'CodeableConcept', 'A broad categorization of the service that is to be performed during this appointmentService category (Example)',
'serviceType', 'Σ', '0..*', 'CodeableConcept', 'The type of appointments that can be booked into this slot (ideally this would be an identifiable service - which is at a location, rather than the location itself). If provided then this overrides the value provided on the availability resourceService type (Example)',
'specialty', 'Σ', '0..*', 'CodeableConcept', 'The specialty of a practitioner that would be required to perform the service requested in this appointmentPractice Setting Code Value Set (Preferred)',
'appointmentType', 'Σ', '0..1', 'CodeableConcept', 'The style of appointment or patient that may be booked in the slot (not service type)v2 Appointment Reason Codes (Preferred)',
'schedule', 'Σ', '1..1', 'Reference(Schedule)', 'The schedule resource that this slot defines an interval of status information',
'status', 'Σ', '1..1', 'code', 'busy | free | busy-unavailable | busy-tentative | entered-in-errorSlotStatus (Required)',
'start', 'Σ', '1..1', 'instant', 'Date/Time that the slot is to begin',
'end', 'Σ', '1..1', 'instant', 'Date/Time that the slot is to conclude',
'overbooked', '', '0..1', 'boolean', 'This slot has already been overbooked, appointments are unlikely to be accepted for this time',
'comment', '', '0..1', 'string', 'Comments on the slot to describe any extended information. Such as custom constraints on the slot',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Slot', '',
'Slot.serviceCategory', 'Max Cardinality changed from 1 to *',
'Slot.status', 'Change value set from http://hl7.org/fhir/ValueSet/slotstatus to http://hl7.org/fhir/ValueSet/slotstatus|4.0.1',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Slot.serviceCategory', '', 'Example', 'ServiceCategory',
'Slot.serviceType', '', 'Example', 'ServiceType',
'Slot.specialty', 'Additional details about where the content was created (e.g. clinical specialty).', 'Preferred', 'PracticeSettingCodeValueSet',
'Slot.appointmentType', '', 'Preferred', 'v2.0276',
'Slot.status', 'The free/busy status of the slot.', 'Required', 'SlotStatus',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'appointment-type', 'token', 'The style of appointment or patient that may be booked in the slot (not service type)', 'Slot.appointmentType', '',
'identifier', 'token', 'A Slot Identifier', 'Slot.identifier', '',
'schedule', 'reference', 'The Schedule Resource that we are seeking a slot within', 'Slot.schedule(Schedule)', '',
'service-category', 'token', 'A broad categorization of the service that is to be performed during this appointment', 'Slot.serviceCategory', '',
'service-type', 'token', 'The type of appointments that can be booked into the slot', 'Slot.serviceType', '',
'specialty', 'token', 'The specialty of a practitioner that would be required to perform the service requested in this appointment', 'Slot.specialty', '',
'start', 'date', 'Appointment date/time.', 'Slot.start', '',
'status', 'token', 'The free/busy status of the appointment', 'Slot.status', '',
)


