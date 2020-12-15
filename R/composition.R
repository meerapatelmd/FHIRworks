df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Structured Documents  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Not Classified', 'Compartments: Device, Encounter, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
'preliminary', 'This is a preliminary composition or document (also known as initial or interim). The content may be incomplete or unverified.',
'final', 'This version of the composition is complete and verified by an appropriate person and no further work is planned. Any subsequent updates would be on a new version of the composition.',
'amended', 'The composition content or the referenced resources have been modified (edited or added to) subsequent to being released as "final" and the composition is complete and verified by an authorized person.',
'entered-in-error', 'The composition or document was originally created/issued in error, and this is an amendment that marks that the entire series should not be considered as valid.',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Composition', 'TU', '', 'DomainResource', 'A set of resources composed into a single coherent clinical statement with clinical attestationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..1', 'Identifier', 'Version-independent identifier for the Composition',
'status', '?!Σ', '1..1', 'code', 'preliminary | final | amended | entered-in-errorCompositionStatus (Required)',
'type', 'Σ', '1..1', 'CodeableConcept', 'Kind of composition (LOINC if possible)FHIR Document Type Codes (Preferred)',
'category', 'Σ', '0..*', 'CodeableConcept', 'Categorization of CompositionDocument Class Value Set (Example)',
'subject', 'Σ', '0..1', 'Reference(Any)', 'Who and/or what the composition is about',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Context of the Composition',
'date', 'Σ', '1..1', 'dateTime', 'Composition editing time',
'author', 'Σ', '1..*', 'Reference(Practitioner | PractitionerRole | Device | Patient | RelatedPerson | Organization)', 'Who and/or what authored the composition',
'title', 'Σ', '1..1', 'string', 'Human Readable name/title',
'confidentiality', 'Σ', '0..1', 'code', 'As defined by affinity domainV3 Value SetConfidentialityClassification (Required)',
'attester', '', '0..*', 'BackboneElement', 'Attests to accuracy of composition',
'mode', '', '1..1', 'code', 'personal | professional | legal | officialCompositionAttestationMode (Required)',
'time', '', '0..1', 'dateTime', 'When the composition was attested',
'party', '', '0..1', 'Reference(Patient | RelatedPerson | Practitioner | PractitionerRole | Organization)', 'Who attested the composition',
'custodian', 'Σ', '0..1', 'Reference(Organization)', 'Organization which maintains the composition',
'relatesTo', '', '0..*', 'BackboneElement', 'Relationships to other compositions/documents',
'code', '', '1..1', 'code', 'replaces | transforms | signs | appendsDocumentRelationshipType (Required)',
'target[x]', '', '1..1', '', 'Target of the relationship',
'targetIdentifier', '', '', 'Identifier', '',
'targetReference', '', '', 'Reference(Composition)', '',
'event', 'Σ', '0..*', 'BackboneElement', 'The clinical service(s) being documented',
'code', 'Σ', '0..*', 'CodeableConcept', 'Code(s) that apply to the event being documentedv3 Code System ActCode (Example)',
'period', 'Σ', '0..1', 'Period', 'The period covered by the documentation',
'detail', 'Σ', '0..*', 'Reference(Any)', 'The event(s) being documented',
'section', 'I', '0..*', 'BackboneElement', 'Composition is broken into sections+ Rule: A section must contain at least one of text, entries, or sub-sections+ Rule: A section can only have an emptyReason if it is empty',
'title', '', '0..1', 'string', 'Label for section (e.g. for ToC)',
'code', '', '0..1', 'CodeableConcept', 'Classification of section (recommended)Document Section Codes (Example)',
'author', '', '0..*', 'Reference(Practitioner | PractitionerRole | Device | Patient | RelatedPerson | Organization)', 'Who and/or what authored the section',
'focus', '', '0..1', 'Reference(Any)', 'Who/what the section is about, when it is not about the subject of composition',
'text', 'I', '0..1', 'Narrative', 'Text summary of the section, for human interpretation',
'mode', '', '0..1', 'code', 'working | snapshot | changesListMode (Required)',
'orderedBy', '', '0..1', 'CodeableConcept', 'Order of section entriesList Order Codes (Preferred)',
'entry', 'I', '0..*', 'Reference(Any)', 'A reference to data that supports this section',
'emptyReason', 'I', '0..1', 'CodeableConcept', 'Why the section is emptyList Empty Reasons (Preferred)',
'section', 'I', '0..*', 'see section', 'Nested Section',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'Composition', '',
'Composition.status', 'Change value set from http://hl7.org/fhir/ValueSet/composition-status to http://hl7.org/fhir/ValueSet/composition-status|4.0.1',
'Composition.category', 'Renamed from class to category
        Max Cardinality changed from 1 to *',
