df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Structured Documents  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Not Classified', 'Compartments: Device, Encounter, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DocumentReference', 'TU', '', 'DomainResource', 'A reference to a documentElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'masterIdentifier', 'Σ', '0..1', 'Identifier', 'Master Version Specific Identifier',
'identifier', 'Σ', '0..*', 'Identifier', 'Other identifiers for the document',
'status', '?!Σ', '1..1', 'code', 'current | superseded | entered-in-errorDocumentReferenceStatus (Required)',
'docStatus', 'Σ', '0..1', 'code', 'preliminary | final | amended | entered-in-errorCompositionStatus (Required)',
'type', 'Σ', '0..1', 'CodeableConcept', 'Kind of document (LOINC if possible)Document Type Value Set (Preferred)',
'category', 'Σ', '0..*', 'CodeableConcept', 'Categorization of documentDocument Class Value Set (Example)',
'subject', 'Σ', '0..1', 'Reference(Patient | Practitioner | Group | Device)', 'Who/what is the subject of the document',
'date', 'Σ', '0..1', 'instant', 'When this document reference was created',
'author', 'Σ', '0..*', 'Reference(Practitioner | PractitionerRole | Organization | Device | Patient | RelatedPerson)', 'Who and/or what authored the document',
'authenticator', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Who/what authenticated the document',
'custodian', '', '0..1', 'Reference(Organization)', 'Organization which maintains the document',
'relatesTo', 'Σ', '0..*', 'BackboneElement', 'Relationships to other documents',
'code', 'Σ', '1..1', 'code', 'replaces | transforms | signs | appendsDocumentRelationshipType (Required)',
'target', 'Σ', '1..1', 'Reference(DocumentReference)', 'Target of the relationship',
'description', 'Σ', '0..1', 'string', 'Human-readable description',
'securityLabel', 'Σ', '0..*', 'CodeableConcept', 'Document security-tagsSecurityLabels (Extensible)',
'content', 'Σ', '1..*', 'BackboneElement', 'Document referenced',
'attachment', 'Σ', '1..1', 'Attachment', 'Where to access the document',
'format', 'Σ', '0..1', 'Coding', 'Format/content rules for the documentDocumentReference Format Code Set (Preferred)',
'context', 'Σ', '0..1', 'BackboneElement', 'Clinical context of document',
'encounter', '', '0..*', 'Reference(Encounter | EpisodeOfCare)', 'Context of the document  content',
'event', '', '0..*', 'CodeableConcept', 'Main clinical acts documentedv3 Code System ActCode (Example)',
'period', 'Σ', '0..1', 'Period', 'Time of service that is being documented',
'facilityType', '', '0..1', 'CodeableConcept', 'Kind of facility where patient was seenFacility Type Code Value Set (Example)',
'practiceSetting', '', '0..1', 'CodeableConcept', 'Additional details about where the content was created (e.g. clinical specialty)Practice Setting Code Value Set (Example)',
'sourcePatientInfo', '', '0..1', 'Reference(Patient)', 'Patient demographics from source',
'related', '', '0..*', 'Reference(Any)', 'Related identifiers or resources',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'DocumentReference', '',
'DocumentReference.status', 'Change value set from http://hl7.org/fhir/ValueSet/document-reference-status to http://hl7.org/fhir/ValueSet/document-reference-status|4.0.1',
'DocumentReference.docStatus', 'Change value set from http://hl7.org/fhir/ValueSet/composition-status to http://hl7.org/fhir/ValueSet/composition-status|4.0.1',
'DocumentReference.type', 'Min Cardinality changed from 1 to 0',
'DocumentReference.category', 'Renamed from class to category
        Max Cardinality changed from 1 to *',
'DocumentReference.date', 'Added Element',
'DocumentReference.author', 'Type Reference: Added Target Type PractitionerRole',
'DocumentReference.authenticator', 'Type Reference: Added Target Type PractitionerRole',
'DocumentReference.relatesTo', 'No longer marked as Modifier',
'DocumentReference.relatesTo.code', 'Change value set from http://hl7.org/fhir/ValueSet/document-relationship-type to http://hl7.org/fhir/ValueSet/document-relationship-type|4.0.1',
'DocumentReference.context.encounter', 'Max Cardinality changed from 1 to *
        Type Reference: Added Target Type EpisodeOfCare',
