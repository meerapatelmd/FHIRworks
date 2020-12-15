df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Biomedical Research and Regulation  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductUndesirableEffect', 'ΣTU', '', 'DomainResource', 'MedicinalProductUndesirableEffectElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'subject', 'Σ', '0..*', 'Reference(MedicinalProduct | Medication)', 'The medication for which this is an indication',
'symptomConditionEffect', 'Σ', '0..1', 'CodeableConcept', 'The symptom, condition or undesirable effect',
'classification', 'Σ', '0..1', 'CodeableConcept', 'Classification of the effect',
'frequencyOfOccurrence', 'Σ', '0..1', 'CodeableConcept', 'The frequency of occurrence of the effect',
'population', 'Σ', '0..*', 'Population', 'The population group to which this applies',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductUndesirableEffect', 'ΣTU', '', 'DomainResource', 'MedicinalProductUndesirableEffectElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'subject', 'Σ', '0..*', 'Reference(MedicinalProduct | Medication)', 'The medication for which this is an indication',
'symptomConditionEffect', 'Σ', '0..1', 'CodeableConcept', 'The symptom, condition or undesirable effect',
'classification', 'Σ', '0..1', 'CodeableConcept', 'Classification of the effect',
'frequencyOfOccurrence', 'Σ', '0..1', 'CodeableConcept', 'The frequency of occurrence of the effect',
'population', 'Σ', '0..*', 'Population', 'The population group to which this applies',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'subject', 'reference', 'The medication for which this is an undesirable effect', 'MedicinalProductUndesirableEffect.subject(Medication, MedicinalProduct)', '',
)


