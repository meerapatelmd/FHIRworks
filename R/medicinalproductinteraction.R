df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Biomedical Research and Regulation  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductInteraction', 'ΣTU', '', 'DomainResource', 'MedicinalProductInteractionElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'subject', 'Σ', '0..*', 'Reference(MedicinalProduct | Medication | Substance)', 'The medication for which this is a described interaction',
'description', 'Σ', '0..1', 'string', 'The interaction described',
'interactant', 'Σ', '0..*', 'BackboneElement', 'The specific medication, food or laboratory test that interacts',
'item[x]', 'Σ', '1..1', '', 'The specific medication, food or laboratory test that interacts',
'itemReference', '', '', 'Reference(MedicinalProduct | Medication | Substance | ObservationDefinition)', '',
'itemCodeableConcept', '', '', 'CodeableConcept', '',
'type', 'Σ', '0..1', 'CodeableConcept', 'The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction',
'effect', 'Σ', '0..1', 'CodeableConcept', 'The effect of the interaction, for example "reduced gastric absorption of primary medication"',
'incidence', 'Σ', '0..1', 'CodeableConcept', 'The incidence of the interaction, e.g. theoretical, observed',
'management', 'Σ', '0..1', 'CodeableConcept', 'Actions for managing the interaction',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductInteraction', 'ΣTU', '', 'DomainResource', 'MedicinalProductInteractionElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'subject', 'Σ', '0..*', 'Reference(MedicinalProduct | Medication | Substance)', 'The medication for which this is a described interaction',
'description', 'Σ', '0..1', 'string', 'The interaction described',
'interactant', 'Σ', '0..*', 'BackboneElement', 'The specific medication, food or laboratory test that interacts',
'item[x]', 'Σ', '1..1', '', 'The specific medication, food or laboratory test that interacts',
'itemReference', '', '', 'Reference(MedicinalProduct | Medication | Substance | ObservationDefinition)', '',
'itemCodeableConcept', '', '', 'CodeableConcept', '',
'type', 'Σ', '0..1', 'CodeableConcept', 'The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction',
'effect', 'Σ', '0..1', 'CodeableConcept', 'The effect of the interaction, for example "reduced gastric absorption of primary medication"',
'incidence', 'Σ', '0..1', 'CodeableConcept', 'The incidence of the interaction, e.g. theoretical, observed',
'management', 'Σ', '0..1', 'CodeableConcept', 'Actions for managing the interaction',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'subject', 'reference', 'The medication for which this is an interaction', 'MedicinalProductInteraction.subject(Medication, Substance, MedicinalProduct)', '',
)


