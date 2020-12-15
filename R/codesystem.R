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
'CodeSystem', 'IN', '', 'DomainResource', 'Declares the existence of and describes a code system or code system supplement+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generation+ Rule: Within a code system definition, all the codes SHALL be uniqueElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this code system, represented as a URI (globally unique) (Coding.system)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the code system (business identifier)',
'version', 'Σ', '0..1', 'string', 'Business version of the code system (Coding.version)',
'name', 'ΣI', '0..1', 'string', 'Name for this code system (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this code system (human friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the code system',
'useContext', 'ΣTU', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for code system (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this code system is defined',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'caseSensitive', 'Σ', '0..1', 'boolean', 'If code comparison is case sensitive',
'valueSet', 'Σ', '0..1', 'canonical(ValueSet)', 'Canonical reference to the value set with entire code system',
'hierarchyMeaning', 'Σ', '0..1', 'code', 'grouped-by | is-a | part-of | classified-withCodeSystemHierarchyMeaning (Required)',
'compositional', 'Σ', '0..1', 'boolean', 'If code system defines a compositional grammar',
'versionNeeded', 'Σ', '0..1', 'boolean', 'If definitions are not stable',
'content', 'Σ', '1..1', 'code', 'not-present | example | fragment | complete | supplementCodeSystemContentMode (Required)',
'supplements', 'Σ', '0..1', 'canonical(CodeSystem)', 'Canonical URL of Code System this adds designations and properties to',
'count', 'Σ', '0..1', 'unsignedInt', 'Total concepts in the code system',
'filter', 'Σ', '0..*', 'BackboneElement', 'Filter that can be used in a value set',
'code', 'Σ', '1..1', 'code', 'Code that identifies the filter',
'description', 'Σ', '0..1', 'string', 'How or why the filter is used',
'operator', 'Σ', '1..*', 'code', '= | is-a | descendent-of | is-not-a | regex | in | not-in | generalizes | existsFilterOperator (Required)',
'value', 'Σ', '1..1', 'string', 'What to use for the value',
'property', 'Σ', '0..*', 'BackboneElement', 'Additional information supplied about each concept',
'code', 'Σ', '1..1', 'code', 'Identifies the property on the concepts, and when referred to in operations',
'uri', 'Σ', '0..1', 'uri', 'Formal identifier for the property',
'description', 'Σ', '0..1', 'string', 'Why the property is defined, and/or what it conveys',
'type', 'Σ', '1..1', 'code', 'code | Coding | string | integer | boolean | dateTime | decimalPropertyType (Required)',
'concept', '', '0..*', 'BackboneElement', 'Concepts in the code system',
'code', '', '1..1', 'code', 'Code that identifies concept',
'display', '', '0..1', 'string', 'Text to display to the user',
'definition', '', '0..1', 'string', 'Formal definition',
'designation', '', '0..*', 'BackboneElement', 'Additional representations for the concept',
'language', '', '0..1', 'code', 'Human language of the designationCommon Languages (Preferred but limited to AllLanguages)',
'use', '', '0..1', 'Coding', 'Details how this designation would be usedDesignation Use (Extensible)',
'value', '', '1..1', 'string', 'The text value for this designation',
'property', '', '0..*', 'BackboneElement', 'Property value for the concept',
'code', '', '1..1', 'code', 'Reference to CodeSystem.property.code',
'value[x]', '', '1..1', '', 'Value of the property for this concept',
'valueCode', '', '', 'code', '',
'valueCoding', '', '', 'Coding', '',
'valueString', '', '', 'string', '',
'valueInteger', '', '', 'integer', '',
'valueBoolean', '', '', 'boolean', '',
'valueDateTime', '', '', 'dateTime', '',
'valueDecimal', '', '', 'decimal', '',
'concept', '', '0..*', 'see concept', 'Child Concepts (is-a/contains/categorizes)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <-
tibble::tribble(
~`X1`,~`X2`,
'CodeSystem', '',
'CodeSystem.identifier', 'Max Cardinality changed from 1 to *',
'CodeSystem.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'CodeSystem.experimental', 'No longer marked as Modifier',
'CodeSystem.valueSet', 'Type changed from uri to canonical(ValueSet)',
'CodeSystem.hierarchyMeaning', 'Change value set from http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning to http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning|4.0.1',
'CodeSystem.content', 'Change value set from http://hl7.org/fhir/ValueSet/codesystem-content-mode to http://hl7.org/fhir/ValueSet/codesystem-content-mode|4.0.1',
'CodeSystem.supplements', 'Added Element',
'CodeSystem.filter.operator', 'Change value set from http://hl7.org/fhir/ValueSet/filter-operator to http://hl7.org/fhir/ValueSet/filter-operator|4.0.1',
'CodeSystem.property.type', 'Change value set from http://hl7.org/fhir/ValueSet/concept-property-type to http://hl7.org/fhir/ValueSet/concept-property-type|4.0.1',
'CodeSystem.concept.designation.language', 'Change binding strength from extensible to preferred',
'CodeSystem.concept.property.value[x]', 'Add Type decimal',
)


df5 <-
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CodeSystem', 'IN', '', 'DomainResource', 'Declares the existence of and describes a code system or code system supplement+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generation+ Rule: Within a code system definition, all the codes SHALL be uniqueElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this code system, represented as a URI (globally unique) (Coding.system)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the code system (business identifier)',
'version', 'Σ', '0..1', 'string', 'Business version of the code system (Coding.version)',
'name', 'ΣI', '0..1', 'string', 'Name for this code system (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this code system (human friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the code system',
'useContext', 'ΣTU', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for code system (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this code system is defined',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'caseSensitive', 'Σ', '0..1', 'boolean', 'If code comparison is case sensitive',
'valueSet', 'Σ', '0..1', 'canonical(ValueSet)', 'Canonical reference to the value set with entire code system',
'hierarchyMeaning', 'Σ', '0..1', 'code', 'grouped-by | is-a | part-of | classified-withCodeSystemHierarchyMeaning (Required)',
'compositional', 'Σ', '0..1', 'boolean', 'If code system defines a compositional grammar',
'versionNeeded', 'Σ', '0..1', 'boolean', 'If definitions are not stable',
'content', 'Σ', '1..1', 'code', 'not-present | example | fragment | complete | supplementCodeSystemContentMode (Required)',
'supplements', 'Σ', '0..1', 'canonical(CodeSystem)', 'Canonical URL of Code System this adds designations and properties to',
'count', 'Σ', '0..1', 'unsignedInt', 'Total concepts in the code system',
'filter', 'Σ', '0..*', 'BackboneElement', 'Filter that can be used in a value set',
'code', 'Σ', '1..1', 'code', 'Code that identifies the filter',
'description', 'Σ', '0..1', 'string', 'How or why the filter is used',
'operator', 'Σ', '1..*', 'code', '= | is-a | descendent-of | is-not-a | regex | in | not-in | generalizes | existsFilterOperator (Required)',
'value', 'Σ', '1..1', 'string', 'What to use for the value',
'property', 'Σ', '0..*', 'BackboneElement', 'Additional information supplied about each concept',
'code', 'Σ', '1..1', 'code', 'Identifies the property on the concepts, and when referred to in operations',
'uri', 'Σ', '0..1', 'uri', 'Formal identifier for the property',
'description', 'Σ', '0..1', 'string', 'Why the property is defined, and/or what it conveys',
'type', 'Σ', '1..1', 'code', 'code | Coding | string | integer | boolean | dateTime | decimalPropertyType (Required)',
'concept', '', '0..*', 'BackboneElement', 'Concepts in the code system',
'code', '', '1..1', 'code', 'Code that identifies concept',
'display', '', '0..1', 'string', 'Text to display to the user',
'definition', '', '0..1', 'string', 'Formal definition',
'designation', '', '0..*', 'BackboneElement', 'Additional representations for the concept',
'language', '', '0..1', 'code', 'Human language of the designationCommon Languages (Preferred but limited to AllLanguages)',
'use', '', '0..1', 'Coding', 'Details how this designation would be usedDesignation Use (Extensible)',
'value', '', '1..1', 'string', 'The text value for this designation',
'property', '', '0..*', 'BackboneElement', 'Property value for the concept',
'code', '', '1..1', 'code', 'Reference to CodeSystem.property.code',
'value[x]', '', '1..1', '', 'Value of the property for this concept',
'valueCode', '', '', 'code', '',
'valueCoding', '', '', 'Coding', '',
'valueString', '', '', 'string', '',
'valueInteger', '', '', 'integer', '',
'valueBoolean', '', '', 'boolean', '',
'valueDateTime', '', '', 'dateTime', '',
'valueDecimal', '', '', 'decimal', '',
'concept', '', '0..*', 'see concept', 'Child Concepts (is-a/contains/categorizes)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <-
tibble::tribble(
~`X1`,~`X2`,
'CodeSystem', '',
'CodeSystem.identifier', 'Max Cardinality changed from 1 to *',
'CodeSystem.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'CodeSystem.experimental', 'No longer marked as Modifier',
'CodeSystem.valueSet', 'Type changed from uri to canonical(ValueSet)',
'CodeSystem.hierarchyMeaning', 'Change value set from http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning to http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning|4.0.1',
'CodeSystem.content', 'Change value set from http://hl7.org/fhir/ValueSet/codesystem-content-mode to http://hl7.org/fhir/ValueSet/codesystem-content-mode|4.0.1',
'CodeSystem.supplements', 'Added Element',
'CodeSystem.filter.operator', 'Change value set from http://hl7.org/fhir/ValueSet/filter-operator to http://hl7.org/fhir/ValueSet/filter-operator|4.0.1',
'CodeSystem.property.type', 'Change value set from http://hl7.org/fhir/ValueSet/concept-property-type to http://hl7.org/fhir/ValueSet/concept-property-type|4.0.1',
'CodeSystem.concept.designation.language', 'Change binding strength from extensible to preferred',
'CodeSystem.concept.property.value[x]', 'Add Type decimal',
)


df7 <-
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'CodeSystem.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'CodeSystem.jurisdiction', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'CodeSystem.hierarchyMeaning', 'The meaning of the hierarchy of concepts in a code system.', 'Required', 'CodeSystemHierarchyMeaning',
'CodeSystem.content', 'The extent of the content of the code system (the concepts and codes it defines) are represented in a code system resource.', 'Required', 'CodeSystemContentMode',
'CodeSystem.filter.operator', 'The kind of operation to perform as a part of a property based filter.', 'Required', 'FilterOperator',
'CodeSystem.property.type', 'The type of a property value.', 'Required', 'PropertyType',
'CodeSystem.concept.designation.language', 'A human language.', 'Preferred, but limited to AllLanguages', 'CommonLanguages',
'CodeSystem.concept.designation.use', 'Details of how a designation would be used.', 'Extensible', 'DesignationUse',
)


df8 <-
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'csd-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches(\'[A-Z]([A-Za-z0-9_]){0,254}\')',
'csd-1', 'Rule', '(base)', 'Within a code system definition, all the codes SHALL be unique', 'concept.code.combine($this.descendants().concept.code).isDistinct()',
)


