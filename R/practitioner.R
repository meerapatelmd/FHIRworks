df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Individual', 'Compartments: Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Practitioner', 'TU', '', 'DomainResource', 'A person with a  formal responsibility in the provisioning of healthcare or related servicesElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'An identifier for the person as this agent',
'active', 'Σ', '0..1', 'boolean', 'Whether this practitioner's record is in active use',
'name', 'Σ', '0..*', 'HumanName', 'The name(s) associated with the practitioner',
'telecom', 'Σ', '0..*', 'ContactPoint', 'A contact detail for the practitioner (that apply to all roles)',
'address', 'Σ', '0..*', 'Address', 'Address(es) of the practitioner that are not role specific (typically home address)',
'gender', 'Σ', '0..1', 'code', 'male | female | other | unknownAdministrativeGender (Required)',
'birthDate', 'Σ', '0..1', 'date', 'The date  on which the practitioner was born',
'photo', '', '0..*', 'Attachment', 'Image of the person',
'qualification', '', '0..*', 'BackboneElement', 'Certification, licenses, or training pertaining to the provision of care',
'identifier', '', '0..*', 'Identifier', 'An identifier for this qualification for the practitioner',
'code', '', '1..1', 'CodeableConcept', 'Coded representation of the qualificationv2 table 0360, Version 2.7 (Example)',
'period', '', '0..1', 'Period', 'Period during which the qualification is valid',
'issuer', '', '0..1', 'Reference(Organization)', 'Organization that regulates and issues the qualification',
'communication', '', '0..*', 'CodeableConcept', 'A language the practitioner can use in patient communicationCommon Languages (Preferred but limited to AllLanguages)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Practitioner', '',
'Practitioner.active', 'Default Value "true" removed',
'Practitioner.gender', 'Change value set from http://hl7.org/fhir/ValueSet/administrative-gender to http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1',
'Practitioner.communication', 'Change binding strength from extensible to preferred',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Practitioner', 'TU', '', 'DomainResource', 'A person with a  formal responsibility in the provisioning of healthcare or related servicesElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'An identifier for the person as this agent',
'active', 'Σ', '0..1', 'boolean', 'Whether this practitioner's record is in active use',
'name', 'Σ', '0..*', 'HumanName', 'The name(s) associated with the practitioner',
'telecom', 'Σ', '0..*', 'ContactPoint', 'A contact detail for the practitioner (that apply to all roles)',
'address', 'Σ', '0..*', 'Address', 'Address(es) of the practitioner that are not role specific (typically home address)',
'gender', 'Σ', '0..1', 'code', 'male | female | other | unknownAdministrativeGender (Required)',
'birthDate', 'Σ', '0..1', 'date', 'The date  on which the practitioner was born',
'photo', '', '0..*', 'Attachment', 'Image of the person',
'qualification', '', '0..*', 'BackboneElement', 'Certification, licenses, or training pertaining to the provision of care',
'identifier', '', '0..*', 'Identifier', 'An identifier for this qualification for the practitioner',
'code', '', '1..1', 'CodeableConcept', 'Coded representation of the qualificationv2 table 0360, Version 2.7 (Example)',
'period', '', '0..1', 'Period', 'Period during which the qualification is valid',
'issuer', '', '0..1', 'Reference(Organization)', 'Organization that regulates and issues the qualification',
'communication', '', '0..*', 'CodeableConcept', 'A language the practitioner can use in patient communicationCommon Languages (Preferred but limited to AllLanguages)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Practitioner', '',
'Practitioner.active', 'Default Value "true" removed',
'Practitioner.gender', 'Change value set from http://hl7.org/fhir/ValueSet/administrative-gender to http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1',
'Practitioner.communication', 'Change binding strength from extensible to preferred',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Practitioner.gender', 'The gender of a person used for administrative purposes.', 'Required', 'AdministrativeGender',
'Practitioner.qualification.code', 'Specific qualification the practitioner has to provide a service.', 'Example', 'v2.0360.2.7',
'Practitioner.communication', 'A human language.', 'Preferred, but limited to AllLanguages', 'CommonLanguages',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'active', 'token', 'Whether the practitioner record is active', 'Practitioner.active', '',
'address', 'string', 'A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text', 'Practitioner.address', '3 Resources',
'address-city', 'string', 'A city specified in an address', 'Practitioner.address.city', '3 Resources',
'address-country', 'string', 'A country specified in an address', 'Practitioner.address.country', '3 Resources',
'address-postalcode', 'string', 'A postalCode specified in an address', 'Practitioner.address.postalCode', '3 Resources',
'address-state', 'string', 'A state specified in an address', 'Practitioner.address.state', '3 Resources',
'address-use', 'token', 'A use code specified in an address', 'Practitioner.address.use', '3 Resources',
'communication', 'token', 'One of the languages that the practitioner can communicate with', 'Practitioner.communication', '',
'email', 'token', 'A value in an email contact', 'Practitioner.telecom.where(system='email')', '4 Resources',
'family', 'string', 'A portion of the family name', 'Practitioner.name.family', '1 Resources',
'gender', 'token', 'Gender of the practitioner', 'Practitioner.gender', '3 Resources',
'given', 'string', 'A portion of the given name', 'Practitioner.name.given', '1 Resources',
'identifier', 'token', 'A practitioner's Identifier', 'Practitioner.identifier', '',
'name', 'string', 'A server defined search that may match any of the string fields in the HumanName, including family, give, prefix, suffix, suffix, and/or text', 'Practitioner.name', '',
'phone', 'token', 'A value in a phone contact', 'Practitioner.telecom.where(system='phone')', '4 Resources',
'phonetic', 'string', 'A portion of either family or given name using some kind of phonetic matching algorithm', 'Practitioner.name', '3 Resources',
'telecom', 'token', 'The value in any kind of contact', 'Practitioner.telecom', '4 Resources',
)


