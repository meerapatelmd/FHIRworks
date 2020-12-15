df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Financial Management  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Patient', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'EnrollmentResponse', 'TU', '', 'DomainResource', 'EnrollmentResponse resourceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier',
'status', '?!Σ', '0..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'request', '', '0..1', 'Reference(EnrollmentRequest)', 'Claim reference',
'outcome', '', '0..1', 'code', 'queued | complete | error | partialRemittanceOutcome (Required)',
'disposition', '', '0..1', 'string', 'Disposition Message',
'created', '', '0..1', 'dateTime', 'Creation date',
'organization', '', '0..1', 'Reference(Organization)', 'Insurer',
'requestProvider', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Responsible practitioner',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'EnrollmentResponse', '',
'EnrollmentResponse.status', 'Change value set from http://hl7.org/fhir/ValueSet/fm-status to http://hl7.org/fhir/ValueSet/fm-status|4.0.1',
'EnrollmentResponse.outcome', 'Type changed from CodeableConcept to code
        Change value set from http://hl7.org/fhir/ValueSet/remittance-outcome to http://hl7.org/fhir/ValueSet/remittance-outcome|4.0.1',
'EnrollmentResponse.requestProvider', 'Type Reference: Added Target Types PractitionerRole, Organization',
'EnrollmentResponse.requestOrganization', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'EnrollmentResponse', 'TU', '', 'DomainResource', 'EnrollmentResponse resourceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier',
'status', '?!Σ', '0..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'request', '', '0..1', 'Reference(EnrollmentRequest)', 'Claim reference',
'outcome', '', '0..1', 'code', 'queued | complete | error | partialRemittanceOutcome (Required)',
'disposition', '', '0..1', 'string', 'Disposition Message',
'created', '', '0..1', 'dateTime', 'Creation date',
'organization', '', '0..1', 'Reference(Organization)', 'Insurer',
'requestProvider', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Responsible practitioner',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'EnrollmentResponse', '',
'EnrollmentResponse.status', 'Change value set from http://hl7.org/fhir/ValueSet/fm-status to http://hl7.org/fhir/ValueSet/fm-status|4.0.1',
'EnrollmentResponse.outcome', 'Type changed from CodeableConcept to code
        Change value set from http://hl7.org/fhir/ValueSet/remittance-outcome to http://hl7.org/fhir/ValueSet/remittance-outcome|4.0.1',
'EnrollmentResponse.requestProvider', 'Type Reference: Added Target Types PractitionerRole, Organization',
'EnrollmentResponse.requestOrganization', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'EnrollmentResponse.status', 'A code specifying the state of the resource instance.', 'Required', 'FinancialResourceStatusCodes',
'EnrollmentResponse.outcome', 'The outcome of the processing.', 'Required', 'RemittanceOutcome',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'identifier', 'token', 'The business identifier of the EnrollmentResponse', 'EnrollmentResponse.identifier', '',
'request', 'reference', 'The reference to the claim', 'EnrollmentResponse.request(EnrollmentRequest)', '',
'status', 'token', 'The status of the enrollment response', 'EnrollmentResponse.status', '',
)


