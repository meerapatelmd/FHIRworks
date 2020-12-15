df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'SupplyRequest', 'TU', '', 'DomainResource', 'Request for a medication, substance or deviceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for SupplyRequest',
'status', '?!Σ', '0..1', 'code', 'draft | active | suspended +SupplyRequestStatus (Required)',
'category', 'Σ', '0..1', 'CodeableConcept', 'The kind of supply (central, non-stock, etc.)Supply Type (Example)',
'priority', 'Σ', '0..1', 'code', 'routine | urgent | asap | statRequest priority (Required)',
'item[x]', 'Σ', '1..1', '', 'Medication, Substance, or Device requested to be suppliedSNOMED CT Supply Item (Example)',
'itemCodeableConcept', '', '', 'CodeableConcept', '',
'itemReference', '', '', 'Reference(Medication | Substance | Device)', '',
'quantity', 'Σ', '1..1', 'Quantity', 'The requested amount of the item indicated',
'parameter', '', '0..*', 'BackboneElement', 'Ordered item details',
'code', '', '0..1', 'CodeableConcept', 'Item detail',
'value[x]', '', '0..1', '', 'Value of detail',
'valueCodeableConcept', '', '', 'CodeableConcept', '',
'valueQuantity', '', '', 'Quantity', '',
'valueRange', '', '', 'Range', '',
'valueBoolean', '', '', 'boolean', '',
'occurrence[x]', 'Σ', '0..1', '', 'When the request should be fulfilled',
'occurrenceDateTime', '', '', 'dateTime', '',
'occurrencePeriod', '', '', 'Period', '',
'occurrenceTiming', '', '', 'Timing', '',
'authoredOn', 'Σ', '0..1', 'dateTime', 'When the request was made',
'requester', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device)', 'Individual making the request',
'supplier', 'Σ', '0..*', 'Reference(Organization | HealthcareService)', 'Who is intended to fulfill the request',
'reasonCode', '', '0..*', 'CodeableConcept', 'The reason why the supply item was requestedSupplyRequestReason (Example)',
'reasonReference', '', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference)', 'The reason why the supply item was requested',
'deliverFrom', '', '0..1', 'Reference(Organization | Location)', 'The origin of the supply',
'deliverTo', '', '0..1', 'Reference(Organization | Location | Patient)', 'The destination of the supply',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'SupplyRequest', '',
'SupplyRequest.identifier', 'Max Cardinality changed from 1 to *',
'SupplyRequest.status', 'Change value set from http://hl7.org/fhir/ValueSet/supplyrequest-status to http://hl7.org/fhir/ValueSet/supplyrequest-status|4.0.1',
'SupplyRequest.priority', 'Change value set from http://hl7.org/fhir/ValueSet/request-priority to http://hl7.org/fhir/ValueSet/request-priority|4.0.1',
'SupplyRequest.item[x]', 'Added Mandatory Element',
'SupplyRequest.quantity', 'Added Mandatory Element',
'SupplyRequest.parameter', 'Added Element',
'SupplyRequest.parameter.code', 'Added Element',
'SupplyRequest.parameter.value[x]', 'Added Element',
'SupplyRequest.requester', 'Type changed from BackboneElement to Reference(Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device)',
'SupplyRequest.supplier', 'Type Reference: Added Target Type HealthcareService',
'SupplyRequest.reasonCode', 'Added Element',
'SupplyRequest.reasonReference', 'Added Element',
'SupplyRequest.orderedItem', 'deleted',
'SupplyRequest.requester.agent', 'deleted',
'SupplyRequest.requester.onBehalfOf', 'deleted',
'SupplyRequest.reason[x]', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'SupplyRequest', 'TU', '', 'DomainResource', 'Request for a medication, substance or deviceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for SupplyRequest',
'status', '?!Σ', '0..1', 'code', 'draft | active | suspended +SupplyRequestStatus (Required)',
'category', 'Σ', '0..1', 'CodeableConcept', 'The kind of supply (central, non-stock, etc.)Supply Type (Example)',
'priority', 'Σ', '0..1', 'code', 'routine | urgent | asap | statRequest priority (Required)',
'item[x]', 'Σ', '1..1', '', 'Medication, Substance, or Device requested to be suppliedSNOMED CT Supply Item (Example)',
'itemCodeableConcept', '', '', 'CodeableConcept', '',
'itemReference', '', '', 'Reference(Medication | Substance | Device)', '',
'quantity', 'Σ', '1..1', 'Quantity', 'The requested amount of the item indicated',
'parameter', '', '0..*', 'BackboneElement', 'Ordered item details',
'code', '', '0..1', 'CodeableConcept', 'Item detail',
'value[x]', '', '0..1', '', 'Value of detail',
'valueCodeableConcept', '', '', 'CodeableConcept', '',
'valueQuantity', '', '', 'Quantity', '',
'valueRange', '', '', 'Range', '',
'valueBoolean', '', '', 'boolean', '',
'occurrence[x]', 'Σ', '0..1', '', 'When the request should be fulfilled',
'occurrenceDateTime', '', '', 'dateTime', '',
'occurrencePeriod', '', '', 'Period', '',
'occurrenceTiming', '', '', 'Timing', '',
'authoredOn', 'Σ', '0..1', 'dateTime', 'When the request was made',
'requester', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device)', 'Individual making the request',
'supplier', 'Σ', '0..*', 'Reference(Organization | HealthcareService)', 'Who is intended to fulfill the request',
'reasonCode', '', '0..*', 'CodeableConcept', 'The reason why the supply item was requestedSupplyRequestReason (Example)',
'reasonReference', '', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference)', 'The reason why the supply item was requested',
'deliverFrom', '', '0..1', 'Reference(Organization | Location)', 'The origin of the supply',
'deliverTo', '', '0..1', 'Reference(Organization | Location | Patient)', 'The destination of the supply',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'SupplyRequest', '',
'SupplyRequest.identifier', 'Max Cardinality changed from 1 to *',
'SupplyRequest.status', 'Change value set from http://hl7.org/fhir/ValueSet/supplyrequest-status to http://hl7.org/fhir/ValueSet/supplyrequest-status|4.0.1',
'SupplyRequest.priority', 'Change value set from http://hl7.org/fhir/ValueSet/request-priority to http://hl7.org/fhir/ValueSet/request-priority|4.0.1',
'SupplyRequest.item[x]', 'Added Mandatory Element',
'SupplyRequest.quantity', 'Added Mandatory Element',
'SupplyRequest.parameter', 'Added Element',
'SupplyRequest.parameter.code', 'Added Element',
'SupplyRequest.parameter.value[x]', 'Added Element',
'SupplyRequest.requester', 'Type changed from BackboneElement to Reference(Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device)',
'SupplyRequest.supplier', 'Type Reference: Added Target Type HealthcareService',
'SupplyRequest.reasonCode', 'Added Element',
'SupplyRequest.reasonReference', 'Added Element',
'SupplyRequest.orderedItem', 'deleted',
'SupplyRequest.requester.agent', 'deleted',
'SupplyRequest.requester.onBehalfOf', 'deleted',
'SupplyRequest.reason[x]', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'SupplyRequest.status', 'Status of the supply request.', 'Required', 'SupplyRequestStatus',
'SupplyRequest.category', 'Category of supply request.', 'Example', 'SupplyType',
'SupplyRequest.priority', 'Identifies the level of importance to be assigned to actioning the request.', 'Required', 'RequestPriority',
'SupplyRequest.item[x]', 'The item that was requested.', 'Example', 'SNOMEDCTSupplyItem',
'SupplyRequest.parameter.code', 'A code that identifies the device detail.', 'Unknown', 'No details provided yet',
'SupplyRequest.reasonCode', 'The reason why the supply item was requested.', 'Example', 'SupplyRequestReason',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'category', 'token', 'The kind of supply (central, non-stock, etc.)', 'SupplyRequest.category', '',
'date', 'date', 'When the request was made', 'SupplyRequest.authoredOn', '17 Resources',
'identifier', 'token', 'Business Identifier for SupplyRequest', 'SupplyRequest.identifier', '30 Resources',
'requester', 'reference', 'Individual making the request', 'SupplyRequest.requester(Practitioner, Organization, Device, Patient, PractitionerRole, RelatedPerson)', '',
'status', 'token', 'draft | active | suspended +', 'SupplyRequest.status', '',
'subject', 'reference', 'The destination of the supply', 'SupplyRequest.deliverTo(Organization, Patient, Location)', '',
'supplier', 'reference', 'Who is intended to fulfill the request', 'SupplyRequest.supplier(Organization, HealthcareService)', '',
)


