df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Substance', 'TU', '', 'DomainResource', 'A homogeneous material with a definite compositionElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique identifier',
'status', '?!Σ', '0..1', 'code', 'active | inactive | entered-in-errorFHIRSubstanceStatus (Required)',
'category', 'Σ', '0..*', 'CodeableConcept', 'What class/type of substance this isSubstance Category Codes (Extensible)',
'code', 'Σ', '1..1', 'CodeableConcept', 'What substance this isSubstance Code (Example)',
'description', 'Σ', '0..1', 'string', 'Textual description of the substance, comments',
'instance', 'Σ', '0..*', 'BackboneElement', 'If this describes a specific package/container of the substance',
'identifier', 'Σ', '0..1', 'Identifier', 'Identifier of the package/container',
'expiry', 'Σ', '0..1', 'dateTime', 'When no longer valid to use',
'quantity', 'Σ', '0..1', 'SimpleQuantity', 'Amount of substance in the package',
'ingredient', 'Σ', '0..*', 'BackboneElement', 'Composition information about the substance',
'quantity', 'Σ', '0..1', 'Ratio', 'Optional amount (concentration)',
'substance[x]', 'Σ', '1..1', '', 'A component of the substanceSubstance Code (Example)',
'substanceCodeableConcept', '', '', 'CodeableConcept', '',
'substanceReference', '', '', 'Reference(Substance)', '',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Substance', '',
'Substance.status', 'Change value set from http://hl7.org/fhir/ValueSet/substance-status to http://hl7.org/fhir/ValueSet/substance-status|4.0.1
        Now marked as Modifier',
'Substance.category', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/substance-category" to "http://terminology.hl7.org/CodeSystem/substance-category"',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Substance', 'TU', '', 'DomainResource', 'A homogeneous material with a definite compositionElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique identifier',
'status', '?!Σ', '0..1', 'code', 'active | inactive | entered-in-errorFHIRSubstanceStatus (Required)',
'category', 'Σ', '0..*', 'CodeableConcept', 'What class/type of substance this isSubstance Category Codes (Extensible)',
'code', 'Σ', '1..1', 'CodeableConcept', 'What substance this isSubstance Code (Example)',
'description', 'Σ', '0..1', 'string', 'Textual description of the substance, comments',
'instance', 'Σ', '0..*', 'BackboneElement', 'If this describes a specific package/container of the substance',
'identifier', 'Σ', '0..1', 'Identifier', 'Identifier of the package/container',
'expiry', 'Σ', '0..1', 'dateTime', 'When no longer valid to use',
'quantity', 'Σ', '0..1', 'SimpleQuantity', 'Amount of substance in the package',
'ingredient', 'Σ', '0..*', 'BackboneElement', 'Composition information about the substance',
'quantity', 'Σ', '0..1', 'Ratio', 'Optional amount (concentration)',
'substance[x]', 'Σ', '1..1', '', 'A component of the substanceSubstance Code (Example)',
'substanceCodeableConcept', '', '', 'CodeableConcept', '',
'substanceReference', '', '', 'Reference(Substance)', '',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Substance', '',
'Substance.status', 'Change value set from http://hl7.org/fhir/ValueSet/substance-status to http://hl7.org/fhir/ValueSet/substance-status|4.0.1
        Now marked as Modifier',
'Substance.category', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/substance-category" to "http://terminology.hl7.org/CodeSystem/substance-category"',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Substance.status', 'A code to indicate if the substance is actively used.', 'Required', 'FHIRSubstanceStatus',
'Substance.category', 'Category or classification of substance.', 'Extensible', 'SubstanceCategoryCodes',
'Substance.code', 'Substance codes.', 'Example', 'SubstanceCode',
'Substance.ingredient.substance[x]', 'Substance Ingredient codes.', 'Example', 'SubstanceCode',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'category', 'token', 'The category of the substance', 'Substance.category', '',
'code', 'token', 'The code of the substance or ingredient', 'Substance.code | (Substance.ingredient.substance as CodeableConcept)', '',
'container-identifier', 'token', 'Identifier of the package/container', 'Substance.instance.identifier', '',
'expiry', 'date', 'Expiry date of package or container of substance', 'Substance.instance.expiry', '',
'identifier', 'token', 'Unique identifier for the substance', 'Substance.identifier', '',
'quantity', 'quantity', 'Amount of substance in the package', 'Substance.instance.quantity', '',
'status', 'token', 'active | inactive | entered-in-error', 'Substance.status', '',
'substance-reference', 'reference', 'A component of the substance', '(Substance.ingredient.substance as Reference)(Substance)', '',
)


