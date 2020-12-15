df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Organization', 'ITU', '', 'DomainResource', 'A grouping of people or organizations with a common purpose+ Rule: The organization SHALL at least have a name or an identifier, and possibly more than oneElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'ΣI', '0..*', 'Identifier', 'Identifies this organization  across multiple systems',
'active', '?!Σ', '0..1', 'boolean', 'Whether the organization's record is still in active use',
'type', 'Σ', '0..*', 'CodeableConcept', 'Kind of organizationOrganization type (Example)',
'name', 'ΣI', '0..1', 'string', 'Name used for the organization',
'alias', '', '0..*', 'string', 'A list of alternate names that the organization is known as, or was known as in the past',
'telecom', 'I', '0..*', 'ContactPoint', 'A contact detail for the organization+ Rule: The telecom of an organization can never be of use 'home'',
'address', 'I', '0..*', 'Address', 'An address for the organization+ Rule: An address of an organization can never be of use 'home'',
'partOf', 'Σ', '0..1', 'Reference(Organization)', 'The organization of which this organization forms a part',
'contact', '', '0..*', 'BackboneElement', 'Contact for the organization for a certain purpose',
'purpose', '', '0..1', 'CodeableConcept', 'The type of contactContact entity type (Extensible)',
'name', '', '0..1', 'HumanName', 'A name associated with the contact',
'telecom', '', '0..*', 'ContactPoint', 'Contact details (telephone, email, etc.)  for a contact',
'address', '', '0..1', 'Address', 'Visiting or postal addresses for the contact',
'endpoint', '', '0..*', 'Reference(Endpoint)', 'Technical endpoints providing access to services operated for the organization',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Organization', '',
'Organization.active', 'Default Value "true" removed',
'Organization.contact.purpose', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/contactentity-type" to "http://terminology.hl7.org/CodeSystem/contactentity-type"',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Organization', 'ITU', '', 'DomainResource', 'A grouping of people or organizations with a common purpose+ Rule: The organization SHALL at least have a name or an identifier, and possibly more than oneElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'ΣI', '0..*', 'Identifier', 'Identifies this organization  across multiple systems',
'active', '?!Σ', '0..1', 'boolean', 'Whether the organization's record is still in active use',
'type', 'Σ', '0..*', 'CodeableConcept', 'Kind of organizationOrganization type (Example)',
'name', 'ΣI', '0..1', 'string', 'Name used for the organization',
'alias', '', '0..*', 'string', 'A list of alternate names that the organization is known as, or was known as in the past',
'telecom', 'I', '0..*', 'ContactPoint', 'A contact detail for the organization+ Rule: The telecom of an organization can never be of use 'home'',
'address', 'I', '0..*', 'Address', 'An address for the organization+ Rule: An address of an organization can never be of use 'home'',
'partOf', 'Σ', '0..1', 'Reference(Organization)', 'The organization of which this organization forms a part',
'contact', '', '0..*', 'BackboneElement', 'Contact for the organization for a certain purpose',
'purpose', '', '0..1', 'CodeableConcept', 'The type of contactContact entity type (Extensible)',
'name', '', '0..1', 'HumanName', 'A name associated with the contact',
'telecom', '', '0..*', 'ContactPoint', 'Contact details (telephone, email, etc.)  for a contact',
'address', '', '0..1', 'Address', 'Visiting or postal addresses for the contact',
'endpoint', '', '0..*', 'Reference(Endpoint)', 'Technical endpoints providing access to services operated for the organization',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Organization', '',
'Organization.active', 'Default Value "true" removed',
'Organization.contact.purpose', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/contactentity-type" to "http://terminology.hl7.org/CodeSystem/contactentity-type"',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Organization.type', 'Used to categorize the organization.', 'Example', 'OrganizationType',
'Organization.contact.purpose', 'The purpose for which you would contact a contact party.', 'Extensible', 'ContactEntityType',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'org-1', 'Rule', '(base)', 'The organization SHALL at least have a name or an identifier, and possibly more than one', '(identifier.count() + name.count()) > 0',
'org-2', 'Rule', 'Organization.address', 'An address of an organization can never be of use 'home'', 'where(use = 'home').empty()',
'org-3', 'Rule', 'Organization.telecom', 'The telecom of an organization can never be of use 'home'', 'where(use = 'home').empty()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'active', 'token', 'Is the Organization record active', 'Organization.active', '',
'address', 'string', 'A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text', 'Organization.address', '',
'address-city', 'string', 'A city specified in an address', 'Organization.address.city', '',
'address-country', 'string', 'A country specified in an address', 'Organization.address.country', '',
'address-postalcode', 'string', 'A postal code specified in an address', 'Organization.address.postalCode', '',
'address-state', 'string', 'A state specified in an address', 'Organization.address.state', '',
'address-use', 'token', 'A use code specified in an address', 'Organization.address.use', '',
'endpoint', 'reference', 'Technical endpoints providing access to services operated for the organization', 'Organization.endpoint(Endpoint)', '',
'identifier', 'token', 'Any identifier for the organization (not the accreditation issuer's identifier)', 'Organization.identifier', '',
'name', 'string', 'A portion of the organization's name or alias', 'Organization.name | Organization.alias', '',
'partof', 'reference', 'An organization of which this organization forms a part', 'Organization.partOf(Organization)', '',
'phonetic', 'string', 'A portion of the organization's name using some kind of phonetic matching algorithm', 'Organization.name', '',
'type', 'token', 'A code for the type of organization', 'Organization.type', '',
)


