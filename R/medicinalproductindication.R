df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Biomedical Research and Regulation  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductIndication', 'ΣTU', '', 'DomainResource', 'MedicinalProductIndicationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'subject', 'Σ', '0..*', 'Reference(MedicinalProduct | Medication)', 'The medication for which this is an indication',
'diseaseSymptomProcedure', 'Σ', '0..1', 'CodeableConcept', 'The disease, symptom or procedure that is the indication for treatment',
'diseaseStatus', 'Σ', '0..1', 'CodeableConcept', 'The status of the disease or symptom for which the indication applies',
'comorbidity', 'Σ', '0..*', 'CodeableConcept', 'Comorbidity (concurrent condition) or co-infection as part of the indication',
'intendedEffect', 'Σ', '0..1', 'CodeableConcept', 'The intended effect, aim or strategy to be achieved by the indication',
'duration', 'Σ', '0..1', 'Quantity', 'Timing or duration information as part of the indication',
'otherTherapy', 'Σ', '0..*', 'BackboneElement', 'Information about the use of the medicinal product in relation to other therapies described as part of the indication',
'therapyRelationshipType', 'Σ', '1..1', 'CodeableConcept', 'The type of relationship between the medicinal product indication or contraindication and another therapy',
'medication[x]', 'Σ', '1..1', '', 'Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication',
'medicationCodeableConcept', '', '', 'CodeableConcept', '',
'medicationReference', '', '', 'Reference(MedicinalProduct | Medication | Substance | SubstanceSpecification)', '',
'undesirableEffect', 'Σ', '0..*', 'Reference(MedicinalProductUndesirableEffect)', 'Describe the undesirable effects of the medicinal product',
'population', 'Σ', '0..*', 'Population', 'The population group to which this applies',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductIndication', 'ΣTU', '', 'DomainResource', 'MedicinalProductIndicationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'subject', 'Σ', '0..*', 'Reference(MedicinalProduct | Medication)', 'The medication for which this is an indication',
'diseaseSymptomProcedure', 'Σ', '0..1', 'CodeableConcept', 'The disease, symptom or procedure that is the indication for treatment',
'diseaseStatus', 'Σ', '0..1', 'CodeableConcept', 'The status of the disease or symptom for which the indication applies',
'comorbidity', 'Σ', '0..*', 'CodeableConcept', 'Comorbidity (concurrent condition) or co-infection as part of the indication',
'intendedEffect', 'Σ', '0..1', 'CodeableConcept', 'The intended effect, aim or strategy to be achieved by the indication',
'duration', 'Σ', '0..1', 'Quantity', 'Timing or duration information as part of the indication',
'otherTherapy', 'Σ', '0..*', 'BackboneElement', 'Information about the use of the medicinal product in relation to other therapies described as part of the indication',
'therapyRelationshipType', 'Σ', '1..1', 'CodeableConcept', 'The type of relationship between the medicinal product indication or contraindication and another therapy',
'medication[x]', 'Σ', '1..1', '', 'Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication',
'medicationCodeableConcept', '', '', 'CodeableConcept', '',
'medicationReference', '', '', 'Reference(MedicinalProduct | Medication | Substance | SubstanceSpecification)', '',
'undesirableEffect', 'Σ', '0..*', 'Reference(MedicinalProductUndesirableEffect)', 'Describe the undesirable effects of the medicinal product',
'population', 'Σ', '0..*', 'Population', 'The population group to which this applies',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'subject', 'reference', 'The medication for which this is an indication', 'MedicinalProductIndication.subject(Medication, MedicinalProduct)', '',
)


