df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Financial Management  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Practitioner',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
'PaymentNotice', 'An indication that a payment has occured, is about to occur, or has been cancelled.',
'ClaimResponse', 'A payor's adjudication and/or authorization response to the suite of services provided in a Claim. Typically the ClaimResponse references the Claim but does not duplicate
		the clinical or financial information provided in the claim.',
'PaymentReconciliation', 'Provides the bulk payment details 
associated with a payment by the payor for goods and services rendered by a provider to patients 
covered by insurance plans offered by that payor.',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'PaymentNotice', 'TU', '', 'DomainResource', 'PaymentNotice requestElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier for the payment noctice',
'status', '?!Σ', '1..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'request', '', '0..1', 'Reference(Any)', 'Request reference',
'response', '', '0..1', 'Reference(Any)', 'Response reference',
'created', 'Σ', '1..1', 'dateTime', 'Creation date',
'provider', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Responsible practitioner',
'payment', 'Σ', '1..1', 'Reference(PaymentReconciliation)', 'Payment reference',
'paymentDate', '', '0..1', 'date', 'Payment or clearing date',
'payee', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Party being paid',
'recipient', 'Σ', '1..1', 'Reference(Organization)', 'Party being notified',
'amount', 'Σ', '1..1', 'Money', 'Monetary amount of the payment',
'paymentStatus', '', '0..1', 'CodeableConcept', 'Issued or cleared Status of the paymentPayment Status Codes (Example)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'PaymentNotice', '',
'PaymentNotice.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/fm-status to http://hl7.org/fhir/ValueSet/fm-status|4.0.1',
'PaymentNotice.created', 'Min Cardinality changed from 0 to 1',
'PaymentNotice.provider', 'Renamed from organization to provider
        Type Reference: Added Target Types Practitioner, PractitionerRole',
'PaymentNotice.payment', 'Added Mandatory Element',
'PaymentNotice.paymentDate', 'Renamed from statusDate to paymentDate',
'PaymentNotice.payee', 'Added Element',
'PaymentNotice.recipient', 'Renamed from target to recipient
        Min Cardinality changed from 0 to 1',
'PaymentNotice.amount', 'Added Mandatory Element',
'PaymentNotice.provider', 'deleted',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'PaymentNotice', 'TU', '', 'DomainResource', 'PaymentNotice requestElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier for the payment noctice',
'status', '?!Σ', '1..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'request', '', '0..1', 'Reference(Any)', 'Request reference',
'response', '', '0..1', 'Reference(Any)', 'Response reference',
'created', 'Σ', '1..1', 'dateTime', 'Creation date',
'provider', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Responsible practitioner',
'payment', 'Σ', '1..1', 'Reference(PaymentReconciliation)', 'Payment reference',
'paymentDate', '', '0..1', 'date', 'Payment or clearing date',
'payee', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Party being paid',
'recipient', 'Σ', '1..1', 'Reference(Organization)', 'Party being notified',
'amount', 'Σ', '1..1', 'Money', 'Monetary amount of the payment',
'paymentStatus', '', '0..1', 'CodeableConcept', 'Issued or cleared Status of the paymentPayment Status Codes (Example)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'PaymentNotice', '',
'PaymentNotice.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/fm-status to http://hl7.org/fhir/ValueSet/fm-status|4.0.1',
'PaymentNotice.created', 'Min Cardinality changed from 0 to 1',
'PaymentNotice.provider', 'Renamed from organization to provider
        Type Reference: Added Target Types Practitioner, PractitionerRole',
'PaymentNotice.payment', 'Added Mandatory Element',
'PaymentNotice.paymentDate', 'Renamed from statusDate to paymentDate',
'PaymentNotice.payee', 'Added Element',
'PaymentNotice.recipient', 'Renamed from target to recipient
        Min Cardinality changed from 0 to 1',
'PaymentNotice.amount', 'Added Mandatory Element',
'PaymentNotice.provider', 'deleted',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'PaymentNotice.status', 'A code specifying the state of the resource instance.', 'Required', 'FinancialResourceStatusCodes',
'PaymentNotice.paymentStatus', 'The payment conveyance status codes.', 'Example', 'PaymentStatusCodes',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'created', 'date', 'Creation date fro the notice', 'PaymentNotice.created', '',
'identifier', 'token', 'The business identifier of the notice', 'PaymentNotice.identifier', '',
'payment-status', 'token', 'The type of payment notice', 'PaymentNotice.paymentStatus', '',
'provider', 'reference', 'The reference to the provider', 'PaymentNotice.provider(Practitioner, Organization, PractitionerRole)', '',
'request', 'reference', 'The Claim', 'PaymentNotice.request(Any)', '',
'response', 'reference', 'The ClaimResponse', 'PaymentNotice.response(Any)', '',
'status', 'token', 'The status of the payment notice', 'PaymentNotice.status', '',
)


