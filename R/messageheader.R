df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Infrastructure And Messaging  Work Group', 'Maturity Level: 4', 'Trial Use', 'Security Category: Not Classified', 'Compartments: Device, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MessageHeader', 'ΣTU', '', 'DomainResource', 'A resource that describes a message that is exchanged between systemsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'event[x]', 'Σ', '1..1', '', 'Code for the event this message represents or link to event definitionMessageEvent (Example)',
'eventCoding', '', '', 'Coding', '',
'eventUri', '', '', 'uri', '',
'destination', 'Σ', '0..*', 'BackboneElement', 'Message destination application(s)',
'name', 'Σ', '0..1', 'string', 'Name of system',
'target', 'Σ', '0..1', 'Reference(Device)', 'Particular delivery destination within the destination',
'endpoint', 'Σ', '1..1', 'url', 'Actual destination address or id',
'receiver', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Intended "real-world" recipient for the data',
'sender', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Real world sender of the message',
'enterer', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'The source of the data entry',
'author', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'The source of the decision',
'source', 'Σ', '1..1', 'BackboneElement', 'Message source application',
'name', 'Σ', '0..1', 'string', 'Name of system',
'software', 'Σ', '0..1', 'string', 'Name of software running the system',
'version', 'Σ', '0..1', 'string', 'Version of software running',
'contact', 'Σ', '0..1', 'ContactPoint', 'Human contact for problems',
'endpoint', 'Σ', '1..1', 'url', 'Actual message source address or id',
'responsible', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Final responsibility for event',
'reason', 'Σ', '0..1', 'CodeableConcept', 'Cause of eventExample Message Reason Codes (Example)',
'response', 'Σ', '0..1', 'BackboneElement', 'If this is a reply to prior message',
'identifier', 'Σ', '1..1', 'id', 'Id of original message',
'code', 'Σ', '1..1', 'code', 'ok | transient-error | fatal-errorResponseType (Required)',
'details', 'Σ', '0..1', 'Reference(OperationOutcome)', 'Specific list of hints/warnings/errors',
'focus', 'Σ', '0..*', 'Reference(Any)', 'The actual content of the message',
'definition', 'Σ', '0..1', 'canonical(MessageDefinition)', 'Link to the definition for this message',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'MessageHeader', '',
'MessageHeader.event[x]', 'Renamed from event to event[x]
        Add Type uri',
'MessageHeader.destination.endpoint', 'Type changed from uri to url',
'MessageHeader.destination.receiver', 'Moved from MessageHeader to MessageHeader.destination
        Type Reference: Added Target Type PractitionerRole',
'MessageHeader.sender', 'Type Reference: Added Target Type PractitionerRole',
'MessageHeader.enterer', 'Type Reference: Added Target Type PractitionerRole',
'MessageHeader.author', 'Type Reference: Added Target Type PractitionerRole',
'MessageHeader.source.endpoint', 'Type changed from uri to url',
'MessageHeader.responsible', 'Type Reference: Added Target Type PractitionerRole',
'MessageHeader.response.code', 'Change value set from http://hl7.org/fhir/ValueSet/response-code to http://hl7.org/fhir/ValueSet/response-code|4.0.1',
'MessageHeader.definition', 'Added Element',
'MessageHeader.timestamp', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MessageHeader', 'ΣTU', '', 'DomainResource', 'A resource that describes a message that is exchanged between systemsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'event[x]', 'Σ', '1..1', '', 'Code for the event this message represents or link to event definitionMessageEvent (Example)',
'eventCoding', '', '', 'Coding', '',
'eventUri', '', '', 'uri', '',
'destination', 'Σ', '0..*', 'BackboneElement', 'Message destination application(s)',
'name', 'Σ', '0..1', 'string', 'Name of system',
'target', 'Σ', '0..1', 'Reference(Device)', 'Particular delivery destination within the destination',
'endpoint', 'Σ', '1..1', 'url', 'Actual destination address or id',
'receiver', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Intended "real-world" recipient for the data',
'sender', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Real world sender of the message',
'enterer', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'The source of the data entry',
'author', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'The source of the decision',
'source', 'Σ', '1..1', 'BackboneElement', 'Message source application',
'name', 'Σ', '0..1', 'string', 'Name of system',
'software', 'Σ', '0..1', 'string', 'Name of software running the system',
'version', 'Σ', '0..1', 'string', 'Version of software running',
'contact', 'Σ', '0..1', 'ContactPoint', 'Human contact for problems',
'endpoint', 'Σ', '1..1', 'url', 'Actual message source address or id',
'responsible', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Final responsibility for event',
'reason', 'Σ', '0..1', 'CodeableConcept', 'Cause of eventExample Message Reason Codes (Example)',
'response', 'Σ', '0..1', 'BackboneElement', 'If this is a reply to prior message',
'identifier', 'Σ', '1..1', 'id', 'Id of original message',
'code', 'Σ', '1..1', 'code', 'ok | transient-error | fatal-errorResponseType (Required)',
'details', 'Σ', '0..1', 'Reference(OperationOutcome)', 'Specific list of hints/warnings/errors',
'focus', 'Σ', '0..*', 'Reference(Any)', 'The actual content of the message',
'definition', 'Σ', '0..1', 'canonical(MessageDefinition)', 'Link to the definition for this message',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'MessageHeader', '',
'MessageHeader.event[x]', 'Renamed from event to event[x]
        Add Type uri',
