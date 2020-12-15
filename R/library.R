df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Clinical Decision Support  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Library', 'ITU', '', 'DomainResource', 'Represents a library of quality improvement components+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this library, represented as a URI (globally unique)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the library',
'version', 'Σ', '0..1', 'string', 'Business version of the library',
'name', 'ΣI', '0..1', 'string', 'Name for this library (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this library (human friendly)',
'subtitle', '', '0..1', 'string', 'Subordinate title of the library',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'type', 'Σ', '1..1', 'CodeableConcept', 'logic-library | model-definition | asset-collection | module-definitionLibraryType (Extensible)',
'subject[x]', '', '0..1', '', 'Type of individual the library content is focused onSubject type (Extensible)',
'subjectCodeableConcept', '', '', 'CodeableConcept', '',
'subjectReference', '', '', 'Reference(Group)', '',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', 'Σ', '0..1', 'markdown', 'Natural language description of the library',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for library (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this library is defined',
'usage', '', '0..1', 'string', 'Describes the clinical usage of the library',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'approvalDate', '', '0..1', 'date', 'When the library was approved by publisher',
'lastReviewDate', '', '0..1', 'date', 'When the library was last reviewed',
'effectivePeriod', 'Σ', '0..1', 'Period', 'When the library is expected to be used',
'topic', '', '0..*', 'CodeableConcept', 'E.g. Education, Treatment, Assessment, etc.DefinitionTopic (Example)',
'author', '', '0..*', 'ContactDetail', 'Who authored the content',
'editor', '', '0..*', 'ContactDetail', 'Who edited the content',
'reviewer', '', '0..*', 'ContactDetail', 'Who reviewed the content',
'endorser', '', '0..*', 'ContactDetail', 'Who endorsed the content',
'relatedArtifact', '', '0..*', 'RelatedArtifact', 'Additional documentation, citations, etc.',
'parameter', '', '0..*', 'ParameterDefinition', 'Parameters defined by the library',
'dataRequirement', '', '0..*', 'DataRequirement', 'What data is referenced by this library',
'content', 'Σ', '0..*', 'Attachment', 'Contents of the library, either embedded or referenced',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Library', '',
'Library.subtitle', 'Added Element',
'Library.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'Library.experimental', 'No longer marked as Modifier',
'Library.type', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/library-type" to "http://terminology.hl7.org/CodeSystem/library-type"',
'Library.subject[x]', 'Added Element',
'Library.author', 'Added Element',
'Library.editor', 'Added Element',
'Library.reviewer', 'Added Element',
'Library.endorser', 'Added Element',
'Library.contributor', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Library', 'ITU', '', 'DomainResource', 'Represents a library of quality improvement components+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this library, represented as a URI (globally unique)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the library',
'version', 'Σ', '0..1', 'string', 'Business version of the library',
'name', 'ΣI', '0..1', 'string', 'Name for this library (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this library (human friendly)',
'subtitle', '', '0..1', 'string', 'Subordinate title of the library',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'type', 'Σ', '1..1', 'CodeableConcept', 'logic-library | model-definition | asset-collection | module-definitionLibraryType (Extensible)',
'subject[x]', '', '0..1', '', 'Type of individual the library content is focused onSubject type (Extensible)',
'subjectCodeableConcept', '', '', 'CodeableConcept', '',
'subjectReference', '', '', 'Reference(Group)', '',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', 'Σ', '0..1', 'markdown', 'Natural language description of the library',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for library (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this library is defined',
'usage', '', '0..1', 'string', 'Describes the clinical usage of the library',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'approvalDate', '', '0..1', 'date', 'When the library was approved by publisher',
'lastReviewDate', '', '0..1', 'date', 'When the library was last reviewed',
'effectivePeriod', 'Σ', '0..1', 'Period', 'When the library is expected to be used',
'topic', '', '0..*', 'CodeableConcept', 'E.g. Education, Treatment, Assessment, etc.DefinitionTopic (Example)',
'author', '', '0..*', 'ContactDetail', 'Who authored the content',
'editor', '', '0..*', 'ContactDetail', 'Who edited the content',
'reviewer', '', '0..*', 'ContactDetail', 'Who reviewed the content',
'endorser', '', '0..*', 'ContactDetail', 'Who endorsed the content',
'relatedArtifact', '', '0..*', 'RelatedArtifact', 'Additional documentation, citations, etc.',
'parameter', '', '0..*', 'ParameterDefinition', 'Parameters defined by the library',
'dataRequirement', '', '0..*', 'DataRequirement', 'What data is referenced by this library',
'content', 'Σ', '0..*', 'Attachment', 'Contents of the library, either embedded or referenced',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Library', '',
'Library.subtitle', 'Added Element',
'Library.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'Library.experimental', 'No longer marked as Modifier',
'Library.type', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/library-type" to "http://terminology.hl7.org/CodeSystem/library-type"',
'Library.subject[x]', 'Added Element',
'Library.author', 'Added Element',
'Library.editor', 'Added Element',
'Library.reviewer', 'Added Element',
'Library.endorser', 'Added Element',
'Library.contributor', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Library.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'Library.type', 'The type of knowledge asset this library contains.', 'Extensible', 'LibraryType',
'Library.subject[x]', 'The possible types of subjects for a library (E.g. Patient, Practitioner, Organization, Location, etc.).', 'Extensible', 'SubjectType',
'Library.jurisdiction', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'Library.topic', 'High-level categorization of the definition, used for searching, sorting, and filtering.', 'Example', 'DefinitionTopic',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'lib-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches('[A-Z]([A-Za-z0-9_]){0,254}')',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'composed-of', 'reference', 'What resource is being referenced', 'Library.relatedArtifact.where(type='composed-of').resource(Any)', '',
'content-type', 'token', 'The type of content in the library (e.g. text/cql)', 'Library.content.contentType', '',
'context', 'token', 'A use context assigned to the library', '(Library.useContext.value as CodeableConcept)', '',
'context-quantity', 'quantity', 'A quantity- or range-valued use context assigned to the library', '(Library.useContext.value as Quantity) | (Library.useContext.value as Range)', '',
'context-type', 'token', 'A type of use context assigned to the library', 'Library.useContext.code', '',
'context-type-quantity', 'composite', 'A use context type and quantity- or range-based value assigned to the library', 'On Library.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value', 'composite', 'A use context type and value assigned to the library', 'On Library.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date', 'date', 'The library publication date', 'Library.date', '',
'depends-on', 'reference', 'What resource is being referenced', 'Library.relatedArtifact.where(type='depends-on').resource(Any)', '',
'derived-from', 'reference', 'What resource is being referenced', 'Library.relatedArtifact.where(type='derived-from').resource(Any)', '',
'description', 'string', 'The description of the library', 'Library.description', '',
'effective', 'date', 'The time during which the library is intended to be in use', 'Library.effectivePeriod', '',
'identifier', 'token', 'External identifier for the library', 'Library.identifier', '',
'jurisdiction', 'token', 'Intended jurisdiction for the library', 'Library.jurisdiction', '',
'name', 'string', 'Computationally friendly name of the library', 'Library.name', '',
'predecessor', 'reference', 'What resource is being referenced', 'Library.relatedArtifact.where(type='predecessor').resource(Any)', '',
'publisher', 'string', 'Name of the publisher of the library', 'Library.publisher', '',
'status', 'token', 'The current status of the library', 'Library.status', '',
'successor', 'reference', 'What resource is being referenced', 'Library.relatedArtifact.where(type='successor').resource(Any)', '',
'title', 'string', 'The human-friendly name of the library', 'Library.title', '',
'topic', 'token', 'Topics associated with the module', 'Library.topic', '',
'type', 'token', 'The type of the library (e.g. logic-library, model-definition, asset-collection, module-definition)', 'Library.type', '',
'url', 'uri', 'The uri that identifies the library', 'Library.url', '',
'version', 'token', 'The business version of the library', 'Library.version', '',
)