df9 <-
tibble::tribble(
~`X1`,~`X2`,~`X3`,
'Name', 'Details', 'Description',
'code', 'code', 'Used to identify the property, in the places shown in the list immediately above this table',
'uri', 'optional uri', 'Reference to the formal meaning of the property. One possible source of meaning is the Concept Properties code system.
    This part of the definition is optional, but is recommended to provide an additional level of definitional consistency',
'description', 'optional string', 'A description of the property- why it is defined, and how its value might be used',
'type', 'code | Coding | string | integer | boolean | dateTime', 'The type of the property value. Properties of type "code" contain a code defined by the code system (e.g. a reference to another defined concept)',
)


df10 <-
tibble::tribble(
~`X1`,~`X2`,
'http://hl7.org/fhir/concept-properties#status : code', 'A property that indicates the status of the concept. If the property is identified by this URL, then it SHALL use at least these status values (where appropriate):
     active - the concept is for normal use
      experimental - provided for trial, but may be removed in the future
      deprecated - planned to be removed from use
      retired - still present for historical reasons, but no longer allowed to be used

     The HL7 defined code systems (whether defined by the FHIR project, the V3 framework, or the V2 standard)
     all use this property to define their status. HL7 uses "active" (and considers this the default status), and deprecated and retired (= inactive)',
'http://hl7.org/fhir/concept-properties#retirementDate : date', 'Date Concept was retired',
'http://hl7.org/fhir/concept-properties#deprecationDate : date', 'Date Concept was deprecated',
'http://hl7.org/fhir/concept-properties#parent : code', 'An immediate parent of the concept in the hierarchy',
'http://hl7.org/fhir/concept-properties#child : code', 'An immediate child of the concept in the hierarchy',
'http://hl7.org/fhir/concept-properties#notSelectable : boolean', 'This concept is a grouping concept and not intended to be used in
   the normal use of the code system (though may be used for filters etc.). This is also known as \'Abstract\'',
)


