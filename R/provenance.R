df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Security  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Not Classified', 'Compartments: Device, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Provenance', 'TU', '', 'DomainResource', 'Who, What, When for a set of resourcesElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'target', 'Σ', '1..*', 'Reference(Any)', 'Target Reference(s) (usually version specific)',
'occurred[x]', '', '0..1', '', 'When the activity occurred',
'occurredPeriod', '', '', 'Period', '',
'occurredDateTime', '', '', 'dateTime', '',
'recorded', 'Σ', '1..1', 'instant', 'When the activity was recorded / updated',
'policy', '', '0..*', 'uri', 'Policy or plan the activity was defined by',
'location', '', '0..1', 'Reference(Location)', 'Where the activity occurred, if relevant',
'reason', '', '0..*', 'CodeableConcept', 'Reason the activity is occurringV3 Value SetPurposeOfUse (Extensible)',
'activity', '', '0..1', 'CodeableConcept', 'Activity that occurredProvenance activity type (Extensible)',
'agent', '', '1..*', 'BackboneElement', 'Actor involved',
'type', 'Σ', '0..1', 'CodeableConcept', 'How the agent participatedProvenance participant type (Extensible)',
'role', '', '0..*', 'CodeableConcept', 'What the agents role wasSecurityRoleType (Example)',
'who', 'Σ', '1..1', 'Reference(Practitioner | PractitionerRole | RelatedPerson | Patient | Device | Organization)', 'Who participated',
'onBehalfOf', '', '0..1', 'Reference(Practitioner | PractitionerRole | RelatedPerson | Patient | Device | Organization)', 'Who the agent is representing',
'entity', '', '0..*', 'BackboneElement', 'An entity used in this activity',
'role', 'Σ', '1..1', 'code', 'derivation | revision | quotation | source | removalProvenanceEntityRole (Required)',
'what', 'Σ', '1..1', 'Reference(Any)', 'Identity of entity',
'agent', '', '0..*', 'see agent', 'Entity is attributed to this agent',
'signature', '', '0..*', 'Signature', 'Signature on target',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Provenance', '',
'Provenance.occurred[x]', 'Renamed from period to occurred[x]
        Add Type dateTime',
'Provenance.reason', 'Type changed from Coding to CodeableConcept',
'Provenance.activity', 'Type changed from Coding to CodeableConcept',
'Provenance.agent.type', 'Added Element',
'Provenance.agent.role', 'Remove Binding http://hl7.org/fhir/ValueSet/security-role-type (extensible)',
'Provenance.agent.who', 'Renamed from who[x] to who
        Remove Type uri',
'Provenance.agent.onBehalfOf', 'Renamed from onBehalfOf[x] to onBehalfOf
        Remove Type uri',
'Provenance.entity.role', 'Change value set from http://hl7.org/fhir/ValueSet/provenance-entity-role to http://hl7.org/fhir/ValueSet/provenance-entity-role|4.0.1',
'Provenance.entity.what', 'Renamed from what[x] to what
        Remove Types uri, Identifier',
'Provenance.agent.relatedAgentType', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Provenance', 'TU', '', 'DomainResource', 'Who, What, When for a set of resourcesElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'target', 'Σ', '1..*', 'Reference(Any)', 'Target Reference(s) (usually version specific)',
'occurred[x]', '', '0..1', '', 'When the activity occurred',
'occurredPeriod', '', '', 'Period', '',
'occurredDateTime', '', '', 'dateTime', '',
'recorded', 'Σ', '1..1', 'instant', 'When the activity was recorded / updated',
'policy', '', '0..*', 'uri', 'Policy or plan the activity was defined by',
'location', '', '0..1', 'Reference(Location)', 'Where the activity occurred, if relevant',
'reason', '', '0..*', 'CodeableConcept', 'Reason the activity is occurringV3 Value SetPurposeOfUse (Extensible)',
'activity', '', '0..1', 'CodeableConcept', 'Activity that occurredProvenance activity type (Extensible)',
'agent', '', '1..*', 'BackboneElement', 'Actor involved',
'type', 'Σ', '0..1', 'CodeableConcept', 'How the agent participatedProvenance participant type (Extensible)',
'role', '', '0..*', 'CodeableConcept', 'What the agents role wasSecurityRoleType (Example)',
'who', 'Σ', '1..1', 'Reference(Practitioner | PractitionerRole | RelatedPerson | Patient | Device | Organization)', 'Who participated',
'onBehalfOf', '', '0..1', 'Reference(Practitioner | PractitionerRole | RelatedPerson | Patient | Device | Organization)', 'Who the agent is representing',
'entity', '', '0..*', 'BackboneElement', 'An entity used in this activity',
'role', 'Σ', '1..1', 'code', 'derivation | revision | quotation | source | removalProvenanceEntityRole (Required)',
'what', 'Σ', '1..1', 'Reference(Any)', 'Identity of entity',
'agent', '', '0..*', 'see agent', 'Entity is attributed to this agent',
'signature', '', '0..*', 'Signature', 'Signature on target',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Provenance', '',
'Provenance.occurred[x]', 'Renamed from period to occurred[x]
        Add Type dateTime',
'Provenance.reason', 'Type changed from Coding to CodeableConcept',
'Provenance.activity', 'Type changed from Coding to CodeableConcept',
'Provenance.agent.type', 'Added Element',
'Provenance.agent.role', 'Remove Binding http://hl7.org/fhir/ValueSet/security-role-type (extensible)',
'Provenance.agent.who', 'Renamed from who[x] to who
        Remove Type uri',
'Provenance.agent.onBehalfOf', 'Renamed from onBehalfOf[x] to onBehalfOf
        Remove Type uri',
'Provenance.entity.role', 'Change value set from http://hl7.org/fhir/ValueSet/provenance-entity-role to http://hl7.org/fhir/ValueSet/provenance-entity-role|4.0.1',
'Provenance.entity.what', 'Renamed from what[x] to what
        Remove Types uri, Identifier',
'Provenance.agent.relatedAgentType', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Provenance.reason', 'The reason the activity took place.', 'Extensible', 'v3.PurposeOfUse',
'Provenance.activity', 'The activity that took place.', 'Extensible', 'ProvenanceActivityType',
'Provenance.agent.type', 'The type of participation that a provenance agent played with respect to the activity.', 'Extensible', 'ProvenanceParticipantType',
'Provenance.agent.role', 'The role that a provenance agent played with respect to the activity.', 'Example', 'SecurityRoleType',
'Provenance.entity.role', 'How an entity was used in an activity.', 'Required', 'ProvenanceEntityRole',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'agent', 'reference', 'Who participated', 'Provenance.agent.who(Practitioner, Organization, Device, Patient, PractitionerRole, RelatedPerson)', '',
'agent-role', 'token', 'What the agents role was', 'Provenance.agent.role', '',
'agent-type', 'token', 'How the agent participated', 'Provenance.agent.type', '',
'entity', 'reference', 'Identity of entity', 'Provenance.entity.what(Any)', '',
'location', 'reference', 'Where the activity occurred, if relevant', 'Provenance.location(Location)', '',
'patient', 'reference', 'Target Reference(s) (usually version specific)', 'Provenance.target.where(resolve() is Patient)(Patient)', '',
'recorded', 'date', 'When the activity was recorded / updated', 'Provenance.recorded', '',
'signature-type', 'token', 'Indication of the reason the entity signed the object(s)', 'Provenance.signature.type', '',
'target', 'reference', 'Target Reference(s) (usually version specific)', 'Provenance.target(Any)', '',
'when', 'date', 'When the activity occurred', '(Provenance.occurred as dateTime)', '',
)


