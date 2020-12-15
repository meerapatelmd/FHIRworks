df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Account', 'TU', '', 'DomainResource', 'Tracks balance, charges, for patient or cost centerElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Account number',
'status', '?!Σ', '1..1', 'code', 'active | inactive | entered-in-error | on-hold | unknownAccountStatus (Required)',
'type', 'Σ', '0..1', 'CodeableConcept', 'E.g. patient, expense, depreciationAccount Types (Example)',
'name', 'Σ', '0..1', 'string', 'Human-readable label',
'subject', 'Σ', '0..*', 'Reference(Patient | Device | Practitioner | PractitionerRole | Location | HealthcareService | Organization)', 'The entity that caused the expenses',
'servicePeriod', 'Σ', '0..1', 'Period', 'Transaction window',
'coverage', 'Σ', '0..*', 'BackboneElement', 'The party(s) that are responsible for covering the payment of this account, and what order should they be applied to the account',
'coverage', 'Σ', '1..1', 'Reference(Coverage)', 'The party(s), such as insurances, that may contribute to the payment of this account',
'priority', 'Σ', '0..1', 'positiveInt', 'The priority of the coverage in the context of this account',
'owner', 'Σ', '0..1', 'Reference(Organization)', 'Entity managing the Account',
'description', 'Σ', '0..1', 'string', 'Explanation of purpose/use',
'guarantor', '', '0..*', 'BackboneElement', 'The parties ultimately responsible for balancing the Account',
'party', '', '1..1', 'Reference(Patient | RelatedPerson | Organization)', 'Responsible entity',
'onHold', '', '0..1', 'boolean', 'Credit or other hold applied',
'period', '', '0..1', 'Period', 'Guarantee account during',
'partOf', '', '0..1', 'Reference(Account)', 'Reference to a parent Account',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Account', '',
'Account.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/account-status to http://hl7.org/fhir/ValueSet/account-status|4.0.1',
'Account.subject', 'Max Cardinality changed from 1 to *
        Type Reference: Added Target Type PractitionerRole',
'Account.servicePeriod', 'Renamed from period to servicePeriod',
'Account.partOf', 'Added Element',
'Account.active', 'deleted',
'Account.balance', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Account', 'TU', '', 'DomainResource', 'Tracks balance, charges, for patient or cost centerElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Account number',
'status', '?!Σ', '1..1', 'code', 'active | inactive | entered-in-error | on-hold | unknownAccountStatus (Required)',
'type', 'Σ', '0..1', 'CodeableConcept', 'E.g. patient, expense, depreciationAccount Types (Example)',
'name', 'Σ', '0..1', 'string', 'Human-readable label',
'subject', 'Σ', '0..*', 'Reference(Patient | Device | Practitioner | PractitionerRole | Location | HealthcareService | Organization)', 'The entity that caused the expenses',
'servicePeriod', 'Σ', '0..1', 'Period', 'Transaction window',
'coverage', 'Σ', '0..*', 'BackboneElement', 'The party(s) that are responsible for covering the payment of this account, and what order should they be applied to the account',
'coverage', 'Σ', '1..1', 'Reference(Coverage)', 'The party(s), such as insurances, that may contribute to the payment of this account',
'priority', 'Σ', '0..1', 'positiveInt', 'The priority of the coverage in the context of this account',
'owner', 'Σ', '0..1', 'Reference(Organization)', 'Entity managing the Account',
'description', 'Σ', '0..1', 'string', 'Explanation of purpose/use',
'guarantor', '', '0..*', 'BackboneElement', 'The parties ultimately responsible for balancing the Account',
'party', '', '1..1', 'Reference(Patient | RelatedPerson | Organization)', 'Responsible entity',
'onHold', '', '0..1', 'boolean', 'Credit or other hold applied',
'period', '', '0..1', 'Period', 'Guarantee account during',
'partOf', '', '0..1', 'Reference(Account)', 'Reference to a parent Account',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Account', '',
'Account.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/account-status to http://hl7.org/fhir/ValueSet/account-status|4.0.1',
'Account.subject', 'Max Cardinality changed from 1 to *
        Type Reference: Added Target Type PractitionerRole',
'Account.servicePeriod', 'Renamed from period to servicePeriod',
'Account.partOf', 'Added Element',
'Account.active', 'deleted',
'Account.balance', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Account.status', 'Indicates whether the account is available to be used.', 'Required', 'AccountStatus',
'Account.type', 'The usage type of this account, permits categorization of accounts.', 'Example', 'AccountTypes',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'identifier', 'token', 'Account number', 'Account.identifier', '',
'name', 'string', 'Human-readable label', 'Account.name', '',
'owner', 'reference', 'Entity managing the Account', 'Account.owner(Organization)', '',
'patient', 'reference', 'The entity that caused the expenses', 'Account.subject.where(resolve() is Patient)(Patient)', '',
'period', 'date', 'Transaction window', 'Account.servicePeriod', '',
'status', 'token', 'active | inactive | entered-in-error | on-hold | unknown', 'Account.status', '',
'subject', 'reference', 'The entity that caused the expenses', 'Account.subject(Practitioner, Organization, Device, Patient, HealthcareService, PractitionerRole, Location)', '',
'type', 'token', 'E.g. patient, expense, depreciation', 'Account.type', '',
)


