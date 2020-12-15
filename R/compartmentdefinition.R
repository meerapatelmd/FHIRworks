df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'FHIR Infrastructure  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,
'Title', 'Description', 'Identity', 'Membership',
'Patient', 'The set of resources associated with a particular patient', 'There is an instance of the patient compartment for each patient resource, and the identity of the compartment is the same as the patient. When a patient is linked to another patient, all the records associated with the linked patient are in the compartment associated with the target of the link.', 'The patient compartment includes any resources where the subject of  the resource is the patient, and some other resources that are directly linked  to resources in the patient compartment',
'Encounter', 'The set of resources associated with a particular encounter', 'There is an instance of the encounter compartment for each encounter resource, and the identity of the compartment is the same as the encounter', 'The encounter compartment includes any resources where the resource has an explicitly nominated encounter, and some other resources that themselves link  to resources in the encounter compartment. Note that for many resources, the exact nature of the link to encounter can be ambiguous (e.g. for a DiagnosticReport, is it the encounter when it was initiated, or when it was reported?)',
'RelatedPerson', 'The set of resources associated with a particular 'related person'', 'There is an instance of the relatedPerson compartment for each relatedPerson resource, and the identity of the compartment is the same as the relatedPerson', 'The relatedPerson compartment includes any resources where the resource is explicitly linked to relatedPerson (usually as author)',
'Practitioner', 'The set of resources associated with a particular practitioner', 'There is an instance of the practitioner compartment for each Practitioner resource, and the identity of the compartment is the same as the Practitioner', 'The practitioner compartment includes any resources where the resource is explicitly linked to a Practitioner (usually as author, but other kinds of linkage exist)',
'Device', 'The set of resources associated with a particular device', 'There is an instance of the device compartment for each Device resource, and the identity of the compartment is the same as the Device', 'The device compartment includes any resources where the resource is explicitly linked to a Device (mostly subject or performer)',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CompartmentDefinition', 'ITU', '', 'DomainResource', 'Compartment Definition for a resource+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '1..1', 'uri', 'Canonical identifier for this compartment definition, represented as a URI (globally unique)',
'version', 'Σ', '0..1', 'string', 'Business version of the compartment definition',
'name', 'ΣI', '1..1', 'string', 'Name for this compartment definition (computer friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the compartment definition',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'purpose', '', '0..1', 'markdown', 'Why this compartment definition is defined',
'code', 'Σ', '1..1', 'code', 'Patient | Encounter | RelatedPerson | Practitioner | DeviceCompartmentType (Required)',
'search', 'Σ', '1..1', 'boolean', 'Whether the search syntax is supported',
'resource', 'Σ', '0..*', 'BackboneElement', 'How a resource is related to the compartment',
'code', 'Σ', '1..1', 'code', 'Name of resource typeResourceType (Required)',
'param', 'Σ', '0..*', 'string', 'Search Parameter Name, or chained parameters',
'documentation', '', '0..1', 'string', 'Additional documentation about the resource and compartment',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'CompartmentDefinition', '',
'CompartmentDefinition', 'Min Cardinality changed from 1 to 0
        Max Cardinality changed from 1 to *',
'CompartmentDefinition.version', 'Added Element',
'CompartmentDefinition.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'CompartmentDefinition.experimental', 'No longer marked as Modifier',
'CompartmentDefinition.code', 'Change value set from http://hl7.org/fhir/ValueSet/compartment-type to http://hl7.org/fhir/ValueSet/compartment-type|4.0.1',
'CompartmentDefinition.resource.code', 'Change value set from http://hl7.org/fhir/ValueSet/resource-types to http://hl7.org/fhir/ValueSet/resource-types|4.0.1',
'CompartmentDefinition.title', 'deleted',
'CompartmentDefinition.jurisdiction', 'deleted',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CompartmentDefinition', 'ITU', '', 'DomainResource', 'Compartment Definition for a resource+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '1..1', 'uri', 'Canonical identifier for this compartment definition, represented as a URI (globally unique)',
'version', 'Σ', '0..1', 'string', 'Business version of the compartment definition',
'name', 'ΣI', '1..1', 'string', 'Name for this compartment definition (computer friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the compartment definition',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'purpose', '', '0..1', 'markdown', 'Why this compartment definition is defined',
'code', 'Σ', '1..1', 'code', 'Patient | Encounter | RelatedPerson | Practitioner | DeviceCompartmentType (Required)',
'search', 'Σ', '1..1', 'boolean', 'Whether the search syntax is supported',
'resource', 'Σ', '0..*', 'BackboneElement', 'How a resource is related to the compartment',
'code', 'Σ', '1..1', 'code', 'Name of resource typeResourceType (Required)',
'param', 'Σ', '0..*', 'string', 'Search Parameter Name, or chained parameters',
'documentation', '', '0..1', 'string', 'Additional documentation about the resource and compartment',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'CompartmentDefinition', '',
'CompartmentDefinition', 'Min Cardinality changed from 1 to 0
        Max Cardinality changed from 1 to *',
'CompartmentDefinition.version', 'Added Element',
'CompartmentDefinition.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'CompartmentDefinition.experimental', 'No longer marked as Modifier',
'CompartmentDefinition.code', 'Change value set from http://hl7.org/fhir/ValueSet/compartment-type to http://hl7.org/fhir/ValueSet/compartment-type|4.0.1',
'CompartmentDefinition.resource.code', 'Change value set from http://hl7.org/fhir/ValueSet/resource-types to http://hl7.org/fhir/ValueSet/resource-types|4.0.1',
'CompartmentDefinition.title', 'deleted',
'CompartmentDefinition.jurisdiction', 'deleted',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'CompartmentDefinition.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'CompartmentDefinition.code', 'Which type a compartment definition describes.', 'Required', 'CompartmentType',
'CompartmentDefinition.resource.code', 'One of the resource types defined as part of this version of FHIR.', 'Required', 'Resource Types',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'cpd-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches('[A-Z]([A-Za-z0-9_]){0,254}')',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'code', 'token', 'Patient | Encounter | RelatedPerson | Practitioner | Device', 'CompartmentDefinition.code', '',
'context', 'token', 'A use context assigned to the compartment definition', '(CompartmentDefinition.useContext.value as CodeableConcept)', '',
'context-quantity', 'quantity', 'A quantity- or range-valued use context assigned to the compartment definition', '(CompartmentDefinition.useContext.value as Quantity) | (CompartmentDefinition.useContext.value as Range)', '',
'context-type', 'token', 'A type of use context assigned to the compartment definition', 'CompartmentDefinition.useContext.code', '',
'context-type-quantity', 'composite', 'A use context type and quantity- or range-based value assigned to the compartment definition', 'On CompartmentDefinition.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value', 'composite', 'A use context type and value assigned to the compartment definition', 'On CompartmentDefinition.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date', 'date', 'The compartment definition publication date', 'CompartmentDefinition.date', '',
'description', 'string', 'The description of the compartment definition', 'CompartmentDefinition.description', '',
'name', 'string', 'Computationally friendly name of the compartment definition', 'CompartmentDefinition.name', '',
'publisher', 'string', 'Name of the publisher of the compartment definition', 'CompartmentDefinition.publisher', '',
'resource', 'token', 'Name of resource type', 'CompartmentDefinition.resource.code', '',
'status', 'token', 'The current status of the compartment definition', 'CompartmentDefinition.status', '',
'url', 'uri', 'The uri that identifies the compartment definition', 'CompartmentDefinition.url', '',
'version', 'token', 'The business version of the compartment definition', 'CompartmentDefinition.version', '',
)


