df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Biomedical Research and Regulation  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductManufactured', 'ΣTU', '', 'DomainResource', 'The manufactured item as contained in the packaged medicinal productElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'manufacturedDoseForm', 'Σ', '1..1', 'CodeableConcept', 'Dose form as manufactured and before any transformation into the pharmaceutical product',
'unitOfPresentation', 'Σ', '0..1', 'CodeableConcept', 'The “real world” units in which the quantity of the manufactured item is described',
'quantity', 'Σ', '1..1', 'Quantity', 'The quantity or "count number" of the manufactured item',
'manufacturer', 'Σ', '0..*', 'Reference(Organization)', 'Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical issues)',
'ingredient', 'Σ', '0..*', 'Reference(MedicinalProductIngredient)', 'Ingredient',
'physicalCharacteristics', 'Σ', '0..1', 'ProdCharacteristic', 'Dimensions, color etc.',
'otherCharacteristics', 'Σ', '0..*', 'CodeableConcept', 'Other codeable characteristics',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductManufactured', 'ΣTU', '', 'DomainResource', 'The manufactured item as contained in the packaged medicinal productElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'manufacturedDoseForm', 'Σ', '1..1', 'CodeableConcept', 'Dose form as manufactured and before any transformation into the pharmaceutical product',
'unitOfPresentation', 'Σ', '0..1', 'CodeableConcept', 'The “real world” units in which the quantity of the manufactured item is described',
'quantity', 'Σ', '1..1', 'Quantity', 'The quantity or "count number" of the manufactured item',
'manufacturer', 'Σ', '0..*', 'Reference(Organization)', 'Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical issues)',
'ingredient', 'Σ', '0..*', 'Reference(MedicinalProductIngredient)', 'Ingredient',
'physicalCharacteristics', 'Σ', '0..1', 'ProdCharacteristic', 'Dimensions, color etc.',
'otherCharacteristics', 'Σ', '0..*', 'CodeableConcept', 'Other codeable characteristics',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


