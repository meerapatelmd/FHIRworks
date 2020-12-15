df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Clinical Decision Support  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'EventDefinition', 'ITU', '', 'DomainResource', 'A description of when an event can occur+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this event definition, represented as a URI (globally unique)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the event definition',
'version', 'Σ', '0..1', 'string', 'Business version of the event definition',
'name', 'ΣI', '0..1', 'string', 'Name for this event definition (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this event definition (human friendly)',
'subtitle', '', '0..1', 'string', 'Subordinate title of the event definition',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'subject[x]', '', '0..1', '', 'Type of individual the event definition is focused onSubject type (Extensible)',
'subjectCodeableConcept', '', '', 'CodeableConcept', '',
'subjectReference', '', '', 'Reference(Group)', '',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the event definition',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for event definition (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this event definition is defined',
'usage', '', '0..1', 'string', 'Describes the clinical usage of the event definition',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'approvalDate', 'Σ', '0..1', 'date', 'When the event definition was approved by publisher',
'lastReviewDate', 'Σ', '0..1', 'date', 'When the event definition was last reviewed',
'effectivePeriod', 'Σ', '0..1', 'Period', 'When the event definition is expected to be used',
'topic', '', '0..*', 'CodeableConcept', 'E.g. Education, Treatment, Assessment, etc.DefinitionTopic (Example)',
'author', '', '0..*', 'ContactDetail', 'Who authored the content',
'editor', '', '0..*', 'ContactDetail', 'Who edited the content',
'reviewer', '', '0..*', 'ContactDetail', 'Who reviewed the content',
'endorser', '', '0..*', 'ContactDetail', 'Who endorsed the content',
'relatedArtifact', '', '0..*', 'RelatedArtifact', 'Additional documentation, citations, etc.',
'trigger', 'Σ', '1..*', 'TriggerDefinition', '"when" the event occurs (multiple = 'or')',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'EventDefinition', 'ITU', '', 'DomainResource', 'A description of when an event can occur+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this event definition, represented as a URI (globally unique)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the event definition',
'version', 'Σ', '0..1', 'string', 'Business version of the event definition',
'name', 'ΣI', '0..1', 'string', 'Name for this event definition (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this event definition (human friendly)',
'subtitle', '', '0..1', 'string', 'Subordinate title of the event definition',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'subject[x]', '', '0..1', '', 'Type of individual the event definition is focused onSubject type (Extensible)',
'subjectCodeableConcept', '', '', 'CodeableConcept', '',
'subjectReference', '', '', 'Reference(Group)', '',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the event definition',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for event definition (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this event definition is defined',
'usage', '', '0..1', 'string', 'Describes the clinical usage of the event definition',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'approvalDate', 'Σ', '0..1', 'date', 'When the event definition was approved by publisher',
'lastReviewDate', 'Σ', '0..1', 'date', 'When the event definition was last reviewed',
'effectivePeriod', 'Σ', '0..1', 'Period', 'When the event definition is expected to be used',
'topic', '', '0..*', 'CodeableConcept', 'E.g. Education, Treatment, Assessment, etc.DefinitionTopic (Example)',
'author', '', '0..*', 'ContactDetail', 'Who authored the content',
'editor', '', '0..*', 'ContactDetail', 'Who edited the content',
'reviewer', '', '0..*', 'ContactDetail', 'Who reviewed the content',
'endorser', '', '0..*', 'ContactDetail', 'Who endorsed the content',
'relatedArtifact', '', '0..*', 'RelatedArtifact', 'Additional documentation, citations, etc.',
'trigger', 'Σ', '1..*', 'TriggerDefinition', '"when" the event occurs (multiple = 'or')',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'EventDefinition.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'EventDefinition.subject[x]', 'The possible types of subjects for an event (E.g. Patient, Practitioner, Organization, Location, etc.).', 'Extensible', 'SubjectType',
'EventDefinition.jurisdiction', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'EventDefinition.topic', 'High-level categorization of the definition, used for searching, sorting, and filtering.', 'Example', 'DefinitionTopic',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'evd-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches('[A-Z]([A-Za-z0-9_]){0,254}')',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'composed-of', 'reference', 'What resource is being referenced', 'EventDefinition.relatedArtifact.where(type='composed-of').resource(Any)', '',
'context', 'token', 'A use context assigned to the event definition', '(EventDefinition.useContext.value as CodeableConcept)', '',
'context-quantity', 'quantity', 'A quantity- or range-valued use context assigned to the event definition', '(EventDefinition.useContext.value as Quantity) | (EventDefinition.useContext.value as Range)', '',
'context-type', 'token', 'A type of use context assigned to the event definition', 'EventDefinition.useContext.code', '',
'context-type-quantity', 'composite', 'A use context type and quantity- or range-based value assigned to the event definition', 'On EventDefinition.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value', 'composite', 'A use context type and value assigned to the event definition', 'On EventDefinition.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date', 'date', 'The event definition publication date', 'EventDefinition.date', '',
'depends-on', 'reference', 'What resource is being referenced', 'EventDefinition.relatedArtifact.where(type='depends-on').resource(Any)', '',
'derived-from', 'reference', 'What resource is being referenced', 'EventDefinition.relatedArtifact.where(type='derived-from').resource(Any)', '',
'description', 'string', 'The description of the event definition', 'EventDefinition.description', '',
'effective', 'date', 'The time during which the event definition is intended to be in use', 'EventDefinition.effectivePeriod', '',
'identifier', 'token', 'External identifier for the event definition', 'EventDefinition.identifier', '',
'jurisdiction', 'token', 'Intended jurisdiction for the event definition', 'EventDefinition.jurisdiction', '',
'name', 'string', 'Computationally friendly name of the event definition', 'EventDefinition.name', '',
'predecessor', 'reference', 'What resource is being referenced', 'EventDefinition.relatedArtifact.where(type='predecessor').resource(Any)', '',
'publisher', 'string', 'Name of the publisher of the event definition', 'EventDefinition.publisher', '',
'status', 'token', 'The current status of the event definition', 'EventDefinition.status', '',
'successor', 'reference', 'What resource is being referenced', 'EventDefinition.relatedArtifact.where(type='successor').resource(Any)', '',
'title', 'string', 'The human-friendly name of the event definition', 'EventDefinition.title', '',
'topic', 'token', 'Topics associated with the module', 'EventDefinition.topic', '',
'url', 'uri', 'The uri that identifies the event definition', 'EventDefinition.url', '',
'version', 'token', 'The business version of the event definition', 'EventDefinition.version', '',
)


