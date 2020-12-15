df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Biomedical Research and Regulation  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductPharmaceutical', 'ΣTU', '', 'DomainResource', 'A pharmaceutical product described in terms of its composition and dose formElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'An identifier for the pharmaceutical medicinal product',
'administrableDoseForm', 'Σ', '1..1', 'CodeableConcept', 'The administrable dose form, after necessary reconstitution',
'unitOfPresentation', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'ingredient', 'Σ', '0..*', 'Reference(MedicinalProductIngredient)', 'Ingredient',
'device', 'Σ', '0..*', 'Reference(DeviceDefinition)', 'Accompanying device',
'characteristics', 'Σ', '0..*', 'BackboneElement', 'Characteristics e.g. a products onset of action',
'code', 'Σ', '1..1', 'CodeableConcept', 'A coded characteristic',
'status', 'Σ', '0..1', 'CodeableConcept', 'The status of characteristic e.g. assigned or pending',
'routeOfAdministration', 'Σ', '1..*', 'BackboneElement', 'The path by which the pharmaceutical product is taken into or makes contact with the body',
'code', 'Σ', '1..1', 'CodeableConcept', 'Coded expression for the route',
'firstDose', 'Σ', '0..1', 'Quantity', 'The first dose (dose quantity) administered in humans can be specified, for a product under investigation, using a numerical value and its unit of measurement',
'maxSingleDose', 'Σ', '0..1', 'Quantity', 'The maximum single dose that can be administered as per the protocol of a clinical trial can be specified using a numerical value and its unit of measurement',
'maxDosePerDay', 'Σ', '0..1', 'Quantity', 'The maximum dose per day (maximum dose quantity to be administered in any one 24-h period) that can be administered as per the protocol referenced in the clinical trial authorisation',
'maxDosePerTreatmentPeriod', 'Σ', '0..1', 'Ratio', 'The maximum dose per treatment period that can be administered as per the protocol referenced in the clinical trial authorisation',
'maxTreatmentPeriod', 'Σ', '0..1', 'Duration', 'The maximum treatment period during which an Investigational Medicinal Product can be administered as per the protocol referenced in the clinical trial authorisation',
'targetSpecies', 'Σ', '0..*', 'BackboneElement', 'A species for which this route applies',
'code', 'Σ', '1..1', 'CodeableConcept', 'Coded expression for the species',
'withdrawalPeriod', 'Σ', '0..*', 'BackboneElement', 'A species specific time during which consumption of animal product is not appropriate',
'tissue', 'Σ', '1..1', 'CodeableConcept', 'Coded expression for the type of tissue for which the withdrawal period applues, e.g. meat, milk',
'value', 'Σ', '1..1', 'Quantity', 'A value for the time',
'supportingInformation', 'Σ', '0..1', 'string', 'Extra information about the withdrawal period',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductPharmaceutical', 'ΣTU', '', 'DomainResource', 'A pharmaceutical product described in terms of its composition and dose formElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'An identifier for the pharmaceutical medicinal product',
'administrableDoseForm', 'Σ', '1..1', 'CodeableConcept', 'The administrable dose form, after necessary reconstitution',
'unitOfPresentation', 'Σ', '0..1', 'CodeableConcept', 'Todo',
'ingredient', 'Σ', '0..*', 'Reference(MedicinalProductIngredient)', 'Ingredient',
'device', 'Σ', '0..*', 'Reference(DeviceDefinition)', 'Accompanying device',
'characteristics', 'Σ', '0..*', 'BackboneElement', 'Characteristics e.g. a products onset of action',
'code', 'Σ', '1..1', 'CodeableConcept', 'A coded characteristic',
'status', 'Σ', '0..1', 'CodeableConcept', 'The status of characteristic e.g. assigned or pending',
'routeOfAdministration', 'Σ', '1..*', 'BackboneElement', 'The path by which the pharmaceutical product is taken into or makes contact with the body',
'code', 'Σ', '1..1', 'CodeableConcept', 'Coded expression for the route',
'firstDose', 'Σ', '0..1', 'Quantity', 'The first dose (dose quantity) administered in humans can be specified, for a product under investigation, using a numerical value and its unit of measurement',
'maxSingleDose', 'Σ', '0..1', 'Quantity', 'The maximum single dose that can be administered as per the protocol of a clinical trial can be specified using a numerical value and its unit of measurement',
'maxDosePerDay', 'Σ', '0..1', 'Quantity', 'The maximum dose per day (maximum dose quantity to be administered in any one 24-h period) that can be administered as per the protocol referenced in the clinical trial authorisation',
'maxDosePerTreatmentPeriod', 'Σ', '0..1', 'Ratio', 'The maximum dose per treatment period that can be administered as per the protocol referenced in the clinical trial authorisation',
'maxTreatmentPeriod', 'Σ', '0..1', 'Duration', 'The maximum treatment period during which an Investigational Medicinal Product can be administered as per the protocol referenced in the clinical trial authorisation',
'targetSpecies', 'Σ', '0..*', 'BackboneElement', 'A species for which this route applies',
'code', 'Σ', '1..1', 'CodeableConcept', 'Coded expression for the species',
'withdrawalPeriod', 'Σ', '0..*', 'BackboneElement', 'A species specific time during which consumption of animal product is not appropriate',
'tissue', 'Σ', '1..1', 'CodeableConcept', 'Coded expression for the type of tissue for which the withdrawal period applues, e.g. meat, milk',
'value', 'Σ', '1..1', 'Quantity', 'A value for the time',
'supportingInformation', 'Σ', '0..1', 'string', 'Extra information about the withdrawal period',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'identifier', 'token', 'An identifier for the pharmaceutical medicinal product', 'MedicinalProductPharmaceutical.identifier', '',
'route', 'token', 'Coded expression for the route', 'MedicinalProductPharmaceutical.routeOfAdministration.code', '',
'target-species', 'token', 'Coded expression for the species', 'MedicinalProductPharmaceutical.routeOfAdministration.targetSpecies.code', '',
)


