df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Infrastructure And Messaging  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MessageDefinition', 'ITU', '', 'DomainResource', 'A resource that defines a type of message that can be exchanged between systems+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Business Identifier for a given MessageDefinition',
'identifier', 'Σ', '0..*', 'Identifier', 'Primary key for the message definition on a given server',
'version', 'Σ', '0..1', 'string', 'Business version of the message definition',
'name', 'ΣI', '0..1', 'string', 'Name for this message definition (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this message definition (human friendly)',
'replaces', 'Σ', '0..*', 'canonical(MessageDefinition)', 'Takes the place of',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '1..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', 'Σ', '0..1', 'markdown', 'Natural language description of the message definition',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for message definition (if applicable)Jurisdiction (Extensible)',
'purpose', 'Σ', '0..1', 'markdown', 'Why this message definition is defined',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'base', 'Σ', '0..1', 'canonical(MessageDefinition)', 'Definition this one is based on',
'parent', 'Σ', '0..*', 'canonical(ActivityDefinition | PlanDefinition)', 'Protocol/workflow this is part of',
'event[x]', 'Σ', '1..1', '', 'Event code  or link to the EventDefinitionMessageEvent (Example)',
'eventCoding', '', '', 'Coding', '',
'eventUri', '', '', 'uri', '',
'category', 'Σ', '0..1', 'code', 'consequence | currency | notificationMessageSignificanceCategory (Required)',
'focus', 'ΣI', '0..*', 'BackboneElement', 'Resource(s) that are the subject of the event+ Rule: Max must be postive int or *',
'code', 'Σ', '1..1', 'code', 'Type of resourceResourceType (Required)',
'profile', '', '0..1', 'canonical(StructureDefinition)', 'Profile that must be adhered to by focus',
'min', 'Σ', '1..1', 'unsignedInt', 'Minimum number of focuses of this type',
'max', 'I', '0..1', 'string', 'Maximum number of focuses of this type',
'responseRequired', '', '0..1', 'code', 'always | on-error | never | on-successmessageheader-response-request (Required)',
'allowedResponse', '', '0..*', 'BackboneElement', 'Responses to this message',
'message', '', '1..1', 'canonical(MessageDefinition)', 'Reference to allowed message definition response',
'situation', '', '0..1', 'markdown', 'When should this response be used',
'graph', '', '0..*', 'canonical(GraphDefinition)', 'Canonical reference to a GraphDefinition',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'MessageDefinition', '',
'MessageDefinition.identifier', 'Max Cardinality changed from 1 to *',
'MessageDefinition.replaces', 'Type changed from Reference(MessageDefinition) to canonical(MessageDefinition)',
'MessageDefinition.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'MessageDefinition.experimental', 'No longer marked as Modifier',
'MessageDefinition.base', 'Type changed from Reference(MessageDefinition) to canonical(MessageDefinition)',
'MessageDefinition.parent', 'Type changed from Reference(ActivityDefinition | PlanDefinition) to canonical(ActivityDefinition | PlanDefinition)',
'MessageDefinition.event[x]', 'Renamed from event to event[x]
        Add Type uri',
'MessageDefinition.category', 'Change value set from http://hl7.org/fhir/ValueSet/message-significance-category to http://hl7.org/fhir/ValueSet/message-significance-category|4.0.1',
'MessageDefinition.focus.code', 'Change value set from http://hl7.org/fhir/ValueSet/resource-types to http://hl7.org/fhir/ValueSet/resource-types|4.0.1',
'MessageDefinition.focus.profile', 'Type changed from Reference(StructureDefinition) to canonical(StructureDefinition)',
'MessageDefinition.focus.min', 'Min Cardinality changed from 0 to 1
        Default Value "0" removed',
'MessageDefinition.responseRequired', 'Type changed from boolean to code
        
Add Binding http://hl7.org/fhir/ValueSet/messageheader-response-request|4.0.1 (required)
        
        Default Value "false" removed',