df11 <-
tibble::tribble(
~`Property Name`,~`Operation`,~`Value`,~`Definition`,~`Notes`,
'[property]', '=', '[string]', 'Includes all codes that have a property value equal to the specified string, where [property] is the code for any defined property', '',
'[property]', 'in', '[string,string...]', 'Includes all codes that have a property value equal to one of the specified strings, where [property] is the code for any defined property', 'The values cannot include ",", since it is being used as a delimiter',
)


df12 <-
tibble::tribble(
~`X1`,~`X2`,
'StructureDefinition', 'The StructureDefinition.url (canonical URL) is the system. Each .snapshot.element.id in the snapshot is a code in the code system',
'Questionnaire', 'The Questionnaire.url (canonical URL) is the system. Each .item.linkId in the snapshot is a code in the code system. Items with no linkId cannot be addressed',
'Medication', 'Medication resources are a bit different, since they dont have a canonical URL, and
    there are not multiple items in a resource. So to refer to a medication resource, the system
    is [base]/Medication, where base is the server address. The Logical Id of the resource is the code',
)


df13 <-
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'code TU', 'token', 'A code defined in the code system', 'CodeSystem.concept.code', '',
'content-mode TU', 'token', 'not-present | example | fragment | complete | supplement', 'CodeSystem.content', '',
'context TU', 'token', 'A use context assigned to the code system', '(CodeSystem.useContext.value as CodeableConcept)', '',
'context-quantity TU', 'quantity', 'A quantity- or range-valued use context assigned to the code system', '(CodeSystem.useContext.value as Quantity) | (CodeSystem.useContext.value as Range)', '',
'context-type TU', 'token', 'A type of use context assigned to the code system', 'CodeSystem.useContext.code', '',
'context-type-quantity TU', 'composite', 'A use context type and quantity- or range-based value assigned to the code system', 'On CodeSystem.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value TU', 'composite', 'A use context type and value assigned to the code system', 'On CodeSystem.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date TU', 'date', 'The code system publication date', 'CodeSystem.date', '',
'description TU', 'string', 'The description of the code system', 'CodeSystem.description', '',
'identifier TU', 'token', 'External identifier for the code system', 'CodeSystem.identifier', '',
'jurisdiction TU', 'token', 'Intended jurisdiction for the code system', 'CodeSystem.jurisdiction', '',
'language TU', 'token', 'A language in which a designation is provided', 'CodeSystem.concept.designation.language', '',
'name TU', 'string', 'Computationally friendly name of the code system', 'CodeSystem.name', '',
'publisher TU', 'string', 'Name of the publisher of the code system', 'CodeSystem.publisher', '',
'status TU', 'token', 'The current status of the code system', 'CodeSystem.status', '',
'supplements TU', 'reference', 'Find code system supplements for the referenced code system', 'CodeSystem.supplements(CodeSystem)', '',
'system TU', 'uri', 'The system for any codes defined by this code system (same as \'url\')', 'CodeSystem.url', '',
'title TU', 'string', 'The human-friendly name of the code system', 'CodeSystem.title', '',
'url TU', 'uri', 'The uri that identifies the code system', 'CodeSystem.url', '',
'version TU', 'token', 'The business version of the code system', 'CodeSystem.version', '',
)


