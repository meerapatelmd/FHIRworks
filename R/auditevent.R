df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Security  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Not Classified', 'Compartments: Device, Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'AuditEvent', 'TU', '', 'DomainResource', 'Event record kept for security purposesElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'type', 'Σ', '1..1', 'Coding', 'Type/identifier of eventAudit Event ID (Extensible)',
'subtype', 'Σ', '0..*', 'Coding', 'More specific type/id for the eventAudit Event Sub-Type (Extensible)',
'action', 'Σ', '0..1', 'code', 'Type of action performed during the eventAuditEventAction (Required)',
'period', '', '0..1', 'Period', 'When the activity occurred',
'recorded', 'Σ', '1..1', 'instant', 'Time when the event was recorded',
'outcome', 'Σ', '0..1', 'code', 'Whether the event succeeded or failedAuditEventOutcome (Required)',
'outcomeDesc', 'Σ', '0..1', 'string', 'Description of the event outcome',
'purposeOfEvent', 'Σ', '0..*', 'CodeableConcept', 'The purposeOfUse of the eventV3 Value SetPurposeOfUse (Extensible)',
'agent', '', '1..*', 'BackboneElement', 'Actor involved in the event',
'type', '', '0..1', 'CodeableConcept', 'How agent participatedParticipationRoleType (Extensible)',
'role', '', '0..*', 'CodeableConcept', 'Agent role in the eventSecurityRoleType (Example)',
'who', 'Σ', '0..1', 'Reference(PractitionerRole | Practitioner | Organization | Device | Patient | RelatedPerson)', 'Identifier of who',
'altId', '', '0..1', 'string', 'Alternative User identity',
'name', '', '0..1', 'string', 'Human friendly name for the agent',
'requestor', 'Σ', '1..1', 'boolean', 'Whether user is initiator',
'location', '', '0..1', 'Reference(Location)', 'Where',
'policy', '', '0..*', 'uri', 'Policy that authorized event',
'media', '', '0..1', 'Coding', 'Type of mediaMedia Type Code (Extensible)',
'network', '', '0..1', 'BackboneElement', 'Logical network location for application activity',
'address', '', '0..1', 'string', 'Identifier for the network access point of the user device',
'type', '', '0..1', 'code', 'The type of network access pointAuditEventAgentNetworkType (Required)',
'purposeOfUse', '', '0..*', 'CodeableConcept', 'Reason given for this userV3 Value SetPurposeOfUse (Extensible)',
'source', '', '1..1', 'BackboneElement', 'Audit Event Reporter',
'site', '', '0..1', 'string', 'Logical source location within the enterprise',
'observer', 'Σ', '1..1', 'Reference(PractitionerRole | Practitioner | Organization | Device | Patient | RelatedPerson)', 'The identity of source detecting the event',
'type', '', '0..*', 'Coding', 'The type of source where event originatedAudit Event Source Type (Extensible)',
'entity', 'I', '0..*', 'BackboneElement', 'Data or objects used+ Rule: Either a name or a query (NOT both)',
'what', 'Σ', '0..1', 'Reference(Any)', 'Specific instance of resource',
'type', '', '0..1', 'Coding', 'Type of entity involvedAudit event entity type (Extensible)',
'role', '', '0..1', 'Coding', 'What role the entity playedAuditEventEntityRole (Extensible)',
'lifecycle', '', '0..1', 'Coding', 'Life-cycle stage for the entityObjectLifecycleEvents (Extensible)',
'securityLabel', '', '0..*', 'Coding', 'Security labels on the entitySecurityLabels (Extensible)',
'name', 'ΣI', '0..1', 'string', 'Descriptor for entity',
'description', '', '0..1', 'string', 'Descriptive text',
'query', 'ΣI', '0..1', 'base64Binary', 'Query parameters',
'detail', '', '0..*', 'BackboneElement', 'Additional Information about the entity',
'type', '', '1..1', 'string', 'Name of the property',
'value[x]', '', '1..1', '', 'Property value',
'valueString', '', '', 'string', '',
'valueBase64Binary', '', '', 'base64Binary', '',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'AuditEvent', '',
'AuditEvent.action', 'Change value set from http://hl7.org/fhir/ValueSet/audit-event-action to http://hl7.org/fhir/ValueSet/audit-event-action|4.0.1',
'AuditEvent.period', 'Added Element',
'AuditEvent.outcome', 'Change value set from http://hl7.org/fhir/ValueSet/audit-event-outcome to http://hl7.org/fhir/ValueSet/audit-event-outcome|4.0.1',
'AuditEvent.agent.type', 'Added Element',
'AuditEvent.agent.role', 'Remove Binding http://hl7.org/fhir/ValueSet/security-role-type (extensible)',
'AuditEvent.agent.who', 'Added Element',
'AuditEvent.agent.network.type', 'Change value set from http://hl7.org/fhir/ValueSet/network-type to http://hl7.org/fhir/ValueSet/network-type|4.0.1',
'AuditEvent.source.observer', 'Added Mandatory Element',
'AuditEvent.source.type', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/security-source-type" to "http://terminology.hl7.org/CodeSystem/security-source-type"',
'AuditEvent.entity.what', 'Added Element',
'AuditEvent.entity.role', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/object-role" to "http://terminology.hl7.org/CodeSystem/object-role"',
'AuditEvent.entity.detail.value[x]', 'Renamed from value to value[x]
        Add Type string',
