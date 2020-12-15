df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Pharmacy  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Medication', 'TU', '', 'DomainResource', 'Definition of a MedicationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier for this medication',
'code', 'Σ', '0..1', 'CodeableConcept', 'Codes that identify this medicationSNOMED CT Medication Codes (Example)',
'status', '?!Σ', '0..1', 'code', 'active | inactive | entered-in-errorMedication  status  codes (Required)',
'manufacturer', 'Σ', '0..1', 'Reference(Organization)', 'Manufacturer of the item',
'form', '', '0..1', 'CodeableConcept', 'powder | tablets | capsule +SNOMED CT Form Codes (Example)',
'amount', 'Σ', '0..1', 'Ratio', 'Amount of drug in package',
'ingredient', '', '0..*', 'BackboneElement', 'Active or inactive ingredient',
'item[x]', '', '1..1', '', 'The actual ingredient or content',
'itemCodeableConcept', '', '', 'CodeableConcept', '',
'itemReference', '', '', 'Reference(Substance | Medication)', '',
'isActive', '', '0..1', 'boolean', 'Active ingredient indicator',
'strength', '', '0..1', 'Ratio', 'Quantity of ingredient present',
'batch', '', '0..1', 'BackboneElement', 'Details about packaged medications',
'lotNumber', '', '0..1', 'string', 'Identifier assigned to batch',
'expirationDate', '', '0..1', 'dateTime', 'When batch will expire',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Medication', '',
'Medication.identifier', 'Added Element',
'Medication.status', 'Change value set from http://hl7.org/fhir/ValueSet/medication-status to http://hl7.org/fhir/ValueSet/medication-status|4.0.1
        Now marked as Modifier',
'Medication.amount', 'Added Element',
'Medication.ingredient.strength', 'Added Element',
'Medication.batch', 'Added Element',
'Medication.batch.lotNumber', 'Added Element',
'Medication.batch.expirationDate', 'Added Element',
'Medication.isBrand', 'deleted',
'Medication.isOverTheCounter', 'deleted',
'Medication.ingredient.amount', 'deleted',
'Medication.package', 'deleted',
'Medication.image', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Medication', 'TU', '', 'DomainResource', 'Definition of a MedicationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier for this medication',
'code', 'Σ', '0..1', 'CodeableConcept', 'Codes that identify this medicationSNOMED CT Medication Codes (Example)',
'status', '?!Σ', '0..1', 'code', 'active | inactive | entered-in-errorMedication  status  codes (Required)',
'manufacturer', 'Σ', '0..1', 'Reference(Organization)', 'Manufacturer of the item',
'form', '', '0..1', 'CodeableConcept', 'powder | tablets | capsule +SNOMED CT Form Codes (Example)',
'amount', 'Σ', '0..1', 'Ratio', 'Amount of drug in package',
'ingredient', '', '0..*', 'BackboneElement', 'Active or inactive ingredient',
'item[x]', '', '1..1', '', 'The actual ingredient or content',
'itemCodeableConcept', '', '', 'CodeableConcept', '',
'itemReference', '', '', 'Reference(Substance | Medication)', '',
'isActive', '', '0..1', 'boolean', 'Active ingredient indicator',
'strength', '', '0..1', 'Ratio', 'Quantity of ingredient present',
'batch', '', '0..1', 'BackboneElement', 'Details about packaged medications',
'lotNumber', '', '0..1', 'string', 'Identifier assigned to batch',
'expirationDate', '', '0..1', 'dateTime', 'When batch will expire',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Medication', '',
'Medication.identifier', 'Added Element',
'Medication.status', 'Change value set from http://hl7.org/fhir/ValueSet/medication-status to http://hl7.org/fhir/ValueSet/medication-status|4.0.1
        Now marked as Modifier',
'Medication.amount', 'Added Element',
'Medication.ingredient.strength', 'Added Element',
'Medication.batch', 'Added Element',
'Medication.batch.lotNumber', 'Added Element',
'Medication.batch.expirationDate', 'Added Element',
'Medication.isBrand', 'deleted',
'Medication.isOverTheCounter', 'deleted',
'Medication.ingredient.amount', 'deleted',
'Medication.package', 'deleted',
'Medication.image', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Medication.code', 'A coded concept that defines the type of a medication.', 'Example', 'SNOMEDCTMedicationCodes',
'Medication.status', 'A coded concept defining if the medication is in active use.', 'Required', 'Medication Status Codes',
'Medication.form', 'A coded concept defining the form of a medication.', 'Example', 'SNOMEDCTFormCodes',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'code', 'token', 'Returns medications for a specific code', 'Medication.code', '13 Resources',
'expiration-date', 'date', 'Returns medications in a batch with this expiration date', 'Medication.batch.expirationDate', '',
'form', 'token', 'Returns medications for a specific dose form', 'Medication.form', '',
'identifier', 'token', 'Returns medications with this external identifier', 'Medication.identifier', '',
'ingredient', 'reference', 'Returns medications for this ingredient reference', '(Medication.ingredient.item as Reference)(Medication, Substance)', '',
'ingredient-code', 'token', 'Returns medications for this ingredient code', '(Medication.ingredient.item as CodeableConcept)', '',
'lot-number', 'token', 'Returns medications in a batch with this lot number', 'Medication.batch.lotNumber', '',
'manufacturer', 'reference', 'Returns medications made or sold for this manufacturer', 'Medication.manufacturer(Organization)', '',
'status', 'token', 'Returns medications for this status', 'Medication.status', '',
)


