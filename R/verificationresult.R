df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'VerificationResult', 'TU', '', 'DomainResource', 'Describes validation requirements, source(s), status and dates for one or more elementsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'target', 'Σ', '0..*', 'Reference(Any)', 'A resource that was validated',
'targetLocation', 'Σ', '0..*', 'string', 'The fhirpath location(s) within the resource that was validated',
'need', 'Σ', '0..1', 'CodeableConcept', 'none | initial | periodicNeed (Preferred)',
'status', 'Σ', '1..1', 'code', 'attested | validated | in-process | req-revalid | val-fail | reval-failStatus (Required)',
'statusDate', 'Σ', '0..1', 'dateTime', 'When the validation status was updated',
'validationType', 'Σ', '0..1', 'CodeableConcept', 'nothing | primary | multipleValidation-type (Preferred)',
'validationProcess', 'Σ', '0..*', 'CodeableConcept', 'The primary process by which the target is validated (edit check; value set; primary source; multiple sources; standalone; in context)Validation-process (Example)',
'frequency', '', '0..1', 'Timing', 'Frequency of revalidation',
'lastPerformed', '', '0..1', 'dateTime', 'The date/time validation was last completed (including failed validations)',
'nextScheduled', '', '0..1', 'date', 'The date when target is next validated, if appropriate',
'failureAction', 'Σ', '0..1', 'CodeableConcept', 'fatal | warn | rec-only | noneFailure-action (Preferred)',
'primarySource', '', '0..*', 'BackboneElement', 'Information about the primary source(s) involved in validation',
'who', '', '0..1', 'Reference(Organization | Practitioner | PractitionerRole)', 'Reference to the primary source',
'type', 'Σ', '0..*', 'CodeableConcept', 'Type of primary source (License Board; Primary Education; Continuing Education; Postal Service; Relationship owner; Registration Authority; legal source; issuing source; authoritative source)Primary-source-type (Example)',
'communicationMethod', 'Σ', '0..*', 'CodeableConcept', 'Method for exchanging information with the primary sourceVerificationResult Communication Method (Example)',
'validationStatus', '', '0..1', 'CodeableConcept', 'successful | failed | unknownValidation-status (Preferred)',
'validationDate', '', '0..1', 'dateTime', 'When the target was validated against the primary source',
'canPushUpdates', 'Σ', '0..1', 'CodeableConcept', 'yes | no | undeterminedCan-push-updates (Preferred)',
'pushTypeAvailable', '', '0..*', 'CodeableConcept', 'specific | any | sourcePush-type-available (Preferred)',
'attestation', '', '0..1', 'BackboneElement', 'Information about the entity attesting to information',
'who', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'The individual or organization attesting to information',
'onBehalfOf', 'Σ', '0..1', 'Reference(Organization | Practitioner | PractitionerRole)', 'When the who is asserting on behalf of another (organization or individual)',
'communicationMethod', 'Σ', '0..1', 'CodeableConcept', 'The method by which attested information was submitted/retrievedVerificationResult Communication Method (Example)',
'date', 'Σ', '0..1', 'date', 'The date the information was attested to',
'sourceIdentityCertificate', '', '0..1', 'string', 'A digital identity certificate associated with the attestation source',
'proxyIdentityCertificate', '', '0..1', 'string', 'A digital identity certificate associated with the proxy entity submitting attested information on behalf of the attestation source',
'proxySignature', '', '0..1', 'Signature', 'Proxy signature',
'sourceSignature', '', '0..1', 'Signature', 'Attester signature',
'validator', '', '0..*', 'BackboneElement', 'Information about the entity validating information',
'organization', '', '1..1', 'Reference(Organization)', 'Reference to the organization validating information',
'identityCertificate', '', '0..1', 'string', 'A digital identity certificate associated with the validator',
'attestationSignature', '', '0..1', 'Signature', 'Validator signature',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'VerificationResult', 'TU', '', 'DomainResource', 'Describes validation requirements, source(s), status and dates for one or more elementsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'target', 'Σ', '0..*', 'Reference(Any)', 'A resource that was validated',
'targetLocation', 'Σ', '0..*', 'string', 'The fhirpath location(s) within the resource that was validated',
'need', 'Σ', '0..1', 'CodeableConcept', 'none | initial | periodicNeed (Preferred)',
'status', 'Σ', '1..1', 'code', 'attested | validated | in-process | req-revalid | val-fail | reval-failStatus (Required)',
'statusDate', 'Σ', '0..1', 'dateTime', 'When the validation status was updated',
'validationType', 'Σ', '0..1', 'CodeableConcept', 'nothing | primary | multipleValidation-type (Preferred)',
'validationProcess', 'Σ', '0..*', 'CodeableConcept', 'The primary process by which the target is validated (edit check; value set; primary source; multiple sources; standalone; in context)Validation-process (Example)',
'frequency', '', '0..1', 'Timing', 'Frequency of revalidation',
'lastPerformed', '', '0..1', 'dateTime', 'The date/time validation was last completed (including failed validations)',
'nextScheduled', '', '0..1', 'date', 'The date when target is next validated, if appropriate',
'failureAction', 'Σ', '0..1', 'CodeableConcept', 'fatal | warn | rec-only | noneFailure-action (Preferred)',
'primarySource', '', '0..*', 'BackboneElement', 'Information about the primary source(s) involved in validation',
'who', '', '0..1', 'Reference(Organization | Practitioner | PractitionerRole)', 'Reference to the primary source',
'type', 'Σ', '0..*', 'CodeableConcept', 'Type of primary source (License Board; Primary Education; Continuing Education; Postal Service; Relationship owner; Registration Authority; legal source; issuing source; authoritative source)Primary-source-type (Example)',
'communicationMethod', 'Σ', '0..*', 'CodeableConcept', 'Method for exchanging information with the primary sourceVerificationResult Communication Method (Example)',
'validationStatus', '', '0..1', 'CodeableConcept', 'successful | failed | unknownValidation-status (Preferred)',
'validationDate', '', '0..1', 'dateTime', 'When the target was validated against the primary source',
'canPushUpdates', 'Σ', '0..1', 'CodeableConcept', 'yes | no | undeterminedCan-push-updates (Preferred)',
'pushTypeAvailable', '', '0..*', 'CodeableConcept', 'specific | any | sourcePush-type-available (Preferred)',
'attestation', '', '0..1', 'BackboneElement', 'Information about the entity attesting to information',
'who', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'The individual or organization attesting to information',
'onBehalfOf', 'Σ', '0..1', 'Reference(Organization | Practitioner | PractitionerRole)', 'When the who is asserting on behalf of another (organization or individual)',
'communicationMethod', 'Σ', '0..1', 'CodeableConcept', 'The method by which attested information was submitted/retrievedVerificationResult Communication Method (Example)',
'date', 'Σ', '0..1', 'date', 'The date the information was attested to',
'sourceIdentityCertificate', '', '0..1', 'string', 'A digital identity certificate associated with the attestation source',
'proxyIdentityCertificate', '', '0..1', 'string', 'A digital identity certificate associated with the proxy entity submitting attested information on behalf of the attestation source',
'proxySignature', '', '0..1', 'Signature', 'Proxy signature',
'sourceSignature', '', '0..1', 'Signature', 'Attester signature',
'validator', '', '0..*', 'BackboneElement', 'Information about the entity validating information',
'organization', '', '1..1', 'Reference(Organization)', 'Reference to the organization validating information',
'identityCertificate', '', '0..1', 'string', 'A digital identity certificate associated with the validator',
'attestationSignature', '', '0..1', 'Signature', 'Validator signature',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'VerificationResult.need', 'The frequency with which the target must be validated.', 'Preferred', 'need',
'VerificationResult.status', 'The validation status of the target.', 'Required', 'status',
'VerificationResult.validationType', 'What the target is validated against.', 'Preferred', 'validation-type',
'VerificationResult.validationProcess', 'The primary process by which the target is validated.', 'Example', 'validation-process',
'VerificationResult.failureAction', 'The result if validation fails.', 'Preferred', 'failure-action',
'VerificationResult.primarySource.type', 'Type of the validation primary source.', 'Example', 'primary-source-type',
'VerificationResult.primarySource.communicationMethodVerificationResult.attestation.communicationMethod', 'Method for communicating with the data source (manual; API; Push).', 'Example', 'verificationresult-communication-method',
'VerificationResult.primarySource.validationStatus', 'Status of the validation of the target against the primary source.', 'Preferred', 'validation-status',
'VerificationResult.primarySource.canPushUpdates', 'Ability of the primary source to push updates/alerts.', 'Preferred', 'can-push-updates',
'VerificationResult.primarySource.pushTypeAvailable', 'Type of alerts/updates the primary source can send.', 'Preferred', 'push-type-available',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'target', 'reference', 'A resource that was validated', 'VerificationResult.target(Any)', '',
)


