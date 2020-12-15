df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Endpoint', 'TU', '', 'DomainResource', 'The technical details of an endpoint that can be used for electronic servicesElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Identifies this endpoint across multiple systems',
'status', '?!Σ', '1..1', 'code', 'active | suspended | error | off | entered-in-error | testEndpointStatus (Required)',
'connectionType', 'Σ', '1..1', 'Coding', 'Protocol/Profile/Standard to be used with this endpoint connectionEndpoint Connection Type (Extensible)',
'name', 'Σ', '0..1', 'string', 'A name that this endpoint can be identified by',
'managingOrganization', 'Σ', '0..1', 'Reference(Organization)', 'Organization that manages this endpoint (might not be the organization that exposes the endpoint)',
'contact', '', '0..*', 'ContactPoint', 'Contact details for source (e.g. troubleshooting)',
'period', 'Σ', '0..1', 'Period', 'Interval the endpoint is expected to be operational',
'payloadType', 'Σ', '1..*', 'CodeableConcept', 'The type of content that may be used at this endpoint (e.g. XDS Discharge summaries)Endpoint Payload Type (Example)',
'payloadMimeType', 'Σ', '0..*', 'code', 'Mimetype to send. If not specified, the content could be anything (including no payload, if the connectionType defined this)MimeType (Required)',
'address', 'Σ', '1..1', 'url', 'The technical base address for connecting to this endpoint',
'header', '', '0..*', 'string', 'Usage depends on the channel type',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Endpoint', '',
'Endpoint.status', 'Change value set from http://hl7.org/fhir/ValueSet/endpoint-status to http://hl7.org/fhir/ValueSet/endpoint-status|4.0.1',
'Endpoint.connectionType', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/endpoint-connection-type" to "http://terminology.hl7.org/CodeSystem/endpoint-connection-type"',
'Endpoint.payloadMimeType', 'Change value set from http://hl7.org/fhir/ValueSet/mimetypes to http://hl7.org/fhir/ValueSet/mimetypes|4.0.1',
'Endpoint.address', 'Type changed from uri to url',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Endpoint', 'TU', '', 'DomainResource', 'The technical details of an endpoint that can be used for electronic servicesElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Identifies this endpoint across multiple systems',
'status', '?!Σ', '1..1', 'code', 'active | suspended | error | off | entered-in-error | testEndpointStatus (Required)',
'connectionType', 'Σ', '1..1', 'Coding', 'Protocol/Profile/Standard to be used with this endpoint connectionEndpoint Connection Type (Extensible)',
'name', 'Σ', '0..1', 'string', 'A name that this endpoint can be identified by',
'managingOrganization', 'Σ', '0..1', 'Reference(Organization)', 'Organization that manages this endpoint (might not be the organization that exposes the endpoint)',
'contact', '', '0..*', 'ContactPoint', 'Contact details for source (e.g. troubleshooting)',
'period', 'Σ', '0..1', 'Period', 'Interval the endpoint is expected to be operational',
'payloadType', 'Σ', '1..*', 'CodeableConcept', 'The type of content that may be used at this endpoint (e.g. XDS Discharge summaries)Endpoint Payload Type (Example)',
'payloadMimeType', 'Σ', '0..*', 'code', 'Mimetype to send. If not specified, the content could be anything (including no payload, if the connectionType defined this)MimeType (Required)',
'address', 'Σ', '1..1', 'url', 'The technical base address for connecting to this endpoint',
'header', '', '0..*', 'string', 'Usage depends on the channel type',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Endpoint', '',
'Endpoint.status', 'Change value set from http://hl7.org/fhir/ValueSet/endpoint-status to http://hl7.org/fhir/ValueSet/endpoint-status|4.0.1',
'Endpoint.connectionType', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/endpoint-connection-type" to "http://terminology.hl7.org/CodeSystem/endpoint-connection-type"',
'Endpoint.payloadMimeType', 'Change value set from http://hl7.org/fhir/ValueSet/mimetypes to http://hl7.org/fhir/ValueSet/mimetypes|4.0.1',
'Endpoint.address', 'Type changed from uri to url',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Endpoint.status', 'The status of the endpoint.', 'Required', 'EndpointStatus',
'Endpoint.connectionType', '', 'Extensible', 'EndpointConnectionType',
'Endpoint.payloadType', '', 'Example', 'EndpointPayloadType',
'Endpoint.payloadMimeType', 'The mime type of an attachment. Any valid mime type is allowed.', 'Required', 'Mime Types',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'connection-type', 'token', 'Protocol/Profile/Standard to be used with this endpoint connection', 'Endpoint.connectionType', '',
'identifier', 'token', 'Identifies this endpoint across multiple systems', 'Endpoint.identifier', '',
'name', 'string', 'A name that this endpoint can be identified by', 'Endpoint.name', '',
'organization', 'reference', 'The organization that is managing the endpoint', 'Endpoint.managingOrganization(Organization)', '',
'payload-type', 'token', 'The type of content that may be used at this endpoint (e.g. XDS Discharge summaries)', 'Endpoint.payloadType', '',
'status', 'token', 'The current status of the Endpoint (usually expected to be active)', 'Endpoint.status', '',
)


