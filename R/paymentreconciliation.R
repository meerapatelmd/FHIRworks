df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Financial Management  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Practitioner',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
'PaymentReconciliation', 'Provides the bulk payment details 
associated with a payment by the payor for goods and services rendered by a provider to patients 
covered by insurance plans offered by that payor.',
'ClaimResponse', 'A payor's adjudication and/or authorization response to the suite of services provided in a Claim. Typically the ClaimResponse references the Claim but does not duplicate
		the clinical or financial information provided in the claim.',
'ExplanationOfBenefit', 'This resource combines the information from the Claim and the ClaimResponse, stripping out any provider or payor proprietary information, into a unified information model 
		suitable for use for: patient reporting; transferring information to a Patient Health Record system; and, supporting complete claim and adjudication information exchange
 with regulatory and analytics organizations and other parts of the provider's organization.',
'PaymentNotice', 'An indication that a payment has occured, is about to occur, or has been cancelled.',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'PaymentReconciliation', 'TU', '', 'DomainResource', 'PaymentReconciliation resourceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier for a payment reconciliation',
'status', '?!Σ', '1..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'period', 'Σ', '0..1', 'Period', 'Period covered',
'created', 'Σ', '1..1', 'dateTime', 'Creation date',
'paymentIssuer', 'Σ', '0..1', 'Reference(Organization)', 'Party generating payment',
'request', '', '0..1', 'Reference(Task)', 'Reference to requesting resource',
'requestor', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Responsible practitioner',
'outcome', '', '0..1', 'code', 'queued | complete | error | partialRemittanceOutcome (Required)',
'disposition', '', '0..1', 'string', 'Disposition message',
'paymentDate', 'Σ', '1..1', 'date', 'When payment issued',
'paymentAmount', 'Σ', '1..1', 'Money', 'Total amount of Payment',
'paymentIdentifier', '', '0..1', 'Identifier', 'Business identifier for the payment',
'detail', '', '0..*', 'BackboneElement', 'Settlement particulars',
'identifier', '', '0..1', 'Identifier', 'Business identifier of the payment detail',
'predecessor', '', '0..1', 'Identifier', 'Business identifier of the prior payment detail',
'type', '', '1..1', 'CodeableConcept', 'Category of paymentPayment Type Codes (Example)',
'request', '', '0..1', 'Reference(Any)', 'Request giving rise to the payment',
'submitter', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Submitter of the request',
'response', '', '0..1', 'Reference(Any)', 'Response committing to a payment',
'date', '', '0..1', 'date', 'Date of commitment to pay',
'responsible', '', '0..1', 'Reference(PractitionerRole)', 'Contact for the response',
'payee', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Recipient of the payment',
'amount', '', '0..1', 'Money', 'Amount allocated to this payable',
'formCode', '', '0..1', 'CodeableConcept', 'Printed form identifierForms (Example)',
'processNote', '', '0..*', 'BackboneElement', 'Note concerning processing',
'type', '', '0..1', 'code', 'display | print | printoperNoteType (Required)',
'text', '', '0..1', 'string', 'Note explanatory text',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'PaymentReconciliation', '',
'PaymentReconciliation.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/fm-status to http://hl7.org/fhir/ValueSet/fm-status|4.0.1',
'PaymentReconciliation.created', 'Min Cardinality changed from 0 to 1',
'PaymentReconciliation.paymentIssuer', 'Renamed from organization to paymentIssuer',
'PaymentReconciliation.request', 'Type Reference: Added Target Type Task
        Type Reference: Removed Target Type ProcessRequest',
'PaymentReconciliation.requestor', 'Renamed from requestOrganization to requestor
        Type Reference: Added Target Types Practitioner, PractitionerRole',
'PaymentReconciliation.outcome', 'Type changed from CodeableConcept to code
        Change value set from http://hl7.org/fhir/ValueSet/remittance-outcome to http://hl7.org/fhir/ValueSet/remittance-outcome|4.0.1',
'PaymentReconciliation.paymentDate', 'Added Mandatory Element',
'PaymentReconciliation.paymentAmount', 'Renamed from total to paymentAmount
        Min Cardinality changed from 0 to 1',
'PaymentReconciliation.paymentIdentifier', 'Added Element',
'PaymentReconciliation.detail.identifier', 'Added Element',
'PaymentReconciliation.detail.predecessor', 'Added Element',
'PaymentReconciliation.detail.submitter', 'Type Reference: Added Target Types Practitioner, PractitionerRole',
'PaymentReconciliation.detail.responsible', 'Added Element',
'PaymentReconciliation.detail.payee', 'Type Reference: Added Target Types Practitioner, PractitionerRole',
'PaymentReconciliation.formCode', 'Renamed from form to formCode',
'PaymentReconciliation.processNote.type', 'Type changed from CodeableConcept to code
        Change value set from http://hl7.org/fhir/ValueSet/note-type to http://hl7.org/fhir/ValueSet/note-type|4.0.1',
