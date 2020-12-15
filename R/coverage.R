df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Financial Management  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
'Coverage', 'The Coverage resource is intended to provide the high-level identifiers and descriptors of a specific insurance plan for
a specific individual - essentially the insurance card information. This may alternately provide the individual or organization, selfpay,
 which will pay for products and services rendered.',
'Contract', 'A Contract resource holds the references to parties who have entered into an agreement of some type, the parties who may sign or witness
				such an agreement, descriptors of the type of agreement and even the actual text or executable copy of the agreement. The agreement may be of 
				a variety of types including service contracts, insurance contracts, directives, etc. The contract may be either definitional or actual instances.',
'InsurancePlan', 'The InsurancePlan resource holds the definition of an insurance plan which an insurer may offer to potential clients through
				insurance brokers or an online insurance marketplace. This is only the plan definition and does not contain or reference 
				a list of individuals who have purchased the plan.',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Coverage', 'TU', '', 'DomainResource', 'Insurance or medical plan or a payment agreementElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for the coverage',
'status', '?!Σ', '1..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'type', 'Σ', '0..1', 'CodeableConcept', 'Coverage category such as medical or accidentCoverage Type and Self-Pay Codes (Preferred)',
'policyHolder', 'Σ', '0..1', 'Reference(Patient | RelatedPerson | Organization)', 'Owner of the policy',
'subscriber', 'Σ', '0..1', 'Reference(Patient | RelatedPerson)', 'Subscriber to the policy',
'subscriberId', 'Σ', '0..1', 'string', 'ID assigned to the subscriber',
'beneficiary', 'Σ', '1..1', 'Reference(Patient)', 'Plan beneficiary',
'dependent', 'Σ', '0..1', 'string', 'Dependent number',
'relationship', '', '0..1', 'CodeableConcept', 'Beneficiary relationship to the subscriberSubscriberPolicyholder Relationship Codes (Extensible)',
'period', 'Σ', '0..1', 'Period', 'Coverage start and end dates',
'payor', 'Σ', '1..*', 'Reference(Organization | Patient | RelatedPerson)', 'Issuer of the policy',
'class', '', '0..*', 'BackboneElement', 'Additional coverage classifications',
'type', 'Σ', '1..1', 'CodeableConcept', 'Type of class such as 'group' or 'plan'Coverage Class Codes (Extensible)',
'value', 'Σ', '1..1', 'string', 'Value associated with the type',
'name', 'Σ', '0..1', 'string', 'Human readable description of the type and value',
'order', 'Σ', '0..1', 'positiveInt', 'Relative order of the coverage',
'network', 'Σ', '0..1', 'string', 'Insurer network',
'costToBeneficiary', '', '0..*', 'BackboneElement', 'Patient payments for services/products',
'type', 'Σ', '0..1', 'CodeableConcept', 'Cost categoryCoverage Copay Type Codes (Extensible)',
'value[x]', 'Σ', '1..1', '', 'The amount or percentage due from the beneficiary',
'valueQuantity', '', '', 'SimpleQuantity', '',
'valueMoney', '', '', 'Money', '',
'exception', '', '0..*', 'BackboneElement', 'Exceptions for patient payments',
'type', 'Σ', '1..1', 'CodeableConcept', 'Exception categoryExample Coverage Financial Exception Codes (Example)',
'period', 'Σ', '0..1', 'Period', 'The effective period of the exception',
'subrogation', '', '0..1', 'boolean', 'Reimbursement to insurer',
'contract', '', '0..*', 'Reference(Contract)', 'Contract details',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'Coverage', '',
'Coverage.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/fm-status to http://hl7.org/fhir/ValueSet/fm-status|4.0.1',
'Coverage.beneficiary', 'Min Cardinality changed from 0 to 1',
'Coverage.relationship', 'Add Binding http://hl7.org/fhir/ValueSet/subscriber-relationship (extensible)',
'Coverage.payor', 'Min Cardinality changed from 0 to 1',
'Coverage.class', 'Renamed from grouping to class
        Max Cardinality changed from 1 to *',
