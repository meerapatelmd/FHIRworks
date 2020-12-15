df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Financial Management  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
'CoverageEligibilityResponse', 'Patient and insurance coverage information provided to an insurer for them to respond, in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-force and optionally to provide the insurance details of the policy.',
'ClaimResponse', 'A payor's adjudication and/or authorization response to the suite of services provided in a Claim. Typically the ClaimResponse references the Claim but does not duplicate
		the clinical or financial information provided in the claim.',
'CoverageEligibilityRequest', 'Patient and insurance coverage information provided to an insurer for them to respond, in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-force and optionally to provide the insurance details of the policy.',
'Coverage', 'Provides the high-level identifiers and descriptors of an insurance plan, typically the information which would appear on an insurance card, which may be used to pay, in part or in whole, for the provision of health care products and services.',
'ExplanationOfBenefit', 'This resource combines the information from the Claim and the ClaimResponse, stripping out any provider or payor proprietary information, into a unified information model 
		suitable for use for: patient reporting; transferring information to a Patient Health Record system; and, supporting complete claim and adjudication information exchange
 with regulatory and analytics organizations and other parts of the provider's organization.',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CoverageEligibilityResponse', 'TU', '', 'DomainResource', 'CoverageEligibilityResponse resourceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier for coverage eligiblity request',
