df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'FHIR Infrastructure  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'SearchParameter', 'ITU', '', 'DomainResource', 'Search parameter for a resource+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generation+ Rule: If an xpath is present, there SHALL be an xpathUsage+ Rule: Search parameters can only have chain names when the search parameter type is 'reference'Elements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '1..1', 'uri', 'Canonical identifier for this search parameter, represented as a URI (globally unique)',
'version', 'Σ', '0..1', 'string', 'Business version of the search parameter',
'name', 'ΣI', '1..1', 'string', 'Name for this search parameter (computer friendly)',
'derivedFrom', '', '0..1', 'canonical(SearchParameter)', 'Original definition for the search parameter',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', 'Σ', '1..1', 'markdown', 'Natural language description of the search parameter',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for search parameter (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this search parameter is defined',
'code', 'Σ', '1..1', 'code', 'Code used in URL',
'base', 'Σ', '1..*', 'code', 'The resource type(s) this search parameter applies toResourceType (Required)',
'type', 'Σ', '1..1', 'code', 'number | date | string | token | reference | composite | quantity | uri | specialSearchParamType (Required)',
'expression', 'I', '0..1', 'string', 'FHIRPath expression that extracts the values',
'xpath', 'I', '0..1', 'string', 'XPath that extracts the values',
'xpathUsage', 'I', '0..1', 'code', 'normal | phonetic | nearby | distance | otherXPathUsageType (Required)',
'target', '', '0..*', 'code', 'Types of resource (if a resource reference)ResourceType (Required)',
'multipleOr', '', '0..1', 'boolean', 'Allow multiple values per parameter (or)',
'multipleAnd', '', '0..1', 'boolean', 'Allow multiple parameters (and)',
'comparator', '', '0..*', 'code', 'eq | ne | gt | lt | ge | le | sa | eb | apSearchComparator (Required)',
'modifier', '', '0..*', 'code', 'missing | exact | contains | not | text | in | not-in | below | above | type | identifier | ofTypeSearchModifierCode (Required)',
'chain', '', '0..*', 'string', 'Chained names supported',
'component', '', '0..*', 'BackboneElement', 'For Composite resources to define the parts',
'definition', '', '1..1', 'canonical(SearchParameter)', 'Defines how the part works',
'expression', '', '1..1', 'string', 'Subexpression relative to main expression',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'SearchParameter', '',
'SearchParameter', 'Min Cardinality changed from 1 to 0
        Max Cardinality changed from 1 to *',
'SearchParameter.derivedFrom', 'Type changed from uri to canonical(SearchParameter)',
'SearchParameter.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'SearchParameter.experimental', 'No longer marked as Modifier',
'SearchParameter.base', 'Change value set from http://hl7.org/fhir/ValueSet/resource-types to http://hl7.org/fhir/ValueSet/resource-types|4.0.1',
'SearchParameter.type', 'Change value set from http://hl7.org/fhir/ValueSet/search-param-type to http://hl7.org/fhir/ValueSet/search-param-type|4.0.1',
'SearchParameter.xpathUsage', 'Change value set from http://hl7.org/fhir/ValueSet/search-xpath-usage to http://hl7.org/fhir/ValueSet/search-xpath-usage|4.0.1',
'SearchParameter.target', 'Change value set from http://hl7.org/fhir/ValueSet/resource-types to http://hl7.org/fhir/ValueSet/resource-types|4.0.1',
'SearchParameter.multipleOr', 'Added Element',
'SearchParameter.multipleAnd', 'Added Element',
'SearchParameter.comparator', 'Change value set from http://hl7.org/fhir/ValueSet/search-comparator to http://hl7.org/fhir/ValueSet/search-comparator|4.0.1',
'SearchParameter.modifier', 'Change value set from http://hl7.org/fhir/ValueSet/search-modifier-code to http://hl7.org/fhir/ValueSet/search-modifier-code|4.0.1',
'SearchParameter.component.definition', 'Type changed from Reference(SearchParameter) to canonical(SearchParameter)',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'SearchParameter', 'ITU', '', 'DomainResource', 'Search parameter for a resource+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generation+ Rule: If an xpath is present, there SHALL be an xpathUsage+ Rule: Search parameters can only have chain names when the search parameter type is 'reference'Elements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '1..1', 'uri', 'Canonical identifier for this search parameter, represented as a URI (globally unique)',
'version', 'Σ', '0..1', 'string', 'Business version of the search parameter',
'name', 'ΣI', '1..1', 'string', 'Name for this search parameter (computer friendly)',
'derivedFrom', '', '0..1', 'canonical(SearchParameter)', 'Original definition for the search parameter',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', 'Σ', '1..1', 'markdown', 'Natural language description of the search parameter',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for search parameter (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this search parameter is defined',
'code', 'Σ', '1..1', 'code', 'Code used in URL',
'base', 'Σ', '1..*', 'code', 'The resource type(s) this search parameter applies toResourceType (Required)',
'type', 'Σ', '1..1', 'code', 'number | date | string | token | reference | composite | quantity | uri | specialSearchParamType (Required)',
'expression', 'I', '0..1', 'string', 'FHIRPath expression that extracts the values',
'xpath', 'I', '0..1', 'string', 'XPath that extracts the values',
'xpathUsage', 'I', '0..1', 'code', 'normal | phonetic | nearby | distance | otherXPathUsageType (Required)',
'target', '', '0..*', 'code', 'Types of resource (if a resource reference)ResourceType (Required)',
'multipleOr', '', '0..1', 'boolean', 'Allow multiple values per parameter (or)',
'multipleAnd', '', '0..1', 'boolean', 'Allow multiple parameters (and)',
'comparator', '', '0..*', 'code', 'eq | ne | gt | lt | ge | le | sa | eb | apSearchComparator (Required)',
'modifier', '', '0..*', 'code', 'missing | exact | contains | not | text | in | not-in | below | above | type | identifier | ofTypeSearchModifierCode (Required)',
'chain', '', '0..*', 'string', 'Chained names supported',
'component', '', '0..*', 'BackboneElement', 'For Composite resources to define the parts',
'definition', '', '1..1', 'canonical(SearchParameter)', 'Defines how the part works',
'expression', '', '1..1', 'string', 'Subexpression relative to main expression',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'SearchParameter', '',
'SearchParameter', 'Min Cardinality changed from 1 to 0
        Max Cardinality changed from 1 to *',