'DocumentReference.context.related', 'Type changed from BackboneElement to Reference(Resource)',
'DocumentReference.created', 'deleted',
'DocumentReference.indexed', 'deleted',
'DocumentReference.context.related.identifier', 'deleted',
'DocumentReference.context.related.ref', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DocumentReference', 'TU', '', 'DomainResource', 'A reference to a documentElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'masterIdentifier', 'Σ', '0..1', 'Identifier', 'Master Version Specific Identifier',
'identifier', 'Σ', '0..*', 'Identifier', 'Other identifiers for the document',
'status', '?!Σ', '1..1', 'code', 'current | superseded | entered-in-errorDocumentReferenceStatus (Required)',
'docStatus', 'Σ', '0..1', 'code', 'preliminary | final | amended | entered-in-errorCompositionStatus (Required)',
'type', 'Σ', '0..1', 'CodeableConcept', 'Kind of document (LOINC if possible)Document Type Value Set (Preferred)',
'category', 'Σ', '0..*', 'CodeableConcept', 'Categorization of documentDocument Class Value Set (Example)',
'subject', 'Σ', '0..1', 'Reference(Patient | Practitioner | Group | Device)', 'Who/what is the subject of the document',
'date', 'Σ', '0..1', 'instant', 'When this document reference was created',
'author', 'Σ', '0..*', 'Reference(Practitioner | PractitionerRole | Organization | Device | Patient | RelatedPerson)', 'Who and/or what authored the document',
'authenticator', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Who/what authenticated the document',
'custodian', '', '0..1', 'Reference(Organization)', 'Organization which maintains the document',
'relatesTo', 'Σ', '0..*', 'BackboneElement', 'Relationships to other documents',
'code', 'Σ', '1..1', 'code', 'replaces | transforms | signs | appendsDocumentRelationshipType (Required)',
'target', 'Σ', '1..1', 'Reference(DocumentReference)', 'Target of the relationship',
'description', 'Σ', '0..1', 'string', 'Human-readable description',
'securityLabel', 'Σ', '0..*', 'CodeableConcept', 'Document security-tagsSecurityLabels (Extensible)',
'content', 'Σ', '1..*', 'BackboneElement', 'Document referenced',
'attachment', 'Σ', '1..1', 'Attachment', 'Where to access the document',
'format', 'Σ', '0..1', 'Coding', 'Format/content rules for the documentDocumentReference Format Code Set (Preferred)',
'context', 'Σ', '0..1', 'BackboneElement', 'Clinical context of document',
'encounter', '', '0..*', 'Reference(Encounter | EpisodeOfCare)', 'Context of the document  content',
'event', '', '0..*', 'CodeableConcept', 'Main clinical acts documentedv3 Code System ActCode (Example)',
'period', 'Σ', '0..1', 'Period', 'Time of service that is being documented',
'facilityType', '', '0..1', 'CodeableConcept', 'Kind of facility where patient was seenFacility Type Code Value Set (Example)',
'practiceSetting', '', '0..1', 'CodeableConcept', 'Additional details about where the content was created (e.g. clinical specialty)Practice Setting Code Value Set (Example)',
'sourcePatientInfo', '', '0..1', 'Reference(Patient)', 'Patient demographics from source',
'related', '', '0..*', 'Reference(Any)', 'Related identifiers or resources',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'DocumentReference', '',
'DocumentReference.status', 'Change value set from http://hl7.org/fhir/ValueSet/document-reference-status to http://hl7.org/fhir/ValueSet/document-reference-status|4.0.1',
'DocumentReference.docStatus', 'Change value set from http://hl7.org/fhir/ValueSet/composition-status to http://hl7.org/fhir/ValueSet/composition-status|4.0.1',
'DocumentReference.type', 'Min Cardinality changed from 1 to 0',
'DocumentReference.category', 'Renamed from class to category
        Max Cardinality changed from 1 to *',
'DocumentReference.date', 'Added Element',
'DocumentReference.author', 'Type Reference: Added Target Type PractitionerRole',
'DocumentReference.authenticator', 'Type Reference: Added Target Type PractitionerRole',
'DocumentReference.relatesTo', 'No longer marked as Modifier',
'DocumentReference.relatesTo.code', 'Change value set from http://hl7.org/fhir/ValueSet/document-relationship-type to http://hl7.org/fhir/ValueSet/document-relationship-type|4.0.1',
'DocumentReference.context.encounter', 'Max Cardinality changed from 1 to *
        Type Reference: Added Target Type EpisodeOfCare',
