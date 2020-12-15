df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'FHIR Infrastructure  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Not Classified', 'Compartments: Device, Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'List', 'ITU', '', 'DomainResource', 'A list is a curated collection of resources+ Rule: A list can only have an emptyReason if it is empty+ Rule: The deleted flag can only be used if the mode of the list is "changes"+ Rule: An entry date can only be used if the mode of the list is "working"Elements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business identifier',
'status', '?!Σ', '1..1', 'code', 'current | retired | entered-in-errorListStatus (Required)',
'mode', '?!Σ', '1..1', 'code', 'working | snapshot | changesListMode (Required)',
'title', 'Σ', '0..1', 'string', 'Descriptive name for the list',
'code', 'Σ', '0..1', 'CodeableConcept', 'What the purpose of this list isExample Use Codes for List (Example)',
'subject', 'Σ', '0..1', 'Reference(Patient | Group | Device | Location)', 'If all resources have the same subject',
'encounter', '', '0..1', 'Reference(Encounter)', 'Context in which list created',
'date', 'Σ', '0..1', 'dateTime', 'When the list was prepared',
'source', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Patient | Device)', 'Who and/or what defined the list contents (aka Author)',
'orderedBy', '', '0..1', 'CodeableConcept', 'What order the list hasList Order Codes (Preferred)',
'note', '', '0..*', 'Annotation', 'Comments about the list',
'entry', 'I', '0..*', 'BackboneElement', 'Entries in the list',
'flag', '', '0..1', 'CodeableConcept', 'Status/Workflow information about this itemPatient Medicine Change Types (Example)',
'deleted', '?!I', '0..1', 'boolean', 'If this item is actually marked as deleted',
'date', '', '0..1', 'dateTime', 'When item added to list',
'item', '', '1..1', 'Reference(Any)', 'Actual entry',
'emptyReason', 'I', '0..1', 'CodeableConcept', 'Why list is emptyList Empty Reasons (Preferred)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'List', '',
'List.status', 'Change value set from http://hl7.org/fhir/ValueSet/list-status to http://hl7.org/fhir/ValueSet/list-status|4.0.1',
'List.mode', 'Change value set from http://hl7.org/fhir/ValueSet/list-mode to http://hl7.org/fhir/ValueSet/list-mode|4.0.1',
'List.source', 'Type Reference: Added Target Type PractitionerRole',
'List.entry.deleted', 'Default Value "false" removed',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'List', 'ITU', '', 'DomainResource', 'A list is a curated collection of resources+ Rule: A list can only have an emptyReason if it is empty+ Rule: The deleted flag can only be used if the mode of the list is "changes"+ Rule: An entry date can only be used if the mode of the list is "working"Elements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business identifier',
'status', '?!Σ', '1..1', 'code', 'current | retired | entered-in-errorListStatus (Required)',
'mode', '?!Σ', '1..1', 'code', 'working | snapshot | changesListMode (Required)',
'title', 'Σ', '0..1', 'string', 'Descriptive name for the list',
'code', 'Σ', '0..1', 'CodeableConcept', 'What the purpose of this list isExample Use Codes for List (Example)',
'subject', 'Σ', '0..1', 'Reference(Patient | Group | Device | Location)', 'If all resources have the same subject',
'encounter', '', '0..1', 'Reference(Encounter)', 'Context in which list created',
'date', 'Σ', '0..1', 'dateTime', 'When the list was prepared',
'source', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Patient | Device)', 'Who and/or what defined the list contents (aka Author)',
'orderedBy', '', '0..1', 'CodeableConcept', 'What order the list hasList Order Codes (Preferred)',
'note', '', '0..*', 'Annotation', 'Comments about the list',
'entry', 'I', '0..*', 'BackboneElement', 'Entries in the list',
'flag', '', '0..1', 'CodeableConcept', 'Status/Workflow information about this itemPatient Medicine Change Types (Example)',
'deleted', '?!I', '0..1', 'boolean', 'If this item is actually marked as deleted',
'date', '', '0..1', 'dateTime', 'When item added to list',
'item', '', '1..1', 'Reference(Any)', 'Actual entry',
'emptyReason', 'I', '0..1', 'CodeableConcept', 'Why list is emptyList Empty Reasons (Preferred)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'List', '',
'List.status', 'Change value set from http://hl7.org/fhir/ValueSet/list-status to http://hl7.org/fhir/ValueSet/list-status|4.0.1',
'List.mode', 'Change value set from http://hl7.org/fhir/ValueSet/list-mode to http://hl7.org/fhir/ValueSet/list-mode|4.0.1',
'List.source', 'Type Reference: Added Target Type PractitionerRole',
'List.entry.deleted', 'Default Value "false" removed',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'List.status', 'The current state of the list.', 'Required', 'ListStatus',
'List.mode', 'The processing mode that applies to this list.', 'Required', 'ListMode',
'List.code', 'What the purpose of a list is.', 'Example', 'ExampleUseCodesForList',
'List.orderedBy', 'What order applies to the items in a list.', 'Preferred', 'ListOrderCodes',
'List.entry.flag', 'Codes that provide further information about the reason and meaning of the item in the list.', 'Example', 'PatientMedicineChangeTypes',
'List.emptyReason', 'If a list is empty, why it is empty.', 'Preferred', 'ListEmptyReasons',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'lst-1', 'Rule', '(base)', 'A list can only have an emptyReason if it is empty', 'emptyReason.empty() or entry.empty()',
'lst-2', 'Rule', '(base)', 'The deleted flag can only be used if the mode of the list is "changes"', 'mode = 'changes' or entry.deleted.empty()',
'lst-3', 'Rule', '(base)', 'An entry date can only be used if the mode of the list is "working"', 'mode = 'working' or entry.date.empty()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,
'working', 'This list is the master list, maintained in an ongoing fashion with regular updates as the real world list it is tracking changes.',
'snapshot', 'This list was prepared as a snapshot. It should not be assumed to be current.',
'changes', 'A point-in-time list that shows what changes have been made or recommended.  E.g. a discharge medication list showing what was added and removed during an encounter.',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'code', 'token', 'What the purpose of this list is', 'List.code', '13 Resources',
'date', 'date', 'When the list was prepared', 'List.date', '17 Resources',
'empty-reason', 'token', 'Why list is empty', 'List.emptyReason', '',
'encounter', 'reference', 'Context in which list created', 'List.encounter(Encounter)', '12 Resources',
'identifier', 'token', 'Business identifier', 'List.identifier', '30 Resources',
'item', 'reference', 'Actual entry', 'List.entry.item(Any)', '',
'notes', 'string', 'The annotation  - text content (as markdown)', 'List.note.text', '',
'patient', 'reference', 'If all resources have the same subject', 'List.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'source', 'reference', 'Who and/or what defined the list contents (aka Author)', 'List.source(Practitioner, Device, Patient, PractitionerRole)', '',
'status', 'token', 'current | retired | entered-in-error', 'List.status', '',
'subject', 'reference', 'If all resources have the same subject', 'List.subject(Group, Device, Patient, Location)', '',
'title', 'string', 'Descriptive name for the list', 'List.title', '',
)


