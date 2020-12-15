df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Clinical Decision Support  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Evidence', 'ITU', '', 'DomainResource', 'A research context or question+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this evidence, represented as a URI (globally unique)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the evidence',
'version', 'Σ', '0..1', 'string', 'Business version of the evidence',
'name', 'ΣI', '0..1', 'string', 'Name for this evidence (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this evidence (human friendly)',
'shortTitle', '', '0..1', 'string', 'Title for use in informal contexts',
'subtitle', '', '0..1', 'string', 'Subordinate title of the Evidence',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', 'Σ', '0..1', 'markdown', 'Natural language description of the evidence',
'note', '', '0..*', 'Annotation', 'Used for footnotes or explanatory notes',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for evidence (if applicable)Jurisdiction (Extensible)',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'approvalDate', '', '0..1', 'date', 'When the evidence was approved by publisher',
'lastReviewDate', '', '0..1', 'date', 'When the evidence was last reviewed',
'effectivePeriod', 'Σ', '0..1', 'Period', 'When the evidence is expected to be used',
'topic', '', '0..*', 'CodeableConcept', 'The category of the Evidence, such as Education, Treatment, Assessment, etc.DefinitionTopic (Example)',
'author', '', '0..*', 'ContactDetail', 'Who authored the content',
'editor', '', '0..*', 'ContactDetail', 'Who edited the content',
'reviewer', '', '0..*', 'ContactDetail', 'Who reviewed the content',
'endorser', '', '0..*', 'ContactDetail', 'Who endorsed the content',
'relatedArtifact', '', '0..*', 'RelatedArtifact', 'Additional documentation, citations, etc.',
'exposureBackground', 'Σ', '1..1', 'Reference(EvidenceVariable)', 'What population?',
'exposureVariant', 'Σ', '0..*', 'Reference(EvidenceVariable)', 'What exposure?',
'outcome', 'Σ', '0..*', 'Reference(EvidenceVariable)', 'What outcome?',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Evidence', 'ITU', '', 'DomainResource', 'A research context or question+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this evidence, represented as a URI (globally unique)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the evidence',
'version', 'Σ', '0..1', 'string', 'Business version of the evidence',
'name', 'ΣI', '0..1', 'string', 'Name for this evidence (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this evidence (human friendly)',
'shortTitle', '', '0..1', 'string', 'Title for use in informal contexts',
'subtitle', '', '0..1', 'string', 'Subordinate title of the Evidence',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', 'Σ', '0..1', 'markdown', 'Natural language description of the evidence',
'note', '', '0..*', 'Annotation', 'Used for footnotes or explanatory notes',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for evidence (if applicable)Jurisdiction (Extensible)',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'approvalDate', '', '0..1', 'date', 'When the evidence was approved by publisher',
'lastReviewDate', '', '0..1', 'date', 'When the evidence was last reviewed',
'effectivePeriod', 'Σ', '0..1', 'Period', 'When the evidence is expected to be used',
'topic', '', '0..*', 'CodeableConcept', 'The category of the Evidence, such as Education, Treatment, Assessment, etc.DefinitionTopic (Example)',
'author', '', '0..*', 'ContactDetail', 'Who authored the content',
'editor', '', '0..*', 'ContactDetail', 'Who edited the content',
'reviewer', '', '0..*', 'ContactDetail', 'Who reviewed the content',
'endorser', '', '0..*', 'ContactDetail', 'Who endorsed the content',
'relatedArtifact', '', '0..*', 'RelatedArtifact', 'Additional documentation, citations, etc.',
'exposureBackground', 'Σ', '1..1', 'Reference(EvidenceVariable)', 'What population?',
'exposureVariant', 'Σ', '0..*', 'Reference(EvidenceVariable)', 'What exposure?',
'outcome', 'Σ', '0..*', 'Reference(EvidenceVariable)', 'What outcome?',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Evidence.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'Evidence.jurisdiction', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'Evidence.topic', 'High-level categorization of the definition, used for searching, sorting, and filtering.', 'Example', 'DefinitionTopic',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'evi-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches('[A-Z]([A-Za-z0-9_]){0,254}')',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'composed-of', 'reference', 'What resource is being referenced', 'Evidence.relatedArtifact.where(type='composed-of').resource(Any)', '',
'context', 'token', 'A use context assigned to the evidence', '(Evidence.useContext.value as CodeableConcept)', '',
'context-quantity', 'quantity', 'A quantity- or range-valued use context assigned to the evidence', '(Evidence.useContext.value as Quantity) | (Evidence.useContext.value as Range)', '',
'context-type', 'token', 'A type of use context assigned to the evidence', 'Evidence.useContext.code', '',
'context-type-quantity', 'composite', 'A use context type and quantity- or range-based value assigned to the evidence', 'On Evidence.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value', 'composite', 'A use context type and value assigned to the evidence', 'On Evidence.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date', 'date', 'The evidence publication date', 'Evidence.date', '',
'depends-on', 'reference', 'What resource is being referenced', 'Evidence.relatedArtifact.where(type='depends-on').resource(Any)', '',
'derived-from', 'reference', 'What resource is being referenced', 'Evidence.relatedArtifact.where(type='derived-from').resource(Any)', '',
'description', 'string', 'The description of the evidence', 'Evidence.description', '',
'effective', 'date', 'The time during which the evidence is intended to be in use', 'Evidence.effectivePeriod', '',
'identifier', 'token', 'External identifier for the evidence', 'Evidence.identifier', '',
'jurisdiction', 'token', 'Intended jurisdiction for the evidence', 'Evidence.jurisdiction', '',
'name', 'string', 'Computationally friendly name of the evidence', 'Evidence.name', '',
'predecessor', 'reference', 'What resource is being referenced', 'Evidence.relatedArtifact.where(type='predecessor').resource(Any)', '',
'publisher', 'string', 'Name of the publisher of the evidence', 'Evidence.publisher', '',
'status', 'token', 'The current status of the evidence', 'Evidence.status', '',
'successor', 'reference', 'What resource is being referenced', 'Evidence.relatedArtifact.where(type='successor').resource(Any)', '',
'title', 'string', 'The human-friendly name of the evidence', 'Evidence.title', '',
'topic', 'token', 'Topics associated with the Evidence', 'Evidence.topic', '',
'url', 'uri', 'The uri that identifies the evidence', 'Evidence.url', '',
'version', 'token', 'The business version of the evidence', 'Evidence.version', '',
)


