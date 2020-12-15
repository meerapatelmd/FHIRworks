df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Encounter, Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'NutritionOrder', 'ITU', '', 'DomainResource', 'Diet, formula or nutritional supplement request+ Warning: Nutrition Order SHALL contain either Oral Diet , Supplement, or Enteral Formula classElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Identifiers assigned to this order',
'instantiatesCanonical', 'Σ', '0..*', 'canonical(ActivityDefinition | PlanDefinition)', 'Instantiates FHIR protocol or definition',
'instantiatesUri', 'Σ', '0..*', 'uri', 'Instantiates external protocol or definition',
'instantiates', '', '0..*', 'uri', 'Instantiates protocol or definition',
'status', '?!Σ', '1..1', 'code', 'draft | active | on-hold | revoked | completed | entered-in-error | unknownRequestStatus (Required)',
'intent', '?!Σ', '1..1', 'code', 'proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | optionRequestIntent (Required)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'The person who requires the diet, formula or nutritional supplement',
'encounter', '', '0..1', 'Reference(Encounter)', 'The encounter associated with this nutrition order',
'dateTime', 'Σ', '1..1', 'dateTime', 'Date and time the nutrition order was requested',
'orderer', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Who ordered the diet, formula or nutritional supplement',
'allergyIntolerance', '', '0..*', 'Reference(AllergyIntolerance)', 'List of the patient's food and nutrition-related allergies and intolerances',
'foodPreferenceModifier', '', '0..*', 'CodeableConcept', 'Order-specific modifier about the type of food that should be givenDiet (Example)',
'excludeFoodModifier', '', '0..*', 'CodeableConcept', 'Order-specific modifier about the type of food that should not be givenFood Type Codes (Example)',
'oralDiet', 'I', '0..1', 'BackboneElement', 'Oral diet components',
'type', 'Σ', '0..*', 'CodeableConcept', 'Type of oral diet or diet restrictions that describe what can be consumed orallyDiet Codes (Example)',
'schedule', '', '0..*', 'Timing', 'Scheduled frequency of diet',
'nutrient', '', '0..*', 'BackboneElement', 'Required  nutrient modifications',
'modifier', '', '0..1', 'CodeableConcept', 'Type of nutrient that is being modifiedNutrient Modifier Codes (Example)',
'amount', '', '0..1', 'SimpleQuantity', 'Quantity of the specified nutrient',
'texture', '', '0..*', 'BackboneElement', 'Required  texture modifications',
'modifier', '', '0..1', 'CodeableConcept', 'Code to indicate how to alter the texture of the foods, e.g. pureedTexture Modifier Codes (Example)',
'foodType', '', '0..1', 'CodeableConcept', 'Concepts that are used to identify an entity that is ingested for nutritional purposesTexture Modified Food Type Codes (Example)',
'fluidConsistencyType', '', '0..*', 'CodeableConcept', 'The required consistency of fluids and liquids provided to the patientFluid Consistency Type Codes (Example)',
'instruction', 'Σ', '0..1', 'string', 'Instructions or additional information about the oral diet',
'supplement', 'I', '0..*', 'BackboneElement', 'Supplement components',
'type', 'Σ', '0..1', 'CodeableConcept', 'Type of supplement product requestedSupplement Type Codes (Example)',
'productName', '', '0..1', 'string', 'Product or brand name of the nutritional supplement',
'schedule', '', '0..*', 'Timing', 'Scheduled frequency of supplement',
'quantity', '', '0..1', 'SimpleQuantity', 'Amount of the nutritional supplement',
'instruction', 'Σ', '0..1', 'string', 'Instructions or additional information about the oral supplement',
'enteralFormula', 'I', '0..1', 'BackboneElement', 'Enteral formula components',
'baseFormulaType', 'Σ', '0..1', 'CodeableConcept', 'Type of enteral or infant formulaEnteral Formula Type Codes (Example)',
'baseFormulaProductName', '', '0..1', 'string', 'Product or brand name of the enteral or infant formula',
'additiveType', '', '0..1', 'CodeableConcept', 'Type of modular component to add to the feedingEnteral Formula Additive Type Code (Example)',
'additiveProductName', '', '0..1', 'string', 'Product or brand name of the modular additive',
'caloricDensity', '', '0..1', 'SimpleQuantity', 'Amount of energy per specified volume that is required',
'routeofAdministration', '', '0..1', 'CodeableConcept', 'How the formula should enter the patient's gastrointestinal tractEnteral Route Codes (Extensible)',
'administration', '', '0..*', 'BackboneElement', 'Formula feeding instruction as structured data',
'schedule', '', '0..1', 'Timing', 'Scheduled frequency of enteral feeding',
'quantity', '', '0..1', 'SimpleQuantity', 'The volume of formula to provide',
'rate[x]', '', '0..1', '', 'Speed with which the formula is provided per period of time',
'rateQuantity', '', '', 'SimpleQuantity', '',
'rateRatio', '', '', 'Ratio', '',
'maxVolumeToDeliver', '', '0..1', 'SimpleQuantity', 'Upper limit on formula volume per unit of time',
'administrationInstruction', 'Σ', '0..1', 'string', 'Formula feeding instructions expressed as text',
'note', '', '0..*', 'Annotation', 'Comments',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'NutritionOrder', '',
'NutritionOrder.instantiatesCanonical', 'Added Element',
'NutritionOrder.instantiatesUri', 'Added Element',
'NutritionOrder.instantiates', 'Added Element',
'NutritionOrder.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/nutrition-request-status to http://hl7.org/fhir/ValueSet/request-status|4.0.1',
'NutritionOrder.intent', 'Added Mandatory Element',
'NutritionOrder.orderer', 'Type Reference: Added Target Type PractitionerRole',
'NutritionOrder.enteralFormula.administration.rate[x]', 'Add Type Quantity()
        Remove Type Quantity()',
