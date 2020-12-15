df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'RelatedPerson', 'TU', '', 'DomainResource', 'A person that is related to a patient, but who is not a direct target of careElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'A human identifier for this person',
'active', '?!Σ', '0..1', 'boolean', 'Whether this related person's record is in active use',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'The patient this person is related to',
'relationship', 'Σ', '0..*', 'CodeableConcept', 'The nature of the relationshipPatient relationship type (Preferred)',
'name', 'Σ', '0..*', 'HumanName', 'A name associated with the person',
'telecom', 'Σ', '0..*', 'ContactPoint', 'A contact detail for the person',
'gender', 'Σ', '0..1', 'code', 'male | female | other | unknownAdministrativeGender (Required)',
'birthDate', 'Σ', '0..1', 'date', 'The date on which the related person was born',
'address', 'Σ', '0..*', 'Address', 'Address where the related person can be contacted or visited',
'photo', '', '0..*', 'Attachment', 'Image of the person',
'period', '', '0..1', 'Period', 'Period of time that this relationship is considered valid',
'communication', '', '0..*', 'BackboneElement', 'A language which may be used to communicate with about the patient's health',
'language', '', '1..1', 'CodeableConcept', 'The language which can be used to communicate with the patient about his or her healthCommon Languages (Preferred but limited to AllLanguages)',
'preferred', '', '0..1', 'boolean', 'Language preference indicator',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'RelatedPerson', '',
'RelatedPerson.active', 'Default Value "true" removed',
'RelatedPerson.relationship', 'Max Cardinality changed from 1 to *',
'RelatedPerson.gender', 'Change value set from http://hl7.org/fhir/ValueSet/administrative-gender to http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1',
'RelatedPerson.communication', 'Added Element',
'RelatedPerson.communication.language', 'Added Mandatory Element',
'RelatedPerson.communication.preferred', 'Added Element',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'RelatedPerson', 'TU', '', 'DomainResource', 'A person that is related to a patient, but who is not a direct target of careElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'A human identifier for this person',
'active', '?!Σ', '0..1', 'boolean', 'Whether this related person's record is in active use',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'The patient this person is related to',
'relationship', 'Σ', '0..*', 'CodeableConcept', 'The nature of the relationshipPatient relationship type (Preferred)',
'name', 'Σ', '0..*', 'HumanName', 'A name associated with the person',
'telecom', 'Σ', '0..*', 'ContactPoint', 'A contact detail for the person',
'gender', 'Σ', '0..1', 'code', 'male | female | other | unknownAdministrativeGender (Required)',
'birthDate', 'Σ', '0..1', 'date', 'The date on which the related person was born',
'address', 'Σ', '0..*', 'Address', 'Address where the related person can be contacted or visited',
'photo', '', '0..*', 'Attachment', 'Image of the person',
'period', '', '0..1', 'Period', 'Period of time that this relationship is considered valid',
'communication', '', '0..*', 'BackboneElement', 'A language which may be used to communicate with about the patient's health',
'language', '', '1..1', 'CodeableConcept', 'The language which can be used to communicate with the patient about his or her healthCommon Languages (Preferred but limited to AllLanguages)',
'preferred', '', '0..1', 'boolean', 'Language preference indicator',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'RelatedPerson', '',
'RelatedPerson.active', 'Default Value "true" removed',
'RelatedPerson.relationship', 'Max Cardinality changed from 1 to *',
'RelatedPerson.gender', 'Change value set from http://hl7.org/fhir/ValueSet/administrative-gender to http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1',
'RelatedPerson.communication', 'Added Element',
'RelatedPerson.communication.language', 'Added Mandatory Element',
'RelatedPerson.communication.preferred', 'Added Element',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'RelatedPerson.relationship', 'The nature of the relationship between a patient and the related person.', 'Preferred', 'PatientRelationshipType',
'RelatedPerson.gender', 'The gender of a person used for administrative purposes.', 'Required', 'AdministrativeGender',
'RelatedPerson.communication.language', 'A human language.', 'Preferred, but limited to AllLanguages', 'CommonLanguages',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'active', 'token', 'Indicates if the related person record is active', 'RelatedPerson.active', '',
'address', 'string', 'A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text', 'RelatedPerson.address', '3 Resources',
'address-city', 'string', 'A city specified in an address', 'RelatedPerson.address.city', '3 Resources',
'address-country', 'string', 'A country specified in an address', 'RelatedPerson.address.country', '3 Resources',
'address-postalcode', 'string', 'A postal code specified in an address', 'RelatedPerson.address.postalCode', '3 Resources',
'address-state', 'string', 'A state specified in an address', 'RelatedPerson.address.state', '3 Resources',
'address-use', 'token', 'A use code specified in an address', 'RelatedPerson.address.use', '3 Resources',
'birthdate', 'date', 'The Related Person's date of birth', 'RelatedPerson.birthDate', '2 Resources',
'email', 'token', 'A value in an email contact', 'RelatedPerson.telecom.where(system='email')', '4 Resources',
'gender', 'token', 'Gender of the related person', 'RelatedPerson.gender', '3 Resources',
'identifier', 'token', 'An Identifier of the RelatedPerson', 'RelatedPerson.identifier', '',
'name', 'string', 'A server defined search that may match any of the string fields in the HumanName, including family, give, prefix, suffix, suffix, and/or text', 'RelatedPerson.name', '',
'patient', 'reference', 'The patient this related person is related to', 'RelatedPerson.patient(Patient)', '',
'phone', 'token', 'A value in a phone contact', 'RelatedPerson.telecom.where(system='phone')', '4 Resources',
'phonetic', 'string', 'A portion of name using some kind of phonetic matching algorithm', 'RelatedPerson.name', '3 Resources',
'relationship', 'token', 'The relationship between the patient and the relatedperson', 'RelatedPerson.relationship', '',
'telecom', 'token', 'The value in any kind of contact', 'RelatedPerson.telecom', '4 Resources',
)


