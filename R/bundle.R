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
'Bundle', 'ΣIN', '', 'Resource', 'Contains a collection of resources+ Rule: total only when a search or history+ Rule: entry.search only when a search+ Rule: entry.request mandatory for batch/transaction/history, otherwise prohibited+ Rule: entry.response mandatory for batch-response/transaction-response/history, otherwise prohibited+ Rule: FullUrl must be unique in a bundle, or else entries with the same fullUrl must have different meta.versionId (except in history bundles)+ Rule: A document must have an identifier with a system and a value+ Rule: A document must have a date+ Rule: A document must have a Composition as the first resource+ Rule: A message must have a MessageHeader as the first resourceElements defined in Ancestors: id, meta, implicitRules, language',
'identifier', 'Σ', '0..1', 'Identifier', 'Persistent identifier for the bundle',
'type', 'Σ', '1..1', 'code', 'document | message | transaction | transaction-response | batch | batch-response | history | searchset | collectionBundleType (Required)',
'timestamp', 'Σ', '0..1', 'instant', 'When the bundle was assembled',
'total', 'ΣI', '0..1', 'unsignedInt', 'If search, the total number of matches',
'link', 'Σ', '0..*', 'BackboneElement', 'Links related to this Bundle',
'relation', 'Σ', '1..1', 'string', 'See http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1',
'url', 'Σ', '1..1', 'uri', 'Reference details for the link',
'entry', 'ΣI', '0..*', 'BackboneElement', 'Entry in the bundle - will have a resource or information+ Rule: must be a resource unless there's a request or response+ Rule: fullUrl cannot be a version specific referenceThis repeating element order: For bundles of type 'document' and 'message', the first resource is special (must be Composition or MessageHeader respectively). For all bundles, the meaning of the order of entries depends on the bundle type',
'link', 'Σ', '0..*', 'see link', 'Links related to this entry',
'fullUrl', 'Σ', '0..1', 'uri', 'URI for resource (Absolute URL server address or URI for UUID/OID)',
'resource', 'Σ', '0..1', 'Resource', 'A resource in the bundle',
'search', 'ΣI', '0..1', 'BackboneElement', 'Search related information',
'mode', 'Σ', '0..1', 'code', 'match | include | outcome - why this is in the result setSearchEntryMode (Required)',
'score', 'Σ', '0..1', 'decimal', 'Search ranking (between 0 and 1)',
'request', 'ΣI', '0..1', 'BackboneElement', 'Additional execution information (transaction/batch/history)',
'method', 'Σ', '1..1', 'code', 'GET | HEAD | POST | PUT | DELETE | PATCHHTTPVerb (Required)',
'url', 'Σ', '1..1', 'uri', 'URL for HTTP equivalent of this entry',
'ifNoneMatch', 'Σ', '0..1', 'string', 'For managing cache currency',
'ifModifiedSince', 'Σ', '0..1', 'instant', 'For managing cache currency',
'ifMatch', 'Σ', '0..1', 'string', 'For managing update contention',
'ifNoneExist', 'Σ', '0..1', 'string', 'For conditional creates',
'response', 'ΣI', '0..1', 'BackboneElement', 'Results of execution (transaction/batch/history)',
'status', 'Σ', '1..1', 'string', 'Status response code (text optional)',
'location', 'Σ', '0..1', 'uri', 'The location (if the operation returns a location)',
'etag', 'Σ', '0..1', 'string', 'The Etag for the resource (if relevant)',
'lastModified', 'Σ', '0..1', 'instant', 'Server's date time modified',
'outcome', 'Σ', '0..1', 'Resource', 'OperationOutcome with hints and warnings (for batch/transaction)',
'signature', 'ΣTU', '0..1', 'Signature', 'Digital Signature',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'Bundle', '',
'Bundle.type', 'Change value set from http://hl7.org/fhir/ValueSet/bundle-type to http://hl7.org/fhir/ValueSet/bundle-type|4.0.1',
'Bundle.timestamp', 'Added Element',
'Bundle.entry.search.mode', 'Change value set from http://hl7.org/fhir/ValueSet/search-entry-mode to http://hl7.org/fhir/ValueSet/search-entry-mode|4.0.1',
'Bundle.entry.request.method', 'Change value set from http://hl7.org/fhir/ValueSet/http-verb to http://hl7.org/fhir/ValueSet/http-verb|4.0.1',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Bundle', 'ΣIN', '', 'Resource', 'Contains a collection of resources+ Rule: total only when a search or history+ Rule: entry.search only when a search+ Rule: entry.request mandatory for batch/transaction/history, otherwise prohibited+ Rule: entry.response mandatory for batch-response/transaction-response/history, otherwise prohibited+ Rule: FullUrl must be unique in a bundle, or else entries with the same fullUrl must have different meta.versionId (except in history bundles)+ Rule: A document must have an identifier with a system and a value+ Rule: A document must have a date+ Rule: A document must have a Composition as the first resource+ Rule: A message must have a MessageHeader as the first resourceElements defined in Ancestors: id, meta, implicitRules, language',
'identifier', 'Σ', '0..1', 'Identifier', 'Persistent identifier for the bundle',
'type', 'Σ', '1..1', 'code', 'document | message | transaction | transaction-response | batch | batch-response | history | searchset | collectionBundleType (Required)',
'timestamp', 'Σ', '0..1', 'instant', 'When the bundle was assembled',
'total', 'ΣI', '0..1', 'unsignedInt', 'If search, the total number of matches',
'link', 'Σ', '0..*', 'BackboneElement', 'Links related to this Bundle',
'relation', 'Σ', '1..1', 'string', 'See http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1',
'url', 'Σ', '1..1', 'uri', 'Reference details for the link',
'entry', 'ΣI', '0..*', 'BackboneElement', 'Entry in the bundle - will have a resource or information+ Rule: must be a resource unless there's a request or response+ Rule: fullUrl cannot be a version specific referenceThis repeating element order: For bundles of type 'document' and 'message', the first resource is special (must be Composition or MessageHeader respectively). For all bundles, the meaning of the order of entries depends on the bundle type',
'link', 'Σ', '0..*', 'see link', 'Links related to this entry',
'fullUrl', 'Σ', '0..1', 'uri', 'URI for resource (Absolute URL server address or URI for UUID/OID)',
'resource', 'Σ', '0..1', 'Resource', 'A resource in the bundle',
'search', 'ΣI', '0..1', 'BackboneElement', 'Search related information',
'mode', 'Σ', '0..1', 'code', 'match | include | outcome - why this is in the result setSearchEntryMode (Required)',
'score', 'Σ', '0..1', 'decimal', 'Search ranking (between 0 and 1)',
'request', 'ΣI', '0..1', 'BackboneElement', 'Additional execution information (transaction/batch/history)',
'method', 'Σ', '1..1', 'code', 'GET | HEAD | POST | PUT | DELETE | PATCHHTTPVerb (Required)',
'url', 'Σ', '1..1', 'uri', 'URL for HTTP equivalent of this entry',
'ifNoneMatch', 'Σ', '0..1', 'string', 'For managing cache currency',
'ifModifiedSince', 'Σ', '0..1', 'instant', 'For managing cache currency',
'ifMatch', 'Σ', '0..1', 'string', 'For managing update contention',
'ifNoneExist', 'Σ', '0..1', 'string', 'For conditional creates',
'response', 'ΣI', '0..1', 'BackboneElement', 'Results of execution (transaction/batch/history)',
'status', 'Σ', '1..1', 'string', 'Status response code (text optional)',
'location', 'Σ', '0..1', 'uri', 'The location (if the operation returns a location)',
'etag', 'Σ', '0..1', 'string', 'The Etag for the resource (if relevant)',
'lastModified', 'Σ', '0..1', 'instant', 'Server's date time modified',
'outcome', 'Σ', '0..1', 'Resource', 'OperationOutcome with hints and warnings (for batch/transaction)',
'signature', 'ΣTU', '0..1', 'Signature', 'Digital Signature',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'Bundle', '',
'Bundle.type', 'Change value set from http://hl7.org/fhir/ValueSet/bundle-type to http://hl7.org/fhir/ValueSet/bundle-type|4.0.1',
'Bundle.timestamp', 'Added Element',
'Bundle.entry.search.mode', 'Change value set from http://hl7.org/fhir/ValueSet/search-entry-mode to http://hl7.org/fhir/ValueSet/search-entry-mode|4.0.1',
'Bundle.entry.request.method', 'Change value set from http://hl7.org/fhir/ValueSet/http-verb to http://hl7.org/fhir/ValueSet/http-verb|4.0.1',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Bundle.type', 'Indicates the purpose of a bundle - how it is intended to be used.', 'Required', 'BundleType',
'Bundle.entry.search.mode', 'Why an entry is in the result set - whether it's included as a match or because of an _include requirement, or to convey information or warning information about the search process.', 'Required', 'SearchEntryMode',
'Bundle.entry.request.method', 'HTTP verbs (in the HTTP command line). See [HTTP rfc](https://tools.ietf.org/html/rfc7231) for details.', 'Required', 'HTTPVerb',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'bdl-1', 'Rule', '(base)', 'total only when a search or history', 'total.empty() or (type = 'searchset') or (type = 'history')',
'bdl-2', 'Rule', '(base)', 'entry.search only when a search', 'entry.search.empty() or (type = 'searchset')',
'bdl-3', 'Rule', '(base)', 'entry.request mandatory for batch/transaction/history, otherwise prohibited', 'entry.all(request.exists() = (%resource.type = 'batch' or %resource.type = 'transaction' or %resource.type = 'history'))',
'bdl-4', 'Rule', '(base)', 'entry.response mandatory for batch-response/transaction-response/history, otherwise prohibited', 'entry.all(response.exists() = (%resource.type = 'batch-response' or %resource.type = 'transaction-response' or %resource.type = 'history'))',
'bdl-5', 'Rule', 'Bundle.entry', 'must be a resource unless there's a request or response', 'resource.exists() or request.exists() or response.exists()',
'bdl-7', 'Rule', '(base)', 'FullUrl must be unique in a bundle, or else entries with the same fullUrl must have different meta.versionId (except in history bundles)', '(type = 'history') or entry.where(fullUrl.exists()).select(fullUrl&resource.meta.versionId).isDistinct()',
'bdl-8', 'Rule', 'Bundle.entry', 'fullUrl cannot be a version specific reference', 'fullUrl.contains('/_history/').not()',
'bdl-9', 'Rule', '(base)', 'A document must have an identifier with a system and a value', 'type = 'document' implies (identifier.system.exists() and identifier.value.exists())',
'bdl-10', 'Rule', '(base)', 'A document must have a date', 'type = 'document' implies (timestamp.hasValue())',
'bdl-11', 'Rule', '(base)', 'A document must have a Composition as the first resource', 'type = 'document' implies entry.first().resource.is(Composition)',
'bdl-12', 'Rule', '(base)', 'A message must have a MessageHeader as the first resource', 'type = 'message' implies entry.first().resource.is(MessageHeader)',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'composition TU', 'reference', 'The first resource in the bundle, if the bundle type is "document" - this is a composition, and this parameter provides access to search its contents', 'Bundle.entry[0].resource(Composition)', '',
'identifier TU', 'token', 'Persistent identifier for the bundle', 'Bundle.identifier', '',
'message TU', 'reference', 'The first resource in the bundle, if the bundle type is "message" - this is a message header, and this parameter provides access to search its contents', 'Bundle.entry[0].resource(MessageHeader)', '',
'timestamp TU', 'date', 'When the bundle was assembled', 'Bundle.timestamp', '',
'type TU', 'token', 'document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection', 'Bundle.type', '',
)


