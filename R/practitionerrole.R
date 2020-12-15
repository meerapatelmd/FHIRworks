df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Individual', 'Compartments: Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'PractitionerRole', 'TU', '', 'DomainResource', 'Roles/organizations the practitioner is associated withElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifiers that are specific to a role/location',
'active', 'Σ', '0..1', 'boolean', 'Whether this practitioner role record is in active use',
'period', 'Σ', '0..1', 'Period', 'The period during which the practitioner is authorized to perform in these role(s)',
'practitioner', 'Σ', '0..1', 'Reference(Practitioner)', 'Practitioner that is able to provide the defined services for the organization',
'organization', 'Σ', '0..1', 'Reference(Organization)', 'Organization where the roles are available',
'code', 'Σ', '0..*', 'CodeableConcept', 'Roles which this practitioner may performPractitioner role (Example)',
'specialty', 'Σ', '0..*', 'CodeableConcept', 'Specific specialty of the practitionerPractice Setting Code Value Set (Preferred)',
'location', 'Σ', '0..*', 'Reference(Location)', 'The location(s) at which this practitioner provides care',
'healthcareService', '', '0..*', 'Reference(HealthcareService)', 'The list of healthcare services that this worker provides for this role's Organization/Location(s)',
'telecom', 'Σ', '0..*', 'ContactPoint', 'Contact details that are specific to the role/location/service',
'availableTime', '', '0..*', 'BackboneElement', 'Times the Service Site is available',
'daysOfWeek', '', '0..*', 'code', 'mon | tue | wed | thu | fri | sat | sunDaysOfWeek (Required)',
'allDay', '', '0..1', 'boolean', 'Always available? e.g. 24 hour service',
'availableStartTime', '', '0..1', 'time', 'Opening time of day (ignored if allDay = true)',
'availableEndTime', '', '0..1', 'time', 'Closing time of day (ignored if allDay = true)',
'notAvailable', '', '0..*', 'BackboneElement', 'Not available during this time due to provided reason',
'description', '', '1..1', 'string', 'Reason presented to the user explaining why time not available',
'during', '', '0..1', 'Period', 'Service not available from this date',
'availabilityExceptions', '', '0..1', 'string', 'Description of availability exceptions',
'endpoint', '', '0..*', 'Reference(Endpoint)', 'Technical endpoints providing access to services operated for the practitioner with this role',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'PractitionerRole', '',
'PractitionerRole.active', 'Default Value "true" removed',
'PractitionerRole.availableTime.daysOfWeek', 'Change value set from http://hl7.org/fhir/ValueSet/days-of-week to http://hl7.org/fhir/ValueSet/days-of-week|4.0.1',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'PractitionerRole', 'TU', '', 'DomainResource', 'Roles/organizations the practitioner is associated withElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifiers that are specific to a role/location',
'active', 'Σ', '0..1', 'boolean', 'Whether this practitioner role record is in active use',
'period', 'Σ', '0..1', 'Period', 'The period during which the practitioner is authorized to perform in these role(s)',
'practitioner', 'Σ', '0..1', 'Reference(Practitioner)', 'Practitioner that is able to provide the defined services for the organization',
'organization', 'Σ', '0..1', 'Reference(Organization)', 'Organization where the roles are available',
'code', 'Σ', '0..*', 'CodeableConcept', 'Roles which this practitioner may performPractitioner role (Example)',
'specialty', 'Σ', '0..*', 'CodeableConcept', 'Specific specialty of the practitionerPractice Setting Code Value Set (Preferred)',
'location', 'Σ', '0..*', 'Reference(Location)', 'The location(s) at which this practitioner provides care',
'healthcareService', '', '0..*', 'Reference(HealthcareService)', 'The list of healthcare services that this worker provides for this role's Organization/Location(s)',
'telecom', 'Σ', '0..*', 'ContactPoint', 'Contact details that are specific to the role/location/service',
'availableTime', '', '0..*', 'BackboneElement', 'Times the Service Site is available',
'daysOfWeek', '', '0..*', 'code', 'mon | tue | wed | thu | fri | sat | sunDaysOfWeek (Required)',
'allDay', '', '0..1', 'boolean', 'Always available? e.g. 24 hour service',
'availableStartTime', '', '0..1', 'time', 'Opening time of day (ignored if allDay = true)',
'availableEndTime', '', '0..1', 'time', 'Closing time of day (ignored if allDay = true)',
'notAvailable', '', '0..*', 'BackboneElement', 'Not available during this time due to provided reason',
'description', '', '1..1', 'string', 'Reason presented to the user explaining why time not available',
'during', '', '0..1', 'Period', 'Service not available from this date',
'availabilityExceptions', '', '0..1', 'string', 'Description of availability exceptions',
'endpoint', '', '0..*', 'Reference(Endpoint)', 'Technical endpoints providing access to services operated for the practitioner with this role',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'PractitionerRole', '',
'PractitionerRole.active', 'Default Value "true" removed',
'PractitionerRole.availableTime.daysOfWeek', 'Change value set from http://hl7.org/fhir/ValueSet/days-of-week to http://hl7.org/fhir/ValueSet/days-of-week|4.0.1',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'PractitionerRole.code', 'The role a person plays representing an organization.', 'Example', 'PractitionerRole',
'PractitionerRole.specialty', 'Specific specialty associated with the agency.', 'Preferred', 'PracticeSettingCodeValueSet',
'PractitionerRole.availableTime.daysOfWeek', 'The days of the week.', 'Required', 'DaysOfWeek',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'active', 'token', 'Whether this practitioner role record is in active use', 'PractitionerRole.active', '',
'date', 'date', 'The period during which the practitioner is authorized to perform in these role(s)', 'PractitionerRole.period', '',
'email', 'token', 'A value in an email contact', 'PractitionerRole.telecom.where(system='email')', '4 Resources',
'endpoint', 'reference', 'Technical endpoints providing access to services operated for the practitioner with this role', 'PractitionerRole.endpoint(Endpoint)', '',
'identifier', 'token', 'A practitioner's Identifier', 'PractitionerRole.identifier', '',
'location', 'reference', 'One of the locations at which this practitioner provides care', 'PractitionerRole.location(Location)', '',
'organization', 'reference', 'The identity of the organization the practitioner represents / acts on behalf of', 'PractitionerRole.organization(Organization)', '',
'phone', 'token', 'A value in a phone contact', 'PractitionerRole.telecom.where(system='phone')', '4 Resources',
'practitioner', 'reference', 'Practitioner that is able to provide the defined services for the organization', 'PractitionerRole.practitioner(Practitioner)', '',
'role', 'token', 'The practitioner can perform this role at for the organization', 'PractitionerRole.code', '',
'service', 'reference', 'The list of healthcare services that this worker provides for this role's Organization/Location(s)', 'PractitionerRole.healthcareService(HealthcareService)', '',
'specialty', 'token', 'The practitioner has this specialty at an organization', 'PractitionerRole.specialty', '',
'telecom', 'token', 'The value in any kind of contact', 'PractitionerRole.telecom', '4 Resources',
)


