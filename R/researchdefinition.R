df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Clinical Decision Support  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ResearchDefinition', 'ITU', '', 'DomainResource', 'A research context or question+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this research definition, represented as a URI (globally unique)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the research definition',
'version', 'Σ', '0..1', 'string', 'Business version of the research definition',
'name', 'ΣI', '0..1', 'string', 'Name for this research definition (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this research definition (human friendly)',
'shortTitle', '', '0..1', 'string', 'Title for use in informal contexts',
'subtitle', '', '0..1', 'string', 'Subordinate title of the ResearchDefinition',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'subject[x]', '', '0..1', '', 'E.g. Patient, Practitioner, RelatedPerson, Organization, Location, DeviceSubject type (Extensible)',
'subjectCodeableConcept', '', '', 'CodeableConcept', '',
'subjectReference', '', '', 'Reference(Group)', '',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', 'Σ', '0..1', 'markdown', 'Natural language description of the research definition',
'comment', '', '0..*', 'string', 'Used for footnotes or explanatory notes',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for research definition (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this research definition is defined',
'usage', '', '0..1', 'string', 'Describes the clinical usage of the ResearchDefinition',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'approvalDate', '', '0..1', 'date', 'When the research definition was approved by publisher',
'lastReviewDate', '', '0..1', 'date', 'When the research definition was last reviewed',
'effectivePeriod', 'Σ', '0..1', 'Period', 'When the research definition is expected to be used',
'topic', '', '0..*', 'CodeableConcept', 'The category of the ResearchDefinition, such as Education, Treatment, Assessment, etc.DefinitionTopic (Example)',
'author', '', '0..*', 'ContactDetail', 'Who authored the content',
'editor', '', '0..*', 'ContactDetail', 'Who edited the content',
'reviewer', '', '0..*', 'ContactDetail', 'Who reviewed the content',
'endorser', '', '0..*', 'ContactDetail', 'Who endorsed the content',
'relatedArtifact', '', '0..*', 'RelatedArtifact', 'Additional documentation, citations, etc.',
'library', '', '0..*', 'canonical(Library)', 'Logic used by the ResearchDefinition',
'population', 'Σ', '1..1', 'Reference(ResearchElementDefinition)', 'What population?',
'exposure', 'Σ', '0..1', 'Reference(ResearchElementDefinition)', 'What exposure?',
'exposureAlternative', 'Σ', '0..1', 'Reference(ResearchElementDefinition)', 'What alternative exposure state?',
'outcome', 'Σ', '0..1', 'Reference(ResearchElementDefinition)', 'What outcome?',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ResearchDefinition', 'ITU', '', 'DomainResource', 'A research context or question+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this research definition, represented as a URI (globally unique)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the research definition',
'version', 'Σ', '0..1', 'string', 'Business version of the research definition',
'name', 'ΣI', '0..1', 'string', 'Name for this research definition (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this research definition (human friendly)',
'shortTitle', '', '0..1', 'string', 'Title for use in informal contexts',
'subtitle', '', '0..1', 'string', 'Subordinate title of the ResearchDefinition',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'subject[x]', '', '0..1', '', 'E.g. Patient, Practitioner, RelatedPerson, Organization, Location, DeviceSubject type (Extensible)',
'subjectCodeableConcept', '', '', 'CodeableConcept', '',
'subjectReference', '', '', 'Reference(Group)', '',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', 'Σ', '0..1', 'markdown', 'Natural language description of the research definition',
'comment', '', '0..*', 'string', 'Used for footnotes or explanatory notes',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for research definition (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this research definition is defined',
'usage', '', '0..1', 'string', 'Describes the clinical usage of the ResearchDefinition',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'approvalDate', '', '0..1', 'date', 'When the research definition was approved by publisher',
'lastReviewDate', '', '0..1', 'date', 'When the research definition was last reviewed',
'effectivePeriod', 'Σ', '0..1', 'Period', 'When the research definition is expected to be used',
'topic', '', '0..*', 'CodeableConcept', 'The category of the ResearchDefinition, such as Education, Treatment, Assessment, etc.DefinitionTopic (Example)',
'author', '', '0..*', 'ContactDetail', 'Who authored the content',
'editor', '', '0..*', 'ContactDetail', 'Who edited the content',
'reviewer', '', '0..*', 'ContactDetail', 'Who reviewed the content',
'endorser', '', '0..*', 'ContactDetail', 'Who endorsed the content',
'relatedArtifact', '', '0..*', 'RelatedArtifact', 'Additional documentation, citations, etc.',
'library', '', '0..*', 'canonical(Library)', 'Logic used by the ResearchDefinition',
'population', 'Σ', '1..1', 'Reference(ResearchElementDefinition)', 'What population?',
'exposure', 'Σ', '0..1', 'Reference(ResearchElementDefinition)', 'What exposure?',
'exposureAlternative', 'Σ', '0..1', 'Reference(ResearchElementDefinition)', 'What alternative exposure state?',
'outcome', 'Σ', '0..1', 'Reference(ResearchElementDefinition)', 'What outcome?',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'ResearchDefinition.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'ResearchDefinition.subject[x]', 'The possible types of subjects for the research (E.g. Patient, Practitioner, Organization, Location, etc.).', 'Extensible', 'SubjectType',
'ResearchDefinition.jurisdiction', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'ResearchDefinition.topic', 'High-level categorization of the definition, used for searching, sorting, and filtering.', 'Example', 'DefinitionTopic',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'rsd-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches('[A-Z]([A-Za-z0-9_]){0,254}')',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'composed-of', 'reference', 'What resource is being referenced', 'ResearchDefinition.relatedArtifact.where(type='composed-of').resource(Any)', '',
'context', 'token', 'A use context assigned to the research definition', '(ResearchDefinition.useContext.value as CodeableConcept)', '',
'context-quantity', 'quantity', 'A quantity- or range-valued use context assigned to the research definition', '(ResearchDefinition.useContext.value as Quantity) | (ResearchDefinition.useContext.value as Range)', '',
'context-type', 'token', 'A type of use context assigned to the research definition', 'ResearchDefinition.useContext.code', '',
'context-type-quantity', 'composite', 'A use context type and quantity- or range-based value assigned to the research definition', 'On ResearchDefinition.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value', 'composite', 'A use context type and value assigned to the research definition', 'On ResearchDefinition.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date', 'date', 'The research definition publication date', 'ResearchDefinition.date', '',
'depends-on', 'reference', 'What resource is being referenced', 'ResearchDefinition.relatedArtifact.where(type='depends-on').resource | ResearchDefinition.library(Library, Any)', '',
'derived-from', 'reference', 'What resource is being referenced', 'ResearchDefinition.relatedArtifact.where(type='derived-from').resource(Any)', '',
'description', 'string', 'The description of the research definition', 'ResearchDefinition.description', '',
'effective', 'date', 'The time during which the research definition is intended to be in use', 'ResearchDefinition.effectivePeriod', '',
'identifier', 'token', 'External identifier for the research definition', 'ResearchDefinition.identifier', '',
'jurisdiction', 'token', 'Intended jurisdiction for the research definition', 'ResearchDefinition.jurisdiction', '',
'name', 'string', 'Computationally friendly name of the research definition', 'ResearchDefinition.name', '',
'predecessor', 'reference', 'What resource is being referenced', 'ResearchDefinition.relatedArtifact.where(type='predecessor').resource(Any)', '',
'publisher', 'string', 'Name of the publisher of the research definition', 'ResearchDefinition.publisher', '',
'status', 'token', 'The current status of the research definition', 'ResearchDefinition.status', '',
'successor', 'reference', 'What resource is being referenced', 'ResearchDefinition.relatedArtifact.where(type='successor').resource(Any)', '',
'title', 'string', 'The human-friendly name of the research definition', 'ResearchDefinition.title', '',
'topic', 'token', 'Topics associated with the ResearchDefinition', 'ResearchDefinition.topic', '',
'url', 'uri', 'The uri that identifies the research definition', 'ResearchDefinition.url', '',
'version', 'token', 'The business version of the research definition', 'ResearchDefinition.version', '',
)


