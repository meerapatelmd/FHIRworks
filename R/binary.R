df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'FHIR Infrastructure  Work Group', 'Maturity Level: N', 'Normative (from v4.0.0)', 'Security Category: Not Classified', 'Compartments: Not linked to any defined compartments',
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
'Binary', 'N', '', 'Resource', 'Pure binary content defined by a format other than FHIRElements defined in Ancestors: id, meta, implicitRules, language',
'contentType', 'Σ', '1..1', 'code', 'MimeType of the binary contentMimeType (Required)',
'securityContext', 'Σ', '0..1', 'Reference(Any)', 'Identifies another resource to use as proxy when enforcing access control',
'data', '', '0..1', 'base64Binary', 'The actual content',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'Binary', '',
'Binary.contentType', 'Change value set from http://hl7.org/fhir/ValueSet/mimetypes to http://hl7.org/fhir/ValueSet/mimetypes|4.0.1',
'Binary.data', 'Renamed from content to data
        Min Cardinality changed from 1 to 0',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Binary', 'N', '', 'Resource', 'Pure binary content defined by a format other than FHIRElements defined in Ancestors: id, meta, implicitRules, language',
'contentType', 'Σ', '1..1', 'code', 'MimeType of the binary contentMimeType (Required)',
'securityContext', 'Σ', '0..1', 'Reference(Any)', 'Identifies another resource to use as proxy when enforcing access control',
'data', '', '0..1', 'base64Binary', 'The actual content',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'Binary', '',
'Binary.contentType', 'Change value set from http://hl7.org/fhir/ValueSet/mimetypes to http://hl7.org/fhir/ValueSet/mimetypes|4.0.1',
'Binary.data', 'Renamed from content to data
        Min Cardinality changed from 1 to 0',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Binary.contentType', 'The mime type of an attachment. Any valid mime type is allowed.', 'Required', 'Mime Types',
)


