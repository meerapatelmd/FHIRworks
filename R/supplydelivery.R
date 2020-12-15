df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'SupplyDelivery', 'TU', '', 'DomainResource', 'Delivery of bulk SuppliesElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'External identifier',
'basedOn', 'Σ', '0..*', 'Reference(SupplyRequest)', 'Fulfills plan, proposal or order',
'partOf', 'Σ', '0..*', 'Reference(SupplyDelivery | Contract)', 'Part of referenced event',
'status', '?!Σ', '0..1', 'code', 'in-progress | completed | abandoned | entered-in-errorSupplyDeliveryStatus (Required)',
'patient', '', '0..1', 'Reference(Patient)', 'Patient for whom the item is supplied',
'type', '', '0..1', 'CodeableConcept', 'Category of dispense eventSupply Item Type (Required)',
'suppliedItem', '', '0..1', 'BackboneElement', 'The item that is delivered or supplied',
'quantity', '', '0..1', 'SimpleQuantity', 'Amount dispensed',
'item[x]', '', '0..1', '', 'Medication, Substance, or Device suppliedSNOMED CT Supply Item (Example)',
'itemCodeableConcept', '', '', 'CodeableConcept', '',
'itemReference', '', '', 'Reference(Medication | Substance | Device)', '',
'occurrence[x]', 'Σ', '0..1', '', 'When event occurred',
'occurrenceDateTime', '', '', 'dateTime', '',
'occurrencePeriod', '', '', 'Period', '',
'occurrenceTiming', '', '', 'Timing', '',
'supplier', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Dispenser',
'destination', '', '0..1', 'Reference(Location)', 'Where the Supply was sent',
'receiver', '', '0..*', 'Reference(Practitioner | PractitionerRole)', 'Who collected the Supply',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'SupplyDelivery', '',
'SupplyDelivery.identifier', 'Max Cardinality changed from 1 to *',
'SupplyDelivery.status', 'Change value set from http://hl7.org/fhir/ValueSet/supplydelivery-status to http://hl7.org/fhir/ValueSet/supplydelivery-status|4.0.1',
'SupplyDelivery.type', 'Change value set from http://hl7.org/fhir/ValueSet/supplydelivery-type to http://hl7.org/fhir/ValueSet/supplydelivery-type|4.0.1',
'SupplyDelivery.supplier', 'Type Reference: Added Target Type PractitionerRole',
'SupplyDelivery.receiver', 'Type Reference: Added Target Type PractitionerRole',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'SupplyDelivery', 'TU', '', 'DomainResource', 'Delivery of bulk SuppliesElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'External identifier',
'basedOn', 'Σ', '0..*', 'Reference(SupplyRequest)', 'Fulfills plan, proposal or order',
'partOf', 'Σ', '0..*', 'Reference(SupplyDelivery | Contract)', 'Part of referenced event',
'status', '?!Σ', '0..1', 'code', 'in-progress | completed | abandoned | entered-in-errorSupplyDeliveryStatus (Required)',
'patient', '', '0..1', 'Reference(Patient)', 'Patient for whom the item is supplied',
'type', '', '0..1', 'CodeableConcept', 'Category of dispense eventSupply Item Type (Required)',
'suppliedItem', '', '0..1', 'BackboneElement', 'The item that is delivered or supplied',
'quantity', '', '0..1', 'SimpleQuantity', 'Amount dispensed',
'item[x]', '', '0..1', '', 'Medication, Substance, or Device suppliedSNOMED CT Supply Item (Example)',
'itemCodeableConcept', '', '', 'CodeableConcept', '',
'itemReference', '', '', 'Reference(Medication | Substance | Device)', '',
'occurrence[x]', 'Σ', '0..1', '', 'When event occurred',
'occurrenceDateTime', '', '', 'dateTime', '',
'occurrencePeriod', '', '', 'Period', '',
'occurrenceTiming', '', '', 'Timing', '',
'supplier', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Dispenser',
'destination', '', '0..1', 'Reference(Location)', 'Where the Supply was sent',
'receiver', '', '0..*', 'Reference(Practitioner | PractitionerRole)', 'Who collected the Supply',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'SupplyDelivery', '',
'SupplyDelivery.identifier', 'Max Cardinality changed from 1 to *',
'SupplyDelivery.status', 'Change value set from http://hl7.org/fhir/ValueSet/supplydelivery-status to http://hl7.org/fhir/ValueSet/supplydelivery-status|4.0.1',
'SupplyDelivery.type', 'Change value set from http://hl7.org/fhir/ValueSet/supplydelivery-type to http://hl7.org/fhir/ValueSet/supplydelivery-type|4.0.1',
'SupplyDelivery.supplier', 'Type Reference: Added Target Type PractitionerRole',
'SupplyDelivery.receiver', 'Type Reference: Added Target Type PractitionerRole',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'SupplyDelivery.status', 'Status of the supply delivery.', 'Required', 'SupplyDeliveryStatus',
'SupplyDelivery.type', 'The type of supply dispense.', 'Required', 'SupplyItemType',
'SupplyDelivery.suppliedItem.item[x]', 'The item that was delivered.', 'Example', 'SNOMEDCTSupplyItem',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'identifier', 'token', 'External identifier', 'SupplyDelivery.identifier', '30 Resources',
'patient', 'reference', 'Patient for whom the item is supplied', 'SupplyDelivery.patient(Patient)', '33 Resources',
'receiver', 'reference', 'Who collected the Supply', 'SupplyDelivery.receiver(Practitioner, PractitionerRole)', '',
'status', 'token', 'in-progress | completed | abandoned | entered-in-error', 'SupplyDelivery.status', '',
'supplier', 'reference', 'Dispenser', 'SupplyDelivery.supplier(Practitioner, Organization, PractitionerRole)', '',
)