'MessageHeader.destination.endpoint', 'Type changed from uri to url',
'MessageHeader.destination.receiver', 'Moved from MessageHeader to MessageHeader.destination
        Type Reference: Added Target Type PractitionerRole',
'MessageHeader.sender', 'Type Reference: Added Target Type PractitionerRole',
'MessageHeader.enterer', 'Type Reference: Added Target Type PractitionerRole',
'MessageHeader.author', 'Type Reference: Added Target Type PractitionerRole',
'MessageHeader.source.endpoint', 'Type changed from uri to url',
'MessageHeader.responsible', 'Type Reference: Added Target Type PractitionerRole',
'MessageHeader.response.code', 'Change value set from http://hl7.org/fhir/ValueSet/response-code to http://hl7.org/fhir/ValueSet/response-code|4.0.1',
'MessageHeader.definition', 'Added Element',
'MessageHeader.timestamp', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'MessageHeader.event[x]', 'One of the message events defined as part of this version of FHIR.', 'Example', 'Message Events',
'MessageHeader.reason', 'Reason for event occurrence.', 'Example', 'ExampleMessageReasonCodes',
'MessageHeader.response.code', 'The kind of response to a message.', 'Required', 'ResponseType',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'author', 'reference', 'The source of the decision', 'MessageHeader.author(Practitioner, PractitionerRole)', '',
'code', 'token', 'ok | transient-error | fatal-error', 'MessageHeader.response.code', '',
'destination', 'string', 'Name of system', 'MessageHeader.destination.name', '',
'destination-uri', 'uri', 'Actual destination address or id', 'MessageHeader.destination.endpoint', '',
'enterer', 'reference', 'The source of the data entry', 'MessageHeader.enterer(Practitioner, PractitionerRole)', '',
'event', 'token', 'Code for the event this message represents or link to event definition', 'MessageHeader.event', '',
'focus', 'reference', 'The actual content of the message', 'MessageHeader.focus(Any)', '',
'receiver', 'reference', 'Intended "real-world" recipient for the data', 'MessageHeader.destination.receiver(Practitioner, Organization, PractitionerRole)', '',
'response-id', 'token', 'Id of original message', 'MessageHeader.response.identifier', '',
'responsible', 'reference', 'Final responsibility for event', 'MessageHeader.responsible(Practitioner, Organization, PractitionerRole)', '',
'sender', 'reference', 'Real world sender of the message', 'MessageHeader.sender(Practitioner, Organization, PractitionerRole)', '',
'source', 'string', 'Name of system', 'MessageHeader.source.name', '',
'source-uri', 'uri', 'Actual message source address or id', 'MessageHeader.source.endpoint', '',
'target', 'reference', 'Particular delivery destination within the destination', 'MessageHeader.destination.target(Device)', '',
)


