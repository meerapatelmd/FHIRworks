df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'FHIR Infrastructure  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'NamingSystem', 'ITU', '', 'DomainResource', 'System of unique identification+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generation+ Rule: Root systems cannot have uuid identifiers+ Rule: Can't have more than one preferred identifier for a typeElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'name', 'ΣI', '1..1', 'string', 'Name for this naming system (computer friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'kind', 'Σ', '1..1', 'code', 'codesystem | identifier | rootNamingSystemType (Required)',
'date', 'Σ', '1..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'responsible', '', '0..1', 'string', 'Who maintains system namespace?',
'type', '', '0..1', 'CodeableConcept', 'e.g. driver,  provider,  patient, bank etc.IdentifierType (Extensible)',
'description', '', '0..1', 'markdown', 'Natural language description of the naming system',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for naming system (if applicable)Jurisdiction (Extensible)',
'usage', '', '0..1', 'string', 'How/where is it used',
'uniqueId', 'Σ', '1..*', 'BackboneElement', 'Unique identifiers used for system',
'type', 'Σ', '1..1', 'code', 'oid | uuid | uri | otherNamingSystemIdentifierType (Required)',
'value', 'Σ', '1..1', 'string', 'The unique identifier',
'preferred', '', '0..1', 'boolean', 'Is this the id that should be used for this type',
'comment', '', '0..1', 'string', 'Notes about identifier usage',
'period', '', '0..1', 'Period', 'When is identifier valid?',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'NamingSystem', '',
'NamingSystem.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'NamingSystem.kind', 'Change value set from http://hl7.org/fhir/ValueSet/namingsystem-type to http://hl7.org/fhir/ValueSet/namingsystem-type|4.0.1',
'NamingSystem.uniqueId.type', 'Change value set from http://hl7.org/fhir/ValueSet/namingsystem-identifier-type to http://hl7.org/fhir/ValueSet/namingsystem-identifier-type|4.0.1',
'NamingSystem.replacedBy', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'NamingSystem', 'ITU', '', 'DomainResource', 'System of unique identification+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generation+ Rule: Root systems cannot have uuid identifiers+ Rule: Can't have more than one preferred identifier for a typeElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'name', 'ΣI', '1..1', 'string', 'Name for this naming system (computer friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'kind', 'Σ', '1..1', 'code', 'codesystem | identifier | rootNamingSystemType (Required)',
'date', 'Σ', '1..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'responsible', '', '0..1', 'string', 'Who maintains system namespace?',
'type', '', '0..1', 'CodeableConcept', 'e.g. driver,  provider,  patient, bank etc.IdentifierType (Extensible)',
'description', '', '0..1', 'markdown', 'Natural language description of the naming system',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for naming system (if applicable)Jurisdiction (Extensible)',
'usage', '', '0..1', 'string', 'How/where is it used',
'uniqueId', 'Σ', '1..*', 'BackboneElement', 'Unique identifiers used for system',
'type', 'Σ', '1..1', 'code', 'oid | uuid | uri | otherNamingSystemIdentifierType (Required)',
'value', 'Σ', '1..1', 'string', 'The unique identifier',
'preferred', '', '0..1', 'boolean', 'Is this the id that should be used for this type',
'comment', '', '0..1', 'string', 'Notes about identifier usage',
'period', '', '0..1', 'Period', 'When is identifier valid?',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'NamingSystem', '',
'NamingSystem.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'NamingSystem.kind', 'Change value set from http://hl7.org/fhir/ValueSet/namingsystem-type to http://hl7.org/fhir/ValueSet/namingsystem-type|4.0.1',
'NamingSystem.uniqueId.type', 'Change value set from http://hl7.org/fhir/ValueSet/namingsystem-identifier-type to http://hl7.org/fhir/ValueSet/namingsystem-identifier-type|4.0.1',
'NamingSystem.replacedBy', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'NamingSystem.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'NamingSystem.kind', 'Identifies the purpose of the naming system.', 'Required', 'NamingSystemType',
'NamingSystem.type', 'A coded type for an identifier that can be used to determine which identifier to use for a specific purpose.', 'Extensible', 'Identifier Type Codes',
'NamingSystem.jurisdiction', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'NamingSystem.uniqueId.type', 'Identifies the style of unique identifier used to identify a namespace.', 'Required', 'NamingSystemIdentifierType',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'nsd-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches('[A-Z]([A-Za-z0-9_]){0,254}')',
'nsd-1', 'Rule', '(base)', 'Root systems cannot have uuid identifiers', 'kind != 'root' or uniqueId.all(type != 'uuid')',
'nsd-2', 'Rule', '(base)', 'Can't have more than one preferred identifier for a type', 'uniqueId.where(preferred = true).select(type).isDistinct()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'contact', 'string', 'Name of an individual to contact', 'NamingSystem.contact.name', '',
'context', 'token', 'A use context assigned to the naming system', '(NamingSystem.useContext.value as CodeableConcept)', '',
'context-quantity', 'quantity', 'A quantity- or range-valued use context assigned to the naming system', '(NamingSystem.useContext.value as Quantity) | (NamingSystem.useContext.value as Range)', '',
'context-type', 'token', 'A type of use context assigned to the naming system', 'NamingSystem.useContext.code', '',
'context-type-quantity', 'composite', 'A use context type and quantity- or range-based value assigned to the naming system', 'On NamingSystem.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value', 'composite', 'A use context type and value assigned to the naming system', 'On NamingSystem.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date', 'date', 'The naming system publication date', 'NamingSystem.date', '',
'description', 'string', 'The description of the naming system', 'NamingSystem.description', '',
'id-type', 'token', 'oid | uuid | uri | other', 'NamingSystem.uniqueId.type', '',
'jurisdiction', 'token', 'Intended jurisdiction for the naming system', 'NamingSystem.jurisdiction', '',
'kind', 'token', 'codesystem | identifier | root', 'NamingSystem.kind', '',
'name', 'string', 'Computationally friendly name of the naming system', 'NamingSystem.name', '',
'period', 'date', 'When is identifier valid?', 'NamingSystem.uniqueId.period', '',
'publisher', 'string', 'Name of the publisher of the naming system', 'NamingSystem.publisher', '',
'responsible', 'string', 'Who maintains system namespace?', 'NamingSystem.responsible', '',
'status', 'token', 'The current status of the naming system', 'NamingSystem.status', '',
'telecom', 'token', 'Contact details for individual or organization', 'NamingSystem.contact.telecom', '',
'type', 'token', 'e.g. driver,  provider,  patient, bank etc.', 'NamingSystem.type', '',
'value', 'string', 'The unique identifier', 'NamingSystem.uniqueId.value', '',
)


