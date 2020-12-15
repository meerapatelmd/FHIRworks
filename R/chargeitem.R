df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Encounter, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ChargeItem', 'TU', '', 'DomainResource', 'Item containing charge code(s) associated with the provision of healthcare provider productsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for item',
'definitionUri', '', '0..*', 'uri', 'Defining information about the code of this charge item',
'definitionCanonical', '', '0..*', 'canonical(ChargeItemDefinition)', 'Resource defining the code of this ChargeItem',
'status', '?!Σ', '1..1', 'code', 'planned | billable | not-billable | aborted | billed | entered-in-error | unknownChargeItemStatus (Required)',
'partOf', '', '0..*', 'Reference(ChargeItem)', 'Part of referenced ChargeItem',
'code', 'Σ', '1..1', 'CodeableConcept', 'A code that identifies the charge, like a billing codeChargeItemCode (Example)',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Individual service was done for/to',
'context', 'Σ', '0..1', 'Reference(Encounter | EpisodeOfCare)', 'Encounter / Episode associated with event',
'occurrence[x]', 'Σ', '0..1', '', 'When the charged service was applied',
'occurrenceDateTime', '', '', 'dateTime', '',
'occurrencePeriod', '', '', 'Period', '',
'occurrenceTiming', '', '', 'Timing', '',
'performer', '', '0..*', 'BackboneElement', 'Who performed charged service',
'function', '', '0..1', 'CodeableConcept', 'What type of performance was doneProcedure Performer Role Codes (Example)',
'actor', '', '1..1', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam | Patient | Device | RelatedPerson)', 'Individual who was performing',
'performingOrganization', '', '0..1', 'Reference(Organization)', 'Organization providing the charged service',
'requestingOrganization', '', '0..1', 'Reference(Organization)', 'Organization requesting the charged service',
'costCenter', '', '0..1', 'Reference(Organization)', 'Organization that has ownership of the (potential, future) revenue',
'quantity', 'Σ', '0..1', 'Quantity', 'Quantity of which the charge item has been serviced',
'bodysite', 'Σ', '0..*', 'CodeableConcept', 'Anatomical location, if relevantSNOMED CT Body Structures (Example)',
'factorOverride', '', '0..1', 'decimal', 'Factor overriding the associated rules',
'priceOverride', '', '0..1', 'Money', 'Price overriding the associated rules',
'overrideReason', '', '0..1', 'string', 'Reason for overriding the list price/factor',
'enterer', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | Patient | Device | RelatedPerson)', 'Individual who was entering',
'enteredDate', 'Σ', '0..1', 'dateTime', 'Date the charge item was entered',
'reason', '', '0..*', 'CodeableConcept', 'Why was the charged  service rendered?ICD-10 Codes (Example)',
'service', '', '0..*', 'Reference(DiagnosticReport | ImagingStudy | Immunization | MedicationAdministration | MedicationDispense | Observation | Procedure | SupplyDelivery)', 'Which rendered service is being charged?',
'product[x]', '', '0..1', '', 'Product chargedFHIR Device Types (Example)',
'productReference', '', '', 'Reference(Device | Medication | Substance)', '',
'productCodeableConcept', '', '', 'CodeableConcept', '',
'account', 'Σ', '0..*', 'Reference(Account)', 'Account to place this charge',
'note', '', '0..*', 'Annotation', 'Comments made about the ChargeItem',
'supportingInformation', '', '0..*', 'Reference(Any)', 'Further information supporting this charge',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'ChargeItem', '',
'ChargeItem.identifier', 'Max Cardinality changed from 1 to *',
'ChargeItem.definitionUri', 'Added Element',
'ChargeItem.definitionCanonical', 'Added Element',
'ChargeItem.status', 'Change value set from http://hl7.org/fhir/ValueSet/chargeitem-status to http://hl7.org/fhir/ValueSet/chargeitem-status|4.0.1',
'ChargeItem.performer', 'Added Element',
'ChargeItem.performer.function', 'Added Element',
'ChargeItem.performer.actor', 'Added Mandatory Element',
'ChargeItem.costCenter', 'Added Element',
'ChargeItem.enterer', 'Type Reference: Added Target Type PractitionerRole',
'ChargeItem.product[x]', 'Added Element',
'ChargeItem.definition', 'deleted',
'ChargeItem.participant', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ChargeItem', 'TU', '', 'DomainResource', 'Item containing charge code(s) associated with the provision of healthcare provider productsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for item',
'definitionUri', '', '0..*', 'uri', 'Defining information about the code of this charge item',
'definitionCanonical', '', '0..*', 'canonical(ChargeItemDefinition)', 'Resource defining the code of this ChargeItem',
'status', '?!Σ', '1..1', 'code', 'planned | billable | not-billable | aborted | billed | entered-in-error | unknownChargeItemStatus (Required)',
'partOf', '', '0..*', 'Reference(ChargeItem)', 'Part of referenced ChargeItem',
'code', 'Σ', '1..1', 'CodeableConcept', 'A code that identifies the charge, like a billing codeChargeItemCode (Example)',
'subject', 'Σ', '1..1', 'Reference(Patient | Group)', 'Individual service was done for/to',
'context', 'Σ', '0..1', 'Reference(Encounter | EpisodeOfCare)', 'Encounter / Episode associated with event',
'occurrence[x]', 'Σ', '0..1', '', 'When the charged service was applied',
'occurrenceDateTime', '', '', 'dateTime', '',
'occurrencePeriod', '', '', 'Period', '',
'occurrenceTiming', '', '', 'Timing', '',
'performer', '', '0..*', 'BackboneElement', 'Who performed charged service',
'function', '', '0..1', 'CodeableConcept', 'What type of performance was doneProcedure Performer Role Codes (Example)',
'actor', '', '1..1', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam | Patient | Device | RelatedPerson)', 'Individual who was performing',
'performingOrganization', '', '0..1', 'Reference(Organization)', 'Organization providing the charged service',
'requestingOrganization', '', '0..1', 'Reference(Organization)', 'Organization requesting the charged service',
'costCenter', '', '0..1', 'Reference(Organization)', 'Organization that has ownership of the (potential, future) revenue',
'quantity', 'Σ', '0..1', 'Quantity', 'Quantity of which the charge item has been serviced',
'bodysite', 'Σ', '0..*', 'CodeableConcept', 'Anatomical location, if relevantSNOMED CT Body Structures (Example)',
'factorOverride', '', '0..1', 'decimal', 'Factor overriding the associated rules',
'priceOverride', '', '0..1', 'Money', 'Price overriding the associated rules',
'overrideReason', '', '0..1', 'string', 'Reason for overriding the list price/factor',
'enterer', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | Patient | Device | RelatedPerson)', 'Individual who was entering',
'enteredDate', 'Σ', '0..1', 'dateTime', 'Date the charge item was entered',
'reason', '', '0..*', 'CodeableConcept', 'Why was the charged  service rendered?ICD-10 Codes (Example)',
'service', '', '0..*', 'Reference(DiagnosticReport | ImagingStudy | Immunization | MedicationAdministration | MedicationDispense | Observation | Procedure | SupplyDelivery)', 'Which rendered service is being charged?',
'product[x]', '', '0..1', '', 'Product chargedFHIR Device Types (Example)',
'productReference', '', '', 'Reference(Device | Medication | Substance)', '',
'productCodeableConcept', '', '', 'CodeableConcept', '',
'account', 'Σ', '0..*', 'Reference(Account)', 'Account to place this charge',
'note', '', '0..*', 'Annotation', 'Comments made about the ChargeItem',
'supportingInformation', '', '0..*', 'Reference(Any)', 'Further information supporting this charge',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'ChargeItem', '',
'ChargeItem.identifier', 'Max Cardinality changed from 1 to *',
'ChargeItem.definitionUri', 'Added Element',
'ChargeItem.definitionCanonical', 'Added Element',
'ChargeItem.status', 'Change value set from http://hl7.org/fhir/ValueSet/chargeitem-status to http://hl7.org/fhir/ValueSet/chargeitem-status|4.0.1',
'ChargeItem.performer', 'Added Element',
'ChargeItem.performer.function', 'Added Element',
'ChargeItem.performer.actor', 'Added Mandatory Element',
'ChargeItem.costCenter', 'Added Element',
'ChargeItem.enterer', 'Type Reference: Added Target Type PractitionerRole',
'ChargeItem.product[x]', 'Added Element',
'ChargeItem.definition', 'deleted',
'ChargeItem.participant', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'ChargeItem.status', 'Codes identifying the lifecycle stage of a ChargeItem.', 'Required', 'ChargeItemStatus',
'ChargeItem.code', 'Example set of codes that can be used for billing purposes.', 'Example', 'ChargeItemCode',
'ChargeItem.performer.function', 'Codes describing the types of functional roles performers can take on when performing events.', 'Example', 'ProcedurePerformerRoleCodes',
'ChargeItem.bodysite', 'Codes describing anatomical locations. May include laterality.', 'Example', 'SNOMEDCTBodyStructures',
'ChargeItem.reason', 'Example binding for reason.', 'Example', 'ICD-10Codes',
'ChargeItem.product[x]', 'Example binding for product type.', 'Example', 'FHIRDeviceTypes',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'account', 'reference', 'Account to place this charge', 'ChargeItem.account(Account)', '',
'code', 'token', 'A code that identifies the charge, like a billing code', 'ChargeItem.code', '',
'context', 'reference', 'Encounter / Episode associated with event', 'ChargeItem.context(EpisodeOfCare, Encounter)', '',
'entered-date', 'date', 'Date the charge item was entered', 'ChargeItem.enteredDate', '',
'enterer', 'reference', 'Individual who was entering', 'ChargeItem.enterer(Practitioner, Organization, Device, Patient, PractitionerRole, RelatedPerson)', '',
'factor-override', 'number', 'Factor overriding the associated rules', 'ChargeItem.factorOverride', '',
'identifier', 'token', 'Business Identifier for item', 'ChargeItem.identifier', '',
'occurrence', 'date', 'When the charged service was applied', 'ChargeItem.occurrence', '',
'patient', 'reference', 'Individual service was done for/to', 'ChargeItem.subject.where(resolve() is Patient)(Patient)', '',
'performer-actor', 'reference', 'Individual who was performing', 'ChargeItem.performer.actor(Practitioner, Organization, CareTeam, Device, Patient, PractitionerRole, RelatedPerson)', '',
'performer-function', 'token', 'What type of performance was done', 'ChargeItem.performer.function', '',
'performing-organization', 'reference', 'Organization providing the charged service', 'ChargeItem.performingOrganization(Organization)', '',
'price-override', 'quantity', 'Price overriding the associated rules', 'ChargeItem.priceOverride', '',
'quantity', 'quantity', 'Quantity of which the charge item has been serviced', 'ChargeItem.quantity', '',
'requesting-organization', 'reference', 'Organization requesting the charged service', 'ChargeItem.requestingOrganization(Organization)', '',
'service', 'reference', 'Which rendered service is being charged?', 'ChargeItem.service(Immunization, MedicationDispense, SupplyDelivery, Observation, DiagnosticReport, ImagingStudy, MedicationAdministration, Procedure)', '',
'subject', 'reference', 'Individual service was done for/to', 'ChargeItem.subject(Group, Patient)', '',
)


