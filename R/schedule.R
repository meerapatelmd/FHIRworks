df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Business', 'Compartments: Device, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Schedule', 'TU', '', 'DomainResource', 'A container for slots of time that may be available for booking appointmentsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Ids for this item',
'active', '?!Σ', '0..1', 'boolean', 'Whether this schedule is in active use',
'serviceCategory', 'Σ', '0..*', 'CodeableConcept', 'High-level categoryService category (Example)',
'serviceType', 'Σ', '0..*', 'CodeableConcept', 'Specific serviceService type (Example)',
'specialty', 'Σ', '0..*', 'CodeableConcept', 'Type of specialty neededPractice Setting Code Value Set (Preferred)',
'actor', 'Σ', '1..*', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson | Device | HealthcareService | Location)', 'Resource(s) that availability information is being provided for',
'planningHorizon', 'Σ', '0..1', 'Period', 'Period of time covered by schedule',
'comment', '', '0..1', 'string', 'Comments on availability',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Schedule', '',
'Schedule.active', 'Default Value "true" removed',
'Schedule.serviceCategory', 'Max Cardinality changed from 1 to *',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Schedule', 'TU', '', 'DomainResource', 'A container for slots of time that may be available for booking appointmentsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Ids for this item',
'active', '?!Σ', '0..1', 'boolean', 'Whether this schedule is in active use',
'serviceCategory', 'Σ', '0..*', 'CodeableConcept', 'High-level categoryService category (Example)',
'serviceType', 'Σ', '0..*', 'CodeableConcept', 'Specific serviceService type (Example)',
'specialty', 'Σ', '0..*', 'CodeableConcept', 'Type of specialty neededPractice Setting Code Value Set (Preferred)',
'actor', 'Σ', '1..*', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson | Device | HealthcareService | Location)', 'Resource(s) that availability information is being provided for',
'planningHorizon', 'Σ', '0..1', 'Period', 'Period of time covered by schedule',
'comment', '', '0..1', 'string', 'Comments on availability',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Schedule', '',
'Schedule.active', 'Default Value "true" removed',
'Schedule.serviceCategory', 'Max Cardinality changed from 1 to *',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Schedule.serviceCategory', '', 'Example', 'ServiceCategory',
'Schedule.serviceType', '', 'Example', 'ServiceType',
'Schedule.specialty', 'Additional details about where the content was created (e.g. clinical specialty).', 'Preferred', 'PracticeSettingCodeValueSet',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'active', 'token', 'Is the schedule in active use', 'Schedule.active', '',
'actor', 'reference', 'The individual(HealthcareService, Practitioner, Location, ...) to find a Schedule for', 'Schedule.actor(Practitioner, Device, Patient, HealthcareService, PractitionerRole, RelatedPerson, Location)', '',
'date', 'date', 'Search for Schedule resources that have a period that contains this date specified', 'Schedule.planningHorizon', '',
'identifier', 'token', 'A Schedule Identifier', 'Schedule.identifier', '',
'service-category', 'token', 'High-level category', 'Schedule.serviceCategory', '',
'service-type', 'token', 'The type of appointments that can be booked into associated slot(s)', 'Schedule.serviceType', '',
'specialty', 'token', 'Type of specialty needed', 'Schedule.specialty', '',
)