'AuditEvent.agent.reference', 'deleted',
'AuditEvent.agent.userId', 'deleted',
'AuditEvent.source.identifier', 'deleted',
'AuditEvent.entity.identifier', 'deleted',
'AuditEvent.entity.reference', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'AuditEvent', 'TU', '', 'DomainResource', 'Event record kept for security purposesElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'type', 'Σ', '1..1', 'Coding', 'Type/identifier of eventAudit Event ID (Extensible)',
'subtype', 'Σ', '0..*', 'Coding', 'More specific type/id for the eventAudit Event Sub-Type (Extensible)',
'action', 'Σ', '0..1', 'code', 'Type of action performed during the eventAuditEventAction (Required)',
'period', '', '0..1', 'Period', 'When the activity occurred',
'recorded', 'Σ', '1..1', 'instant', 'Time when the event was recorded',
'outcome', 'Σ', '0..1', 'code', 'Whether the event succeeded or failedAuditEventOutcome (Required)',
'outcomeDesc', 'Σ', '0..1', 'string', 'Description of the event outcome',
'purposeOfEvent', 'Σ', '0..*', 'CodeableConcept', 'The purposeOfUse of the eventV3 Value SetPurposeOfUse (Extensible)',
'agent', '', '1..*', 'BackboneElement', 'Actor involved in the event',
'type', '', '0..1', 'CodeableConcept', 'How agent participatedParticipationRoleType (Extensible)',
'role', '', '0..*', 'CodeableConcept', 'Agent role in the eventSecurityRoleType (Example)',
'who', 'Σ', '0..1', 'Reference(PractitionerRole | Practitioner | Organization | Device | Patient | RelatedPerson)', 'Identifier of who',
'altId', '', '0..1', 'string', 'Alternative User identity',
'name', '', '0..1', 'string', 'Human friendly name for the agent',
'requestor', 'Σ', '1..1', 'boolean', 'Whether user is initiator',
'location', '', '0..1', 'Reference(Location)', 'Where',
'policy', '', '0..*', 'uri', 'Policy that authorized event',
'media', '', '0..1', 'Coding', 'Type of mediaMedia Type Code (Extensible)',
'network', '', '0..1', 'BackboneElement', 'Logical network location for application activity',
'address', '', '0..1', 'string', 'Identifier for the network access point of the user device',
'type', '', '0..1', 'code', 'The type of network access pointAuditEventAgentNetworkType (Required)',
'purposeOfUse', '', '0..*', 'CodeableConcept', 'Reason given for this userV3 Value SetPurposeOfUse (Extensible)',
'source', '', '1..1', 'BackboneElement', 'Audit Event Reporter',
'site', '', '0..1', 'string', 'Logical source location within the enterprise',
'observer', 'Σ', '1..1', 'Reference(PractitionerRole | Practitioner | Organization | Device | Patient | RelatedPerson)', 'The identity of source detecting the event',
'type', '', '0..*', 'Coding', 'The type of source where event originatedAudit Event Source Type (Extensible)',
'entity', 'I', '0..*', 'BackboneElement', 'Data or objects used+ Rule: Either a name or a query (NOT both)',
'what', 'Σ', '0..1', 'Reference(Any)', 'Specific instance of resource',
'type', '', '0..1', 'Coding', 'Type of entity involvedAudit event entity type (Extensible)',
'role', '', '0..1', 'Coding', 'What role the entity playedAuditEventEntityRole (Extensible)',
'lifecycle', '', '0..1', 'Coding', 'Life-cycle stage for the entityObjectLifecycleEvents (Extensible)',
'securityLabel', '', '0..*', 'Coding', 'Security labels on the entitySecurityLabels (Extensible)',
'name', 'ΣI', '0..1', 'string', 'Descriptor for entity',
'description', '', '0..1', 'string', 'Descriptive text',
'query', 'ΣI', '0..1', 'base64Binary', 'Query parameters',
'detail', '', '0..*', 'BackboneElement', 'Additional Information about the entity',
'type', '', '1..1', 'string', 'Name of the property',
'value[x]', '', '1..1', '', 'Property value',
'valueString', '', '', 'string', '',
'valueBase64Binary', '', '', 'base64Binary', '',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'AuditEvent', '',
'AuditEvent.action', 'Change value set from http://hl7.org/fhir/ValueSet/audit-event-action to http://hl7.org/fhir/ValueSet/audit-event-action|4.0.1',
'AuditEvent.period', 'Added Element',
'AuditEvent.outcome', 'Change value set from http://hl7.org/fhir/ValueSet/audit-event-outcome to http://hl7.org/fhir/ValueSet/audit-event-outcome|4.0.1',
'AuditEvent.agent.type', 'Added Element',
'AuditEvent.agent.role', 'Remove Binding http://hl7.org/fhir/ValueSet/security-role-type (extensible)',
'AuditEvent.agent.who', 'Added Element',
'AuditEvent.agent.network.type', 'Change value set from http://hl7.org/fhir/ValueSet/network-type to http://hl7.org/fhir/ValueSet/network-type|4.0.1',
'AuditEvent.source.observer', 'Added Mandatory Element',
'AuditEvent.source.type', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/security-source-type" to "http://terminology.hl7.org/CodeSystem/security-source-type"',
'AuditEvent.entity.what', 'Added Element',
'AuditEvent.entity.role', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/object-role" to "http://terminology.hl7.org/CodeSystem/object-role"',
'AuditEvent.entity.detail.value[x]', 'Renamed from value to value[x]
        Add Type string',
