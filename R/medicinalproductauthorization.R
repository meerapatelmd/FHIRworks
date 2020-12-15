df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Biomedical Research and Regulation  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductAuthorization', 'ΣTU', '', 'DomainResource', 'The regulatory authorization of a medicinal productElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier for the marketing authorization, as assigned by a regulator',
'subject', 'Σ', '0..1', 'Reference(MedicinalProduct | MedicinalProductPackaged)', 'The medicinal product that is being authorized',
'country', 'Σ', '0..*', 'CodeableConcept', 'The country in which the marketing authorization has been granted',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Jurisdiction within a country',
'status', 'Σ', '0..1', 'CodeableConcept', 'The status of the marketing authorization',
'statusDate', 'Σ', '0..1', 'dateTime', 'The date at which the given status has become applicable',
'restoreDate', 'Σ', '0..1', 'dateTime', 'The date when a suspended the marketing or the marketing authorization of the product is anticipated to be restored',
'validityPeriod', 'Σ', '0..1', 'Period', 'The beginning of the time period in which the marketing authorization is in the specific status shall be specified A complete date consisting of day, month and year shall be specified using the ISO 8601 date format',
'dataExclusivityPeriod', 'Σ', '0..1', 'Period', 'A period of time after authorization before generic product applicatiosn can be submitted',
'dateOfFirstAuthorization', 'Σ', '0..1', 'dateTime', 'The date when the first authorization was granted by a Medicines Regulatory Agency',
'internationalBirthDate', 'Σ', '0..1', 'dateTime', 'Date of first marketing authorization for a company's new medicinal product in any country in the World',
'legalBasis', 'Σ', '0..1', 'CodeableConcept', 'The legal framework against which this authorization is granted',
'jurisdictionalAuthorization', 'Σ', '0..*', 'BackboneElement', 'Authorization in areas within a country',
'identifier', 'Σ', '0..*', 'Identifier', 'The assigned number for the marketing authorization',
'country', 'Σ', '0..1', 'CodeableConcept', 'Country of authorization',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Jurisdiction within a country',
'legalStatusOfSupply', 'Σ', '0..1', 'CodeableConcept', 'The legal status of supply in a jurisdiction or region',
'validityPeriod', 'Σ', '0..1', 'Period', 'The start and expected end date of the authorization',
'holder', 'Σ', '0..1', 'Reference(Organization)', 'Marketing Authorization Holder',
'regulator', 'Σ', '0..1', 'Reference(Organization)', 'Medicines Regulatory Agency',
'procedure', 'Σ', '0..1', 'BackboneElement', 'The regulatory procedure for granting or amending a marketing authorization',
'identifier', 'Σ', '0..1', 'Identifier', 'Identifier for this procedure',
'type', 'Σ', '1..1', 'CodeableConcept', 'Type of procedure',
'date[x]', 'Σ', '0..1', '', 'Date of procedure',
'datePeriod', '', '', 'Period', '',
'dateDateTime', '', '', 'dateTime', '',
'application', 'Σ', '0..*', 'see procedure', 'Applcations submitted to obtain a marketing authorization',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductAuthorization', 'ΣTU', '', 'DomainResource', 'The regulatory authorization of a medicinal productElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier for the marketing authorization, as assigned by a regulator',
'subject', 'Σ', '0..1', 'Reference(MedicinalProduct | MedicinalProductPackaged)', 'The medicinal product that is being authorized',
'country', 'Σ', '0..*', 'CodeableConcept', 'The country in which the marketing authorization has been granted',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Jurisdiction within a country',
'status', 'Σ', '0..1', 'CodeableConcept', 'The status of the marketing authorization',
'statusDate', 'Σ', '0..1', 'dateTime', 'The date at which the given status has become applicable',
'restoreDate', 'Σ', '0..1', 'dateTime', 'The date when a suspended the marketing or the marketing authorization of the product is anticipated to be restored',
'validityPeriod', 'Σ', '0..1', 'Period', 'The beginning of the time period in which the marketing authorization is in the specific status shall be specified A complete date consisting of day, month and year shall be specified using the ISO 8601 date format',
'dataExclusivityPeriod', 'Σ', '0..1', 'Period', 'A period of time after authorization before generic product applicatiosn can be submitted',
'dateOfFirstAuthorization', 'Σ', '0..1', 'dateTime', 'The date when the first authorization was granted by a Medicines Regulatory Agency',
'internationalBirthDate', 'Σ', '0..1', 'dateTime', 'Date of first marketing authorization for a company's new medicinal product in any country in the World',
'legalBasis', 'Σ', '0..1', 'CodeableConcept', 'The legal framework against which this authorization is granted',
'jurisdictionalAuthorization', 'Σ', '0..*', 'BackboneElement', 'Authorization in areas within a country',
'identifier', 'Σ', '0..*', 'Identifier', 'The assigned number for the marketing authorization',
'country', 'Σ', '0..1', 'CodeableConcept', 'Country of authorization',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Jurisdiction within a country',
'legalStatusOfSupply', 'Σ', '0..1', 'CodeableConcept', 'The legal status of supply in a jurisdiction or region',
'validityPeriod', 'Σ', '0..1', 'Period', 'The start and expected end date of the authorization',
'holder', 'Σ', '0..1', 'Reference(Organization)', 'Marketing Authorization Holder',
'regulator', 'Σ', '0..1', 'Reference(Organization)', 'Medicines Regulatory Agency',
'procedure', 'Σ', '0..1', 'BackboneElement', 'The regulatory procedure for granting or amending a marketing authorization',
'identifier', 'Σ', '0..1', 'Identifier', 'Identifier for this procedure',
'type', 'Σ', '1..1', 'CodeableConcept', 'Type of procedure',
'date[x]', 'Σ', '0..1', '', 'Date of procedure',
'datePeriod', '', '', 'Period', '',
'dateDateTime', '', '', 'dateTime', '',
'application', 'Σ', '0..*', 'see procedure', 'Applcations submitted to obtain a marketing authorization',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'country', 'token', 'The country in which the marketing authorization has been granted', 'MedicinalProductAuthorization.country', '',
'holder', 'reference', 'Marketing Authorization Holder', 'MedicinalProductAuthorization.holder(Organization)', '',
'identifier', 'token', 'Business identifier for the marketing authorization, as assigned by a regulator', 'MedicinalProductAuthorization.identifier', '',
'status', 'token', 'The status of the marketing authorization', 'MedicinalProductAuthorization.status', '',
'subject', 'reference', 'The medicinal product that is being authorized', 'MedicinalProductAuthorization.subject(MedicinalProductPackaged, MedicinalProduct)', '',
)


