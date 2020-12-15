df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'FHIR Infrastructure  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'GraphDefinition', 'ITU', '', 'DomainResource', 'Definition of a graph of resources+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this graph definition, represented as a URI (globally unique)',
'version', 'Σ', '0..1', 'string', 'Business version of the graph definition',
'name', 'ΣI', '1..1', 'string', 'Name for this graph definition (computer friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the graph definition',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for graph definition (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this graph definition is defined',
'start', 'Σ', '1..1', 'code', 'Type of resource at which the graph startsResourceType (Required)',
'profile', '', '0..1', 'canonical(StructureDefinition)', 'Profile on base resource',
'link', '', '0..*', 'BackboneElement', 'Links this graph makes rules about',
'path', '', '0..1', 'string', 'Path in the resource that contains the link',
'sliceName', '', '0..1', 'string', 'Which slice (if profiled)',
'min', '', '0..1', 'integer', 'Minimum occurrences for this link',
'max', '', '0..1', 'string', 'Maximum occurrences for this link',
'description', '', '0..1', 'string', 'Why this link is specified',
'target', '', '0..*', 'BackboneElement', 'Potential target for the link',
'type', '', '1..1', 'code', 'Type of resource this link refers toResourceType (Required)',
'params', '', '0..1', 'string', 'Criteria for reverse lookup',
'profile', '', '0..1', 'canonical(StructureDefinition)', 'Profile for the target resource',
'compartment', '', '0..*', 'BackboneElement', 'Compartment Consistency Rules',
'use', '', '1..1', 'code', 'condition | requirementGraphCompartmentUse (Required)',
'code', '', '1..1', 'code', 'Patient | Encounter | RelatedPerson | Practitioner | DeviceCompartmentType (Required)',
'rule', '', '1..1', 'code', 'identical | matching | different | customGraphCompartmentRule (Required)',
'expression', '', '0..1', 'string', 'Custom rule, as a FHIRPath expression',
'description', '', '0..1', 'string', 'Documentation for FHIRPath expression',
'link', '', '0..*', 'see link', 'Additional links from target resource',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'GraphDefinition', '',
'GraphDefinition.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'GraphDefinition.experimental', 'No longer marked as Modifier',
'GraphDefinition.start', 'Change value set from http://hl7.org/fhir/ValueSet/resource-types to http://hl7.org/fhir/ValueSet/resource-types|4.0.1',
'GraphDefinition.profile', 'Type changed from uri to canonical(StructureDefinition)',
'GraphDefinition.link.path', 'Min Cardinality changed from 1 to 0',
'GraphDefinition.link.target', 'Min Cardinality changed from 1 to 0',
'GraphDefinition.link.target.type', 'Change value set from http://hl7.org/fhir/ValueSet/resource-types to http://hl7.org/fhir/ValueSet/resource-types|4.0.1',
'GraphDefinition.link.target.params', 'Added Element',
'GraphDefinition.link.target.profile', 'Type changed from uri to canonical(StructureDefinition)',
'GraphDefinition.link.target.compartment.use', 'Added Mandatory Element',
'GraphDefinition.link.target.compartment.code', 'Change value set from http://hl7.org/fhir/ValueSet/compartment-type to http://hl7.org/fhir/ValueSet/compartment-type|4.0.1',
'GraphDefinition.link.target.compartment.rule', 'Change value set from http://hl7.org/fhir/ValueSet/graph-compartment-rule to http://hl7.org/fhir/ValueSet/graph-compartment-rule|4.0.1',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'GraphDefinition', 'ITU', '', 'DomainResource', 'Definition of a graph of resources+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this graph definition, represented as a URI (globally unique)',
'version', 'Σ', '0..1', 'string', 'Business version of the graph definition',
'name', 'ΣI', '1..1', 'string', 'Name for this graph definition (computer friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the graph definition',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for graph definition (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this graph definition is defined',
'start', 'Σ', '1..1', 'code', 'Type of resource at which the graph startsResourceType (Required)',
'profile', '', '0..1', 'canonical(StructureDefinition)', 'Profile on base resource',
'link', '', '0..*', 'BackboneElement', 'Links this graph makes rules about',
'path', '', '0..1', 'string', 'Path in the resource that contains the link',
'sliceName', '', '0..1', 'string', 'Which slice (if profiled)',
'min', '', '0..1', 'integer', 'Minimum occurrences for this link',
'max', '', '0..1', 'string', 'Maximum occurrences for this link',
'description', '', '0..1', 'string', 'Why this link is specified',
'target', '', '0..*', 'BackboneElement', 'Potential target for the link',
'type', '', '1..1', 'code', 'Type of resource this link refers toResourceType (Required)',
'params', '', '0..1', 'string', 'Criteria for reverse lookup',
'profile', '', '0..1', 'canonical(StructureDefinition)', 'Profile for the target resource',
'compartment', '', '0..*', 'BackboneElement', 'Compartment Consistency Rules',
'use', '', '1..1', 'code', 'condition | requirementGraphCompartmentUse (Required)',
'code', '', '1..1', 'code', 'Patient | Encounter | RelatedPerson | Practitioner | DeviceCompartmentType (Required)',
'rule', '', '1..1', 'code', 'identical | matching | different | customGraphCompartmentRule (Required)',
'expression', '', '0..1', 'string', 'Custom rule, as a FHIRPath expression',
'description', '', '0..1', 'string', 'Documentation for FHIRPath expression',
'link', '', '0..*', 'see link', 'Additional links from target resource',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'GraphDefinition', '',
'GraphDefinition.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'GraphDefinition.experimental', 'No longer marked as Modifier',
'GraphDefinition.start', 'Change value set from http://hl7.org/fhir/ValueSet/resource-types to http://hl7.org/fhir/ValueSet/resource-types|4.0.1',
'GraphDefinition.profile', 'Type changed from uri to canonical(StructureDefinition)',
'GraphDefinition.link.path', 'Min Cardinality changed from 1 to 0',
'GraphDefinition.link.target', 'Min Cardinality changed from 1 to 0',
'GraphDefinition.link.target.type', 'Change value set from http://hl7.org/fhir/ValueSet/resource-types to http://hl7.org/fhir/ValueSet/resource-types|4.0.1',
'GraphDefinition.link.target.params', 'Added Element',
'GraphDefinition.link.target.profile', 'Type changed from uri to canonical(StructureDefinition)',
'GraphDefinition.link.target.compartment.use', 'Added Mandatory Element',
'GraphDefinition.link.target.compartment.code', 'Change value set from http://hl7.org/fhir/ValueSet/compartment-type to http://hl7.org/fhir/ValueSet/compartment-type|4.0.1',
'GraphDefinition.link.target.compartment.rule', 'Change value set from http://hl7.org/fhir/ValueSet/graph-compartment-rule to http://hl7.org/fhir/ValueSet/graph-compartment-rule|4.0.1',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'GraphDefinition.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'GraphDefinition.jurisdiction', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'GraphDefinition.startGraphDefinition.link.target.type', 'One of the resource types defined as part of this version of FHIR.', 'Required', 'Resource Types',
'GraphDefinition.link.target.compartment.use', 'Defines how a compartment rule is used.', 'Required', 'GraphCompartmentUse',
'GraphDefinition.link.target.compartment.code', 'Identifies a compartment.', 'Required', 'CompartmentType',
'GraphDefinition.link.target.compartment.rule', 'How a compartment must be linked.', 'Required', 'GraphCompartmentRule',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'gdf-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches('[A-Z]([A-Za-z0-9_]){0,254}')',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,
'Code', 'Meaning',
'identical', 'The compartment must be identical (the same literal reference)',
'matching', 'The compartment must be the same - the record must be about the same patient, but the reference may be different',
'different', 'The compartment must be different',
'custom', 'The compartment rule is defined in the accompanying FHIRPath expression',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'context', 'token', 'A use context assigned to the graph definition', '(GraphDefinition.useContext.value as CodeableConcept)', '',
'context-quantity', 'quantity', 'A quantity- or range-valued use context assigned to the graph definition', '(GraphDefinition.useContext.value as Quantity) | (GraphDefinition.useContext.value as Range)', '',
'context-type', 'token', 'A type of use context assigned to the graph definition', 'GraphDefinition.useContext.code', '',
'context-type-quantity', 'composite', 'A use context type and quantity- or range-based value assigned to the graph definition', 'On GraphDefinition.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value', 'composite', 'A use context type and value assigned to the graph definition', 'On GraphDefinition.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date', 'date', 'The graph definition publication date', 'GraphDefinition.date', '',
'description', 'string', 'The description of the graph definition', 'GraphDefinition.description', '',
'jurisdiction', 'token', 'Intended jurisdiction for the graph definition', 'GraphDefinition.jurisdiction', '',
'name', 'string', 'Computationally friendly name of the graph definition', 'GraphDefinition.name', '',
'publisher', 'string', 'Name of the publisher of the graph definition', 'GraphDefinition.publisher', '',
'start', 'token', 'Type of resource at which the graph starts', 'GraphDefinition.start', '',
'status', 'token', 'The current status of the graph definition', 'GraphDefinition.status', '',
'url', 'uri', 'The uri that identifies the graph definition', 'GraphDefinition.url', '',
'version', 'token', 'The business version of the graph definition', 'GraphDefinition.version', '',
)