'AuditEvent.agent.reference', 'deleted',
'AuditEvent.agent.userId', 'deleted',
'AuditEvent.source.identifier', 'deleted',
'AuditEvent.entity.identifier', 'deleted',
'AuditEvent.entity.reference', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'AuditEvent.type', 'Type of event.', 'Extensible', 'AuditEventID',
'AuditEvent.subtype', 'Sub-type of event.', 'Extensible', 'AuditEventSub-Type',
'AuditEvent.action', 'Indicator for type of action performed during the event that generated the event.', 'Required', 'AuditEventAction',
'AuditEvent.outcome', 'Indicates whether the event succeeded or failed.', 'Required', 'AuditEventOutcome',
'AuditEvent.purposeOfEventAuditEvent.agent.purposeOfUse', 'The reason the activity took place.', 'Extensible', 'v3.PurposeOfUse',
'AuditEvent.agent.type', 'The Participation type of the agent to the event.', 'Extensible', 'ParticipationRoleType',
'AuditEvent.agent.role', 'What security role enabled the agent to participate in the event.', 'Example', 'SecurityRoleType',
'AuditEvent.agent.media', 'Used when the event is about exporting/importing onto media.', 'Extensible', 'MediaTypeCode',
'AuditEvent.agent.network.type', 'The type of network access point of this agent in the audit event.', 'Required', 'AuditEventAgentNetworkType',
'AuditEvent.source.type', 'Code specifying the type of system that detected and recorded the event.', 'Extensible', 'AuditEventSourceType',
'AuditEvent.entity.type', 'Code for the entity type involved in the audit event.', 'Extensible', 'AuditEventEntityType',
'AuditEvent.entity.role', 'Code representing the role the entity played in the audit event.', 'Extensible', 'AuditEventEntityRole',
'AuditEvent.entity.lifecycle', 'Identifier for the data life-cycle stage for the entity.', 'Extensible', 'ObjectLifecycleEvents',
'AuditEvent.entity.securityLabel', 'Security Labels from the Healthcare Privacy and Security Classification System.', 'Extensible', 'All Security Labels',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'sev-1', 'Rule', 'AuditEvent.entity', 'Either a name or a query (NOT both)', 'name.empty() or query.empty()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Scenario', 'type', 'subtype', 'action', 'Other',
'User Login (example)', '110114 User Authentication', '110122 User Authentication', 'E Execute', 'One agent which contains the details of the logged-in user.',
'User Logout (example)', '110114 User Authentication', '110123 User Logout', 'E Execute', 'One agent which contains the details of the logged-out user.',
'REST operation logged on server (example)', 'rest RESTful Operation', '[code] defined for operation', '* (see below)', 'Agent for logged in user, if available.',
'Search operation logged on server (example)', 'rest RESTful Operation', '[code] defined for operation', 'E Execute', 'Agent for logged in user, if available, and one object with a query element.',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,
'Operation', 'Action',
'create', 'C',
'read, vread, history-instance, history-type, history-system', 'R',
'update', 'U',
'delete', 'D',
'transaction, operation, conformance, validate, search, search-type, search-system', 'E',
)


