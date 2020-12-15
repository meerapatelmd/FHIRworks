df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CatalogEntry', 'TU', '', 'DomainResource', 'An entry in a catalogElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique identifier of the catalog item',
'type', '', '0..1', 'CodeableConcept', 'The type of item - medication, device, service, protocol or other',
'orderable', 'Σ', '1..1', 'boolean', 'Whether the entry represents an orderable item',
'referencedItem', 'Σ', '1..1', 'Reference(Medication | Device | Organization | Practitioner | PractitionerRole | HealthcareService | ActivityDefinition | PlanDefinition | SpecimenDefinition | ObservationDefinition | Binary)', 'The item that is being defined',
'additionalIdentifier', '', '0..*', 'Identifier', 'Any additional identifier(s) for the catalog item, in the same granularity or concept',
'classification', '', '0..*', 'CodeableConcept', 'Classification (category or class) of the item entry',
'status', '', '0..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'validityPeriod', '', '0..1', 'Period', 'The time period in which this catalog entry is expected to be active',
'validTo', '', '0..1', 'dateTime', 'The date until which this catalog entry is expected to be active',
'lastUpdated', '', '0..1', 'dateTime', 'When was this catalog last updated',
'additionalCharacteristic', '', '0..*', 'CodeableConcept', 'Additional characteristics of the catalog entry',
'additionalClassification', '', '0..*', 'CodeableConcept', 'Additional classification of the catalog entry',
'relatedEntry', '', '0..*', 'BackboneElement', 'An item that this catalog entry is related to',
'relationtype', '', '1..1', 'code', 'triggers | is-replaced-byCatalogEntryRelationType (Required)',
'item', '', '1..1', 'Reference(CatalogEntry)', 'The reference to the related item',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CatalogEntry', 'TU', '', 'DomainResource', 'An entry in a catalogElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique identifier of the catalog item',
'type', '', '0..1', 'CodeableConcept', 'The type of item - medication, device, service, protocol or other',
'orderable', 'Σ', '1..1', 'boolean', 'Whether the entry represents an orderable item',
'referencedItem', 'Σ', '1..1', 'Reference(Medication | Device | Organization | Practitioner | PractitionerRole | HealthcareService | ActivityDefinition | PlanDefinition | SpecimenDefinition | ObservationDefinition | Binary)', 'The item that is being defined',
'additionalIdentifier', '', '0..*', 'Identifier', 'Any additional identifier(s) for the catalog item, in the same granularity or concept',
'classification', '', '0..*', 'CodeableConcept', 'Classification (category or class) of the item entry',
'status', '', '0..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'validityPeriod', '', '0..1', 'Period', 'The time period in which this catalog entry is expected to be active',
'validTo', '', '0..1', 'dateTime', 'The date until which this catalog entry is expected to be active',
'lastUpdated', '', '0..1', 'dateTime', 'When was this catalog last updated',
'additionalCharacteristic', '', '0..*', 'CodeableConcept', 'Additional characteristics of the catalog entry',
'additionalClassification', '', '0..*', 'CodeableConcept', 'Additional classification of the catalog entry',
'relatedEntry', '', '0..*', 'BackboneElement', 'An item that this catalog entry is related to',
'relationtype', '', '1..1', 'code', 'triggers | is-replaced-byCatalogEntryRelationType (Required)',
'item', '', '1..1', 'Reference(CatalogEntry)', 'The reference to the related item',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'CatalogEntry.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'CatalogEntry.relatedEntry.relationtype', 'The type of relations between entries.', 'Required', 'CatalogEntryRelationType',
)


