df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'BodyStructure', 'TU', '', 'DomainResource', 'Specific and identified anatomical structureElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Bodystructure identifier',
'active', '?!Σ', '0..1', 'boolean', 'Whether this record is in active use',
'morphology', 'Σ', '0..1', 'CodeableConcept', 'Kind of StructureSNOMED CT Morphologic Abnormalities (Example)',
'location', 'Σ', '0..1', 'CodeableConcept', 'Body siteSNOMED CT Body Structures (Example)',
'locationQualifier', '', '0..*', 'CodeableConcept', 'Body site modifierBodystructure Location Qualifier (Example)',
'description', 'Σ', '0..1', 'string', 'Text description',
'image', '', '0..*', 'Attachment', 'Attached images',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Who this is about',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'BodyStructure', 'TU', '', 'DomainResource', 'Specific and identified anatomical structureElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Bodystructure identifier',
'active', '?!Σ', '0..1', 'boolean', 'Whether this record is in active use',
'morphology', 'Σ', '0..1', 'CodeableConcept', 'Kind of StructureSNOMED CT Morphologic Abnormalities (Example)',
'location', 'Σ', '0..1', 'CodeableConcept', 'Body siteSNOMED CT Body Structures (Example)',
'locationQualifier', '', '0..*', 'CodeableConcept', 'Body site modifierBodystructure Location Qualifier (Example)',
'description', 'Σ', '0..1', 'string', 'Text description',
'image', '', '0..*', 'Attachment', 'Attached images',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Who this is about',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'BodyStructure.morphology', 'Codes describing anatomic morphology.', 'Example', 'SNOMEDCTMorphologicAbnormalities',
'BodyStructure.location', 'Codes describing anatomical locations. May include laterality.', 'Example', 'SNOMEDCTBodyStructures',
'BodyStructure.locationQualifier', 'Concepts modifying the anatomic location.', 'Example', 'BodystructureLocationQualifier',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'identifier', 'token', 'Bodystructure identifier', 'BodyStructure.identifier', '',
'location', 'token', 'Body site', 'BodyStructure.location', '',
'morphology', 'token', 'Kind of Structure', 'BodyStructure.morphology', '',
'patient', 'reference', 'Who this is about', 'BodyStructure.patient(Patient)', '',
)