'Composition.subject', 'Min Cardinality changed from 1 to 0',
'Composition.author', 'Type Reference: Added Target Types PractitionerRole, Organization',
'Composition.confidentiality', 'Change value set from http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification to http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification|2014-03-26
        No longer marked as Modifier',
'Composition.attester.mode', 'Max Cardinality changed from * to 1
        Change value set from http://hl7.org/fhir/ValueSet/composition-attestation-mode to http://hl7.org/fhir/ValueSet/composition-attestation-mode|4.0.1',
'Composition.attester.party', 'Type Reference: Added Target Types RelatedPerson, PractitionerRole',
'Composition.relatesTo.code', 'Change value set from http://hl7.org/fhir/ValueSet/document-relationship-type to http://hl7.org/fhir/ValueSet/document-relationship-type|4.0.1',
'Composition.section.author', 'Added Element',
'Composition.section.focus', 'Added Element',
'Composition.section.mode', 'Change value set from http://hl7.org/fhir/ValueSet/list-mode to http://hl7.org/fhir/ValueSet/list-mode|4.0.1
        No longer marked as Modifier',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Composition', 'TU', '', 'DomainResource', 'A set of resources composed into a single coherent clinical statement with clinical attestationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..1', 'Identifier', 'Version-independent identifier for the Composition',
'status', '?!Σ', '1..1', 'code', 'preliminary | final | amended | entered-in-errorCompositionStatus (Required)',
'type', 'Σ', '1..1', 'CodeableConcept', 'Kind of composition (LOINC if possible)FHIR Document Type Codes (Preferred)',
'category', 'Σ', '0..*', 'CodeableConcept', 'Categorization of CompositionDocument Class Value Set (Example)',
'subject', 'Σ', '0..1', 'Reference(Any)', 'Who and/or what the composition is about',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Context of the Composition',
'date', 'Σ', '1..1', 'dateTime', 'Composition editing time',
'author', 'Σ', '1..*', 'Reference(Practitioner | PractitionerRole | Device | Patient | RelatedPerson | Organization)', 'Who and/or what authored the composition',
'title', 'Σ', '1..1', 'string', 'Human Readable name/title',
'confidentiality', 'Σ', '0..1', 'code', 'As defined by affinity domainV3 Value SetConfidentialityClassification (Required)',
'attester', '', '0..*', 'BackboneElement', 'Attests to accuracy of composition',
'mode', '', '1..1', 'code', 'personal | professional | legal | officialCompositionAttestationMode (Required)',
'time', '', '0..1', 'dateTime', 'When the composition was attested',
'party', '', '0..1', 'Reference(Patient | RelatedPerson | Practitioner | PractitionerRole | Organization)', 'Who attested the composition',
'custodian', 'Σ', '0..1', 'Reference(Organization)', 'Organization which maintains the composition',
'relatesTo', '', '0..*', 'BackboneElement', 'Relationships to other compositions/documents',
'code', '', '1..1', 'code', 'replaces | transforms | signs | appendsDocumentRelationshipType (Required)',
'target[x]', '', '1..1', '', 'Target of the relationship',
'targetIdentifier', '', '', 'Identifier', '',
'targetReference', '', '', 'Reference(Composition)', '',
'event', 'Σ', '0..*', 'BackboneElement', 'The clinical service(s) being documented',
'code', 'Σ', '0..*', 'CodeableConcept', 'Code(s) that apply to the event being documentedv3 Code System ActCode (Example)',
'period', 'Σ', '0..1', 'Period', 'The period covered by the documentation',
'detail', 'Σ', '0..*', 'Reference(Any)', 'The event(s) being documented',
'section', 'I', '0..*', 'BackboneElement', 'Composition is broken into sections+ Rule: A section must contain at least one of text, entries, or sub-sections+ Rule: A section can only have an emptyReason if it is empty',
'title', '', '0..1', 'string', 'Label for section (e.g. for ToC)',
'code', '', '0..1', 'CodeableConcept', 'Classification of section (recommended)Document Section Codes (Example)',
'author', '', '0..*', 'Reference(Practitioner | PractitionerRole | Device | Patient | RelatedPerson | Organization)', 'Who and/or what authored the section',
'focus', '', '0..1', 'Reference(Any)', 'Who/what the section is about, when it is not about the subject of composition',
'text', 'I', '0..1', 'Narrative', 'Text summary of the section, for human interpretation',
'mode', '', '0..1', 'code', 'working | snapshot | changesListMode (Required)',
'orderedBy', '', '0..1', 'CodeableConcept', 'Order of section entriesList Order Codes (Preferred)',
'entry', 'I', '0..*', 'Reference(Any)', 'A reference to data that supports this section',
'emptyReason', 'I', '0..1', 'CodeableConcept', 'Why the section is emptyList Empty Reasons (Preferred)',
'section', 'I', '0..*', 'see section', 'Nested Section',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'Composition', '',
'Composition.status', 'Change value set from http://hl7.org/fhir/ValueSet/composition-status to http://hl7.org/fhir/ValueSet/composition-status|4.0.1',
'Composition.category', 'Renamed from class to category
        Max Cardinality changed from 1 to *',