'status', '?!Σ', '1..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'purpose', 'Σ', '1..*', 'code', 'auth-requirements | benefits | discovery | validationEligibilityResponsePurpose (Required)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Intended recipient of products and services',
'serviced[x]', '', '0..1', '', 'Estimated date or dates of service',
'servicedDate', '', '', 'date', '',
'servicedPeriod', '', '', 'Period', '',
'created', 'Σ', '1..1', 'dateTime', 'Response creation date',
'requestor', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Party responsible for the request',
'request', 'Σ', '1..1', 'Reference(CoverageEligibilityRequest)', 'Eligibility request reference',
'outcome', 'Σ', '1..1', 'code', 'queued | complete | error | partialRemittanceOutcome (Required)',
'disposition', '', '0..1', 'string', 'Disposition Message',
'insurer', 'Σ', '1..1', 'Reference(Organization)', 'Coverage issuer',
'insurance', '', '0..*', 'BackboneElement', 'Patient insurance information',
'coverage', 'Σ', '1..1', 'Reference(Coverage)', 'Insurance information',
'inforce', '', '0..1', 'boolean', 'Coverage inforce indicator',
'benefitPeriod', '', '0..1', 'Period', 'When the benefits are applicable',
'item', 'I', '0..*', 'BackboneElement', 'Benefits and authorization details+ Rule: SHALL contain a category or a billcode but not both.',
'category', '', '0..1', 'CodeableConcept', 'Benefit classificationBenefit Category Codes (Example)',
'productOrService', '', '0..1', 'CodeableConcept', 'Billing, service, product, or drug codeUSCLS Codes (Example)',
'modifier', '', '0..*', 'CodeableConcept', 'Product or service billing modifiersModifier type Codes (Example)',
'provider', '', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Performing practitioner',
'excluded', '', '0..1', 'boolean', 'Excluded from the plan',
'name', '', '0..1', 'string', 'Short name for the benefit',
'description', '', '0..1', 'string', 'Description of the benefit or services covered',
'network', '', '0..1', 'CodeableConcept', 'In or out of networkNetwork Type Codes (Example)',
'unit', '', '0..1', 'CodeableConcept', 'Individual or familyUnit Type Codes (Example)',
'term', '', '0..1', 'CodeableConcept', 'Annual or lifetimeBenefit Term Codes (Example)',
'benefit', '', '0..*', 'BackboneElement', 'Benefit Summary',
'type', '', '1..1', 'CodeableConcept', 'Benefit classificationBenefit Type Codes (Example)',
'allowed[x]', '', '0..1', '', 'Benefits allowed',
'allowedUnsignedInt', '', '', 'unsignedInt', '',
'allowedString', '', '', 'string', '',
'allowedMoney', '', '', 'Money', '',
'used[x]', '', '0..1', '', 'Benefits used',
'usedUnsignedInt', '', '', 'unsignedInt', '',
'usedString', '', '', 'string', '',
'usedMoney', '', '', 'Money', '',
'authorizationRequired', '', '0..1', 'boolean', 'Authorization required flag',
'authorizationSupporting', '', '0..*', 'CodeableConcept', 'Type of required supporting materialsCoverageEligibilityResponse Auth Support Codes (Example)',
'authorizationUrl', '', '0..1', 'uri', 'Preauthorization requirements endpoint',
'preAuthRef', '', '0..1', 'string', 'Preauthorization reference',
'form', '', '0..1', 'CodeableConcept', 'Printed form identifierForms (Example)',
'error', '', '0..*', 'BackboneElement', 'Processing errors',
'code', '', '1..1', 'CodeableConcept', 'Error code detailing processing issuesAdjudicationError (Example)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CoverageEligibilityResponse', 'TU', '', 'DomainResource', 'CoverageEligibilityResponse resourceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier for coverage eligiblity request',
'status', '?!Σ', '1..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'purpose', 'Σ', '1..*', 'code', 'auth-requirements | benefits | discovery | validationEligibilityResponsePurpose (Required)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Intended recipient of products and services',
'serviced[x]', '', '0..1', '', 'Estimated date or dates of service',
'servicedDate', '', '', 'date', '',
'servicedPeriod', '', '', 'Period', '',
'created', 'Σ', '1..1', 'dateTime', 'Response creation date',
'requestor', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Party responsible for the request',
'request', 'Σ', '1..1', 'Reference(CoverageEligibilityRequest)', 'Eligibility request reference',
'outcome', 'Σ', '1..1', 'code', 'queued | complete | error | partialRemittanceOutcome (Required)',
'disposition', '', '0..1', 'string', 'Disposition Message',
'insurer', 'Σ', '1..1', 'Reference(Organization)', 'Coverage issuer',
'insurance', '', '0..*', 'BackboneElement', 'Patient insurance information',
'coverage', 'Σ', '1..1', 'Reference(Coverage)', 'Insurance information',
'inforce', '', '0..1', 'boolean', 'Coverage inforce indicator',
'benefitPeriod', '', '0..1', 'Period', 'When the benefits are applicable',
'item', 'I', '0..*', 'BackboneElement', 'Benefits and authorization details+ Rule: SHALL contain a category or a billcode but not both.',
'category', '', '0..1', 'CodeableConcept', 'Benefit classificationBenefit Category Codes (Example)',
'productOrService', '', '0..1', 'CodeableConcept', 'Billing, service, product, or drug codeUSCLS Codes (Example)',
'modifier', '', '0..*', 'CodeableConcept', 'Product or service billing modifiersModifier type Codes (Example)',
'provider', '', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Performing practitioner',
'excluded', '', '0..1', 'boolean', 'Excluded from the plan',
'name', '', '0..1', 'string', 'Short name for the benefit',
'description', '', '0..1', 'string', 'Description of the benefit or services covered',
'network', '', '0..1', 'CodeableConcept', 'In or out of networkNetwork Type Codes (Example)',
'unit', '', '0..1', 'CodeableConcept', 'Individual or familyUnit Type Codes (Example)',
'term', '', '0..1', 'CodeableConcept', 'Annual or lifetimeBenefit Term Codes (Example)',
'benefit', '', '0..*', 'BackboneElement', 'Benefit Summary',
'type', '', '1..1', 'CodeableConcept', 'Benefit classificationBenefit Type Codes (Example)',
'allowed[x]', '', '0..1', '', 'Benefits allowed',
'allowedUnsignedInt', '', '', 'unsignedInt', '',
'allowedString', '', '', 'string', '',
'allowedMoney', '', '', 'Money', '',
'used[x]', '', '0..1', '', 'Benefits used',
'usedUnsignedInt', '', '', 'unsignedInt', '',
'usedString', '', '', 'string', '',
'usedMoney', '', '', 'Money', '',
'authorizationRequired', '', '0..1', 'boolean', 'Authorization required flag',
'authorizationSupporting', '', '0..*', 'CodeableConcept', 'Type of required supporting materialsCoverageEligibilityResponse Auth Support Codes (Example)',
'authorizationUrl', '', '0..1', 'uri', 'Preauthorization requirements endpoint',
'preAuthRef', '', '0..1', 'string', 'Preauthorization reference',
'form', '', '0..1', 'CodeableConcept', 'Printed form identifierForms (Example)',
'error', '', '0..*', 'BackboneElement', 'Processing errors',
'code', '', '1..1', 'CodeableConcept', 'Error code detailing processing issuesAdjudicationError (Example)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'CoverageEligibilityResponse.status', 'A code specifying the state of the resource instance.', 'Required', 'FinancialResourceStatusCodes',
'CoverageEligibilityResponse.purpose', 'A code specifying the types of information being requested.', 'Required', 'EligibilityResponsePurpose',
'CoverageEligibilityResponse.outcome', 'The outcome of the processing.', 'Required', 'RemittanceOutcome',
'CoverageEligibilityResponse.insurance.item.category', 'Benefit categories such as: oral, medical, vision etc.', 'Example', 'BenefitCategoryCodes',
'CoverageEligibilityResponse.insurance.item.productOrService', 'Allowable service and product codes.', 'Example', 'USCLSCodes',
'CoverageEligibilityResponse.insurance.item.modifier', 'Item type or modifiers codes, eg for Oral whether the treatment is cosmetic or associated with TMJ, or an appliance was lost or stolen.', 'Example', 'ModifierTypeCodes',
'CoverageEligibilityResponse.insurance.item.network', 'Code to classify in or out of network services.', 'Example', 'NetworkTypeCodes',
'CoverageEligibilityResponse.insurance.item.unit', 'Unit covered/serviced - individual or family.', 'Example', 'UnitTypeCodes',
'CoverageEligibilityResponse.insurance.item.term', 'Coverage unit - annual, lifetime.', 'Example', 'BenefitTermCodes',
'CoverageEligibilityResponse.insurance.item.benefit.type', 'Deductable, visits, co-pay, etc.', 'Example', 'BenefitTypeCodes',
'CoverageEligibilityResponse.insurance.item.authorizationSupporting', 'Type of supporting information to provide with a preauthorization.', 'Example', 'CoverageEligibilityResponseAuthSupportCodes',
'CoverageEligibilityResponse.form', 'The forms codes.', 'Example', 'Form Codes',
'CoverageEligibilityResponse.error.code', 'The error codes for adjudication processing.', 'Example', 'Adjudication Error Codes',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'ces-1', 'Rule', 'CoverageEligibilityResponse.insurance.item', 'SHALL contain a category or a billcode but not both.', 'category.exists() xor productOrService.exists()',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'created', 'date', 'The creation date', 'CoverageEligibilityResponse.created', '',
'disposition', 'string', 'The contents of the disposition message', 'CoverageEligibilityResponse.disposition', '',
'identifier', 'token', 'The business identifier', 'CoverageEligibilityResponse.identifier', '',
'insurer', 'reference', 'The organization which generated this resource', 'CoverageEligibilityResponse.insurer(Organization)', '',
'outcome', 'token', 'The processing outcome', 'CoverageEligibilityResponse.outcome', '',
'patient', 'reference', 'The reference to the patient', 'CoverageEligibilityResponse.patient(Patient)', '',
'request', 'reference', 'The EligibilityRequest reference', 'CoverageEligibilityResponse.request(CoverageEligibilityRequest)', '',
'requestor', 'reference', 'The EligibilityRequest provider', 'CoverageEligibilityResponse.requestor(Practitioner, Organization, PractitionerRole)', '',
'status', 'token', 'The EligibilityRequest status', 'CoverageEligibilityResponse.status', '',
)


