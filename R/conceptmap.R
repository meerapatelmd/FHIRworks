df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Vocabulary  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ConceptMap', 'ITU', '', 'DomainResource', 'A map from one set of concepts to one or more other concepts+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this concept map, represented as a URI (globally unique)',
'identifier', 'Σ', '0..1', 'Identifier', 'Additional identifier for the concept map',
'version', 'Σ', '0..1', 'string', 'Business version of the concept map',
'name', 'ΣI', '0..1', 'string', 'Name for this concept map (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this concept map (human friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the concept map',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for concept map (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this concept map is defined',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'source[x]', 'Σ', '0..1', '', 'The source value set that contains the concepts that are being mapped',
'sourceUri', '', '', 'uri', '',
'sourceCanonical', '', '', 'canonical(ValueSet)', '',
'target[x]', 'Σ', '0..1', '', 'The target value set which provides context for the mappings',
'targetUri', '', '', 'uri', '',
'targetCanonical', '', '', 'canonical(ValueSet)', '',
'group', '', '0..*', 'BackboneElement', 'Same source and target systems',
'source', '', '0..1', 'uri', 'Source system where concepts to be mapped are defined',
'sourceVersion', '', '0..1', 'string', 'Specific version of the  code system',
'target', '', '0..1', 'uri', 'Target system that the concepts are to be mapped to',
'targetVersion', '', '0..1', 'string', 'Specific version of the  code system',
'element', '', '1..*', 'BackboneElement', 'Mappings for a concept from the source set',
'code', '', '0..1', 'code', 'Identifies element being mapped',
'display', '', '0..1', 'string', 'Display for the code',
'target', 'I', '0..*', 'BackboneElement', 'Concept in target system for element+ Rule: If the map is narrower or inexact, there SHALL be some comments',
'code', '', '0..1', 'code', 'Code that identifies the target element',
'display', '', '0..1', 'string', 'Display for the code',
'equivalence', '?!', '1..1', 'code', 'relatedto | equivalent | equal | wider | subsumes | narrower | specializes | inexact | unmatched | disjointConceptMapEquivalence (Required)',
'comment', 'I', '0..1', 'string', 'Description of status/issues in mapping',
'dependsOn', '', '0..*', 'BackboneElement', 'Other elements required for this mapping (from context)',
'property', '', '1..1', 'uri', 'Reference to property mapping depends on',
'system', '', '0..1', 'canonical(CodeSystem)', 'Code System (if necessary)',
'value', '', '1..1', 'string', 'Value of the referenced element',
'display', '', '0..1', 'string', 'Display for the code (if value is a code)',
'product', '', '0..*', 'see dependsOn', 'Other concepts that this mapping also produces',
'unmapped', 'I', '0..1', 'BackboneElement', 'What to do when there is no mapping for the source concept+ Rule: If the mode is 'fixed', a code must be provided+ Rule: If the mode is 'other-map', a url must be provided',
'mode', '', '1..1', 'code', 'provided | fixed | other-mapConceptMapGroupUnmappedMode (Required)',
'code', '', '0..1', 'code', 'Fixed code when mode = fixed',
'display', '', '0..1', 'string', 'Display for the code',
'url', '', '0..1', 'canonical(ConceptMap)', 'canonical reference to an additional ConceptMap to use for mapping if the source concept is unmapped',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'ConceptMap', '',
'ConceptMap.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'ConceptMap.experimental', 'No longer marked as Modifier',
'ConceptMap.source[x]', 'Add Type canonical(ValueSet)
        Remove Type Reference(ValueSet)',
'ConceptMap.target[x]', 'Add Type canonical(ValueSet)
        Remove Type Reference(ValueSet)',
'ConceptMap.group.element.target.equivalence', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/concept-map-equivalence to http://hl7.org/fhir/ValueSet/concept-map-equivalence|4.0.1
        Default Value "equivalent" removed',
'ConceptMap.group.element.target.dependsOn.system', 'Type changed from uri to canonical(CodeSystem)',
'ConceptMap.group.element.target.dependsOn.value', 'Renamed from code to value',
'ConceptMap.group.unmapped.mode', 'Change value set from http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode to http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode|4.0.1',
'ConceptMap.group.unmapped.url', 'Type changed from uri to canonical(ConceptMap)',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ConceptMap', 'ITU', '', 'DomainResource', 'A map from one set of concepts to one or more other concepts+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this concept map, represented as a URI (globally unique)',
'identifier', 'Σ', '0..1', 'Identifier', 'Additional identifier for the concept map',
'version', 'Σ', '0..1', 'string', 'Business version of the concept map',
'name', 'ΣI', '0..1', 'string', 'Name for this concept map (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this concept map (human friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the concept map',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for concept map (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this concept map is defined',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'source[x]', 'Σ', '0..1', '', 'The source value set that contains the concepts that are being mapped',
'sourceUri', '', '', 'uri', '',
'sourceCanonical', '', '', 'canonical(ValueSet)', '',
'target[x]', 'Σ', '0..1', '', 'The target value set which provides context for the mappings',
'targetUri', '', '', 'uri', '',
'targetCanonical', '', '', 'canonical(ValueSet)', '',
'group', '', '0..*', 'BackboneElement', 'Same source and target systems',
'source', '', '0..1', 'uri', 'Source system where concepts to be mapped are defined',
'sourceVersion', '', '0..1', 'string', 'Specific version of the  code system',
'target', '', '0..1', 'uri', 'Target system that the concepts are to be mapped to',
'targetVersion', '', '0..1', 'string', 'Specific version of the  code system',
'element', '', '1..*', 'BackboneElement', 'Mappings for a concept from the source set',
'code', '', '0..1', 'code', 'Identifies element being mapped',
'display', '', '0..1', 'string', 'Display for the code',
'target', 'I', '0..*', 'BackboneElement', 'Concept in target system for element+ Rule: If the map is narrower or inexact, there SHALL be some comments',
'code', '', '0..1', 'code', 'Code that identifies the target element',
'display', '', '0..1', 'string', 'Display for the code',
'equivalence', '?!', '1..1', 'code', 'relatedto | equivalent | equal | wider | subsumes | narrower | specializes | inexact | unmatched | disjointConceptMapEquivalence (Required)',
'comment', 'I', '0..1', 'string', 'Description of status/issues in mapping',
'dependsOn', '', '0..*', 'BackboneElement', 'Other elements required for this mapping (from context)',
'property', '', '1..1', 'uri', 'Reference to property mapping depends on',
'system', '', '0..1', 'canonical(CodeSystem)', 'Code System (if necessary)',
'value', '', '1..1', 'string', 'Value of the referenced element',
'display', '', '0..1', 'string', 'Display for the code (if value is a code)',
'product', '', '0..*', 'see dependsOn', 'Other concepts that this mapping also produces',
'unmapped', 'I', '0..1', 'BackboneElement', 'What to do when there is no mapping for the source concept+ Rule: If the mode is 'fixed', a code must be provided+ Rule: If the mode is 'other-map', a url must be provided',
'mode', '', '1..1', 'code', 'provided | fixed | other-mapConceptMapGroupUnmappedMode (Required)',
'code', '', '0..1', 'code', 'Fixed code when mode = fixed',
'display', '', '0..1', 'string', 'Display for the code',
'url', '', '0..1', 'canonical(ConceptMap)', 'canonical reference to an additional ConceptMap to use for mapping if the source concept is unmapped',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'ConceptMap', '',
'ConceptMap.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'ConceptMap.experimental', 'No longer marked as Modifier',
'ConceptMap.source[x]', 'Add Type canonical(ValueSet)
        Remove Type Reference(ValueSet)',
'ConceptMap.target[x]', 'Add Type canonical(ValueSet)
        Remove Type Reference(ValueSet)',
'ConceptMap.group.element.target.equivalence', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/concept-map-equivalence to http://hl7.org/fhir/ValueSet/concept-map-equivalence|4.0.1
        Default Value "equivalent" removed',
'ConceptMap.group.element.target.dependsOn.system', 'Type changed from uri to canonical(CodeSystem)',
'ConceptMap.group.element.target.dependsOn.value', 'Renamed from code to value',
'ConceptMap.group.unmapped.mode', 'Change value set from http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode to http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode|4.0.1',
'ConceptMap.group.unmapped.url', 'Type changed from uri to canonical(ConceptMap)',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'ConceptMap.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'ConceptMap.jurisdiction', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'ConceptMap.group.element.target.equivalence', 'The degree of equivalence between concepts.', 'Required', 'ConceptMapEquivalence',
'ConceptMap.group.unmapped.mode', 'Defines which action to take if there is no match in the group.', 'Required', 'ConceptMapGroupUnmappedMode',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'cmd-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches('[A-Z]([A-Za-z0-9_]){0,254}')',
'cmd-1', 'Rule', 'ConceptMap.group.element.target', 'If the map is narrower or inexact, there SHALL be some comments', 'comment.exists() or equivalence.empty() or ((equivalence != 'narrower') and (equivalence != 'inexact'))',
'cmd-2', 'Rule', 'ConceptMap.group.unmapped', 'If the mode is 'fixed', a code must be provided', '(mode = 'fixed') implies code.exists()',
'cmd-3', 'Rule', 'ConceptMap.group.unmapped', 'If the mode is 'other-map', a url must be provided', '(mode = 'other-map') implies url.exists()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,
'Source Concept', 'DependsOn.property', 'DependsOn Concept', 'Target Concept',
'X-Ray', 'Bodysite', 'Chest', 'Chest-XRay',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,
'provided', 'Use the code source as provided in the $translate request. This is especially useful for translations between versions of the same code system, where only a few codes have changed',
'fixed', 'Use the code (and display) explicitly provided in the group.unmapped. This is useful when there's a fall back general code - especially for classifications',
'other-map', 'Use the map identified by the canonical URL in url. This is useful when a published concept map needs to be varied for a few specific cases on an institutional bass - the
    institution can create a simple concept that expresses their special cases, and then refer to the general purpose mappings',
)


df10 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'context', 'token', 'A use context assigned to the concept map', '(ConceptMap.useContext.value as CodeableConcept)', '',
'context-quantity', 'quantity', 'A quantity- or range-valued use context assigned to the concept map', '(ConceptMap.useContext.value as Quantity) | (ConceptMap.useContext.value as Range)', '',
'context-type', 'token', 'A type of use context assigned to the concept map', 'ConceptMap.useContext.code', '',
'context-type-quantity', 'composite', 'A use context type and quantity- or range-based value assigned to the concept map', 'On ConceptMap.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value', 'composite', 'A use context type and value assigned to the concept map', 'On ConceptMap.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date', 'date', 'The concept map publication date', 'ConceptMap.date', '',
'dependson', 'uri', 'Reference to property mapping depends on', 'ConceptMap.group.element.target.dependsOn.property', '',
'description', 'string', 'The description of the concept map', 'ConceptMap.description', '',
'identifier', 'token', 'External identifier for the concept map', 'ConceptMap.identifier', '',
'jurisdiction', 'token', 'Intended jurisdiction for the concept map', 'ConceptMap.jurisdiction', '',
'name', 'string', 'Computationally friendly name of the concept map', 'ConceptMap.name', '',
'other', 'reference', 'canonical reference to an additional ConceptMap to use for mapping if the source concept is unmapped', 'ConceptMap.group.unmapped.url(ConceptMap)', '',
'product', 'uri', 'Reference to property mapping depends on', 'ConceptMap.group.element.target.product.property', '',
'publisher', 'string', 'Name of the publisher of the concept map', 'ConceptMap.publisher', '',
'source', 'reference', 'The source value set that contains the concepts that are being mapped', '(ConceptMap.source as canonical)(ValueSet)', '',
'source-code', 'token', 'Identifies element being mapped', 'ConceptMap.group.element.code', '',
'source-system', 'uri', 'Source system where concepts to be mapped are defined', 'ConceptMap.group.source', '',
'source-uri', 'reference', 'The source value set that contains the concepts that are being mapped', '(ConceptMap.source as uri)(ValueSet)', '',
'status', 'token', 'The current status of the concept map', 'ConceptMap.status', '',
'target', 'reference', 'The target value set which provides context for the mappings', '(ConceptMap.target as canonical)(ValueSet)', '',
'target-code', 'token', 'Code that identifies the target element', 'ConceptMap.group.element.target.code', '',
'target-system', 'uri', 'Target system that the concepts are to be mapped to', 'ConceptMap.group.target', '',
'target-uri', 'reference', 'The target value set which provides context for the mappings', '(ConceptMap.target as uri)(ValueSet)', '',
'title', 'string', 'The human-friendly name of the concept map', 'ConceptMap.title', '',
'url', 'uri', 'The uri that identifies the concept map', 'ConceptMap.url', '',
'version', 'token', 'The business version of the concept map', 'ConceptMap.version', '',
)