'PaymentReconciliation.requestProvider', 'deleted',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'PaymentReconciliation', 'TU', '', 'DomainResource', 'PaymentReconciliation resourceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier for a payment reconciliation',
'status', '?!Σ', '1..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'period', 'Σ', '0..1', 'Period', 'Period covered',
'created', 'Σ', '1..1', 'dateTime', 'Creation date',
'paymentIssuer', 'Σ', '0..1', 'Reference(Organization)', 'Party generating payment',
'request', '', '0..1', 'Reference(Task)', 'Reference to requesting resource',
'requestor', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Responsible practitioner',
'outcome', '', '0..1', 'code', 'queued | complete | error | partialRemittanceOutcome (Required)',
'disposition', '', '0..1', 'string', 'Disposition message',
'paymentDate', 'Σ', '1..1', 'date', 'When payment issued',
'paymentAmount', 'Σ', '1..1', 'Money', 'Total amount of Payment',
'paymentIdentifier', '', '0..1', 'Identifier', 'Business identifier for the payment',
'detail', '', '0..*', 'BackboneElement', 'Settlement particulars',
'identifier', '', '0..1', 'Identifier', 'Business identifier of the payment detail',
'predecessor', '', '0..1', 'Identifier', 'Business identifier of the prior payment detail',
'type', '', '1..1', 'CodeableConcept', 'Category of paymentPayment Type Codes (Example)',
'request', '', '0..1', 'Reference(Any)', 'Request giving rise to the payment',
'submitter', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Submitter of the request',
'response', '', '0..1', 'Reference(Any)', 'Response committing to a payment',
'date', '', '0..1', 'date', 'Date of commitment to pay',
'responsible', '', '0..1', 'Reference(PractitionerRole)', 'Contact for the response',
'payee', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Recipient of the payment',
'amount', '', '0..1', 'Money', 'Amount allocated to this payable',
'formCode', '', '0..1', 'CodeableConcept', 'Printed form identifierForms (Example)',
'processNote', '', '0..*', 'BackboneElement', 'Note concerning processing',
'type', '', '0..1', 'code', 'display | print | printoperNoteType (Required)',
'text', '', '0..1', 'string', 'Note explanatory text',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'PaymentReconciliation', '',
'PaymentReconciliation.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/fm-status to http://hl7.org/fhir/ValueSet/fm-status|4.0.1',
'PaymentReconciliation.created', 'Min Cardinality changed from 0 to 1',
'PaymentReconciliation.paymentIssuer', 'Renamed from organization to paymentIssuer',
'PaymentReconciliation.request', 'Type Reference: Added Target Type Task
        Type Reference: Removed Target Type ProcessRequest',
'PaymentReconciliation.requestor', 'Renamed from requestOrganization to requestor
        Type Reference: Added Target Types Practitioner, PractitionerRole',
'PaymentReconciliation.outcome', 'Type changed from CodeableConcept to code
        Change value set from http://hl7.org/fhir/ValueSet/remittance-outcome to http://hl7.org/fhir/ValueSet/remittance-outcome|4.0.1',
'PaymentReconciliation.paymentDate', 'Added Mandatory Element',
'PaymentReconciliation.paymentAmount', 'Renamed from total to paymentAmount
        Min Cardinality changed from 0 to 1',
'PaymentReconciliation.paymentIdentifier', 'Added Element',
'PaymentReconciliation.detail.identifier', 'Added Element',
'PaymentReconciliation.detail.predecessor', 'Added Element',
'PaymentReconciliation.detail.submitter', 'Type Reference: Added Target Types Practitioner, PractitionerRole',
'PaymentReconciliation.detail.responsible', 'Added Element',
'PaymentReconciliation.detail.payee', 'Type Reference: Added Target Types Practitioner, PractitionerRole',
'PaymentReconciliation.formCode', 'Renamed from form to formCode',
'PaymentReconciliation.processNote.type', 'Type changed from CodeableConcept to code
        Change value set from http://hl7.org/fhir/ValueSet/note-type to http://hl7.org/fhir/ValueSet/note-type|4.0.1',
'PaymentReconciliation.requestProvider', 'deleted',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'PaymentReconciliation.status', 'A code specifying the state of the resource instance.', 'Required', 'FinancialResourceStatusCodes',
'PaymentReconciliation.outcome', 'The outcome of the processing.', 'Required', 'RemittanceOutcome',
'PaymentReconciliation.detail.type', 'The reason for the amount: payment, adjustment, advance.', 'Example', 'PaymentTypeCodes',
'PaymentReconciliation.formCode', 'The forms codes.', 'Example', 'Form Codes',
'PaymentReconciliation.processNote.type', 'The presentation types of notes.', 'Required', 'NoteType',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'created', 'date', 'The creation date', 'PaymentReconciliation.created', '',
'disposition', 'string', 'The contents of the disposition message', 'PaymentReconciliation.disposition', '',
'identifier', 'token', 'The business identifier of the ExplanationOfBenefit', 'PaymentReconciliation.identifier', '',
'outcome', 'token', 'The processing outcome', 'PaymentReconciliation.outcome', '',
'payment-issuer', 'reference', 'The organization which generated this resource', 'PaymentReconciliation.paymentIssuer(Organization)', '',
'request', 'reference', 'The reference to the claim', 'PaymentReconciliation.request(Task)', '',
'requestor', 'reference', 'The reference to the provider who submitted the claim', 'PaymentReconciliation.requestor(Practitioner, Organization, PractitionerRole)', '',
'status', 'token', 'The status of the payment reconciliation', 'PaymentReconciliation.status', '',
)