'NutritionOrder.note', 'Added Element',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'NutritionOrder', 'ITU', '', 'DomainResource', 'Diet, formula or nutritional supplement request+ Warning: Nutrition Order SHALL contain either Oral Diet , Supplement, or Enteral Formula classElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Identifiers assigned to this order',
'instantiatesCanonical', 'Σ', '0..*', 'canonical(ActivityDefinition | PlanDefinition)', 'Instantiates FHIR protocol or definition',
'instantiatesUri', 'Σ', '0..*', 'uri', 'Instantiates external protocol or definition',
'instantiates', '', '0..*', 'uri', 'Instantiates protocol or definition',
'status', '?!Σ', '1..1', 'code', 'draft | active | on-hold | revoked | completed | entered-in-error | unknownRequestStatus (Required)',
'intent', '?!Σ', '1..1', 'code', 'proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | optionRequestIntent (Required)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'The person who requires the diet, formula or nutritional supplement',
'encounter', '', '0..1', 'Reference(Encounter)', 'The encounter associated with this nutrition order',
'dateTime', 'Σ', '1..1', 'dateTime', 'Date and time the nutrition order was requested',
'orderer', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Who ordered the diet, formula or nutritional supplement',
'allergyIntolerance', '', '0..*', 'Reference(AllergyIntolerance)', 'List of the patient's food and nutrition-related allergies and intolerances',
'foodPreferenceModifier', '', '0..*', 'CodeableConcept', 'Order-specific modifier about the type of food that should be givenDiet (Example)',
'excludeFoodModifier', '', '0..*', 'CodeableConcept', 'Order-specific modifier about the type of food that should not be givenFood Type Codes (Example)',
'oralDiet', 'I', '0..1', 'BackboneElement', 'Oral diet components',
'type', 'Σ', '0..*', 'CodeableConcept', 'Type of oral diet or diet restrictions that describe what can be consumed orallyDiet Codes (Example)',
'schedule', '', '0..*', 'Timing', 'Scheduled frequency of diet',
'nutrient', '', '0..*', 'BackboneElement', 'Required  nutrient modifications',
'modifier', '', '0..1', 'CodeableConcept', 'Type of nutrient that is being modifiedNutrient Modifier Codes (Example)',
'amount', '', '0..1', 'SimpleQuantity', 'Quantity of the specified nutrient',
'texture', '', '0..*', 'BackboneElement', 'Required  texture modifications',
'modifier', '', '0..1', 'CodeableConcept', 'Code to indicate how to alter the texture of the foods, e.g. pureedTexture Modifier Codes (Example)',
'foodType', '', '0..1', 'CodeableConcept', 'Concepts that are used to identify an entity that is ingested for nutritional purposesTexture Modified Food Type Codes (Example)',
'fluidConsistencyType', '', '0..*', 'CodeableConcept', 'The required consistency of fluids and liquids provided to the patientFluid Consistency Type Codes (Example)',
'instruction', 'Σ', '0..1', 'string', 'Instructions or additional information about the oral diet',
'supplement', 'I', '0..*', 'BackboneElement', 'Supplement components',
'type', 'Σ', '0..1', 'CodeableConcept', 'Type of supplement product requestedSupplement Type Codes (Example)',
'productName', '', '0..1', 'string', 'Product or brand name of the nutritional supplement',
'schedule', '', '0..*', 'Timing', 'Scheduled frequency of supplement',
'quantity', '', '0..1', 'SimpleQuantity', 'Amount of the nutritional supplement',
'instruction', 'Σ', '0..1', 'string', 'Instructions or additional information about the oral supplement',
'enteralFormula', 'I', '0..1', 'BackboneElement', 'Enteral formula components',
'baseFormulaType', 'Σ', '0..1', 'CodeableConcept', 'Type of enteral or infant formulaEnteral Formula Type Codes (Example)',
'baseFormulaProductName', '', '0..1', 'string', 'Product or brand name of the enteral or infant formula',
'additiveType', '', '0..1', 'CodeableConcept', 'Type of modular component to add to the feedingEnteral Formula Additive Type Code (Example)',
'additiveProductName', '', '0..1', 'string', 'Product or brand name of the modular additive',
'caloricDensity', '', '0..1', 'SimpleQuantity', 'Amount of energy per specified volume that is required',
'routeofAdministration', '', '0..1', 'CodeableConcept', 'How the formula should enter the patient's gastrointestinal tractEnteral Route Codes (Extensible)',
'administration', '', '0..*', 'BackboneElement', 'Formula feeding instruction as structured data',
'schedule', '', '0..1', 'Timing', 'Scheduled frequency of enteral feeding',
'quantity', '', '0..1', 'SimpleQuantity', 'The volume of formula to provide',
'rate[x]', '', '0..1', '', 'Speed with which the formula is provided per period of time',
'rateQuantity', '', '', 'SimpleQuantity', '',
'rateRatio', '', '', 'Ratio', '',
'maxVolumeToDeliver', '', '0..1', 'SimpleQuantity', 'Upper limit on formula volume per unit of time',
'administrationInstruction', 'Σ', '0..1', 'string', 'Formula feeding instructions expressed as text',
'note', '', '0..*', 'Annotation', 'Comments',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'NutritionOrder', '',
'NutritionOrder.instantiatesCanonical', 'Added Element',
'NutritionOrder.instantiatesUri', 'Added Element',
'NutritionOrder.instantiates', 'Added Element',
'NutritionOrder.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/nutrition-request-status to http://hl7.org/fhir/ValueSet/request-status|4.0.1',
'NutritionOrder.intent', 'Added Mandatory Element',
'NutritionOrder.orderer', 'Type Reference: Added Target Type PractitionerRole',
'NutritionOrder.enteralFormula.administration.rate[x]', 'Add Type Quantity()
        Remove Type Quantity()',
