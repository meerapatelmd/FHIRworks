df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Vocabulary  Work Group', 'Maturity Level: N', 'Normative (from v4.0.0)', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
NA, 'This page has been approved as part of an ANSI  standard.
   See the Conformance Package for further details.',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ValueSet', 'IN', '', 'DomainResource', 'A set of codes drawn from one or more code systems+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this value set, represented as a URI (globally unique)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the value set (business identifier)',
'version', 'Σ', '0..1', 'string', 'Business version of the value set',
'name', 'ΣI', '0..1', 'string', 'Name for this value set (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this value set (human friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the value set',
'useContext', 'ΣTU', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for value set (if applicable)Jurisdiction (Extensible)',
'immutable', 'Σ', '0..1', 'boolean', 'Indicates whether or not any change to the content logical definition may occur',
'purpose', '', '0..1', 'markdown', 'Why this value set is defined',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'compose', '', '0..1', 'BackboneElement', 'Content logical definition of the value set (CLD)',
'lockedDate', 'Σ', '0..1', 'date', 'Fixed date for references with no specified version (transitive)',
'inactive', 'Σ', '0..1', 'boolean', 'Whether inactive codes are in the value set',
'include', 'ΣI', '1..*', 'BackboneElement', 'Include one or more codes from a code system or other value set(s)+ Rule: A value set include/exclude SHALL have a value set or a system+ Rule: A value set with concepts or filters SHALL include a system+ Rule: Cannot have both concept and filter',
'system', 'ΣI', '0..1', 'uri', 'The system the codes come from',
'version', 'Σ', '0..1', 'string', 'Specific version of the code system referred to',
'concept', 'I', '0..*', 'BackboneElement', 'A concept defined in the system',
'code', '', '1..1', 'code', 'Code or expression from system',
'display', '', '0..1', 'string', 'Text to display for this code for this value set in this valueset',
'designation', '', '0..*', 'BackboneElement', 'Additional representations for this concept',
'language', '', '0..1', 'code', 'Human language of the designationCommon Languages (Preferred but limited to AllLanguages)',
'use', '', '0..1', 'Coding', 'Types of uses of designationsDesignation Use (Extensible)',
'value', '', '1..1', 'string', 'The text value for this designation',
'filter', 'ΣI', '0..*', 'BackboneElement', 'Select codes/concepts by their properties (including relationships)',
'property', 'Σ', '1..1', 'code', 'A property/filter defined by the code system',
'op', 'Σ', '1..1', 'code', '= | is-a | descendent-of | is-not-a | regex | in | not-in | generalizes | existsFilterOperator (Required)',
'value', 'Σ', '1..1', 'string', 'Code from the system, or regex criteria, or boolean value for exists',
'valueSet', 'ΣI', '0..*', 'canonical(ValueSet)', 'Select the contents included in this value set',
'exclude', 'I', '0..*', 'see include', 'Explicitly exclude codes from a code system or other value sets',
'expansion', '', '0..1', 'BackboneElement', 'Used when the value set is "expanded"',
'identifier', '', '0..1', 'uri', 'Identifies the value set expansion (business identifier)',
'timestamp', '', '1..1', 'dateTime', 'Time ValueSet expansion happened',
'total', '', '0..1', 'integer', 'Total number of codes in the expansion',
'offset', '', '0..1', 'integer', 'Offset at which this resource starts',
'parameter', '', '0..*', 'BackboneElement', 'Parameter that controlled the expansion process',
'name', '', '1..1', 'string', 'Name as assigned by the client or server',
'value[x]', '', '0..1', '', 'Value of the named parameter',
'valueString', '', '', 'string', '',
'valueBoolean', '', '', 'boolean', '',
'valueInteger', '', '', 'integer', '',
'valueDecimal', '', '', 'decimal', '',
'valueUri', '', '', 'uri', '',
'valueCode', '', '', 'code', '',
'valueDateTime', '', '', 'dateTime', '',
'contains', 'I', '0..*', 'BackboneElement', 'Codes in the value set+ Rule: SHALL have a code or a display+ Rule: Must have a code if not abstract+ Rule: Must have a system if a code is present',
'system', '', '0..1', 'uri', 'System value for the code',
'abstract', '', '0..1', 'boolean', 'If user cannot select this entry',
'inactive', '', '0..1', 'boolean', 'If concept is inactive in the code system',
'version', '', '0..1', 'string', 'Version in which this code/display is defined',
'code', 'I', '0..1', 'code', 'Code - if blank, this is not a selectable code',
'display', 'I', '0..1', 'string', 'User display for the concept',
'designation', '', '0..*', 'see designation', 'Additional representations for this item',
'contains', '', '0..*', 'see contains', 'Codes contained under this entry',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'ValueSet', '',
'ValueSet.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'ValueSet.experimental', 'No longer marked as Modifier',
'ValueSet.compose.include.concept.designation.language', 'Change binding strength from extensible to preferred',
'ValueSet.compose.include.filter', 'No longer marked as Modifier',
'ValueSet.compose.include.filter.op', 'Change value set from http://hl7.org/fhir/ValueSet/filter-operator to http://hl7.org/fhir/ValueSet/filter-operator|4.0.1',
'ValueSet.compose.include.filter.value', 'Type changed from code to string',
'ValueSet.compose.include.valueSet', 'Type changed from uri to canonical(ValueSet)',
'ValueSet.expansion.identifier', 'Min Cardinality changed from 1 to 0',
'ValueSet.expansion.parameter.value[x]', 'Add Type dateTime',
'ValueSet.expansion.contains.abstract', 'Default Value "false" removed',
'ValueSet.expansion.contains.inactive', 'Default Value "false" removed',
'ValueSet.extensible', 'deleted',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ValueSet', 'IN', '', 'DomainResource', 'A set of codes drawn from one or more code systems+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this value set, represented as a URI (globally unique)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the value set (business identifier)',
'version', 'Σ', '0..1', 'string', 'Business version of the value set',
'name', 'ΣI', '0..1', 'string', 'Name for this value set (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this value set (human friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the value set',
'useContext', 'ΣTU', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for value set (if applicable)Jurisdiction (Extensible)',
'immutable', 'Σ', '0..1', 'boolean', 'Indicates whether or not any change to the content logical definition may occur',
'purpose', '', '0..1', 'markdown', 'Why this value set is defined',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'compose', '', '0..1', 'BackboneElement', 'Content logical definition of the value set (CLD)',
'lockedDate', 'Σ', '0..1', 'date', 'Fixed date for references with no specified version (transitive)',
'inactive', 'Σ', '0..1', 'boolean', 'Whether inactive codes are in the value set',
'include', 'ΣI', '1..*', 'BackboneElement', 'Include one or more codes from a code system or other value set(s)+ Rule: A value set include/exclude SHALL have a value set or a system+ Rule: A value set with concepts or filters SHALL include a system+ Rule: Cannot have both concept and filter',
'system', 'ΣI', '0..1', 'uri', 'The system the codes come from',
'version', 'Σ', '0..1', 'string', 'Specific version of the code system referred to',
'concept', 'I', '0..*', 'BackboneElement', 'A concept defined in the system',
'code', '', '1..1', 'code', 'Code or expression from system',
'display', '', '0..1', 'string', 'Text to display for this code for this value set in this valueset',
'designation', '', '0..*', 'BackboneElement', 'Additional representations for this concept',
'language', '', '0..1', 'code', 'Human language of the designationCommon Languages (Preferred but limited to AllLanguages)',
'use', '', '0..1', 'Coding', 'Types of uses of designationsDesignation Use (Extensible)',
'value', '', '1..1', 'string', 'The text value for this designation',
'filter', 'ΣI', '0..*', 'BackboneElement', 'Select codes/concepts by their properties (including relationships)',
'property', 'Σ', '1..1', 'code', 'A property/filter defined by the code system',
'op', 'Σ', '1..1', 'code', '= | is-a | descendent-of | is-not-a | regex | in | not-in | generalizes | existsFilterOperator (Required)',
'value', 'Σ', '1..1', 'string', 'Code from the system, or regex criteria, or boolean value for exists',
'valueSet', 'ΣI', '0..*', 'canonical(ValueSet)', 'Select the contents included in this value set',
'exclude', 'I', '0..*', 'see include', 'Explicitly exclude codes from a code system or other value sets',
'expansion', '', '0..1', 'BackboneElement', 'Used when the value set is "expanded"',
'identifier', '', '0..1', 'uri', 'Identifies the value set expansion (business identifier)',
'timestamp', '', '1..1', 'dateTime', 'Time ValueSet expansion happened',
'total', '', '0..1', 'integer', 'Total number of codes in the expansion',
'offset', '', '0..1', 'integer', 'Offset at which this resource starts',
'parameter', '', '0..*', 'BackboneElement', 'Parameter that controlled the expansion process',
'name', '', '1..1', 'string', 'Name as assigned by the client or server',
'value[x]', '', '0..1', '', 'Value of the named parameter',
'valueString', '', '', 'string', '',
'valueBoolean', '', '', 'boolean', '',
'valueInteger', '', '', 'integer', '',
'valueDecimal', '', '', 'decimal', '',
'valueUri', '', '', 'uri', '',
'valueCode', '', '', 'code', '',
'valueDateTime', '', '', 'dateTime', '',
'contains', 'I', '0..*', 'BackboneElement', 'Codes in the value set+ Rule: SHALL have a code or a display+ Rule: Must have a code if not abstract+ Rule: Must have a system if a code is present',
'system', '', '0..1', 'uri', 'System value for the code',
'abstract', '', '0..1', 'boolean', 'If user cannot select this entry',
'inactive', '', '0..1', 'boolean', 'If concept is inactive in the code system',
'version', '', '0..1', 'string', 'Version in which this code/display is defined',
'code', 'I', '0..1', 'code', 'Code - if blank, this is not a selectable code',
'display', 'I', '0..1', 'string', 'User display for the concept',
'designation', '', '0..*', 'see designation', 'Additional representations for this item',
'contains', '', '0..*', 'see contains', 'Codes contained under this entry',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'ValueSet', '',
'ValueSet.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'ValueSet.experimental', 'No longer marked as Modifier',
'ValueSet.compose.include.concept.designation.language', 'Change binding strength from extensible to preferred',
'ValueSet.compose.include.filter', 'No longer marked as Modifier',
'ValueSet.compose.include.filter.op', 'Change value set from http://hl7.org/fhir/ValueSet/filter-operator to http://hl7.org/fhir/ValueSet/filter-operator|4.0.1',
'ValueSet.compose.include.filter.value', 'Type changed from code to string',
'ValueSet.compose.include.valueSet', 'Type changed from uri to canonical(ValueSet)',
'ValueSet.expansion.identifier', 'Min Cardinality changed from 1 to 0',
'ValueSet.expansion.parameter.value[x]', 'Add Type dateTime',
'ValueSet.expansion.contains.abstract', 'Default Value "false" removed',
'ValueSet.expansion.contains.inactive', 'Default Value "false" removed',
'ValueSet.extensible', 'deleted',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'ValueSet.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'ValueSet.jurisdiction', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'ValueSet.compose.include.concept.designation.language', 'A human language.', 'Preferred, but limited to AllLanguages', 'CommonLanguages',
'ValueSet.compose.include.concept.designation.use', 'Details of how a designation would be used.', 'Extensible', 'DesignationUse',
'ValueSet.compose.include.filter.op', 'The kind of operation to perform as a part of a property based filter.', 'Required', 'FilterOperator',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'vsd-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches('[A-Z]([A-Za-z0-9_]){0,254}')',
'vsd-1', 'Rule', 'ValueSet.compose.include', 'A value set include/exclude SHALL have a value set or a system', 'valueSet.exists() or system.exists()',
'vsd-2', 'Rule', 'ValueSet.compose.include', 'A value set with concepts or filters SHALL include a system', '(concept.exists() or filter.exists()) implies system.exists()',
'vsd-3', 'Rule', 'ValueSet.compose.include', 'Cannot have both concept and filter', 'concept.empty() or filter.empty()',
'vsd-6', 'Rule', 'ValueSet.expansion.contains', 'SHALL have a code or a display', 'code.exists() or display.exists()',
'vsd-9', 'Rule', 'ValueSet.expansion.contains', 'Must have a code if not abstract', 'code.exists() or abstract = true',
'vsd-10', 'Rule', 'ValueSet.expansion.contains', 'Must have a system if a code is present', 'code.empty() or system.exists()',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,
'filter', 'A text filter that is applied to restrict the codes that are returned (this is useful in a UI context). The interpretation of this is delegated to the server in order to allow to determine the most optimal search approach for the context. The server can document the way this parameter works in TerminologyCapabilities..expansion.textFilter. Typical usage of this parameter includes functionality like:
using left matching e.g. "acut ast"
allowing for wild cards such as %, &, ?
searching on definition as well as display(s)
allowing for search conditions (and / or / exclusions)
Text Search engines such as Lucene or Solr, long with their considerable functionality, might also be used. The optional text search might also be code system specific, and servers might have different implementations for different code systems',
'date', 'The date for which the expansion should be generated.  if a date is provided, it means that the server should use the value set / code system definitions as they were on the given date, or return an error if this is not possible.  Normally, the date is the current conditions (which is the default value) but under some circumstances, systems need to generate an expansion as it would have been in the past. A typical example of this would be where code selection is constrained to the set of codes that were available when the patient was treated, not when the record is being edited. Note that which date is appropriate is a matter for implementation policy.',
'offset', 'Paging support - where to start if a subset is desired (default = 0). Offset is number of records (not number of pages)',
'count', 'Paging support - how many codes should be provided in a partial page view. Paging only applies to flat expansions - servers ignore paging if the expansion is not flat.  If count = 0, the client is asking how large the expansion is. Servers SHOULD honor this request for hierarchical expansions as well, and simply return the overall count',
'includeDesignations', 'Controls whether concept designations are to be included or excluded in value set expansions',
'designation', 'A token that specifies a system+code that is either a use or a language. Designations that match by language or use are included in the expansion. If no designation is specified, it is at the server discretion which designations to return',
'includeDefinition', 'Controls whether the value set definition is included or excluded in value set expansions',
'activeOnly', 'Controls whether inactive concepts are included or excluded in value set expansions. Note that if the value set explicitly specifies that inactive codes are included, this parameter can still remove them from a specific expansion, but this parameter cannot include them if the value set excludes them',
'excludeNested', 'Controls whether or not the value set expansion nests codes or not (i.e. ValueSet.expansion.contains.contains)',
'excludeNotForUI', 'Controls whether or not the value set expansion is assembled for a user interface use or not. Value sets intended for User Interface might include 'abstract' codes or have nested contains with items with no code or abstract = true, with the sole purpose of helping a user navigate through the list efficiently, where as a value set not generated for UI use might be flat, and only contain the selectable codes in the value set. The exact implications of 'for UI' depend on the code system, and what properties it exposes for a terminology server to use. In the FHIR Specification itself, the value set expansions are generated with excludeNotForUI = false, and the expansions used when generated schema / code etc, or performing validation, are all excludeNotForUI = true.',
'excludePostCoordinated', 'Controls whether or not the value set expansion includes post coordinated codes',
'displayLanguage', 'Specifies the language to be used for description in the expansions i.e. the language to be used for ValueSet.expansion.contains.display',
'exclude-system', 'Code system, or a particular version of a code system to be excluded from the value set expansion. The format is the same as a canonical URL: [system]|[version] - e.g. http://loinc.org|2.56',
'system-version', 'Specifies a version to use for a system, if the value set does not specify which one to use. The format is the same as a canonical URL: [system]|[version] - e.g. http://loinc.org|2.56',
'check-system-version', 'Edge Case: Specifies a version to use for a system. If a value set specifies a different version, an error is returned instead of the expansion. The format is the same as a canonical URL: [system]|[version] - e.g. http://loinc.org|2.56',
'force-system-version', 'Edge Case: Specifies a version to use for a system. This parameter overrides any specified version in the value set (and any it depends on). The format is the same as a canonical URL: [system]|[version] - e.g. http://loinc.org|2.56. Note that this has obvious safety issues, in that it may result in a value set expansion giving a different list of codes that is both wrong and unsafe, and implementers should only use this capability reluctantly. It primarily exists to deal with situations where specifications have fallen into decay as time passes. If the value is override, the version used SHALL explicitly be represented in the expansion parameters',
)


