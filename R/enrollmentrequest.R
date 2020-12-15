df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Financial Management  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'EnrollmentRequest', 'TU', '', 'DomainResource', 'Enroll in coverageElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier',
'status', '?!Σ', '0..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'created', '', '0..1', 'dateTime', 'Creation date',
'insurer', '', '0..1', 'Reference(Organization)', 'Target',
'provider', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Responsible practitioner',
'candidate', '', '0..1', 'Reference(Patient)', 'The subject to be enrolled',
'coverage', '', '0..1', 'Reference(Coverage)', 'Insurance information',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'EnrollmentRequest', '',
'EnrollmentRequest.status', 'Change value set from http://hl7.org/fhir/ValueSet/fm-status to http://hl7.org/fhir/ValueSet/fm-status|4.0.1',
'EnrollmentRequest.provider', 'Type Reference: Added Target Types PractitionerRole, Organization',
'EnrollmentRequest.candidate', 'Renamed from subject to candidate',
'EnrollmentRequest.organization', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'EnrollmentRequest', 'TU', '', 'DomainResource', 'Enroll in coverageElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier',
'status', '?!Σ', '0..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'created', '', '0..1', 'dateTime', 'Creation date',
'insurer', '', '0..1', 'Reference(Organization)', 'Target',
'provider', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Responsible practitioner',
'candidate', '', '0..1', 'Reference(Patient)', 'The subject to be enrolled',
'coverage', '', '0..1', 'Reference(Coverage)', 'Insurance information',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'EnrollmentRequest', '',
'EnrollmentRequest.status', 'Change value set from http://hl7.org/fhir/ValueSet/fm-status to http://hl7.org/fhir/ValueSet/fm-status|4.0.1',
'EnrollmentRequest.provider', 'Type Reference: Added Target Types PractitionerRole, Organization',
'EnrollmentRequest.candidate', 'Renamed from subject to candidate',
'EnrollmentRequest.organization', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'EnrollmentRequest.status', 'A code specifying the state of the resource instance.', 'Required', 'FinancialResourceStatusCodes',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'identifier', 'token', 'The business identifier of the Enrollment', 'EnrollmentRequest.identifier', '',
'patient', 'reference', 'The party to be enrolled', 'EnrollmentRequest.candidate(Patient)', '',
'status', 'token', 'The status of the enrollment', 'EnrollmentRequest.status', '',
'subject', 'reference', 'The party to be enrolled', 'EnrollmentRequest.candidate(Patient)', '',
)


