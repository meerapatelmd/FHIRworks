df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Person', 'TU', '', 'DomainResource', 'A generic person recordElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'A human identifier for this person',
'name', 'Σ', '0..*', 'HumanName', 'A name associated with the person',
'telecom', 'Σ', '0..*', 'ContactPoint', 'A contact detail for the person',
'gender', 'Σ', '0..1', 'code', 'male | female | other | unknownAdministrativeGender (Required)',
'birthDate', 'Σ', '0..1', 'date', 'The date on which the person was born',
'address', '', '0..*', 'Address', 'One or more addresses for the person',
'photo', '', '0..1', 'Attachment', 'Image of the person',
'managingOrganization', 'Σ', '0..1', 'Reference(Organization)', 'The organization that is the custodian of the person record',
'active', '?!Σ', '0..1', 'boolean', 'This person's record is in active use',
'link', '', '0..*', 'BackboneElement', 'Link to a resource that concerns the same actual person',
'target', '', '1..1', 'Reference(Patient | Practitioner | RelatedPerson | Person)', 'The resource to which this actual person is associated',
'assurance', '', '0..1', 'code', 'level1 | level2 | level3 | level4IdentityAssuranceLevel (Required)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Person', '',
'Person.gender', 'Change value set from http://hl7.org/fhir/ValueSet/administrative-gender to http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1',
'Person.link.assurance', 'Change value set from http://hl7.org/fhir/ValueSet/identity-assuranceLevel to http://hl7.org/fhir/ValueSet/identity-assuranceLevel|4.0.1',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Person', 'TU', '', 'DomainResource', 'A generic person recordElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'A human identifier for this person',
'name', 'Σ', '0..*', 'HumanName', 'A name associated with the person',
'telecom', 'Σ', '0..*', 'ContactPoint', 'A contact detail for the person',
'gender', 'Σ', '0..1', 'code', 'male | female | other | unknownAdministrativeGender (Required)',
'birthDate', 'Σ', '0..1', 'date', 'The date on which the person was born',
'address', '', '0..*', 'Address', 'One or more addresses for the person',
'photo', '', '0..1', 'Attachment', 'Image of the person',
'managingOrganization', 'Σ', '0..1', 'Reference(Organization)', 'The organization that is the custodian of the person record',
'active', '?!Σ', '0..1', 'boolean', 'This person's record is in active use',
'link', '', '0..*', 'BackboneElement', 'Link to a resource that concerns the same actual person',
'target', '', '1..1', 'Reference(Patient | Practitioner | RelatedPerson | Person)', 'The resource to which this actual person is associated',
'assurance', '', '0..1', 'code', 'level1 | level2 | level3 | level4IdentityAssuranceLevel (Required)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Person', '',
'Person.gender', 'Change value set from http://hl7.org/fhir/ValueSet/administrative-gender to http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1',
'Person.link.assurance', 'Change value set from http://hl7.org/fhir/ValueSet/identity-assuranceLevel to http://hl7.org/fhir/ValueSet/identity-assuranceLevel|4.0.1',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Person.gender', 'The gender of a person used for administrative purposes.', 'Required', 'AdministrativeGender',
'Person.link.assurance', 'The level of confidence that this link represents the same actual person, based on NIST Authentication Levels.', 'Required', 'IdentityAssuranceLevel',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'address', 'string', 'A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text', 'Person.address', '3 Resources',
'address-city', 'string', 'A city specified in an address', 'Person.address.city', '3 Resources',
'address-country', 'string', 'A country specified in an address', 'Person.address.country', '3 Resources',
'address-postalcode', 'string', 'A postal code specified in an address', 'Person.address.postalCode', '3 Resources',
'address-state', 'string', 'A state specified in an address', 'Person.address.state', '3 Resources',
'address-use', 'token', 'A use code specified in an address', 'Person.address.use', '3 Resources',
'birthdate', 'date', 'The person's date of birth', 'Person.birthDate', '2 Resources',
'email', 'token', 'A value in an email contact', 'Person.telecom.where(system='email')', '4 Resources',
'gender', 'token', 'The gender of the person', 'Person.gender', '3 Resources',
'identifier', 'token', 'A person Identifier', 'Person.identifier', '',
'link', 'reference', 'Any link has this Patient, Person, RelatedPerson or Practitioner reference', 'Person.link.target(Practitioner, Patient, Person, RelatedPerson)', '',
'name', 'string', 'A server defined search that may match any of the string fields in the HumanName, including family, give, prefix, suffix, suffix, and/or text', 'Person.name', '',
'organization', 'reference', 'The organization at which this person record is being managed', 'Person.managingOrganization(Organization)', '',
'patient', 'reference', 'The Person links to this Patient', 'Person.link.target.where(resolve() is Patient)(Patient)', '',
'phone', 'token', 'A value in a phone contact', 'Person.telecom.where(system='phone')', '4 Resources',
'phonetic', 'string', 'A portion of name using some kind of phonetic matching algorithm', 'Person.name', '3 Resources',
'practitioner', 'reference', 'The Person links to this Practitioner', 'Person.link.target.where(resolve() is Practitioner)(Practitioner)', '',
'relatedperson', 'reference', 'The Person links to this RelatedPerson', 'Person.link.target.where(resolve() is RelatedPerson)(RelatedPerson)', '',
'telecom', 'token', 'The value in any kind of contact', 'Person.telecom', '4 Resources',
)


