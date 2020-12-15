df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'HealthcareService', 'TU', '', 'DomainResource', 'The details of a healthcare service available at a locationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External identifiers for this item',
'active', '?!Σ', '0..1', 'boolean', 'Whether this HealthcareService record is in active use',
'providedBy', 'Σ', '0..1', 'Reference(Organization)', 'Organization that provides this service',
'category', 'Σ', '0..*', 'CodeableConcept', 'Broad category of service being performed or deliveredService category (Example)',
'type', 'Σ', '0..*', 'CodeableConcept', 'Type of service that may be delivered or performedService type (Example)',
'specialty', 'Σ', '0..*', 'CodeableConcept', 'Specialties handled by the HealthcareServicePractice Setting Code Value Set (Preferred)',
'location', 'Σ', '0..*', 'Reference(Location)', 'Location(s) where service may be provided',
'name', 'Σ', '0..1', 'string', 'Description of service as presented to a consumer while searching',
'comment', 'Σ', '0..1', 'string', 'Additional description and/or any specific issues not covered elsewhere',
'extraDetails', '', '0..1', 'markdown', 'Extra details about the service that can't be placed in the other fields',
'photo', 'Σ', '0..1', 'Attachment', 'Facilitates quick identification of the service',
'telecom', '', '0..*', 'ContactPoint', 'Contacts related to the healthcare service',
'coverageArea', '', '0..*', 'Reference(Location)', 'Location(s) service is intended for/available to',
'serviceProvisionCode', '', '0..*', 'CodeableConcept', 'Conditions under which service is available/offeredServiceProvisionConditions (Example)',
'eligibility', '', '0..*', 'BackboneElement', 'Specific eligibility requirements required to use the service',
'code', '', '0..1', 'CodeableConcept', 'Coded value for the eligibility',
'comment', '', '0..1', 'markdown', 'Describes the eligibility conditions for the service',
'program', '', '0..*', 'CodeableConcept', 'Programs that this service is applicable toProgram (Example)',
'characteristic', '', '0..*', 'CodeableConcept', 'Collection of characteristics (attributes)',
'communication', '', '0..*', 'CodeableConcept', 'The language that this service is offered inCommon Languages (Preferred but limited to AllLanguages)',
'referralMethod', '', '0..*', 'CodeableConcept', 'Ways that the service accepts referralsReferralMethod (Example)',
'appointmentRequired', '', '0..1', 'boolean', 'If an appointment is required for access to this service',
'availableTime', '', '0..*', 'BackboneElement', 'Times the Service Site is available',
'daysOfWeek', '', '0..*', 'code', 'mon | tue | wed | thu | fri | sat | sunDaysOfWeek (Required)',
'allDay', '', '0..1', 'boolean', 'Always available? e.g. 24 hour service',
'availableStartTime', '', '0..1', 'time', 'Opening time of day (ignored if allDay = true)',
'availableEndTime', '', '0..1', 'time', 'Closing time of day (ignored if allDay = true)',
'notAvailable', '', '0..*', 'BackboneElement', 'Not available during this time due to provided reason',
'description', '', '1..1', 'string', 'Reason presented to the user explaining why time not available',
'during', '', '0..1', 'Period', 'Service not available from this date',
'availabilityExceptions', '', '0..1', 'string', 'Description of availability exceptions',
'endpoint', '', '0..*', 'Reference(Endpoint)', 'Technical endpoints providing access to electronic services operated for the healthcare service',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'HealthcareService', '',
'HealthcareService.active', 'Default Value "true" removed',
'HealthcareService.category', 'Max Cardinality changed from 1 to *',
'HealthcareService.extraDetails', 'Type changed from string to markdown',
'HealthcareService.eligibility', 'Max Cardinality changed from 1 to *
        Type changed from CodeableConcept to BackboneElement',
