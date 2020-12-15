df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Biomedical Research and Regulation  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductIngredient', 'ΣTU', '', 'DomainResource', 'An ingredient of a manufactured item or pharmaceutical productElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..1', 'Identifier', 'Identifier for the ingredient',
'role', 'Σ', '1..1', 'CodeableConcept', 'Ingredient role e.g. Active ingredient, excipient',
'allergenicIndicator', 'Σ', '0..1', 'boolean', 'If the ingredient is a known or suspected allergen',
'manufacturer', 'Σ', '0..*', 'Reference(Organization)', 'Manufacturer of this Ingredient',
'specifiedSubstance', 'Σ', '0..*', 'BackboneElement', 'A specified substance that comprises this ingredient',
'code', 'Σ', '1..1', 'CodeableConcept', 'The specified substance',
'group', 'Σ', '1..1', 'CodeableConcept', 'The group of specified substance, e.g. group 1 to 4',
'confidentiality', 'Σ', '0..1', 'CodeableConcept', 'Confidentiality level of the specified substance as the ingredient',
'strength', 'Σ', '0..*', 'BackboneElement', 'Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product',
'presentation', 'Σ', '1..1', 'Ratio', 'The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item',
'presentationLowLimit', '?!Σ', '0..1', 'Ratio', 'A lower limit for the quantity of substance in the unit of presentation. For use when there is a range of strengths, this is the lower limit, with the presentation attribute becoming the upper limit',
'concentration', 'Σ', '0..1', 'Ratio', 'The strength per unitary volume (or mass)',
'concentrationLowLimit', '?!Σ', '0..1', 'Ratio', 'A lower limit for the strength per unitary volume (or mass), for when there is a range. The concentration attribute then becomes the upper limit',
'measurementPoint', 'Σ', '0..1', 'string', 'For when strength is measured at a particular point or distance',
'country', 'Σ', '0..*', 'CodeableConcept', 'The country or countries for which the strength range applies',
'referenceStrength', 'Σ', '0..*', 'BackboneElement', 'Strength expressed in terms of a reference substance',
'substance', 'Σ', '0..1', 'CodeableConcept', 'Relevant reference substance',
'strength', 'Σ', '1..1', 'Ratio', 'Strength expressed in terms of a reference substance',
'strengthLowLimit', 'Σ', '0..1', 'Ratio', 'Strength expressed in terms of a reference substance',
'measurementPoint', 'Σ', '0..1', 'string', 'For when strength is measured at a particular point or distance',
'country', 'Σ', '0..*', 'CodeableConcept', 'The country or countries for which the strength range applies',
'substance', 'Σ', '0..1', 'BackboneElement', 'The ingredient substance',
'code', 'Σ', '1..1', 'CodeableConcept', 'The ingredient substance',
'strength', 'Σ', '0..*', 'see strength', 'Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductIngredient', 'ΣTU', '', 'DomainResource', 'An ingredient of a manufactured item or pharmaceutical productElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..1', 'Identifier', 'Identifier for the ingredient',
'role', 'Σ', '1..1', 'CodeableConcept', 'Ingredient role e.g. Active ingredient, excipient',
'allergenicIndicator', 'Σ', '0..1', 'boolean', 'If the ingredient is a known or suspected allergen',
'manufacturer', 'Σ', '0..*', 'Reference(Organization)', 'Manufacturer of this Ingredient',
'specifiedSubstance', 'Σ', '0..*', 'BackboneElement', 'A specified substance that comprises this ingredient',
'code', 'Σ', '1..1', 'CodeableConcept', 'The specified substance',
'group', 'Σ', '1..1', 'CodeableConcept', 'The group of specified substance, e.g. group 1 to 4',
'confidentiality', 'Σ', '0..1', 'CodeableConcept', 'Confidentiality level of the specified substance as the ingredient',
'strength', 'Σ', '0..*', 'BackboneElement', 'Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product',
'presentation', 'Σ', '1..1', 'Ratio', 'The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item',
'presentationLowLimit', '?!Σ', '0..1', 'Ratio', 'A lower limit for the quantity of substance in the unit of presentation. For use when there is a range of strengths, this is the lower limit, with the presentation attribute becoming the upper limit',
'concentration', 'Σ', '0..1', 'Ratio', 'The strength per unitary volume (or mass)',
'concentrationLowLimit', '?!Σ', '0..1', 'Ratio', 'A lower limit for the strength per unitary volume (or mass), for when there is a range. The concentration attribute then becomes the upper limit',
'measurementPoint', 'Σ', '0..1', 'string', 'For when strength is measured at a particular point or distance',
'country', 'Σ', '0..*', 'CodeableConcept', 'The country or countries for which the strength range applies',
'referenceStrength', 'Σ', '0..*', 'BackboneElement', 'Strength expressed in terms of a reference substance',
'substance', 'Σ', '0..1', 'CodeableConcept', 'Relevant reference substance',
'strength', 'Σ', '1..1', 'Ratio', 'Strength expressed in terms of a reference substance',
'strengthLowLimit', 'Σ', '0..1', 'Ratio', 'Strength expressed in terms of a reference substance',
'measurementPoint', 'Σ', '0..1', 'string', 'For when strength is measured at a particular point or distance',
'country', 'Σ', '0..*', 'CodeableConcept', 'The country or countries for which the strength range applies',
'substance', 'Σ', '0..1', 'BackboneElement', 'The ingredient substance',
'code', 'Σ', '1..1', 'CodeableConcept', 'The ingredient substance',
'strength', 'Σ', '0..*', 'see strength', 'Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


