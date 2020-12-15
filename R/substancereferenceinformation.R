df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Biomedical Research and Regulation  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'SubstanceReferenceInformation', 'ΣTU', '', 'DomainResource', 'TodoElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'comment', 'Σ', '0..1', 'string', 'Todo',
'gene', 'Σ', '0..*', 'BackboneElement', 'Todo',
'geneSequenceOrigin', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'gene', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'source', 'Σ', '0..*', 'Reference(DocumentReference)', 'Todo',
'geneElement', 'Σ', '0..*', 'BackboneElement', 'Todo',
'type', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'element', 'Σ', '0..1', 'Identifier', 'Todo',
'source', 'Σ', '0..*', 'Reference(DocumentReference)', 'Todo',
'classification', 'Σ', '0..*', 'BackboneElement', 'Todo',
'domain', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'classification', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'subtype', 'Σ', '0..*', 'CodeableConcept', 'Todo',
'source', 'Σ', '0..*', 'Reference(DocumentReference)', 'Todo',
'target', 'Σ', '0..*', 'BackboneElement', 'Todo',
'target', 'Σ', '0..1', 'Identifier', 'Todo',
'type', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'interaction', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'organism', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'organismType', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'amount[x]', 'Σ', '0..1', '', 'Todo',
'amountQuantity', '', '', 'Quantity', '',
'amountRange', '', '', 'Range', '',
'amountString', '', '', 'string', '',
'amountType', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'source', 'Σ', '0..*', 'Reference(DocumentReference)', 'Todo',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'SubstanceReferenceInformation', 'ΣTU', '', 'DomainResource', 'TodoElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'comment', 'Σ', '0..1', 'string', 'Todo',
'gene', 'Σ', '0..*', 'BackboneElement', 'Todo',
'geneSequenceOrigin', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'gene', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'source', 'Σ', '0..*', 'Reference(DocumentReference)', 'Todo',
'geneElement', 'Σ', '0..*', 'BackboneElement', 'Todo',
'type', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'element', 'Σ', '0..1', 'Identifier', 'Todo',
'source', 'Σ', '0..*', 'Reference(DocumentReference)', 'Todo',
'classification', 'Σ', '0..*', 'BackboneElement', 'Todo',
'domain', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'classification', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'subtype', 'Σ', '0..*', 'CodeableConcept', 'Todo',
'source', 'Σ', '0..*', 'Reference(DocumentReference)', 'Todo',
'target', 'Σ', '0..*', 'BackboneElement', 'Todo',
'target', 'Σ', '0..1', 'Identifier', 'Todo',
'type', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'interaction', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'organism', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'organismType', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'amount[x]', 'Σ', '0..1', '', 'Todo',
'amountQuantity', '', '', 'Quantity', '',
'amountRange', '', '', 'Range', '',
'amountString', '', '', 'string', '',
'amountType', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'source', 'Σ', '0..*', 'Reference(DocumentReference)', 'Todo',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