df10 <- 
tibble::tribble(
~`X1`,~`X2`,
'[canonical]#CodeSystem.content', '[content] : The content value for the code system for the canonical URL. 
   Applications generating expansions SHALL use this parameter if the CodeSystem.content value is "fragment" or "',
'[canonical1]#supplement', '[canonical2] : Indicates that the specified supplement (canonical2) contributed to the content
  of the expansion for the code system canonical1 (by influencing selection, or providing designations). Applications generating expansions SHALL use this parameter to record 
	that a supplement was used during the expansion process',
)


df11 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'code TU', 'token', 'This special parameter searches for codes in the value set. See additional notes on the ValueSet resource', 'ValueSet.expansion.contains.code | ValueSet.compose.include.concept.code', '',
'context TU', 'token', 'A use context assigned to the value set', '(ValueSet.useContext.value as CodeableConcept)', '',
'context-quantity TU', 'quantity', 'A quantity- or range-valued use context assigned to the value set', '(ValueSet.useContext.value as Quantity) | (ValueSet.useContext.value as Range)', '',
'context-type TU', 'token', 'A type of use context assigned to the value set', 'ValueSet.useContext.code', '',
'context-type-quantity TU', 'composite', 'A use context type and quantity- or range-based value assigned to the value set', 'On ValueSet.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value TU', 'composite', 'A use context type and value assigned to the value set', 'On ValueSet.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date TU', 'date', 'The value set publication date', 'ValueSet.date', '',
'description TU', 'string', 'The description of the value set', 'ValueSet.description', '',
'expansion TU', 'uri', 'Identifies the value set expansion (business identifier)', 'ValueSet.expansion.identifier', '',
'identifier TU', 'token', 'External identifier for the value set', 'ValueSet.identifier', '',
'jurisdiction TU', 'token', 'Intended jurisdiction for the value set', 'ValueSet.jurisdiction', '',
'name TU', 'string', 'Computationally friendly name of the value set', 'ValueSet.name', '',
'publisher TU', 'string', 'Name of the publisher of the value set', 'ValueSet.publisher', '',
'reference TU', 'uri', 'A code system included or excluded in the value set or an imported value set', 'ValueSet.compose.include.system', '',
'status TU', 'token', 'The current status of the value set', 'ValueSet.status', '',
'title TU', 'string', 'The human-friendly name of the value set', 'ValueSet.title', '',
'url TU', 'uri', 'The uri that identifies the value set', 'ValueSet.url', '',
'version TU', 'token', 'The business version of the value set', 'ValueSet.version', '',
)