'Composition.subject', 'Min Cardinality changed from 1 to 0',
'Composition.author', 'Type Reference: Added Target Types PractitionerRole, Organization',
'Composition.confidentiality', 'Change value set from http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification to http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification|2014-03-26
        No longer marked as Modifier',
'Composition.attester.mode', 'Max Cardinality changed from * to 1
        Change value set from http://hl7.org/fhir/ValueSet/composition-attestation-mode to http://hl7.org/fhir/ValueSet/composition-attestation-mode|4.0.1',
'Composition.attester.party', 'Type Reference: Added Target Types RelatedPerson, PractitionerRole',
'Composition.relatesTo.code', 'Change value set from http://hl7.org/fhir/ValueSet/document-relationship-type to http://hl7.org/fhir/ValueSet/document-relationship-type|4.0.1',
'Composition.section.author', 'Added Element',
'Composition.section.focus', 'Added Element',
'Composition.section.mode', 'Change value set from http://hl7.org/fhir/ValueSet/list-mode to http://hl7.org/fhir/ValueSet/list-mode|4.0.1
        No longer marked as Modifier',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Composition.status', 'The workflow/clinical status of the composition.', 'Required', 'CompositionStatus',
'Composition.type', 'Type of a composition.', 'Preferred', 'FHIRDocumentTypeCodes',
'Composition.category', 'High-level kind of a clinical document at a macro level.', 'Example', 'DocumentClassValueSet',
'Composition.confidentiality', 'Codes specifying the level of confidentiality of the composition.', 'Required', 'v3.ConfidentialityClassification',
'Composition.attester.mode', 'The way in which a person authenticated a composition.', 'Required', 'CompositionAttestationMode',
'Composition.relatesTo.code', 'The type of relationship between documents.', 'Required', 'DocumentRelationshipType',
'Composition.event.code', 'This list of codes represents the main clinical acts being documented.', 'Example', 'v3.ActCode',
'Composition.section.code', 'Classification of a section of a composition/document.', 'Example', 'DocumentSectionCodes',
'Composition.section.mode', 'The processing mode that applies to this section.', 'Required', 'ListMode',
'Composition.section.orderedBy', 'What order applies to the items in the entry.', 'Preferred', 'ListOrderCodes',
'Composition.section.emptyReason', 'If a section is empty, why it is empty.', 'Preferred', 'ListEmptyReasons',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'cmp-1', 'Rule', 'Composition.section', 'A section must contain at least one of text, entries, or sub-sections', 'text.exists() or entry.exists() or section.exists()',
'cmp-2', 'Rule', 'Composition.section', 'A section can only have an emptyReason if it is empty', 'emptyReason.empty() or entry.empty()',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'attester', 'reference', 'Who attested the composition', 'Composition.attester.party(Practitioner, Organization, Patient, PractitionerRole, RelatedPerson)', '',
'author', 'reference', 'Who and/or what authored the composition', 'Composition.author(Practitioner, Organization, Device, Patient, PractitionerRole, RelatedPerson)', '',
'category', 'token', 'Categorization of Composition', 'Composition.category', '',
'confidentiality', 'token', 'As defined by affinity domain', 'Composition.confidentiality', '',
'context', 'token', 'Code(s) that apply to the event being documented', 'Composition.event.code', '',
'date', 'date', 'Composition editing time', 'Composition.date', '17 Resources',
'encounter', 'reference', 'Context of the Composition', 'Composition.encounter(Encounter)', '12 Resources',
'entry', 'reference', 'A reference to data that supports this section', 'Composition.section.entry(Any)', '',
'identifier', 'token', 'Version-independent identifier for the Composition', 'Composition.identifier', '30 Resources',
'patient', 'reference', 'Who and/or what the composition is about', 'Composition.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'period', 'date', 'The period covered by the documentation', 'Composition.event.period', '',
'related-id', 'token', 'Target of the relationship', '(Composition.relatesTo.target as Identifier)', '',
'related-ref', 'reference', 'Target of the relationship', '(Composition.relatesTo.target as Reference)(Composition)', '',
'section', 'token', 'Classification of section (recommended)', 'Composition.section.code', '',
'status', 'token', 'preliminary | final | amended | entered-in-error', 'Composition.status', '',
'subject', 'reference', 'Who and/or what the composition is about', 'Composition.subject(Any)', '',
'title', 'string', 'Human Readable name/title', 'Composition.title', '',
'type', 'token', 'Kind of composition (LOINC if possible)', 'Composition.type', '5 Resources',
)