'NutritionOrder.note', 'Added Element',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'NutritionOrder.status', 'Codes identifying the lifecycle stage of the nutrition order.', 'Required', 'RequestStatus',
'NutritionOrder.intent', 'Codes indicating the degree of authority/intentionality associated with a nutrition order.', 'Required', 'RequestIntent',
'NutritionOrder.foodPreferenceModifier', 'Medical, cultural or ethical food preferences to help with catering requirements.', 'Example', 'Diet',
'NutritionOrder.excludeFoodModifier', 'Codes used to indicate the type of food that should NOT be given to the patient.', 'Example', 'FoodTypeCodes',
'NutritionOrder.oralDiet.type', 'Codes used to indicate the type of diet being ordered for a patient.', 'Example', 'DietCodes',
'NutritionOrder.oralDiet.nutrient.modifier', 'Codes for types of nutrients that are being modified such as carbohydrate or sodium.', 'Example', 'NutrientModifierCodes',
'NutritionOrder.oralDiet.texture.modifier', 'Codes for food consistency types or texture modifications to apply to foods.', 'Example', 'TextureModifierCodes',
'NutritionOrder.oralDiet.texture.foodType', 'Codes for types of foods that are texture-modified.', 'Example', 'TextureModifiedFoodTypeCodes',
'NutritionOrder.oralDiet.fluidConsistencyType', 'Codes used to represent the consistency of fluids and liquids provided to the patient.', 'Example', 'FluidConsistencyTypeCodes',
'NutritionOrder.supplement.type', 'Codes for nutritional supplements to be provided to the patient.', 'Example', 'SupplementTypeCodes',
'NutritionOrder.enteralFormula.baseFormulaType', 'Codes for type of enteral formula to be administered to patient.', 'Example', 'EnteralFormulaTypeCodes',
'NutritionOrder.enteralFormula.additiveType', 'Codes for the type of modular component such as protein, carbohydrate or fiber to be provided in addition to or mixed with the base formula.', 'Example', 'EnteralFormulaAdditiveTypeCode',
'NutritionOrder.enteralFormula.routeofAdministration', 'Codes specifying the route of administration of enteral formula.', 'Extensible', 'EnteralRouteCodes',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'nor-1', 'Warning', '(base)', 'Nutrition Order SHALL contain either Oral Diet , Supplement, or Enteral Formula class', 'oralDiet.exists() or supplement.exists() or enteralFormula.exists()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'additive', 'token', 'Type of module component to add to the feeding', 'NutritionOrder.enteralFormula.additiveType', '',
'datetime', 'date', 'Return nutrition orders requested on this date', 'NutritionOrder.dateTime', '',
'encounter', 'reference', 'Return nutrition orders with this encounter identifier', 'NutritionOrder.encounter(Encounter)', '12 Resources',
'formula', 'token', 'Type of enteral or infant formula', 'NutritionOrder.enteralFormula.baseFormulaType', '',
'identifier', 'token', 'Return nutrition orders with this external identifier', 'NutritionOrder.identifier', '30 Resources',
'instantiates-canonical', 'reference', 'Instantiates FHIR protocol or definition', 'NutritionOrder.instantiatesCanonical(PlanDefinition, ActivityDefinition)', '',
'instantiates-uri', 'uri', 'Instantiates external protocol or definition', 'NutritionOrder.instantiatesUri', '',
'oraldiet', 'token', 'Type of diet that can be consumed orally (i.e., take via the mouth).', 'NutritionOrder.oralDiet.type', '',
'patient', 'reference', 'The identity of the person who requires the diet, formula or nutritional supplement', 'NutritionOrder.patient(Patient)', '33 Resources',
'provider', 'reference', 'The identity of the provider who placed the nutrition order', 'NutritionOrder.orderer(Practitioner, PractitionerRole)', '',
'status', 'token', 'Status of the nutrition order.', 'NutritionOrder.status', '',
'supplement', 'token', 'Type of supplement product requested', 'NutritionOrder.supplement.type', '',
)