'HealthcareService.eligibility.code', 'Added Element',
'HealthcareService.eligibility.comment', 'Added Element',
'HealthcareService.program', 'Added Element',
'HealthcareService.communication', 'Added Element',
'HealthcareService.availableTime.daysOfWeek', 'Change value set from http://hl7.org/fhir/ValueSet/days-of-week to http://hl7.org/fhir/ValueSet/days-of-week|4.0.1',
'HealthcareService.eligibilityNote', 'deleted',
'HealthcareService.programName', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'HealthcareService', 'TU', '', 'DomainResource', 'The details of a healthcare service available at a locationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External identifiers for this item',
'active', '?!Σ', '0..1', 'boolean', 'Whether this HealthcareService record is in active use',
'providedBy', 'Σ', '0..1', 'Reference(Organization)', 'Organization that provides this service',
'category', 'Σ', '0..*', 'CodeableConcept', 'Broad category of service being performed or deliveredService category (Example)',
'type', 'Σ', '0..*', 'CodeableConcept', 'Type of service that may be delivered or performedService type (Example)',
'specialty', 'Σ', '0..*', 'CodeableConcept', 'Specialties handled by the HealthcareServicePractice Setting Code Value Set (Preferred)',
'location', 'Σ', '0..*', 'Reference(Location)', 'Location(s) where service may be provided',
'name', 'Σ', '0..1', 'string', 'Description of service as presented to a consumer while searching',
'comment', 'Σ', '0..1', 'string', 'Additional description and/or any specific issues not covered elsewhere',
'extraDetails', '', '0..1', 'markdown', 'Extra details about the service that can't be placed in the other fields',
'photo', 'Σ', '0..1', 'Attachment', 'Facilitates quick identification of the service',
'telecom', '', '0..*', 'ContactPoint', 'Contacts related to the healthcare service',
'coverageArea', '', '0..*', 'Reference(Location)', 'Location(s) service is intended for/available to',
'serviceProvisionCode', '', '0..*', 'CodeableConcept', 'Conditions under which service is available/offeredServiceProvisionConditions (Example)',
'eligibility', '', '0..*', 'BackboneElement', 'Specific eligibility requirements required to use the service',
'code', '', '0..1', 'CodeableConcept', 'Coded value for the eligibility',
'comment', '', '0..1', 'markdown', 'Describes the eligibility conditions for the service',
'program', '', '0..*', 'CodeableConcept', 'Programs that this service is applicable toProgram (Example)',
'characteristic', '', '0..*', 'CodeableConcept', 'Collection of characteristics (attributes)',
'communication', '', '0..*', 'CodeableConcept', 'The language that this service is offered inCommon Languages (Preferred but limited to AllLanguages)',
'referralMethod', '', '0..*', 'CodeableConcept', 'Ways that the service accepts referralsReferralMethod (Example)',
'appointmentRequired', '', '0..1', 'boolean', 'If an appointment is required for access to this service',
'availableTime', '', '0..*', 'BackboneElement', 'Times the Service Site is available',
'daysOfWeek', '', '0..*', 'code', 'mon | tue | wed | thu | fri | sat | sunDaysOfWeek (Required)',
'allDay', '', '0..1', 'boolean', 'Always available? e.g. 24 hour service',
'availableStartTime', '', '0..1', 'time', 'Opening time of day (ignored if allDay = true)',
'availableEndTime', '', '0..1', 'time', 'Closing time of day (ignored if allDay = true)',
'notAvailable', '', '0..*', 'BackboneElement', 'Not available during this time due to provided reason',
'description', '', '1..1', 'string', 'Reason presented to the user explaining why time not available',
'during', '', '0..1', 'Period', 'Service not available from this date',
'availabilityExceptions', '', '0..1', 'string', 'Description of availability exceptions',
'endpoint', '', '0..*', 'Reference(Endpoint)', 'Technical endpoints providing access to electronic services operated for the healthcare service',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'HealthcareService', '',
'HealthcareService.active', 'Default Value "true" removed',
'HealthcareService.category', 'Max Cardinality changed from 1 to *',
'HealthcareService.extraDetails', 'Type changed from string to markdown',
'HealthcareService.eligibility', 'Max Cardinality changed from 1 to *
        Type changed from CodeableConcept to BackboneElement',
'HealthcareService.eligibility.code', 'Added Element',
'HealthcareService.eligibility.comment', 'Added Element',
'HealthcareService.program', 'Added Element',
'HealthcareService.communication', 'Added Element',
'HealthcareService.availableTime.daysOfWeek', 'Change value set from http://hl7.org/fhir/ValueSet/days-of-week to http://hl7.org/fhir/ValueSet/days-of-week|4.0.1',
'HealthcareService.eligibilityNote', 'deleted',
'HealthcareService.programName', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'HealthcareService.category', 'A category of the service(s) that could be provided.', 'Example', 'ServiceCategory',
'HealthcareService.type', 'Additional details about where the content was created (e.g. clinical specialty).', 'Example', 'ServiceType',
'HealthcareService.specialty', 'A specialty that a healthcare service may provide.', 'Preferred', 'PracticeSettingCodeValueSet',
'HealthcareService.serviceProvisionCode', 'The code(s) that detail the conditions under which the healthcare service is available/offered.', 'Example', 'ServiceProvisionConditions',
'HealthcareService.eligibility.code', 'Coded values underwhich a specific service is made available.', 'Unknown', 'No details provided yet',
'HealthcareService.program', 'Government or local programs that this service applies to.', 'Example', 'Program',
'HealthcareService.characteristic', 'A custom attribute that could be provided at a service (e.g. Wheelchair accessibiliy).', 'Unknown', 'No details provided yet',
'HealthcareService.communication', 'A human language.', 'Preferred, but limited to AllLanguages', 'CommonLanguages',
'HealthcareService.referralMethod', 'The methods of referral can be used when referring to a specific HealthCareService resource.', 'Example', 'ReferralMethod',
'HealthcareService.availableTime.daysOfWeek', 'The days of the week.', 'Required', 'DaysOfWeek',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'active', 'token', 'The Healthcare Service is currently marked as active', 'HealthcareService.active', '',
'characteristic', 'token', 'One of the HealthcareService's characteristics', 'HealthcareService.characteristic', '',
'coverage-area', 'reference', 'Location(s) service is intended for/available to', 'HealthcareService.coverageArea(Location)', '',
'endpoint', 'reference', 'Technical endpoints providing access to electronic services operated for the healthcare service', 'HealthcareService.endpoint(Endpoint)', '',
'identifier', 'token', 'External identifiers for this item', 'HealthcareService.identifier', '',
'location', 'reference', 'The location of the Healthcare Service', 'HealthcareService.location(Location)', '',
'name', 'string', 'A portion of the Healthcare service name', 'HealthcareService.name', '',
'organization', 'reference', 'The organization that provides this Healthcare Service', 'HealthcareService.providedBy(Organization)', '',
'program', 'token', 'One of the Programs supported by this HealthcareService', 'HealthcareService.program', '',
'service-category', 'token', 'Service Category of the Healthcare Service', 'HealthcareService.category', '',
'service-type', 'token', 'The type of service provided by this healthcare service', 'HealthcareService.type', '',
'specialty', 'token', 'The specialty of the service provided by this healthcare service', 'HealthcareService.specialty', '',
)


