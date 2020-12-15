df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Care  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Flag', 'TU', '', 'DomainResource', 'Key information to flag to healthcare providersElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier',
'status', '?!Σ', '1..1', 'code', 'active | inactive | entered-in-errorFlagStatus (Required)',
'category', 'Σ', '0..*', 'CodeableConcept', 'Clinical, administrative, etc.Flag Category (Example)',
'code', 'Σ', '1..1', 'CodeableConcept', 'Coded or textual message to display to userFlag Code (Example)',
'subject', 'Σ', '1..1', 'Reference(Patient | Location | Group | Organization | Practitioner | PlanDefinition | Medication | Procedure)', 'Who/What is flag about?',
'period', 'Σ', '0..1', 'Period', 'Time period when flag is active',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Alert relevant during encounter',
'author', 'Σ', '0..1', 'Reference(Device | Organization | Patient | Practitioner | PractitionerRole)', 'Flag creator',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Flag', '',
'Flag.status', 'Change value set from http://hl7.org/fhir/ValueSet/flag-status to http://hl7.org/fhir/ValueSet/flag-status|4.0.1',
'Flag.category', 'Max Cardinality changed from 1 to *',
'Flag.author', 'Type Reference: Added Target Type PractitionerRole',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Flag', 'TU', '', 'DomainResource', 'Key information to flag to healthcare providersElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier',
'status', '?!Σ', '1..1', 'code', 'active | inactive | entered-in-errorFlagStatus (Required)',
'category', 'Σ', '0..*', 'CodeableConcept', 'Clinical, administrative, etc.Flag Category (Example)',
'code', 'Σ', '1..1', 'CodeableConcept', 'Coded or textual message to display to userFlag Code (Example)',
'subject', 'Σ', '1..1', 'Reference(Patient | Location | Group | Organization | Practitioner | PlanDefinition | Medication | Procedure)', 'Who/What is flag about?',
'period', 'Σ', '0..1', 'Period', 'Time period when flag is active',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Alert relevant during encounter',
'author', 'Σ', '0..1', 'Reference(Device | Organization | Patient | Practitioner | PractitionerRole)', 'Flag creator',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Flag', '',
'Flag.status', 'Change value set from http://hl7.org/fhir/ValueSet/flag-status to http://hl7.org/fhir/ValueSet/flag-status|4.0.1',
'Flag.category', 'Max Cardinality changed from 1 to *',
'Flag.author', 'Type Reference: Added Target Type PractitionerRole',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Flag.status', 'Indicates whether this flag is active and needs to be displayed to a user, or whether it is no longer needed or was entered in error.', 'Required', 'FlagStatus',
'Flag.category', 'A general category for flags for filtering/display purposes.', 'Example', 'FlagCategory',
'Flag.code', 'Detail codes identifying specific flagged issues.', 'Example', 'FlagCode',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'author', 'reference', 'Flag creator', 'Flag.author(Practitioner, Organization, Device, Patient, PractitionerRole)', '',
'date', 'date', 'Time period when flag is active', 'Flag.period', '17 Resources',
'encounter', 'reference', 'Alert relevant during encounter', 'Flag.encounter(Encounter)', '12 Resources',
'identifier', 'token', 'Business identifier', 'Flag.identifier', '',
'patient', 'reference', 'The identity of a subject to list flags for', 'Flag.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'subject', 'reference', 'The identity of a subject to list flags for', 'Flag.subject(Practitioner, Group, Organization, Medication, Patient, PlanDefinition, Procedure, Location)', '',
)


