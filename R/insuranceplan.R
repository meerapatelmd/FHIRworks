df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'InsurancePlan', 'ITU', '', 'DomainResource', 'Details of a Health Insurance product/plan provided by an organization+ Rule: The organization SHALL at least have a name or an idendtifier, and possibly more than oneElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'ΣI', '0..*', 'Identifier', 'Business Identifier for Product',
'status', '?!Σ', '0..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'type', 'Σ', '0..*', 'CodeableConcept', 'Kind of productInsurance plan type (Example)',
'name', 'ΣI', '0..1', 'string', 'Official name',
'alias', '', '0..*', 'string', 'Alternate names',
'period', '', '0..1', 'Period', 'When the product is available',
'ownedBy', 'Σ', '0..1', 'Reference(Organization)', 'Plan issuer',
'administeredBy', 'Σ', '0..1', 'Reference(Organization)', 'Product administrator',
'coverageArea', 'Σ', '0..*', 'Reference(Location)', 'Where product applies',
'contact', '', '0..*', 'BackboneElement', 'Contact for the product',
'purpose', '', '0..1', 'CodeableConcept', 'The type of contactContact entity type (Extensible)',
'name', '', '0..1', 'HumanName', 'A name associated with the contact',
'telecom', '', '0..*', 'ContactPoint', 'Contact details (telephone, email, etc.)  for a contact',
'address', '', '0..1', 'Address', 'Visiting or postal addresses for the contact',
'endpoint', '', '0..*', 'Reference(Endpoint)', 'Technical endpoint',
'network', '', '0..*', 'Reference(Organization)', 'What networks are Included',
'coverage', '', '0..*', 'BackboneElement', 'Coverage details',
'type', '', '1..1', 'CodeableConcept', 'Type of coverage',
'network', '', '0..*', 'Reference(Organization)', 'What networks provide coverage',
'benefit', '', '1..*', 'BackboneElement', 'List of benefits',
'type', '', '1..1', 'CodeableConcept', 'Type of benefit',
'requirement', '', '0..1', 'string', 'Referral requirements',
'limit', '', '0..*', 'BackboneElement', 'Benefit limits',
'value', '', '0..1', 'Quantity', 'Maximum value allowed',
'code', '', '0..1', 'CodeableConcept', 'Benefit limit details',
'plan', '', '0..*', 'BackboneElement', 'Plan details',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for Product',
'type', '', '0..1', 'CodeableConcept', 'Type of plan',
'coverageArea', 'Σ', '0..*', 'Reference(Location)', 'Where product applies',
'network', '', '0..*', 'Reference(Organization)', 'What networks provide coverage',
'generalCost', '', '0..*', 'BackboneElement', 'Overall costs',
'type', '', '0..1', 'CodeableConcept', 'Type of cost',
'groupSize', '', '0..1', 'positiveInt', 'Number of enrollees',
'cost', '', '0..1', 'Money', 'Cost value',
'comment', '', '0..1', 'string', 'Additional cost information',
'specificCost', '', '0..*', 'BackboneElement', 'Specific costs',
'category', '', '1..1', 'CodeableConcept', 'General category of benefit',
'benefit', '', '0..*', 'BackboneElement', 'Benefits list',
'type', '', '1..1', 'CodeableConcept', 'Type of specific benefit',
'cost', '', '0..*', 'BackboneElement', 'List of the costs',
'type', '', '1..1', 'CodeableConcept', 'Type of cost',
'applicability', '', '0..1', 'CodeableConcept', 'in-network | out-of-network | otherBenefit cost applicability (Required)',
'qualifiers', '', '0..*', 'CodeableConcept', 'Additional information about the cost',
'value', '', '0..1', 'Quantity', 'The actual cost value',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'InsurancePlan', 'ITU', '', 'DomainResource', 'Details of a Health Insurance product/plan provided by an organization+ Rule: The organization SHALL at least have a name or an idendtifier, and possibly more than oneElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'ΣI', '0..*', 'Identifier', 'Business Identifier for Product',
'status', '?!Σ', '0..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'type', 'Σ', '0..*', 'CodeableConcept', 'Kind of productInsurance plan type (Example)',
'name', 'ΣI', '0..1', 'string', 'Official name',
'alias', '', '0..*', 'string', 'Alternate names',
'period', '', '0..1', 'Period', 'When the product is available',
'ownedBy', 'Σ', '0..1', 'Reference(Organization)', 'Plan issuer',
'administeredBy', 'Σ', '0..1', 'Reference(Organization)', 'Product administrator',
'coverageArea', 'Σ', '0..*', 'Reference(Location)', 'Where product applies',
'contact', '', '0..*', 'BackboneElement', 'Contact for the product',
'purpose', '', '0..1', 'CodeableConcept', 'The type of contactContact entity type (Extensible)',
'name', '', '0..1', 'HumanName', 'A name associated with the contact',
'telecom', '', '0..*', 'ContactPoint', 'Contact details (telephone, email, etc.)  for a contact',
'address', '', '0..1', 'Address', 'Visiting or postal addresses for the contact',
'endpoint', '', '0..*', 'Reference(Endpoint)', 'Technical endpoint',
'network', '', '0..*', 'Reference(Organization)', 'What networks are Included',
'coverage', '', '0..*', 'BackboneElement', 'Coverage details',
'type', '', '1..1', 'CodeableConcept', 'Type of coverage',
'network', '', '0..*', 'Reference(Organization)', 'What networks provide coverage',
'benefit', '', '1..*', 'BackboneElement', 'List of benefits',
'type', '', '1..1', 'CodeableConcept', 'Type of benefit',
'requirement', '', '0..1', 'string', 'Referral requirements',
'limit', '', '0..*', 'BackboneElement', 'Benefit limits',
'value', '', '0..1', 'Quantity', 'Maximum value allowed',
'code', '', '0..1', 'CodeableConcept', 'Benefit limit details',
'plan', '', '0..*', 'BackboneElement', 'Plan details',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for Product',
'type', '', '0..1', 'CodeableConcept', 'Type of plan',
'coverageArea', 'Σ', '0..*', 'Reference(Location)', 'Where product applies',
'network', '', '0..*', 'Reference(Organization)', 'What networks provide coverage',
'generalCost', '', '0..*', 'BackboneElement', 'Overall costs',
'type', '', '0..1', 'CodeableConcept', 'Type of cost',
'groupSize', '', '0..1', 'positiveInt', 'Number of enrollees',
'cost', '', '0..1', 'Money', 'Cost value',
'comment', '', '0..1', 'string', 'Additional cost information',
'specificCost', '', '0..*', 'BackboneElement', 'Specific costs',
'category', '', '1..1', 'CodeableConcept', 'General category of benefit',
'benefit', '', '0..*', 'BackboneElement', 'Benefits list',
'type', '', '1..1', 'CodeableConcept', 'Type of specific benefit',
'cost', '', '0..*', 'BackboneElement', 'List of the costs',
'type', '', '1..1', 'CodeableConcept', 'Type of cost',
'applicability', '', '0..1', 'CodeableConcept', 'in-network | out-of-network | otherBenefit cost applicability (Required)',
'qualifiers', '', '0..*', 'CodeableConcept', 'Additional information about the cost',
'value', '', '0..1', 'Quantity', 'The actual cost value',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'InsurancePlan.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'InsurancePlan.type', 'Used to categorize the product/plan.', 'Example', 'InsurancePlanType',
'InsurancePlan.contact.purpose', 'The purpose for which you would contact a contact party.', 'Extensible', 'ContactEntityType',
'InsurancePlan.plan.specificCost.benefit.cost.applicability', 'Whether the cost applies to in-network or out-of-network providers.', 'Required', 'BenefitCostApplicability',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'ipn-1', 'Rule', '(base)', 'The organization SHALL at least have a name or an idendtifier, and possibly more than one', '(identifier.count() + name.count()) > 0',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'address', 'string', 'A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text', 'InsurancePlan.contact.address', '',
'address-city', 'string', 'A city specified in an address', 'InsurancePlan.contact.address.city', '',
'address-country', 'string', 'A country specified in an address', 'InsurancePlan.contact.address.country', '',
'address-postalcode', 'string', 'A postal code specified in an address', 'InsurancePlan.contact.address.postalCode', '',
'address-state', 'string', 'A state specified in an address', 'InsurancePlan.contact.address.state', '',
'address-use', 'token', 'A use code specified in an address', 'InsurancePlan.contact.address.use', '',
'administered-by', 'reference', 'Product administrator', 'InsurancePlan.administeredBy(Organization)', '',
'endpoint', 'reference', 'Technical endpoint', 'InsurancePlan.endpoint(Endpoint)', '',
'identifier', 'token', 'Any identifier for the organization (not the accreditation issuer's identifier)', 'InsurancePlan.identifier', '',
'name', 'string', 'A portion of the organization's name or alias', 'name | alias', '',
'owned-by', 'reference', 'An organization of which this organization forms a part', 'InsurancePlan.ownedBy(Organization)', '',
'phonetic', 'string', 'A portion of the organization's name using some kind of phonetic matching algorithm', 'InsurancePlan.name', '',
'status', 'token', 'Is the Organization record active', 'InsurancePlan.status', '',
'type', 'token', 'A code for the type of organization', 'InsurancePlan.type', '',
)


