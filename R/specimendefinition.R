df1 <-
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <-
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'SpecimenDefinition', 'TU', '', 'DomainResource', 'Kind of specimenElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..1', 'Identifier', 'Business identifier of a kind of specimen',
'typeCollected', 'Σ', '0..1', 'CodeableConcept', 'Kind of material to collectv2 Specimen Type (Example)',
'patientPreparation', 'Σ', '0..*', 'CodeableConcept', 'Patient preparation for collectionPatient preparation prior specimen collection (Example)',
'timeAspect', 'Σ', '0..1', 'string', 'Time aspect for collection',
'collection', 'Σ', '0..*', 'CodeableConcept', 'Specimen collection procedureSpecimen collection methods (Example)',
'typeTested', '', '0..*', 'BackboneElement', 'Specimen in container intended for testing by lab',
'isDerived', '', '0..1', 'boolean', 'Primary or secondary specimen',
'type', '', '0..1', 'CodeableConcept', 'Type of intended specimenv2 Specimen Type (Example)',
'preference', '', '1..1', 'code', 'preferred | alternateSpecimenContainedPreference (Required)',
'container', '', '0..1', 'BackboneElement', 'The specimens container',
'material', '', '0..1', 'CodeableConcept', 'Container materialTypes of material for specimen containers (Example)',
'type', '', '0..1', 'CodeableConcept', 'Kind of container associated with the kind of specimenSpecimen Container Type (Example)',
'cap', '', '0..1', 'CodeableConcept', 'Color of container capContainerCap (Example)',
'description', '', '0..1', 'string', 'Container description',
'capacity', '', '0..1', 'SimpleQuantity', 'Container capacity',
'minimumVolume[x]', '', '0..1', '', 'Minimum volume',
'minimumVolumeQuantity', '', '', 'SimpleQuantity', '',
'minimumVolumeString', '', '', 'string', '',
'additive', '', '0..*', 'BackboneElement', 'Additive associated with container',
'additive[x]', '', '1..1', '', 'Additive associated with containerv2 Additive (Example)',
'additiveCodeableConcept', '', '', 'CodeableConcept', '',
'additiveReference', '', '', 'Reference(Substance)', '',
'preparation', '', '0..1', 'string', 'Specimen container preparation',
'requirement', '', '0..1', 'string', 'Specimen requirements',
'retentionTime', '', '0..1', 'Duration', 'Specimen retention time',
'rejectionCriterion', '', '0..*', 'CodeableConcept', 'Rejection criterionRejectionCriterion (Example)',
'handling', '', '0..*', 'BackboneElement', 'Specimen handling before testing',
'temperatureQualifier', '', '0..1', 'CodeableConcept', 'Temperature qualifierHandlingConditionSet (Example)',
'temperatureRange', '', '0..1', 'Range', 'Temperature range',
'maxDuration', '', '0..1', 'Duration', 'Maximum preservation time',
'instruction', '', '0..1', 'string', 'Preservation instruction',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <-
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'SpecimenDefinition', 'TU', '', 'DomainResource', 'Kind of specimenElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..1', 'Identifier', 'Business identifier of a kind of specimen',
'typeCollected', 'Σ', '0..1', 'CodeableConcept', 'Kind of material to collectv2 Specimen Type (Example)',
'patientPreparation', 'Σ', '0..*', 'CodeableConcept', 'Patient preparation for collectionPatient preparation prior specimen collection (Example)',
'timeAspect', 'Σ', '0..1', 'string', 'Time aspect for collection',
'collection', 'Σ', '0..*', 'CodeableConcept', 'Specimen collection procedureSpecimen collection methods (Example)',
'typeTested', '', '0..*', 'BackboneElement', 'Specimen in container intended for testing by lab',
'isDerived', '', '0..1', 'boolean', 'Primary or secondary specimen',
'type', '', '0..1', 'CodeableConcept', 'Type of intended specimenv2 Specimen Type (Example)',
'preference', '', '1..1', 'code', 'preferred | alternateSpecimenContainedPreference (Required)',
'container', '', '0..1', 'BackboneElement', 'The specimens container',
'material', '', '0..1', 'CodeableConcept', 'Container materialTypes of material for specimen containers (Example)',
'type', '', '0..1', 'CodeableConcept', 'Kind of container associated with the kind of specimenSpecimen Container Type (Example)',
'cap', '', '0..1', 'CodeableConcept', 'Color of container capContainerCap (Example)',
'description', '', '0..1', 'string', 'Container description',
'capacity', '', '0..1', 'SimpleQuantity', 'Container capacity',
'minimumVolume[x]', '', '0..1', '', 'Minimum volume',
'minimumVolumeQuantity', '', '', 'SimpleQuantity', '',
'minimumVolumeString', '', '', 'string', '',
'additive', '', '0..*', 'BackboneElement', 'Additive associated with container',
'additive[x]', '', '1..1', '', 'Additive associated with containerv2 Additive (Example)',
'additiveCodeableConcept', '', '', 'CodeableConcept', '',
'additiveReference', '', '', 'Reference(Substance)', '',
'preparation', '', '0..1', 'string', 'Specimen container preparation',
'requirement', '', '0..1', 'string', 'Specimen requirements',
'retentionTime', '', '0..1', 'Duration', 'Specimen retention time',
'rejectionCriterion', '', '0..*', 'CodeableConcept', 'Rejection criterionRejectionCriterion (Example)',
'handling', '', '0..*', 'BackboneElement', 'Specimen handling before testing',
'temperatureQualifier', '', '0..1', 'CodeableConcept', 'Temperature qualifierHandlingConditionSet (Example)',
'temperatureRange', '', '0..1', 'Range', 'Temperature range',
'maxDuration', '', '0..1', 'Duration', 'Maximum preservation time',
'instruction', '', '0..1', 'string', 'Preservation instruction',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <-
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'SpecimenDefinition.typeCollected', 'The type of the specimen to be collected.', 'Example', 'v2.0487',
'SpecimenDefinition.patientPreparation', 'Checks on the patient prior specimen collection.', 'Example', 'PreparePatient',
'SpecimenDefinition.collection', 'The action to collect a type of specimen.', 'Example', 'SpecimenCollection',
'SpecimenDefinition.typeTested.type', 'The type of specimen conditioned in a container for lab testing.', 'Example', 'v2.0487',
'SpecimenDefinition.typeTested.preference', 'Degree of preference of a type of conditioned specimen.', 'Required', 'SpecimenContainedPreference',
'SpecimenDefinition.typeTested.container.material', 'Types of material for specimen containers.', 'Example', 'ContainerMaterials',
'SpecimenDefinition.typeTested.container.type', 'Type of specimen container.', 'Example', 'SpecimenContainerType',
'SpecimenDefinition.typeTested.container.cap', 'Color of the container cap.', 'Example', 'ContainerCap',
'SpecimenDefinition.typeTested.container.additive.additive[x]', 'Substance added to specimen container.', 'Example', 'v2.0371',
'SpecimenDefinition.typeTested.rejectionCriterion', 'Criterion for rejection of the specimen by laboratory.', 'Example', 'RejectionCriterion',
'SpecimenDefinition.typeTested.handling.temperatureQualifier', 'Set of handling instructions prior testing of the specimen.', 'Example', 'HandlingConditionSet',
)


df5 <-
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'container', 'token', 'The type of specimen conditioned in container expected by the lab', 'SpecimenDefinition.typeTested.container.type', '',
'identifier', 'token', 'The unique identifier associated with the specimen', 'SpecimenDefinition.identifier', '',
'type', 'token', 'The type of collected specimen', 'SpecimenDefinition.typeCollected', '',
)


