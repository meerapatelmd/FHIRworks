df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'OrganizationAffiliation', 'TU', '', 'DomainResource', 'Defines an affiliation/assotiation/relationship between 2 distinct oganizations, that is not a part-of relationship/sub-division relationshipElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifiers that are specific to this role',
'active', 'Σ', '0..1', 'boolean', 'Whether this organization affiliation record is in active use',
'period', 'Σ', '0..1', 'Period', 'The period during which the participatingOrganization is affiliated with the primary organization',
'organization', 'Σ', '0..1', 'Reference(Organization)', 'Organization where the role is available',
'participatingOrganization', 'Σ', '0..1', 'Reference(Organization)', 'Organization that provides/performs the role (e.g. providing services or is a member of)',
'network', 'Σ', '0..*', 'Reference(Organization)', 'Health insurance provider network in which the participatingOrganization provides the role's services (if defined) at the indicated locations (if defined)',
'code', 'Σ', '0..*', 'CodeableConcept', 'Definition of the role the participatingOrganization playsOrganization Affiliation Role (Example)',
'specialty', 'Σ', '0..*', 'CodeableConcept', 'Specific specialty of the participatingOrganization in the context of the rolePractice Setting Code Value Set (Preferred)',
'location', 'Σ', '0..*', 'Reference(Location)', 'The location(s) at which the role occurs',
'healthcareService', '', '0..*', 'Reference(HealthcareService)', 'Healthcare services provided through the role',
'telecom', 'Σ', '0..*', 'ContactPoint', 'Contact details at the participatingOrganization relevant to this Affiliation',
'endpoint', '', '0..*', 'Reference(Endpoint)', 'Technical endpoints providing access to services operated for this role',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'OrganizationAffiliation', 'TU', '', 'DomainResource', 'Defines an affiliation/assotiation/relationship between 2 distinct oganizations, that is not a part-of relationship/sub-division relationshipElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifiers that are specific to this role',
'active', 'Σ', '0..1', 'boolean', 'Whether this organization affiliation record is in active use',
'period', 'Σ', '0..1', 'Period', 'The period during which the participatingOrganization is affiliated with the primary organization',
'organization', 'Σ', '0..1', 'Reference(Organization)', 'Organization where the role is available',
'participatingOrganization', 'Σ', '0..1', 'Reference(Organization)', 'Organization that provides/performs the role (e.g. providing services or is a member of)',
'network', 'Σ', '0..*', 'Reference(Organization)', 'Health insurance provider network in which the participatingOrganization provides the role's services (if defined) at the indicated locations (if defined)',
'code', 'Σ', '0..*', 'CodeableConcept', 'Definition of the role the participatingOrganization playsOrganization Affiliation Role (Example)',
'specialty', 'Σ', '0..*', 'CodeableConcept', 'Specific specialty of the participatingOrganization in the context of the rolePractice Setting Code Value Set (Preferred)',
'location', 'Σ', '0..*', 'Reference(Location)', 'The location(s) at which the role occurs',
'healthcareService', '', '0..*', 'Reference(HealthcareService)', 'Healthcare services provided through the role',
'telecom', 'Σ', '0..*', 'ContactPoint', 'Contact details at the participatingOrganization relevant to this Affiliation',
'endpoint', '', '0..*', 'Reference(Endpoint)', 'Technical endpoints providing access to services operated for this role',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'OrganizationAffiliation.code', 'The role the participating organization providing services to the primary organization.', 'Example', 'OrganizationAffiliationRole',
'OrganizationAffiliation.specialty', 'Specific specialty associated with the participating organization.', 'Preferred', 'PracticeSettingCodeValueSet',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'active', 'token', 'Whether this organization affiliation record is in active use', 'OrganizationAffiliation.active', '',
'date', 'date', 'The period during which the participatingOrganization is affiliated with the primary organization', 'OrganizationAffiliation.period', '',
'email', 'token', 'A value in an email contact', 'OrganizationAffiliation.telecom.where(system='email')', '',
'endpoint', 'reference', 'Technical endpoints providing access to services operated for this role', 'OrganizationAffiliation.endpoint(Endpoint)', '',
'identifier', 'token', 'An organization affiliation's Identifier', 'OrganizationAffiliation.identifier', '',
'location', 'reference', 'The location(s) at which the role occurs', 'OrganizationAffiliation.location(Location)', '',
'network', 'reference', 'Health insurance provider network in which the participatingOrganization provides the role's services (if defined) at the indicated locations (if defined)', 'OrganizationAffiliation.network(Organization)', '',
'participating-organization', 'reference', 'The organization that provides services to the primary organization', 'OrganizationAffiliation.participatingOrganization(Organization)', '',
'phone', 'token', 'A value in a phone contact', 'OrganizationAffiliation.telecom.where(system='phone')', '',
'primary-organization', 'reference', 'The organization that receives the services from the participating organization', 'OrganizationAffiliation.organization(Organization)', '',
'role', 'token', 'Definition of the role the participatingOrganization plays', 'OrganizationAffiliation.code', '',
'service', 'reference', 'Healthcare services provided through the role', 'OrganizationAffiliation.healthcareService(HealthcareService)', '',
'specialty', 'token', 'Specific specialty of the participatingOrganization in the context of the role', 'OrganizationAffiliation.specialty', '',
'telecom', 'token', 'The value in any kind of contact', 'OrganizationAffiliation.telecom', '',
)


