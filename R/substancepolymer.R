df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Biomedical Research and Regulation  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'SubstancePolymer', 'ΣTU', '', 'DomainResource', 'TodoElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'class', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'geometry', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'copolymerConnectivity', 'Σ', '0..*', 'CodeableConcept', 'Todo',
'modification', 'Σ', '0..*', 'string', 'Todo',
'monomerSet', 'Σ', '0..*', 'BackboneElement', 'Todo',
'ratioType', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'startingMaterial', 'Σ', '0..*', 'BackboneElement', 'Todo',
'material', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'type', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'isDefining', 'Σ', '0..1', 'boolean', 'Todo',
'amount', 'Σ', '0..1', 'SubstanceAmount', 'Todo',
'repeat', 'Σ', '0..*', 'BackboneElement', 'Todo',
'numberOfUnits', 'Σ', '0..1', 'integer', 'Todo',
'averageMolecularFormula', 'Σ', '0..1', 'string', 'Todo',
'repeatUnitAmountType', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'repeatUnit', 'Σ', '0..*', 'BackboneElement', 'Todo',
'orientationOfPolymerisation', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'repeatUnit', 'Σ', '0..1', 'string', 'Todo',
'amount', 'Σ', '0..1', 'SubstanceAmount', 'Todo',
'degreeOfPolymerisation', 'Σ', '0..*', 'BackboneElement', 'Todo',
'degree', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'amount', 'Σ', '0..1', 'SubstanceAmount', 'Todo',
'structuralRepresentation', 'Σ', '0..*', 'BackboneElement', 'Todo',
'type', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'representation', 'Σ', '0..1', 'string', 'Todo',
'attachment', 'Σ', '0..1', 'Attachment', 'Todo',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'SubstancePolymer', 'ΣTU', '', 'DomainResource', 'TodoElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'class', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'geometry', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'copolymerConnectivity', 'Σ', '0..*', 'CodeableConcept', 'Todo',
'modification', 'Σ', '0..*', 'string', 'Todo',
'monomerSet', 'Σ', '0..*', 'BackboneElement', 'Todo',
'ratioType', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'startingMaterial', 'Σ', '0..*', 'BackboneElement', 'Todo',
'material', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'type', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'isDefining', 'Σ', '0..1', 'boolean', 'Todo',
'amount', 'Σ', '0..1', 'SubstanceAmount', 'Todo',
'repeat', 'Σ', '0..*', 'BackboneElement', 'Todo',
'numberOfUnits', 'Σ', '0..1', 'integer', 'Todo',
'averageMolecularFormula', 'Σ', '0..1', 'string', 'Todo',
'repeatUnitAmountType', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'repeatUnit', 'Σ', '0..*', 'BackboneElement', 'Todo',
'orientationOfPolymerisation', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'repeatUnit', 'Σ', '0..1', 'string', 'Todo',
'amount', 'Σ', '0..1', 'SubstanceAmount', 'Todo',
'degreeOfPolymerisation', 'Σ', '0..*', 'BackboneElement', 'Todo',
'degree', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'amount', 'Σ', '0..1', 'SubstanceAmount', 'Todo',
'structuralRepresentation', 'Σ', '0..*', 'BackboneElement', 'Todo',
'type', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'representation', 'Σ', '0..1', 'string', 'Todo',
'attachment', 'Σ', '0..1', 'Attachment', 'Todo',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


