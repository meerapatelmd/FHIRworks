df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'FHIR Infrastructure  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Not Classified', 'Compartments: Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Basic', 'ΣTU', '', 'DomainResource', 'Resource for non-supported contentElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier',
'code', '?!Σ', '1..1', 'CodeableConcept', 'Kind of ResourceBasic Resource Types (Example)',
'subject', 'Σ', '0..1', 'Reference(Any)', 'Identifies the focus of this resource',
'created', 'Σ', '0..1', 'date', 'When created',
'author', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Patient | RelatedPerson | Organization)', 'Who created',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Basic', '',
'Basic.author', 'Type Reference: Added Target Types PractitionerRole, Organization',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Basic', 'ΣTU', '', 'DomainResource', 'Resource for non-supported contentElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier',
'code', '?!Σ', '1..1', 'CodeableConcept', 'Kind of ResourceBasic Resource Types (Example)',
'subject', 'Σ', '0..1', 'Reference(Any)', 'Identifies the focus of this resource',
'created', 'Σ', '0..1', 'date', 'When created',
'author', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Patient | RelatedPerson | Organization)', 'Who created',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Basic', '',
'Basic.author', 'Type Reference: Added Target Types PractitionerRole, Organization',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Basic.code', 'Codes for identifying types of resources not yet defined by FHIR.', 'Example', 'BasicResourceTypes',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'author', 'reference', 'Who created', 'Basic.author(Practitioner, Organization, Patient, PractitionerRole, RelatedPerson)', '',
'code', 'token', 'Kind of Resource', 'Basic.code', '',
'created', 'date', 'When created', 'Basic.created', '',
'identifier', 'token', 'Business identifier', 'Basic.identifier', '',
'patient', 'reference', 'Identifies the focus of this resource', 'Basic.subject.where(resolve() is Patient)(Patient)', '',
'subject', 'reference', 'Identifies the focus of this resource', 'Basic.subject(Any)', '',
)