'DocumentReference.context.related', 'Type changed from BackboneElement to Reference(Resource)',
'DocumentReference.created', 'deleted',
'DocumentReference.indexed', 'deleted',
'DocumentReference.context.related.identifier', 'deleted',
'DocumentReference.context.related.ref', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'DocumentReference.status', 'The status of the document reference.', 'Required', 'DocumentReferenceStatus',
'DocumentReference.docStatus', 'Status of the underlying document.', 'Required', 'CompositionStatus',
'DocumentReference.type', 'Precise type of clinical document.', 'Preferred', 'DocumentTypeValueSet',
'DocumentReference.category', 'High-level kind of a clinical document at a macro level.', 'Example', 'DocumentClassValueSet',
'DocumentReference.relatesTo.code', 'The type of relationship between documents.', 'Required', 'DocumentRelationshipType',
'DocumentReference.securityLabel', 'Security Labels from the Healthcare Privacy and Security Classification System.', 'Extensible', 'All Security Labels',
'DocumentReference.content.format', 'Document Format Codes.', 'Preferred', 'DocumentReferenceFormatCodeSet',
'DocumentReference.context.event', 'This list of codes represents the main clinical acts being documented.', 'Example', 'v3.ActCode',
'DocumentReference.context.facilityType', 'XDS Facility Type.', 'Example', 'FacilityTypeCodeValueSet',
'DocumentReference.context.practiceSetting', 'Additional details about where the content was created (e.g. clinical specialty).', 'Example', 'PracticeSettingCodeValueSet',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,
'Type', 'Comments',
'FHIR Documents', 'The uri refers to an existing Document',
'CDA  Document', 'The uri is a reference to a Binary end-point that returns either a CDA 
    document, or some kind of CDA Package that the server knows how to process (e.g., an IHE .zip)',
'Other', 'The server can be asked to generate a document reference for other kinds of 
    documents. For some of these documents (e.g., PDF documents) a server could only provide a 
    document reference if it already existed or the server had special knowledge of the document.',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,
'Name', 'Meaning',
'persist', 'Whether to store the document at the document end-point (/Document) or not, once it is generated. Value = true or false (default is for the server to decide).',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'authenticator', 'reference', 'Who/what authenticated the document', 'DocumentReference.authenticator(Practitioner, Organization, PractitionerRole)', '',
'author', 'reference', 'Who and/or what authored the document', 'DocumentReference.author(Practitioner, Organization, Device, Patient, PractitionerRole, RelatedPerson)', '',
'category', 'token', 'Categorization of document', 'DocumentReference.category', '',
'contenttype', 'token', 'Mime type of the content, with charset etc.', 'DocumentReference.content.attachment.contentType', '',
'custodian', 'reference', 'Organization which maintains the document', 'DocumentReference.custodian(Organization)', '',
'date', 'date', 'When this document reference was created', 'DocumentReference.date', '',
'description', 'string', 'Human-readable description', 'DocumentReference.description', '',
'encounter', 'reference', 'Context of the document  content', 'DocumentReference.context.encounter(EpisodeOfCare, Encounter)', '12 Resources',
'event', 'token', 'Main clinical acts documented', 'DocumentReference.context.event', '',
'facility', 'token', 'Kind of facility where patient was seen', 'DocumentReference.context.facilityType', '',
'format', 'token', 'Format/content rules for the document', 'DocumentReference.content.format', '',
'identifier', 'token', 'Master Version Specific Identifier', 'DocumentReference.masterIdentifier | DocumentReference.identifier', '30 Resources',
'language', 'token', 'Human language of the content (BCP-47)', 'DocumentReference.content.attachment.language', '',
'location', 'uri', 'Uri where the data can be found', 'DocumentReference.content.attachment.url', '',
'patient', 'reference', 'Who/what is the subject of the document', 'DocumentReference.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'period', 'date', 'Time of service that is being documented', 'DocumentReference.context.period', '',
'related', 'reference', 'Related identifiers or resources', 'DocumentReference.context.related(Any)', '',
'relatesto', 'reference', 'Target of the relationship', 'DocumentReference.relatesTo.target(DocumentReference)', '',
'relation', 'token', 'replaces | transforms | signs | appends', 'DocumentReference.relatesTo.code', '',
'relationship', 'composite', 'Combination of relation and relatesTo', 'On DocumentReference.relatesTo:  relatesto: code  relation: target', '',
'security-label', 'token', 'Document security-tags', 'DocumentReference.securityLabel', '',
'setting', 'token', 'Additional details about where the content was created (e.g. clinical specialty)', 'DocumentReference.context.practiceSetting', '',
'status', 'token', 'current | superseded | entered-in-error', 'DocumentReference.status', '',
'subject', 'reference', 'Who/what is the subject of the document', 'DocumentReference.subject(Practitioner, Group, Device, Patient)', '',
'type', 'token', 'Kind of document (LOINC if possible)', 'DocumentReference.type', '5 Resources',
)


