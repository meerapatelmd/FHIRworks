df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Financial Management  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Invoice', 'TU', '', 'DomainResource', 'Invoice containing ChargeItems from an AccountElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for item',
'status', '?!Σ', '1..1', 'code', 'draft | issued | balanced | cancelled | entered-in-errorInvoiceStatus (Required)',
'cancelledReason', '', '0..1', 'string', 'Reason for cancellation of this Invoice',
'type', 'Σ', '0..1', 'CodeableConcept', 'Type of Invoice',
'subject', 'Σ', '0..1', 'Reference(Patient | Group)', 'Recipient(s) of goods and services',
'recipient', 'Σ', '0..1', 'Reference(Organization | Patient | RelatedPerson)', 'Recipient of this invoice',
'date', 'Σ', '0..1', 'dateTime', 'Invoice date / posting date',
'participant', '', '0..*', 'BackboneElement', 'Participant in creation of this Invoice',
'role', '', '0..1', 'CodeableConcept', 'Type of involvement in creation of this Invoice',
'actor', '', '1..1', 'Reference(Practitioner | Organization | Patient | PractitionerRole | Device | RelatedPerson)', 'Individual who was involved',
'issuer', '', '0..1', 'Reference(Organization)', 'Issuing Organization of Invoice',
'account', '', '0..1', 'Reference(Account)', 'Account that is being balanced',
'lineItem', '', '0..*', 'BackboneElement', 'Line items of this Invoice',
'sequence', '', '0..1', 'positiveInt', 'Sequence number of line item',
'chargeItem[x]', '', '1..1', '', 'Reference to ChargeItem containing details of this line item or an inline billing code',
'chargeItemReference', '', '', 'Reference(ChargeItem)', '',
'chargeItemCodeableConcept', '', '', 'CodeableConcept', '',
'priceComponent', '', '0..*', 'BackboneElement', 'Components of total line item price',
'type', '', '1..1', 'code', 'base | surcharge | deduction | discount | tax | informationalInvoicePriceComponentType (Required)',
'code', '', '0..1', 'CodeableConcept', 'Code identifying the specific component',
'factor', '', '0..1', 'decimal', 'Factor used for calculating this component',
'amount', '', '0..1', 'Money', 'Monetary amount associated with this component',
'totalPriceComponent', '', '0..*', 'see priceComponent', 'Components of Invoice total',
'totalNet', 'Σ', '0..1', 'Money', 'Net total of this Invoice',
'totalGross', 'Σ', '0..1', 'Money', 'Gross total of this Invoice',
'paymentTerms', '', '0..1', 'markdown', 'Payment details',
'note', '', '0..*', 'Annotation', 'Comments made about the invoice',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Invoice', 'TU', '', 'DomainResource', 'Invoice containing ChargeItems from an AccountElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for item',
'status', '?!Σ', '1..1', 'code', 'draft | issued | balanced | cancelled | entered-in-errorInvoiceStatus (Required)',
'cancelledReason', '', '0..1', 'string', 'Reason for cancellation of this Invoice',
'type', 'Σ', '0..1', 'CodeableConcept', 'Type of Invoice',
'subject', 'Σ', '0..1', 'Reference(Patient | Group)', 'Recipient(s) of goods and services',
'recipient', 'Σ', '0..1', 'Reference(Organization | Patient | RelatedPerson)', 'Recipient of this invoice',
'date', 'Σ', '0..1', 'dateTime', 'Invoice date / posting date',
'participant', '', '0..*', 'BackboneElement', 'Participant in creation of this Invoice',
'role', '', '0..1', 'CodeableConcept', 'Type of involvement in creation of this Invoice',
'actor', '', '1..1', 'Reference(Practitioner | Organization | Patient | PractitionerRole | Device | RelatedPerson)', 'Individual who was involved',
'issuer', '', '0..1', 'Reference(Organization)', 'Issuing Organization of Invoice',
'account', '', '0..1', 'Reference(Account)', 'Account that is being balanced',
'lineItem', '', '0..*', 'BackboneElement', 'Line items of this Invoice',
'sequence', '', '0..1', 'positiveInt', 'Sequence number of line item',
'chargeItem[x]', '', '1..1', '', 'Reference to ChargeItem containing details of this line item or an inline billing code',
'chargeItemReference', '', '', 'Reference(ChargeItem)', '',
'chargeItemCodeableConcept', '', '', 'CodeableConcept', '',
'priceComponent', '', '0..*', 'BackboneElement', 'Components of total line item price',
'type', '', '1..1', 'code', 'base | surcharge | deduction | discount | tax | informationalInvoicePriceComponentType (Required)',
'code', '', '0..1', 'CodeableConcept', 'Code identifying the specific component',
'factor', '', '0..1', 'decimal', 'Factor used for calculating this component',
'amount', '', '0..1', 'Money', 'Monetary amount associated with this component',
'totalPriceComponent', '', '0..*', 'see priceComponent', 'Components of Invoice total',
'totalNet', 'Σ', '0..1', 'Money', 'Net total of this Invoice',
'totalGross', 'Σ', '0..1', 'Money', 'Gross total of this Invoice',
'paymentTerms', '', '0..1', 'markdown', 'Payment details',
'note', '', '0..*', 'Annotation', 'Comments made about the invoice',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Invoice.status', 'Codes identifying the lifecycle stage of an Invoice.', 'Required', 'InvoiceStatus',
'Invoice.lineItem.priceComponent.type', 'Codes indicating the kind of the price component.', 'Required', 'InvoicePriceComponentType',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'account', 'reference', 'Account that is being balanced', 'Invoice.account(Account)', '',
'date', 'date', 'Invoice date / posting date', 'Invoice.date', '',
'identifier', 'token', 'Business Identifier for item', 'Invoice.identifier', '',
'issuer', 'reference', 'Issuing Organization of Invoice', 'Invoice.issuer(Organization)', '',
'participant', 'reference', 'Individual who was involved', 'Invoice.participant.actor(Practitioner, Organization, Device, Patient, PractitionerRole, RelatedPerson)', '',
'participant-role', 'token', 'Type of involvement in creation of this Invoice', 'Invoice.participant.role', '',
'patient', 'reference', 'Recipient(s) of goods and services', 'Invoice.subject.where(resolve() is Patient)(Patient)', '',
'recipient', 'reference', 'Recipient of this invoice', 'Invoice.recipient(Organization, Patient, RelatedPerson)', '',
'status', 'token', 'draft | issued | balanced | cancelled | entered-in-error', 'Invoice.status', '',
'subject', 'reference', 'Recipient(s) of goods and services', 'Invoice.subject(Group, Patient)', '',
'totalgross', 'quantity', 'Gross total of this Invoice', 'Invoice.totalGross', '',
'totalnet', 'quantity', 'Net total of this Invoice', 'Invoice.totalNet', '',
'type', 'token', 'Type of Invoice', 'Invoice.type', '',
)