'MessageDefinition.allowedResponse.message', 'Type changed from Reference(MessageDefinition) to canonical(MessageDefinition)',
'MessageDefinition.graph', 'Added Element',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MessageDefinition', 'ITU', '', 'DomainResource', 'A resource that defines a type of message that can be exchanged between systems+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Business Identifier for a given MessageDefinition',
'identifier', 'Σ', '0..*', 'Identifier', 'Primary key for the message definition on a given server',
'version', 'Σ', '0..1', 'string', 'Business version of the message definition',
'name', 'ΣI', '0..1', 'string', 'Name for this message definition (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this message definition (human friendly)',
'replaces', 'Σ', '0..*', 'canonical(MessageDefinition)', 'Takes the place of',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '1..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', 'Σ', '0..1', 'markdown', 'Natural language description of the message definition',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for message definition (if applicable)Jurisdiction (Extensible)',
'purpose', 'Σ', '0..1', 'markdown', 'Why this message definition is defined',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'base', 'Σ', '0..1', 'canonical(MessageDefinition)', 'Definition this one is based on',
'parent', 'Σ', '0..*', 'canonical(ActivityDefinition | PlanDefinition)', 'Protocol/workflow this is part of',
'event[x]', 'Σ', '1..1', '', 'Event code  or link to the EventDefinitionMessageEvent (Example)',
'eventCoding', '', '', 'Coding', '',
'eventUri', '', '', 'uri', '',
'category', 'Σ', '0..1', 'code', 'consequence | currency | notificationMessageSignificanceCategory (Required)',
'focus', 'ΣI', '0..*', 'BackboneElement', 'Resource(s) that are the subject of the event+ Rule: Max must be postive int or *',
'code', 'Σ', '1..1', 'code', 'Type of resourceResourceType (Required)',
'profile', '', '0..1', 'canonical(StructureDefinition)', 'Profile that must be adhered to by focus',
'min', 'Σ', '1..1', 'unsignedInt', 'Minimum number of focuses of this type',
'max', 'I', '0..1', 'string', 'Maximum number of focuses of this type',
'responseRequired', '', '0..1', 'code', 'always | on-error | never | on-successmessageheader-response-request (Required)',
'allowedResponse', '', '0..*', 'BackboneElement', 'Responses to this message',
'message', '', '1..1', 'canonical(MessageDefinition)', 'Reference to allowed message definition response',
'situation', '', '0..1', 'markdown', 'When should this response be used',
'graph', '', '0..*', 'canonical(GraphDefinition)', 'Canonical reference to a GraphDefinition',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'MessageDefinition', '',
'MessageDefinition.identifier', 'Max Cardinality changed from 1 to *',
'MessageDefinition.replaces', 'Type changed from Reference(MessageDefinition) to canonical(MessageDefinition)',
'MessageDefinition.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'MessageDefinition.experimental', 'No longer marked as Modifier',
'MessageDefinition.base', 'Type changed from Reference(MessageDefinition) to canonical(MessageDefinition)',
'MessageDefinition.parent', 'Type changed from Reference(ActivityDefinition | PlanDefinition) to canonical(ActivityDefinition | PlanDefinition)',
'MessageDefinition.event[x]', 'Renamed from event to event[x]
        Add Type uri',
'MessageDefinition.category', 'Change value set from http://hl7.org/fhir/ValueSet/message-significance-category to http://hl7.org/fhir/ValueSet/message-significance-category|4.0.1',
'MessageDefinition.focus.code', 'Change value set from http://hl7.org/fhir/ValueSet/resource-types to http://hl7.org/fhir/ValueSet/resource-types|4.0.1',
'MessageDefinition.focus.profile', 'Type changed from Reference(StructureDefinition) to canonical(StructureDefinition)',
'MessageDefinition.focus.min', 'Min Cardinality changed from 0 to 1
        Default Value "0" removed',
'MessageDefinition.responseRequired', 'Type changed from boolean to code
        
Add Binding http://hl7.org/fhir/ValueSet/messageheader-response-request|4.0.1 (required)
        
        Default Value "false" removed',
'MessageDefinition.allowedResponse.message', 'Type changed from Reference(MessageDefinition) to canonical(MessageDefinition)',
'MessageDefinition.graph', 'Added Element',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'MessageDefinition.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'MessageDefinition.jurisdiction', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'MessageDefinition.event[x]', 'One of the message events defined as part of this version of FHIR.', 'Example', 'Message Events',
'MessageDefinition.category', 'The impact of the content of a message.', 'Required', 'MessageSignificanceCategory',
'MessageDefinition.focus.code', 'One of the resource types defined as part of this version of FHIR.', 'Required', 'Resource Types',
'MessageDefinition.responseRequired', 'HL7-defined table of codes which identify conditions under which acknowledgments are required to be returned in response to a message.', 'Required', 'messageheader-response-request',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'msd-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches('[A-Z]([A-Za-z0-9_]){0,254}')',
'md-1', 'Rule', 'MessageDefinition.focus', 'Max must be postive int or *', 'max='*' or (max.toInteger() > 0)',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'category', 'token', 'The behavior associated with the message', 'MessageDefinition.category', '',
'context', 'token', 'A use context assigned to the message definition', '(MessageDefinition.useContext.value as CodeableConcept)', '',
'context-quantity', 'quantity', 'A quantity- or range-valued use context assigned to the message definition', '(MessageDefinition.useContext.value as Quantity) | (MessageDefinition.useContext.value as Range)', '',
'context-type', 'token', 'A type of use context assigned to the message definition', 'MessageDefinition.useContext.code', '',
'context-type-quantity', 'composite', 'A use context type and quantity- or range-based value assigned to the message definition', 'On MessageDefinition.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value', 'composite', 'A use context type and value assigned to the message definition', 'On MessageDefinition.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date', 'date', 'The message definition publication date', 'MessageDefinition.date', '',
'description', 'string', 'The description of the message definition', 'MessageDefinition.description', '',
'event', 'token', 'The event that triggers the message or link to the event definition.', 'MessageDefinition.event', '',
'focus', 'token', 'A resource that is a permitted focus of the message', 'MessageDefinition.focus.code', '',
'identifier', 'token', 'External identifier for the message definition', 'MessageDefinition.identifier', '',
'jurisdiction', 'token', 'Intended jurisdiction for the message definition', 'MessageDefinition.jurisdiction', '',
'name', 'string', 'Computationally friendly name of the message definition', 'MessageDefinition.name', '',
'parent', 'reference', 'A resource that is the parent of the definition', 'MessageDefinition.parent(PlanDefinition, ActivityDefinition)', '',
'publisher', 'string', 'Name of the publisher of the message definition', 'MessageDefinition.publisher', '',
'status', 'token', 'The current status of the message definition', 'MessageDefinition.status', '',
'title', 'string', 'The human-friendly name of the message definition', 'MessageDefinition.title', '',
'url', 'uri', 'The uri that identifies the message definition', 'MessageDefinition.url', '',
'version', 'token', 'The business version of the message definition', 'MessageDefinition.version', '',
)


