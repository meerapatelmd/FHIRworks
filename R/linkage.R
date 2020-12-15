df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Care  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Patient', 'Compartments: Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Linkage', 'ΣITU', '', 'DomainResource', 'Links records for 'same' item+ Rule: Must have at least two itemsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'active', 'Σ', '0..1', 'boolean', 'Whether this linkage assertion is active or not',
'author', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Who is responsible for linkages',
'item', 'ΣI', '1..*', 'BackboneElement', 'Item to be linked',
'type', 'Σ', '1..1', 'code', 'source | alternate | historicalLinkageType (Required)',
'resource', 'Σ', '1..1', 'Reference(Any)', 'Resource being linked',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Linkage', '',
'Linkage.active', 'Default Value "true" removed',
'Linkage.author', 'Type Reference: Added Target Type PractitionerRole',
'Linkage.item.type', 'Change value set from http://hl7.org/fhir/ValueSet/linkage-type to http://hl7.org/fhir/ValueSet/linkage-type|4.0.1',
'Linkage.item.resource', 'Type changed from Reference to Reference(Resource)',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Linkage', 'ΣITU', '', 'DomainResource', 'Links records for 'same' item+ Rule: Must have at least two itemsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'active', 'Σ', '0..1', 'boolean', 'Whether this linkage assertion is active or not',
'author', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Who is responsible for linkages',
'item', 'ΣI', '1..*', 'BackboneElement', 'Item to be linked',
'type', 'Σ', '1..1', 'code', 'source | alternate | historicalLinkageType (Required)',
'resource', 'Σ', '1..1', 'Reference(Any)', 'Resource being linked',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Linkage', '',
'Linkage.active', 'Default Value "true" removed',
'Linkage.author', 'Type Reference: Added Target Type PractitionerRole',
'Linkage.item.type', 'Change value set from http://hl7.org/fhir/ValueSet/linkage-type to http://hl7.org/fhir/ValueSet/linkage-type|4.0.1',
'Linkage.item.resource', 'Type changed from Reference to Reference(Resource)',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Linkage.item.type', 'Used to distinguish different roles a resource can play within a set of linked resources.', 'Required', 'LinkageType',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'lnk-1', 'Rule', '(base)', 'Must have at least two items', 'item.count()>1',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'author', 'reference', 'Author of the Linkage', 'Linkage.author(Practitioner, Organization, PractitionerRole)', '',
'item', 'reference', 'Matches on any item in the Linkage', 'Linkage.item.resource(Any)', '',
'source', 'reference', 'Matches on any item in the Linkage with a type of 'source'', 'Linkage.item.resource(Any)', '',
)


