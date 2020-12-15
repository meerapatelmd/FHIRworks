df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Financial Management  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
'CoverageEligibilityRequest', 'Patient and insurance coverage information provided to an insurer for them to respond, in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-force and optionally to provide the insurance details of the policy.',
'Claim', 'A suite of goods and services and insurances coverages under which adjudication or authorization is requested.',
'Coverage', 'Provides the high-level identifiers and descriptors of an insurance plan, typically the information which would appear on an insurance card, which may be used to pay, in part or in whole, for the provision of health care products and services.',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CoverageEligibilityRequest', 'TU', '', 'DomainResource', 'CoverageEligibilityRequest resourceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier for coverage eligiblity request',
'status', '?!Σ', '1..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'priority', '', '0..1', 'CodeableConcept', 'Desired processing priorityProcess Priority Codes (Example)',
'purpose', 'Σ', '1..*', 'code', 'auth-requirements | benefits | discovery | validationEligibilityRequestPurpose (Required)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Intended recipient of products and services',
'serviced[x]', '', '0..1', '', 'Estimated date or dates of service',
'servicedDate', '', '', 'date', '',
'servicedPeriod', '', '', 'Period', '',
'created', 'Σ', '1..1', 'dateTime', 'Creation date',
'enterer', '', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Author',
'provider', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Party responsible for the request',
'insurer', 'Σ', '1..1', 'Reference(Organization)', 'Coverage issuer',
'facility', '', '0..1', 'Reference(Location)', 'Servicing facility',
'supportingInfo', '', '0..*', 'BackboneElement', 'Supporting information',
'sequence', '', '1..1', 'positiveInt', 'Information instance identifier',
'information', '', '1..1', 'Reference(Any)', 'Data to be provided',
'appliesToAll', '', '0..1', 'boolean', 'Applies to all items',
'insurance', '', '0..*', 'BackboneElement', 'Patient insurance information',
'focal', '', '0..1', 'boolean', 'Applicable coverage',
'coverage', '', '1..1', 'Reference(Coverage)', 'Insurance information',
'businessArrangement', '', '0..1', 'string', 'Additional provider contract number',
'item', '', '0..*', 'BackboneElement', 'Item to be evaluated for eligibiity',
'supportingInfoSequence', '', '0..*', 'positiveInt', 'Applicable exception or supporting information',
'category', '', '0..1', 'CodeableConcept', 'Benefit classificationBenefit Category Codes (Example)',
'productOrService', '', '0..1', 'CodeableConcept', 'Billing, service, product, or drug codeUSCLS Codes (Example)',
'modifier', '', '0..*', 'CodeableConcept', 'Product or service billing modifiersModifier type Codes (Example)',
'provider', '', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Perfoming practitioner',
'quantity', '', '0..1', 'SimpleQuantity', 'Count of products or services',
'unitPrice', '', '0..1', 'Money', 'Fee, charge or cost per item',
'facility', '', '0..1', 'Reference(Location | Organization)', 'Servicing facility',
'diagnosis', '', '0..*', 'BackboneElement', 'Applicable diagnosis',
'diagnosis[x]', '', '0..1', '', 'Nature of illness or problemICD-10 Codes (Example)',
'diagnosisCodeableConcept', '', '', 'CodeableConcept', '',
'diagnosisReference', '', '', 'Reference(Condition)', '',
'detail', '', '0..*', 'Reference(Any)', 'Product or service details',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CoverageEligibilityRequest', 'TU', '', 'DomainResource', 'CoverageEligibilityRequest resourceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier for coverage eligiblity request',
'status', '?!Σ', '1..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'priority', '', '0..1', 'CodeableConcept', 'Desired processing priorityProcess Priority Codes (Example)',
'purpose', 'Σ', '1..*', 'code', 'auth-requirements | benefits | discovery | validationEligibilityRequestPurpose (Required)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Intended recipient of products and services',
'serviced[x]', '', '0..1', '', 'Estimated date or dates of service',
'servicedDate', '', '', 'date', '',
'servicedPeriod', '', '', 'Period', '',
'created', 'Σ', '1..1', 'dateTime', 'Creation date',
'enterer', '', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Author',
'provider', '', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Party responsible for the request',
'insurer', 'Σ', '1..1', 'Reference(Organization)', 'Coverage issuer',
'facility', '', '0..1', 'Reference(Location)', 'Servicing facility',
'supportingInfo', '', '0..*', 'BackboneElement', 'Supporting information',
'sequence', '', '1..1', 'positiveInt', 'Information instance identifier',
'information', '', '1..1', 'Reference(Any)', 'Data to be provided',
'appliesToAll', '', '0..1', 'boolean', 'Applies to all items',
'insurance', '', '0..*', 'BackboneElement', 'Patient insurance information',
'focal', '', '0..1', 'boolean', 'Applicable coverage',
'coverage', '', '1..1', 'Reference(Coverage)', 'Insurance information',
'businessArrangement', '', '0..1', 'string', 'Additional provider contract number',
'item', '', '0..*', 'BackboneElement', 'Item to be evaluated for eligibiity',
'supportingInfoSequence', '', '0..*', 'positiveInt', 'Applicable exception or supporting information',
'category', '', '0..1', 'CodeableConcept', 'Benefit classificationBenefit Category Codes (Example)',
'productOrService', '', '0..1', 'CodeableConcept', 'Billing, service, product, or drug codeUSCLS Codes (Example)',
'modifier', '', '0..*', 'CodeableConcept', 'Product or service billing modifiersModifier type Codes (Example)',
'provider', '', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Perfoming practitioner',
'quantity', '', '0..1', 'SimpleQuantity', 'Count of products or services',
'unitPrice', '', '0..1', 'Money', 'Fee, charge or cost per item',
'facility', '', '0..1', 'Reference(Location | Organization)', 'Servicing facility',
'diagnosis', '', '0..*', 'BackboneElement', 'Applicable diagnosis',
'diagnosis[x]', '', '0..1', '', 'Nature of illness or problemICD-10 Codes (Example)',
'diagnosisCodeableConcept', '', '', 'CodeableConcept', '',
'diagnosisReference', '', '', 'Reference(Condition)', '',
'detail', '', '0..*', 'Reference(Any)', 'Product or service details',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'CoverageEligibilityRequest.status', 'A code specifying the state of the resource instance.', 'Required', 'FinancialResourceStatusCodes',
'CoverageEligibilityRequest.priority', 'The timeliness with which processing is required: STAT, normal, Deferred.', 'Example', 'ProcessPriorityCodes',
'CoverageEligibilityRequest.purpose', 'A code specifying the types of information being requested.', 'Required', 'EligibilityRequestPurpose',
'CoverageEligibilityRequest.item.category', 'Benefit categories such as: oral, medical, vision etc.', 'Example', 'BenefitCategoryCodes',
'CoverageEligibilityRequest.item.productOrService', 'Allowable service and product codes.', 'Example', 'USCLSCodes',
'CoverageEligibilityRequest.item.modifier', 'Item type or modifiers codes, eg for Oral whether the treatment is cosmetic or associated with TMJ, or an appliance was lost or stolen.', 'Example', 'ModifierTypeCodes',
'CoverageEligibilityRequest.item.diagnosis.diagnosis[x]', 'ICD10 Diagnostic codes.', 'Example', 'ICD-10Codes',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'created', 'date', 'The creation date for the EOB', 'CoverageEligibilityRequest.created', '',
'enterer', 'reference', 'The party who is responsible for the request', 'CoverageEligibilityRequest.enterer(Practitioner, PractitionerRole)', '',
'facility', 'reference', 'Facility responsible for the goods and services', 'CoverageEligibilityRequest.facility(Location)', '',
'identifier', 'token', 'The business identifier of the Eligibility', 'CoverageEligibilityRequest.identifier', '',
'patient', 'reference', 'The reference to the patient', 'CoverageEligibilityRequest.patient(Patient)', '',
'provider', 'reference', 'The reference to the provider', 'CoverageEligibilityRequest.provider(Practitioner, Organization, PractitionerRole)', '',
'status', 'token', 'The status of the EligibilityRequest', 'CoverageEligibilityRequest.status', '',
)