'Coverage.class.type', 'Added Mandatory Element',
'Coverage.class.value', 'Added Mandatory Element',
'Coverage.class.name', 'Added Element',
'Coverage.costToBeneficiary', 'Added Element',
'Coverage.costToBeneficiary.type', 'Added Element',
'Coverage.costToBeneficiary.value[x]', 'Added Mandatory Element',
'Coverage.costToBeneficiary.exception', 'Added Element',
'Coverage.costToBeneficiary.exception.type', 'Added Mandatory Element',
'Coverage.costToBeneficiary.exception.period', 'Added Element',
'Coverage.subrogation', 'Added Element',
'Coverage.grouping.group', 'deleted',
'Coverage.grouping.groupDisplay', 'deleted',
'Coverage.grouping.subGroup', 'deleted',
'Coverage.grouping.subGroupDisplay', 'deleted',
'Coverage.grouping.plan', 'deleted',
'Coverage.grouping.planDisplay', 'deleted',
'Coverage.grouping.subPlan', 'deleted',
'Coverage.grouping.subPlanDisplay', 'deleted',
'Coverage.grouping.class', 'deleted',
'Coverage.grouping.classDisplay', 'deleted',
'Coverage.grouping.subClass', 'deleted',
'Coverage.grouping.subClassDisplay', 'deleted',
'Coverage.sequence', 'deleted',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Coverage', 'TU', '', 'DomainResource', 'Insurance or medical plan or a payment agreementElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for the coverage',
'status', '?!Σ', '1..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'type', 'Σ', '0..1', 'CodeableConcept', 'Coverage category such as medical or accidentCoverage Type and Self-Pay Codes (Preferred)',
'policyHolder', 'Σ', '0..1', 'Reference(Patient | RelatedPerson | Organization)', 'Owner of the policy',
'subscriber', 'Σ', '0..1', 'Reference(Patient | RelatedPerson)', 'Subscriber to the policy',
'subscriberId', 'Σ', '0..1', 'string', 'ID assigned to the subscriber',
'beneficiary', 'Σ', '1..1', 'Reference(Patient)', 'Plan beneficiary',
'dependent', 'Σ', '0..1', 'string', 'Dependent number',
'relationship', '', '0..1', 'CodeableConcept', 'Beneficiary relationship to the subscriberSubscriberPolicyholder Relationship Codes (Extensible)',
'period', 'Σ', '0..1', 'Period', 'Coverage start and end dates',
'payor', 'Σ', '1..*', 'Reference(Organization | Patient | RelatedPerson)', 'Issuer of the policy',
'class', '', '0..*', 'BackboneElement', 'Additional coverage classifications',
'type', 'Σ', '1..1', 'CodeableConcept', 'Type of class such as 'group' or 'plan'Coverage Class Codes (Extensible)',
'value', 'Σ', '1..1', 'string', 'Value associated with the type',
'name', 'Σ', '0..1', 'string', 'Human readable description of the type and value',
'order', 'Σ', '0..1', 'positiveInt', 'Relative order of the coverage',
'network', 'Σ', '0..1', 'string', 'Insurer network',
'costToBeneficiary', '', '0..*', 'BackboneElement', 'Patient payments for services/products',
'type', 'Σ', '0..1', 'CodeableConcept', 'Cost categoryCoverage Copay Type Codes (Extensible)',
'value[x]', 'Σ', '1..1', '', 'The amount or percentage due from the beneficiary',
'valueQuantity', '', '', 'SimpleQuantity', '',
'valueMoney', '', '', 'Money', '',
'exception', '', '0..*', 'BackboneElement', 'Exceptions for patient payments',
'type', 'Σ', '1..1', 'CodeableConcept', 'Exception categoryExample Coverage Financial Exception Codes (Example)',
'period', 'Σ', '0..1', 'Period', 'The effective period of the exception',
'subrogation', '', '0..1', 'boolean', 'Reimbursement to insurer',
'contract', '', '0..*', 'Reference(Contract)', 'Contract details',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'Coverage', '',
'Coverage.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/fm-status to http://hl7.org/fhir/ValueSet/fm-status|4.0.1',
'Coverage.beneficiary', 'Min Cardinality changed from 0 to 1',
'Coverage.relationship', 'Add Binding http://hl7.org/fhir/ValueSet/subscriber-relationship (extensible)',
'Coverage.payor', 'Min Cardinality changed from 0 to 1',
'Coverage.class', 'Renamed from grouping to class
        Max Cardinality changed from 1 to *',
