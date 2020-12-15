df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'FHIR Infrastructure  Work Group', 'Maturity Level: N', 'Normative (from v4.0.0)', NA, 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
NA, 'This page has been approved as part of an ANSI  standard.
   See the Infrastructure Package for further details.',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'OperationOutcome', 'ΣN', '', 'DomainResource', 'Information about the success/failure of an actionElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'issue', 'Σ', '1..*', 'BackboneElement', 'A single issue associated with the action',
'severity', 'Σ', '1..1', 'code', 'fatal | error | warning | informationIssueSeverity (Required)',
'code', 'Σ', '1..1', 'code', 'Error or warning codeIssueType (Required)',
'details', 'Σ', '0..1', 'CodeableConcept', 'Additional details about the errorOperation Outcome Codes (Example)',
'diagnostics', 'Σ', '0..1', 'string', 'Additional diagnostic information about the issue',
'location', 'ΣXD', '0..*', 'string', 'Deprecated: Path of element(s) related to issue',
'expression', 'Σ', '0..*', 'string', 'FHIRPath of element(s) related to issue',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'OperationOutcome', '',
'OperationOutcome.issue.severity', 'Change value set from http://hl7.org/fhir/ValueSet/issue-severity to http://hl7.org/fhir/ValueSet/issue-severity|4.0.1
        No longer marked as Modifier',
'OperationOutcome.issue.code', 'Change value set from http://hl7.org/fhir/ValueSet/issue-type to http://hl7.org/fhir/ValueSet/issue-type|4.0.1',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'OperationOutcome', 'ΣN', '', 'DomainResource', 'Information about the success/failure of an actionElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'issue', 'Σ', '1..*', 'BackboneElement', 'A single issue associated with the action',
'severity', 'Σ', '1..1', 'code', 'fatal | error | warning | informationIssueSeverity (Required)',
'code', 'Σ', '1..1', 'code', 'Error or warning codeIssueType (Required)',
'details', 'Σ', '0..1', 'CodeableConcept', 'Additional details about the errorOperation Outcome Codes (Example)',
'diagnostics', 'Σ', '0..1', 'string', 'Additional diagnostic information about the issue',
'location', 'ΣXD', '0..*', 'string', 'Deprecated: Path of element(s) related to issue',
'expression', 'Σ', '0..*', 'string', 'FHIRPath of element(s) related to issue',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'OperationOutcome', '',
'OperationOutcome.issue.severity', 'Change value set from http://hl7.org/fhir/ValueSet/issue-severity to http://hl7.org/fhir/ValueSet/issue-severity|4.0.1
        No longer marked as Modifier',
'OperationOutcome.issue.code', 'Change value set from http://hl7.org/fhir/ValueSet/issue-type to http://hl7.org/fhir/ValueSet/issue-type|4.0.1',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'OperationOutcome.issue.severity', 'How the issue affects the success of the action.', 'Required', 'IssueSeverity',
'OperationOutcome.issue.code', 'A code that describes the type of issue.', 'Required', 'IssueType',
'OperationOutcome.issue.details', 'A code that provides details as the exact issue.', 'Example', 'OperationOutcomeCodes',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,
'Expresson', 'Description',
'http.code', 'A reference to the search parameter "code"',
'http."name:exact"', 'A reference to the search parameter "name" with the modifier ":exact"',
'http.Authorization', 'A reference to the Authorization header - perhaps to indicate that it is missing, and some form of authentication is required.',
)