'SearchParameter.derivedFrom', 'Type changed from uri to canonical(SearchParameter)',
'SearchParameter.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'SearchParameter.experimental', 'No longer marked as Modifier',
'SearchParameter.base', 'Change value set from http://hl7.org/fhir/ValueSet/resource-types to http://hl7.org/fhir/ValueSet/resource-types|4.0.1',
'SearchParameter.type', 'Change value set from http://hl7.org/fhir/ValueSet/search-param-type to http://hl7.org/fhir/ValueSet/search-param-type|4.0.1',
'SearchParameter.xpathUsage', 'Change value set from http://hl7.org/fhir/ValueSet/search-xpath-usage to http://hl7.org/fhir/ValueSet/search-xpath-usage|4.0.1',
'SearchParameter.target', 'Change value set from http://hl7.org/fhir/ValueSet/resource-types to http://hl7.org/fhir/ValueSet/resource-types|4.0.1',
'SearchParameter.multipleOr', 'Added Element',
'SearchParameter.multipleAnd', 'Added Element',
'SearchParameter.comparator', 'Change value set from http://hl7.org/fhir/ValueSet/search-comparator to http://hl7.org/fhir/ValueSet/search-comparator|4.0.1',
'SearchParameter.modifier', 'Change value set from http://hl7.org/fhir/ValueSet/search-modifier-code to http://hl7.org/fhir/ValueSet/search-modifier-code|4.0.1',
'SearchParameter.component.definition', 'Type changed from Reference(SearchParameter) to canonical(SearchParameter)',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'SearchParameter.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'SearchParameter.jurisdiction', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'SearchParameter.baseSearchParameter.target', 'One of the resource types defined as part of this version of FHIR.', 'Required', 'Resource Types',
'SearchParameter.type', 'Data types allowed to be used for search parameters.', 'Required', 'SearchParamType',
'SearchParameter.xpathUsage', 'How a search parameter relates to the set of elements returned by evaluating its xpath query.', 'Required', 'XPathUsageType',
'SearchParameter.comparator', 'What Search Comparator Codes are supported in search.', 'Required', 'SearchComparator',
'SearchParameter.modifier', 'A supported modifier for a search parameter.', 'Required', 'SearchModifierCode',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'spd-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches('[A-Z]([A-Za-z0-9_]){0,254}')',
'spd-1', 'Rule', '(base)', 'If an xpath is present, there SHALL be an xpathUsage', 'xpath.empty() or xpathUsage.exists()',
'spd-2', 'Rule', '(base)', 'Search parameters can only have chain names when the search parameter type is 'reference'', 'chain.empty() or type = 'reference'',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'base', 'token', 'The resource type(s) this search parameter applies to', 'SearchParameter.base', '',
'code', 'token', 'Code used in URL', 'SearchParameter.code', '',
'component', 'reference', 'Defines how the part works', 'SearchParameter.component.definition(SearchParameter)', '',
'context', 'token', 'A use context assigned to the search parameter', '(SearchParameter.useContext.value as CodeableConcept)', '',
'context-quantity', 'quantity', 'A quantity- or range-valued use context assigned to the search parameter', '(SearchParameter.useContext.value as Quantity) | (SearchParameter.useContext.value as Range)', '',
'context-type', 'token', 'A type of use context assigned to the search parameter', 'SearchParameter.useContext.code', '',
'context-type-quantity', 'composite', 'A use context type and quantity- or range-based value assigned to the search parameter', 'On SearchParameter.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value', 'composite', 'A use context type and value assigned to the search parameter', 'On SearchParameter.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date', 'date', 'The search parameter publication date', 'SearchParameter.date', '',
'derived-from', 'reference', 'Original definition for the search parameter', 'SearchParameter.derivedFrom(SearchParameter)', '',
'description', 'string', 'The description of the search parameter', 'SearchParameter.description', '',
'jurisdiction', 'token', 'Intended jurisdiction for the search parameter', 'SearchParameter.jurisdiction', '',
'name', 'string', 'Computationally friendly name of the search parameter', 'SearchParameter.name', '',
'publisher', 'string', 'Name of the publisher of the search parameter', 'SearchParameter.publisher', '',
'status', 'token', 'The current status of the search parameter', 'SearchParameter.status', '',
'target', 'token', 'Types of resource (if a resource reference)', 'SearchParameter.target', '',
'type', 'token', 'number | date | string | token | reference | composite | quantity | uri | special', 'SearchParameter.type', '',
'url', 'uri', 'The uri that identifies the search parameter', 'SearchParameter.url', '',
'version', 'token', 'The business version of the search parameter', 'SearchParameter.version', '',
)


