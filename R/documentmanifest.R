df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Structured Documents  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Not Classified', 'Compartments: Device, Encounter, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DocumentManifest', 'TU', '', 'DomainResource', 'A list that defines a set of documentsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'masterIdentifier', 'Σ', '0..1', 'Identifier', 'Unique Identifier for the set of documents',
'identifier', 'Σ', '0..*', 'Identifier', 'Other identifiers for the manifest',
'status', '?!Σ', '1..1', 'code', 'current | superseded | entered-in-errorDocumentReferenceStatus (Required)',
'type', 'Σ', '0..1', 'CodeableConcept', 'Kind of document setv3 Code System ActCode (Example)',
'subject', 'Σ', '0..1', 'Reference(Patient | Practitioner | Group | Device)', 'The subject of the set of documents',
'created', '', '0..1', 'dateTime', 'When this document manifest created',
'author', 'Σ', '0..*', 'Reference(Practitioner | PractitionerRole | Organization | Device | Patient | RelatedPerson)', 'Who and/or what authored the DocumentManifest',
'recipient', '', '0..*', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson | Organization)', 'Intended to get notified about this set of documents',
'source', '', '0..1', 'uri', 'The source system/application/software',
'description', 'Σ', '0..1', 'string', 'Human-readable description (title)',
'content', 'Σ', '1..*', 'Reference(Any)', 'Items in manifest',
'related', '', '0..*', 'BackboneElement', 'Related things',
'identifier', '', '0..1', 'Identifier', 'Identifiers of things that are related',
'ref', '', '0..1', 'Reference(Any)', 'Related Resource',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'DocumentManifest', '',
'DocumentManifest.status', 'Change value set from http://hl7.org/fhir/ValueSet/document-reference-status to http://hl7.org/fhir/ValueSet/document-reference-status|4.0.1',
'DocumentManifest.author', 'Type Reference: Added Target Type PractitionerRole',
'DocumentManifest.recipient', 'Type Reference: Added Target Type PractitionerRole',
'DocumentManifest.content', 'Type changed from BackboneElement to Reference(Resource)',
'DocumentManifest.content.p[x]', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DocumentManifest', 'TU', '', 'DomainResource', 'A list that defines a set of documentsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'masterIdentifier', 'Σ', '0..1', 'Identifier', 'Unique Identifier for the set of documents',
'identifier', 'Σ', '0..*', 'Identifier', 'Other identifiers for the manifest',
'status', '?!Σ', '1..1', 'code', 'current | superseded | entered-in-errorDocumentReferenceStatus (Required)',
'type', 'Σ', '0..1', 'CodeableConcept', 'Kind of document setv3 Code System ActCode (Example)',
'subject', 'Σ', '0..1', 'Reference(Patient | Practitioner | Group | Device)', 'The subject of the set of documents',
'created', '', '0..1', 'dateTime', 'When this document manifest created',
'author', 'Σ', '0..*', 'Reference(Practitioner | PractitionerRole | Organization | Device | Patient | RelatedPerson)', 'Who and/or what authored the DocumentManifest',
'recipient', '', '0..*', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson | Organization)', 'Intended to get notified about this set of documents',
'source', '', '0..1', 'uri', 'The source system/application/software',
'description', 'Σ', '0..1', 'string', 'Human-readable description (title)',
'content', 'Σ', '1..*', 'Reference(Any)', 'Items in manifest',
'related', '', '0..*', 'BackboneElement', 'Related things',
'identifier', '', '0..1', 'Identifier', 'Identifiers of things that are related',
'ref', '', '0..1', 'Reference(Any)', 'Related Resource',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'DocumentManifest', '',
'DocumentManifest.status', 'Change value set from http://hl7.org/fhir/ValueSet/document-reference-status to http://hl7.org/fhir/ValueSet/document-reference-status|4.0.1',
'DocumentManifest.author', 'Type Reference: Added Target Type PractitionerRole',
'DocumentManifest.recipient', 'Type Reference: Added Target Type PractitionerRole',
'DocumentManifest.content', 'Type changed from BackboneElement to Reference(Resource)',
'DocumentManifest.content.p[x]', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'DocumentManifest.status', 'The status of the document reference.', 'Required', 'DocumentReferenceStatus',
'DocumentManifest.type', 'The activity that caused the DocumentManifest to be created.', 'Example', 'v3.ActCode',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'author', 'reference', 'Who and/or what authored the DocumentManifest', 'DocumentManifest.author(Practitioner, Organization, Device, Patient, PractitionerRole, RelatedPerson)', '',
'created', 'date', 'When this document manifest created', 'DocumentManifest.created', '',
'description', 'string', 'Human-readable description (title)', 'DocumentManifest.description', '',
'identifier', 'token', 'Unique Identifier for the set of documents', 'DocumentManifest.masterIdentifier | DocumentManifest.identifier', '30 Resources',
'item', 'reference', 'Items in manifest', 'DocumentManifest.content(Any)', '',
'patient', 'reference', 'The subject of the set of documents', 'DocumentManifest.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'recipient', 'reference', 'Intended to get notified about this set of documents', 'DocumentManifest.recipient(Practitioner, Organization, Patient, PractitionerRole, RelatedPerson)', '',
'related-id', 'token', 'Identifiers of things that are related', 'DocumentManifest.related.identifier', '',
'related-ref', 'reference', 'Related Resource', 'DocumentManifest.related.ref(Any)', '',
'source', 'uri', 'The source system/application/software', 'DocumentManifest.source', '',
'status', 'token', 'current | superseded | entered-in-error', 'DocumentManifest.status', '',
'subject', 'reference', 'The subject of the set of documents', 'DocumentManifest.subject(Practitioner, Group, Device, Patient)', '',
'type', 'token', 'Kind of document set', 'DocumentManifest.type', '5 Resources',
)