df10 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'action', 'token', 'Type of action performed during the event', 'AuditEvent.action', '',
'address', 'string', 'Identifier for the network access point of the user device', 'AuditEvent.agent.network.address', '',
'agent', 'reference', 'Identifier of who', 'AuditEvent.agent.who(Practitioner, Organization, Device, Patient, PractitionerRole, RelatedPerson)', '',
'agent-name', 'string', 'Human friendly name for the agent', 'AuditEvent.agent.name', '',
'agent-role', 'token', 'Agent role in the event', 'AuditEvent.agent.role', '',
'altid', 'token', 'Alternative User identity', 'AuditEvent.agent.altId', '',
'date', 'date', 'Time when the event was recorded', 'AuditEvent.recorded', '',
'entity', 'reference', 'Specific instance of resource', 'AuditEvent.entity.what(Any)', '',
'entity-name', 'string', 'Descriptor for entity', 'AuditEvent.entity.name', '',
'entity-role', 'token', 'What role the entity played', 'AuditEvent.entity.role', '',
'entity-type', 'token', 'Type of entity involved', 'AuditEvent.entity.type', '',
'outcome', 'token', 'Whether the event succeeded or failed', 'AuditEvent.outcome', '',
'patient', 'reference', 'Identifier of who', 'AuditEvent.agent.who.where(resolve() is Patient) | AuditEvent.entity.what.where(resolve() is Patient)(Patient)', '',
'policy', 'uri', 'Policy that authorized event', 'AuditEvent.agent.policy', '',
'site', 'token', 'Logical source location within the enterprise', 'AuditEvent.source.site', '',
'source', 'reference', 'The identity of source detecting the event', 'AuditEvent.source.observer(Practitioner, Organization, Device, Patient, PractitionerRole, RelatedPerson)', '',
'subtype', 'token', 'More specific type/id for the event', 'AuditEvent.subtype', '',
'type', 'token', 'Type/identifier of event', 'AuditEvent.type', '',
)


