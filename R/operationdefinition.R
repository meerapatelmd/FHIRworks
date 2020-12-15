df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'FHIR Infrastructure  Work Group', 'Maturity Level: N', 'Normative (from v4.0.0)', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
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
'OperationDefinition', 'IN', '', 'DomainResource', 'Definition of an operation or a named query+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this operation definition, represented as a URI (globally unique)',
'version', 'Σ', '0..1', 'string', 'Business version of the operation definition',
'name', 'ΣI', '1..1', 'string', 'Name for this operation definition (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this operation definition (human friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'kind', 'Σ', '1..1', 'code', 'operation | queryOperationKind (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the operation definition',
'useContext', 'ΣTU', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for operation definition (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this operation definition is defined',
'affectsState', 'Σ', '0..1', 'boolean', 'Whether content is changed by the operation',
'code', 'Σ', '1..1', 'code', 'Name used to invoke the operation',
'comment', '', '0..1', 'markdown', 'Additional information about use',
'base', 'Σ', '0..1', 'canonical(OperationDefinition)', 'Marks this as a profile of the base',
'resource', 'Σ', '0..*', 'code', 'Types this operation applies toResourceType (Required)',
'system', 'Σ', '1..1', 'boolean', 'Invoke at the system level?',
'type', 'Σ', '1..1', 'boolean', 'Invoke at the type level?',
'instance', 'Σ', '1..1', 'boolean', 'Invoke on an instance?',
'inputProfile', '', '0..1', 'canonical(StructureDefinition)', 'Validation information for in parameters',
'outputProfile', '', '0..1', 'canonical(StructureDefinition)', 'Validation information for out parameters',
'parameter', 'I', '0..*', 'BackboneElement', 'Parameters for the operation/query+ Rule: Either a type must be provided, or parts+ Rule: A search type can only be specified for parameters of type string+ Rule: A targetProfile can only be specified for parameters of type Reference or Canonical',
'name', '', '1..1', 'code', 'Name in Parameters.parameter.name or in URL',
'use', '', '1..1', 'code', 'in | outOperationParameterUse (Required)',
'min', '', '1..1', 'integer', 'Minimum Cardinality',
'max', '', '1..1', 'string', 'Maximum Cardinality (a number or *)',
'documentation', '', '0..1', 'string', 'Description of meaning/use',
'type', 'I', '0..1', 'code', 'What type this parameter hasFHIRAllTypes (Required)',
'targetProfile', '', '0..*', 'canonical(StructureDefinition)', 'If type is Reference | canonical, allowed targets',
'searchType', 'I', '0..1', 'code', 'number | date | string | token | reference | composite | quantity | uri | specialSearchParamType (Required)',
'binding', '', '0..1', 'BackboneElement', 'ValueSet details if this is coded',
'strength', '', '1..1', 'code', 'required | extensible | preferred | exampleBindingStrength (Required)',
'valueSet', '', '1..1', 'canonical(ValueSet)', 'Source of value set',
'referencedFrom', 'TU', '0..*', 'BackboneElement', 'References to this parameter',
'source', '', '1..1', 'string', 'Referencing parameter',
'sourceId', '', '0..1', 'string', 'Element id of reference',
'part', 'I', '0..*', 'see parameter', 'Parts of a nested Parameter',
'overload', '', '0..*', 'BackboneElement', 'Define overloaded variants for when  generating code',
'parameterName', '', '0..*', 'string', 'Name of parameter to include in overload',
'comment', '', '0..1', 'string', 'Comments to go on overload',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'OperationDefinition', '',
'OperationDefinition.title', 'Added Element',
'OperationDefinition.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'OperationDefinition.kind', 'Change value set from http://hl7.org/fhir/ValueSet/operation-kind to http://hl7.org/fhir/ValueSet/operation-kind|4.0.1',
'OperationDefinition.experimental', 'No longer marked as Modifier',
'OperationDefinition.affectsState', 'Renamed from idempotent to affectsState',
'OperationDefinition.comment', 'Type changed from string to markdown',
'OperationDefinition.base', 'Type changed from Reference(OperationDefinition) to canonical(OperationDefinition)',
'OperationDefinition.resource', 'Change value set from http://hl7.org/fhir/ValueSet/resource-types to http://hl7.org/fhir/ValueSet/resource-types|4.0.1',
'OperationDefinition.inputProfile', 'Added Element',
'OperationDefinition.outputProfile', 'Added Element',
'OperationDefinition.parameter.use', 'Change value set from http://hl7.org/fhir/ValueSet/operation-parameter-use to http://hl7.org/fhir/ValueSet/operation-parameter-use|4.0.1',
'OperationDefinition.parameter.type', 'Change value set from http://hl7.org/fhir/ValueSet/all-types to http://hl7.org/fhir/ValueSet/all-types|4.0.1',
'OperationDefinition.parameter.targetProfile', 'Renamed from profile to targetProfile
        Max Cardinality changed from 1 to *
        Type changed from Reference(StructureDefinition) to canonical(StructureDefinition)',
'OperationDefinition.parameter.searchType', 'Change value set from http://hl7.org/fhir/ValueSet/search-param-type to http://hl7.org/fhir/ValueSet/search-param-type|4.0.1',
'OperationDefinition.parameter.binding.strength', 'Change value set from http://hl7.org/fhir/ValueSet/binding-strength to http://hl7.org/fhir/ValueSet/binding-strength|4.0.1',
'OperationDefinition.parameter.binding.valueSet', 'Renamed from valueSet[x] to valueSet
        Add Type canonical(ValueSet)
        Remove Types uri, Reference(ValueSet)',
'OperationDefinition.parameter.referencedFrom', 'Added Element',
'OperationDefinition.parameter.referencedFrom.source', 'Added Mandatory Element',
'OperationDefinition.parameter.referencedFrom.sourceId', 'Added Element',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'OperationDefinition', 'IN', '', 'DomainResource', 'Definition of an operation or a named query+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '0..1', 'uri', 'Canonical identifier for this operation definition, represented as a URI (globally unique)',
'version', 'Σ', '0..1', 'string', 'Business version of the operation definition',
'name', 'ΣI', '1..1', 'string', 'Name for this operation definition (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this operation definition (human friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'kind', 'Σ', '1..1', 'code', 'operation | queryOperationKind (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the operation definition',
'useContext', 'ΣTU', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for operation definition (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this operation definition is defined',
'affectsState', 'Σ', '0..1', 'boolean', 'Whether content is changed by the operation',
'code', 'Σ', '1..1', 'code', 'Name used to invoke the operation',
'comment', '', '0..1', 'markdown', 'Additional information about use',
'base', 'Σ', '0..1', 'canonical(OperationDefinition)', 'Marks this as a profile of the base',
'resource', 'Σ', '0..*', 'code', 'Types this operation applies toResourceType (Required)',
'system', 'Σ', '1..1', 'boolean', 'Invoke at the system level?',
'type', 'Σ', '1..1', 'boolean', 'Invoke at the type level?',
'instance', 'Σ', '1..1', 'boolean', 'Invoke on an instance?',
'inputProfile', '', '0..1', 'canonical(StructureDefinition)', 'Validation information for in parameters',
'outputProfile', '', '0..1', 'canonical(StructureDefinition)', 'Validation information for out parameters',
'parameter', 'I', '0..*', 'BackboneElement', 'Parameters for the operation/query+ Rule: Either a type must be provided, or parts+ Rule: A search type can only be specified for parameters of type string+ Rule: A targetProfile can only be specified for parameters of type Reference or Canonical',
'name', '', '1..1', 'code', 'Name in Parameters.parameter.name or in URL',
'use', '', '1..1', 'code', 'in | outOperationParameterUse (Required)',
'min', '', '1..1', 'integer', 'Minimum Cardinality',
'max', '', '1..1', 'string', 'Maximum Cardinality (a number or *)',
'documentation', '', '0..1', 'string', 'Description of meaning/use',
'type', 'I', '0..1', 'code', 'What type this parameter hasFHIRAllTypes (Required)',
'targetProfile', '', '0..*', 'canonical(StructureDefinition)', 'If type is Reference | canonical, allowed targets',
'searchType', 'I', '0..1', 'code', 'number | date | string | token | reference | composite | quantity | uri | specialSearchParamType (Required)',
'binding', '', '0..1', 'BackboneElement', 'ValueSet details if this is coded',
'strength', '', '1..1', 'code', 'required | extensible | preferred | exampleBindingStrength (Required)',
'valueSet', '', '1..1', 'canonical(ValueSet)', 'Source of value set',
'referencedFrom', 'TU', '0..*', 'BackboneElement', 'References to this parameter',
'source', '', '1..1', 'string', 'Referencing parameter',
'sourceId', '', '0..1', 'string', 'Element id of reference',
'part', 'I', '0..*', 'see parameter', 'Parts of a nested Parameter',
'overload', '', '0..*', 'BackboneElement', 'Define overloaded variants for when  generating code',
'parameterName', '', '0..*', 'string', 'Name of parameter to include in overload',
'comment', '', '0..1', 'string', 'Comments to go on overload',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'OperationDefinition', '',
'OperationDefinition.title', 'Added Element',
'OperationDefinition.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'OperationDefinition.kind', 'Change value set from http://hl7.org/fhir/ValueSet/operation-kind to http://hl7.org/fhir/ValueSet/operation-kind|4.0.1',
'OperationDefinition.experimental', 'No longer marked as Modifier',
'OperationDefinition.affectsState', 'Renamed from idempotent to affectsState',
'OperationDefinition.comment', 'Type changed from string to markdown',
'OperationDefinition.base', 'Type changed from Reference(OperationDefinition) to canonical(OperationDefinition)',
'OperationDefinition.resource', 'Change value set from http://hl7.org/fhir/ValueSet/resource-types to http://hl7.org/fhir/ValueSet/resource-types|4.0.1',
'OperationDefinition.inputProfile', 'Added Element',
'OperationDefinition.outputProfile', 'Added Element',
'OperationDefinition.parameter.use', 'Change value set from http://hl7.org/fhir/ValueSet/operation-parameter-use to http://hl7.org/fhir/ValueSet/operation-parameter-use|4.0.1',
'OperationDefinition.parameter.type', 'Change value set from http://hl7.org/fhir/ValueSet/all-types to http://hl7.org/fhir/ValueSet/all-types|4.0.1',
'OperationDefinition.parameter.targetProfile', 'Renamed from profile to targetProfile
        Max Cardinality changed from 1 to *
        Type changed from Reference(StructureDefinition) to canonical(StructureDefinition)',
'OperationDefinition.parameter.searchType', 'Change value set from http://hl7.org/fhir/ValueSet/search-param-type to http://hl7.org/fhir/ValueSet/search-param-type|4.0.1',
'OperationDefinition.parameter.binding.strength', 'Change value set from http://hl7.org/fhir/ValueSet/binding-strength to http://hl7.org/fhir/ValueSet/binding-strength|4.0.1',
'OperationDefinition.parameter.binding.valueSet', 'Renamed from valueSet[x] to valueSet
        Add Type canonical(ValueSet)
        Remove Types uri, Reference(ValueSet)',
'OperationDefinition.parameter.referencedFrom', 'Added Element',
'OperationDefinition.parameter.referencedFrom.source', 'Added Mandatory Element',
'OperationDefinition.parameter.referencedFrom.sourceId', 'Added Element',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'OperationDefinition.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'OperationDefinition.kind', 'Whether an operation is a normal operation or a query.', 'Required', 'OperationKind',
'OperationDefinition.jurisdiction', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'OperationDefinition.resource', 'One of the resource types defined as part of this version of FHIR.', 'Required', 'Resource Types',
'OperationDefinition.parameter.use', 'Whether an operation parameter is an input or an output parameter.', 'Required', 'OperationParameterUse',
'OperationDefinition.parameter.type', 'A list of all the concrete types defined in this version of the FHIR specification - Abstract Types, Data Types and Resource Types.', 'Required', 'All Types',
'OperationDefinition.parameter.searchType', 'Data types allowed to be used for search parameters.', 'Required', 'SearchParamType',
'OperationDefinition.parameter.binding.strength', 'Indication of the degree of conformance expectations associated with a binding.', 'Required', 'BindingStrength',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'opd-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches('[A-Z]([A-Za-z0-9_]){0,254}')',
'opd-1', 'Rule', 'OperationDefinition.parameter', 'Either a type must be provided, or parts', 'type.exists() or part.exists()',
'opd-2', 'Rule', 'OperationDefinition.parameter', 'A search type can only be specified for parameters of type string', 'searchType.exists() implies type = 'string'',
'opd-3', 'Rule', 'OperationDefinition.parameter', 'A targetProfile can only be specified for parameters of type Reference or Canonical', 'targetProfile.exists() implies (type = 'Reference' or type = 'canonical')',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,
'Base Operations (All resource types)', 'Base Operations (All resource types)',
'Validate a resource', '[base]/[Resource]/$validate | [base]/[Resource]/[id]/$validate',
'Access a list of profiles, tags, and security labels', '[base]/$meta | [base]/[Resource]/$meta | [base]/[Resource]/[id]/$meta',
'Add profiles, tags, and security labels to a resource', '[base]/[Resource]/[id]/$meta-add',
'Delete profiles, tags, and security labels for a resource', '[base]/[Resource]/[id]/$meta-delete',
'Convert from one form to another', '[base]/$convert',
'Execute a graphql statement', '[base]/$graphql | [base]/[Resource]/[id]/$graphql',
'Return a graph of resources', '[base]/[Resource]/[id]/$graph',
'Operations Defined by Resource Types', 'Operations Defined by Resource Types',
'Apply', '[base]/ActivityDefinition/$apply | [base]/ActivityDefinition/[id]/$apply',
'Data Requirements', '[base]/ActivityDefinition/[id]/$data-requirements',
'Fetch a subset of the CapabilityStatement resource', '[base]/CapabilityStatement/$subset | [base]/CapabilityStatement/[id]/$subset',
'Test if a server implements a client's required operations', '[base]/CapabilityStatement/$implements | [base]/CapabilityStatement/[id]/$implements',
'Test if a server implements a client's required operations', '[base]/CapabilityStatement/$conforms',
'Discover what versions a server supports', '[base]/$versions',
'Apply', '[base]/ChargeItemDefinition/[id]/$apply',
'Submit a Claim resource for adjudication', '[base]/Claim/$submit',
'Concept Look Up & Decomposition', '[base]/CodeSystem/$lookup',
'Code System based Validation', '[base]/CodeSystem/$validate-code | [base]/CodeSystem/[id]/$validate-code',
'Subsumption Testing', '[base]/CodeSystem/$subsumes | [base]/CodeSystem/[id]/$subsumes',
'Finding codes based on supplied properties', '[base]/CodeSystem/$find-matches | [base]/CodeSystem/[id]/$find-matches',
'Generate a Document', '[base]/Composition/$document | [base]/Composition/[id]/$document',
'Concept Translation', '[base]/ConceptMap/$translate | [base]/ConceptMap/[id]/$translate',
'Closure Table Maintenance', '[base]/$closure',
'Submit an EligibilityRequest resource for assessment', '[base]/CoverageEligibilityRequest/$submit',
'Fetch Encounter Record', '[base]/Encounter/[id]/$everything',
'Fetch a group of Patient Records', '[base]/Group/[id]/$everything',
'Data Requirements', '[base]/$data-requirements | [base]/Library/[id]/$data-requirements',
'Find a functional list', '[base]/List/$find',
'Evaluate Measure', '[base]/Measure/$evaluate-measure | [base]/Measure/[id]/$evaluate-measure',
'Data Requirements', '[base]/Measure/[id]/$data-requirements',
'Submit Data', '[base]/Measure/$submit-data | [base]/Measure/[id]/$submit-data',
'Collect Data', '[base]/Measure/$collect-data | [base]/Measure/[id]/$collect-data',
'Care Gaps', '[base]/Measure/$care-gaps',
'Fetch Product Record', '[base]/MedicinalProduct/$everything | [base]/MedicinalProduct/[id]/$everything',
'Process Message', '[base]/$process-message',
'Fetch Preferred it', '[base]/NamingSystem/$preferred-id',
'Observation Statistics', '[base]/Observation/$stats',
'Last N Observations Query', '[base]/Observation/$lastn',
'Find patient matches using MPI based logic', '[base]/Patient/$match',
'Fetch Patient Record', '[base]/Patient/$everything | [base]/Patient/[id]/$everything',
'Apply', '[base]/PlanDefinition/$apply | [base]/PlanDefinition/[id]/$apply',
'Data Requirements', '[base]/PlanDefinition/[id]/$data-requirements',
'Build Questionnaire', '[base]/StructureDefinition/$questionnaire | [base]/StructureDefinition/[id]/$questionnaire',
'Generate Snapshot', '[base]/StructureDefinition/$snapshot | [base]/StructureDefinition/[id]/$snapshot',
'Model Instance Transformation', '[base]/StructureMap/$transform | [base]/StructureMap/[id]/$transform',
'Value Set Expansion', '[base]/ValueSet/$expand | [base]/ValueSet/[id]/$expand',
'Value Set based Validation', '[base]/ValueSet/$validate-code | [base]/ValueSet/[id]/$validate-code',
)


df10 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,~`X6`,
'In Parameters:', 'In Parameters:', 'In Parameters:', 'In Parameters:', 'In Parameters:', 'In Parameters:',
'Name', 'Cardinality', 'Type', 'Binding', 'Profile', 'Documentation',
'a', '0..1', 'integer', '', '', 'An integer parameter',
'b', '0..1', 'Patient', '', '', 'A patient parameter',
'Out Parameters:', 'Out Parameters:', 'Out Parameters:', 'Out Parameters:', 'Out Parameters:', 'Out Parameters:',
'Name', 'Cardinality', 'Type', 'Binding', 'Profile', 'Documentation',
'c', '1..1', 'decimal', '', '', 'A result parameter',
)


df11 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'base TU', 'reference', 'Marks this as a profile of the base', 'OperationDefinition.base(OperationDefinition)', '',
'code TU', 'token', 'Name used to invoke the operation', 'OperationDefinition.code', '',
'context TU', 'token', 'A use context assigned to the operation definition', '(OperationDefinition.useContext.value as CodeableConcept)', '',
'context-quantity TU', 'quantity', 'A quantity- or range-valued use context assigned to the operation definition', '(OperationDefinition.useContext.value as Quantity) | (OperationDefinition.useContext.value as Range)', '',
'context-type TU', 'token', 'A type of use context assigned to the operation definition', 'OperationDefinition.useContext.code', '',
'context-type-quantity TU', 'composite', 'A use context type and quantity- or range-based value assigned to the operation definition', 'On OperationDefinition.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value TU', 'composite', 'A use context type and value assigned to the operation definition', 'On OperationDefinition.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date TU', 'date', 'The operation definition publication date', 'OperationDefinition.date', '',
'description TU', 'string', 'The description of the operation definition', 'OperationDefinition.description', '',
'input-profile TU', 'reference', 'Validation information for in parameters', 'OperationDefinition.inputProfile(StructureDefinition)', '',
'instance TU', 'token', 'Invoke on an instance?', 'OperationDefinition.instance', '',
'jurisdiction TU', 'token', 'Intended jurisdiction for the operation definition', 'OperationDefinition.jurisdiction', '',
'kind TU', 'token', 'operation | query', 'OperationDefinition.kind', '',
'name TU', 'string', 'Computationally friendly name of the operation definition', 'OperationDefinition.name', '',
'output-profile TU', 'reference', 'Validation information for out parameters', 'OperationDefinition.outputProfile(StructureDefinition)', '',
'publisher TU', 'string', 'Name of the publisher of the operation definition', 'OperationDefinition.publisher', '',
'status TU', 'token', 'The current status of the operation definition', 'OperationDefinition.status', '',
'system TU', 'token', 'Invoke at the system level?', 'OperationDefinition.system', '',
'title TU', 'string', 'The human-friendly name of the operation definition', 'OperationDefinition.title', '',
'type TU', 'token', 'Invoke at the type level?', 'OperationDefinition.type', '',
'url TU', 'uri', 'The uri that identifies the operation definition', 'OperationDefinition.url', '',
'version TU', 'token', 'The business version of the operation definition', 'OperationDefinition.version', '',
)