'Coverage.class.type', 'Added Mandatory Element',
'Coverage.class.value', 'Added Mandatory Element',
'Coverage.class.name', 'Added Element',
'Coverage.costToBeneficiary', 'Added Element',
'Coverage.costToBeneficiary.type', 'Added Element',
'Coverage.costToBeneficiary.value[x]', 'Added Mandatory Element',
'Coverage.costToBeneficiary.exception', 'Added Element',
'Coverage.costToBeneficiary.exception.type', 'Added Mandatory Element',
'Coverage.costToBeneficiary.exception.period', 'Added Element',
'Coverage.subrogation', 'Added Element',
'Coverage.grouping.group', 'deleted',
'Coverage.grouping.groupDisplay', 'deleted',
'Coverage.grouping.subGroup', 'deleted',
'Coverage.grouping.subGroupDisplay', 'deleted',
'Coverage.grouping.plan', 'deleted',
'Coverage.grouping.planDisplay', 'deleted',
'Coverage.grouping.subPlan', 'deleted',
'Coverage.grouping.subPlanDisplay', 'deleted',
'Coverage.grouping.class', 'deleted',
'Coverage.grouping.classDisplay', 'deleted',
'Coverage.grouping.subClass', 'deleted',
'Coverage.grouping.subClassDisplay', 'deleted',
'Coverage.sequence', 'deleted',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Coverage.status', 'A code specifying the state of the resource instance.', 'Required', 'FinancialResourceStatusCodes',
'Coverage.type', 'The type of insurance: public health, worker compensation; private accident, auto, private health, etc.) or a direct payment by an individual or organization.', 'Preferred', 'CoverageTypeAndSelf-PayCodes',
'Coverage.relationship', 'The relationship between the Subscriber and the Beneficiary (insured/covered party/patient).', 'Extensible', 'SubscriberRelationshipCodes',
'Coverage.class.type', 'The policy classifications, eg. Group, Plan, Class, etc.', 'Extensible', 'CoverageClassCodes',
'Coverage.costToBeneficiary.type', 'The types of services to which patient copayments are specified.', 'Extensible', 'CoverageCopayTypeCodes',
'Coverage.costToBeneficiary.exception.type', 'The types of exceptions from the part or full value of financial obligations such as copays.', 'Example', 'ExampleCoverageFinancialExceptionCodes',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'beneficiary', 'reference', 'Covered party', 'Coverage.beneficiary(Patient)', '',
'class-type', 'token', 'Coverage class (eg. plan, group)', 'Coverage.class.type', '',
'class-value', 'string', 'Value of the class (eg. Plan number, group number)', 'Coverage.class.value', '',
'dependent', 'string', 'Dependent number', 'Coverage.dependent', '',
'identifier', 'token', 'The primary identifier of the insured and the coverage', 'Coverage.identifier', '',
'patient', 'reference', 'Retrieve coverages for a patient', 'Coverage.beneficiary(Patient)', '',
'payor', 'reference', 'The identity of the insurer or party paying for services', 'Coverage.payor(Organization, Patient, RelatedPerson)', '',
'policy-holder', 'reference', 'Reference to the policyholder', 'Coverage.policyHolder(Organization, Patient, RelatedPerson)', '',
'status', 'token', 'The status of the Coverage', 'Coverage.status', '',
'subscriber', 'reference', 'Reference to the subscriber', 'Coverage.subscriber(Patient, RelatedPerson)', '',
'type', 'token', 'The kind of coverage (health plan, auto, Workers Compensation)', 'Coverage.type', '',
)


