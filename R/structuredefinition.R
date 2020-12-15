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
~`X1`,~`X2`,
'url', 'The identifier that is used to identify this structure when it is referenced in a specification, model, design or an instance. This URL is where the structure can be accessed',
'identifier', 'Other identifiers that are used to identify this structure',
'version', 'The identifier that is used to identify this version of the structure when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the structure author manually and the value should be a timestamp.
   Note that there may be multiple resource versions of the structure that have this same identifier. The resource will have updates that create new versions for technical reasons, whereas the stated version number needs to be under the author's control',
'name', 'A Computer-ready name (e.g. a token) that identifies the structure - suitable for code generation. 
   Note that this name (and other names relevant for code generation, including element & slice names, codes etc) may collide with reserved words in the relevant target language, and code generators will need to handle this',
'title', 'A free text natural language name identifying the structure',
'status', 'The status of the structure	allows filtering of StructureDefinitions that are appropriate for use vs. not. See the Status Codes',
'experimental', 'This structure was authored for testing purposes (or education/evaluation/marketing), and is not intended for genuine usage',
'date', 'The date this version of the structure was published',
'publisher', 'Details of the individual or organization who accepts responsibility for publishing the structure. This helps establish the "authority/credibility" of the structure.',
'contact', 'Contact details to assist a user in finding and communicating with the publisher',
'description', 'A free text natural language description of the structure and its use',
'purpose', 'Why this structure was created - what the intent of it is',
'useContext & Jurisdiction', 'Computable details about purpose and scope of use',
'keyword', 'A set of terms from external terminologies that may be used to assist with indexing and searching of StructureDefinitionss',
'copyright', 'Use and/or publishing restrictions',
'fhirVersion', 'The version of the FHIR specification on which this structure is based. It is not necessary to specify the version, 
 as most SructureDefinitions are valid across multiple versions, and the validity of a structure against a particular version of FHIR can easily be checked by tooling.',
'type', 'The type the structure describes.',
'contextType & context', 'For extensions, the types of contexts in which the extension can be used. For further details, see Defining Extensions',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'StructureDefinition', 'IN', '', 'DomainResource', 'Structural Definition+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generation+ Rule: Element paths must be unique unless the structure is a constraint+ Rule: If the first element in a differential has no "." in the path and it's not a logical model, it has no type+ Rule: If the structure is not abstract, then there SHALL be a baseDefinition+ Rule: If the structure defines an extension then the structure must have context information+ Rule: A structure must have either a differential, or a snapshot (or both)+ Rule: In any snapshot or differential, no label, code or requirements on an element without a "." in the path (e.g. the first element)+ Rule: If there's a type, its content must match the path name in the first element of a snapshot+ Rule: All element definitions must have an id+ Rule: The first element in a snapshot has no type unless model is a logical model.+ Rule: All element definitions must have unique ids (snapshot)+ Rule: All element definitions must have unique ids (diff)+ Rule: Context Invariants can only be used for extensions+ Rule: FHIR Specification models only use FHIR defined types+ Rule: Default values can only be specified on specializations+ Rule: FHIR Specification models never have default values+ Rule: No slice name on rootElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '1..1', 'uri', 'Canonical identifier for this structure definition, represented as a URI (globally unique)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the structure definition',
'version', 'Σ', '0..1', 'string', 'Business version of the structure definition',
'name', 'ΣI', '1..1', 'string', 'Name for this structure definition (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this structure definition (human friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the structure definition',
'useContext', 'ΣTU', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for structure definition (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this structure definition is defined',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'keyword', 'Σ', '0..*', 'Coding', 'Assist with indexing and findingStructure Definition Use Codes / Keywords (Extensible)',
'fhirVersion', 'Σ', '0..1', 'code', 'FHIR Version this StructureDefinition targetsFHIRVersion (Required)',
'mapping', 'I', '0..*', 'BackboneElement', 'External specification that the content is mapped to+ Rule: Must have at least a name or a uri (or both)',
'identity', '', '1..1', 'id', 'Internal id when this mapping is used',
'uri', 'I', '0..1', 'uri', 'Identifies what this mapping refers to',
'name', 'I', '0..1', 'string', 'Names what this mapping refers to',
'comment', '', '0..1', 'string', 'Versions, Issues, Scope limitations etc.',
'kind', 'Σ', '1..1', 'code', 'primitive-type | complex-type | resource | logicalStructureDefinitionKind (Required)',
'abstract', 'Σ', '1..1', 'boolean', 'Whether the structure is abstract',
'context', 'ΣI', '0..*', 'BackboneElement', 'If an extension, where it can be used in instances',
'type', 'Σ', '1..1', 'code', 'fhirpath | element | extensionExtensionContextType (Required)',
'expression', 'Σ', '1..1', 'string', 'Where the extension can be used in instances',
'contextInvariant', 'ΣI', '0..*', 'string', 'FHIRPath invariants - when the extension can be used',
'type', 'ΣI', '1..1', 'uri', 'Type defined or constrained by this structureFHIRDefinedType (Extensible)',
'baseDefinition', 'ΣI', '0..1', 'canonical(StructureDefinition)', 'Definition that this type is constrained/specialized from',
'derivation', 'Σ', '0..1', 'code', 'specialization | constraint - How relates to base definitionTypeDerivationRule (Required)',
'snapshot', 'I', '0..1', 'BackboneElement', 'Snapshot view of the structure+ Rule: Each element definition in a snapshot must have a formal definition and cardinalities+ Rule: All snapshot elements must start with the StructureDefinition's specified type for non-logical models, or with the same type name for logical models+ Rule: All snapshot elements must have a base definition',
'element', 'I', '1..*', 'ElementDefinition', 'Definition of elements in the resource (if no StructureDefinition)+ Rule: provide either a binding reference or a description (or both)',
'differential', 'I', '0..1', 'BackboneElement', 'Differential view of the structure+ Rule: No slicing on the root element+ Rule: In any differential, all the elements must start with the StructureDefinition's specified type for non-logical models, or with the same type name for logical models',
'element', '', '1..*', 'ElementDefinition', 'Definition of elements in the resource (if no StructureDefinition)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'StructureDefinition', '',
'StructureDefinition.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'StructureDefinition.experimental', 'No longer marked as Modifier',
'StructureDefinition.keyword', 'Add Binding http://hl7.org/fhir/ValueSet/definition-use (extensible)',
'StructureDefinition.fhirVersion', 'Type changed from id to code
        
Add Binding http://hl7.org/fhir/ValueSet/FHIR-version|4.0.1 (required)',
'StructureDefinition.kind', 'Change value set from http://hl7.org/fhir/ValueSet/structure-definition-kind to http://hl7.org/fhir/ValueSet/structure-definition-kind|4.0.1',
'StructureDefinition.context', 'Type changed from string to BackboneElement',
'StructureDefinition.context.type', 'Added Mandatory Element',
'StructureDefinition.context.expression', 'Added Mandatory Element',
'StructureDefinition.type', 'Type changed from code to uri',
'StructureDefinition.baseDefinition', 'Type changed from uri to canonical(StructureDefinition)',
'StructureDefinition.derivation', 'Change value set from http://hl7.org/fhir/ValueSet/type-derivation-rule to http://hl7.org/fhir/ValueSet/type-derivation-rule|4.0.1',
'StructureDefinition.contextType', 'deleted',
)


df6 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'StructureDefinition', 'IN', '', 'DomainResource', 'Structural Definition+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generation+ Rule: Element paths must be unique unless the structure is a constraint+ Rule: If the first element in a differential has no "." in the path and it's not a logical model, it has no type+ Rule: If the structure is not abstract, then there SHALL be a baseDefinition+ Rule: If the structure defines an extension then the structure must have context information+ Rule: A structure must have either a differential, or a snapshot (or both)+ Rule: In any snapshot or differential, no label, code or requirements on an element without a "." in the path (e.g. the first element)+ Rule: If there's a type, its content must match the path name in the first element of a snapshot+ Rule: All element definitions must have an id+ Rule: The first element in a snapshot has no type unless model is a logical model.+ Rule: All element definitions must have unique ids (snapshot)+ Rule: All element definitions must have unique ids (diff)+ Rule: Context Invariants can only be used for extensions+ Rule: FHIR Specification models only use FHIR defined types+ Rule: Default values can only be specified on specializations+ Rule: FHIR Specification models never have default values+ Rule: No slice name on rootElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '1..1', 'uri', 'Canonical identifier for this structure definition, represented as a URI (globally unique)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the structure definition',
'version', 'Σ', '0..1', 'string', 'Business version of the structure definition',
'name', 'ΣI', '1..1', 'string', 'Name for this structure definition (computer friendly)',
'title', 'Σ', '0..1', 'string', 'Name for this structure definition (human friendly)',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', '', '0..1', 'markdown', 'Natural language description of the structure definition',
'useContext', 'ΣTU', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for structure definition (if applicable)Jurisdiction (Extensible)',
'purpose', '', '0..1', 'markdown', 'Why this structure definition is defined',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'keyword', 'Σ', '0..*', 'Coding', 'Assist with indexing and findingStructure Definition Use Codes / Keywords (Extensible)',
'fhirVersion', 'Σ', '0..1', 'code', 'FHIR Version this StructureDefinition targetsFHIRVersion (Required)',
'mapping', 'I', '0..*', 'BackboneElement', 'External specification that the content is mapped to+ Rule: Must have at least a name or a uri (or both)',
'identity', '', '1..1', 'id', 'Internal id when this mapping is used',
'uri', 'I', '0..1', 'uri', 'Identifies what this mapping refers to',
'name', 'I', '0..1', 'string', 'Names what this mapping refers to',
'comment', '', '0..1', 'string', 'Versions, Issues, Scope limitations etc.',
'kind', 'Σ', '1..1', 'code', 'primitive-type | complex-type | resource | logicalStructureDefinitionKind (Required)',
'abstract', 'Σ', '1..1', 'boolean', 'Whether the structure is abstract',
'context', 'ΣI', '0..*', 'BackboneElement', 'If an extension, where it can be used in instances',
'type', 'Σ', '1..1', 'code', 'fhirpath | element | extensionExtensionContextType (Required)',
'expression', 'Σ', '1..1', 'string', 'Where the extension can be used in instances',
'contextInvariant', 'ΣI', '0..*', 'string', 'FHIRPath invariants - when the extension can be used',
'type', 'ΣI', '1..1', 'uri', 'Type defined or constrained by this structureFHIRDefinedType (Extensible)',
'baseDefinition', 'ΣI', '0..1', 'canonical(StructureDefinition)', 'Definition that this type is constrained/specialized from',
'derivation', 'Σ', '0..1', 'code', 'specialization | constraint - How relates to base definitionTypeDerivationRule (Required)',
'snapshot', 'I', '0..1', 'BackboneElement', 'Snapshot view of the structure+ Rule: Each element definition in a snapshot must have a formal definition and cardinalities+ Rule: All snapshot elements must start with the StructureDefinition's specified type for non-logical models, or with the same type name for logical models+ Rule: All snapshot elements must have a base definition',
'element', 'I', '1..*', 'ElementDefinition', 'Definition of elements in the resource (if no StructureDefinition)+ Rule: provide either a binding reference or a description (or both)',
'differential', 'I', '0..1', 'BackboneElement', 'Differential view of the structure+ Rule: No slicing on the root element+ Rule: In any differential, all the elements must start with the StructureDefinition's specified type for non-logical models, or with the same type name for logical models',
'element', '', '1..*', 'ElementDefinition', 'Definition of elements in the resource (if no StructureDefinition)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,
'StructureDefinition', '',
'StructureDefinition.status', 'Change value set from http://hl7.org/fhir/ValueSet/publication-status to http://hl7.org/fhir/ValueSet/publication-status|4.0.1',
'StructureDefinition.experimental', 'No longer marked as Modifier',
'StructureDefinition.keyword', 'Add Binding http://hl7.org/fhir/ValueSet/definition-use (extensible)',
'StructureDefinition.fhirVersion', 'Type changed from id to code
        
Add Binding http://hl7.org/fhir/ValueSet/FHIR-version|4.0.1 (required)',
'StructureDefinition.kind', 'Change value set from http://hl7.org/fhir/ValueSet/structure-definition-kind to http://hl7.org/fhir/ValueSet/structure-definition-kind|4.0.1',
'StructureDefinition.context', 'Type changed from string to BackboneElement',
'StructureDefinition.context.type', 'Added Mandatory Element',
'StructureDefinition.context.expression', 'Added Mandatory Element',
'StructureDefinition.type', 'Type changed from code to uri',
'StructureDefinition.baseDefinition', 'Type changed from uri to canonical(StructureDefinition)',
'StructureDefinition.derivation', 'Change value set from http://hl7.org/fhir/ValueSet/type-derivation-rule to http://hl7.org/fhir/ValueSet/type-derivation-rule|4.0.1',
'StructureDefinition.contextType', 'deleted',
)


df8 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'StructureDefinition.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'StructureDefinition.jurisdiction', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'StructureDefinition.keyword', 'Codes for the meaning of the defined structure (SNOMED CT and LOINC codes, as an example).', 'Extensible', 'DefinitionUseCodes',
'StructureDefinition.fhirVersion', 'All published FHIR Versions.', 'Required', 'FHIRVersion',
'StructureDefinition.kind', 'Defines the type of structure that a definition is describing.', 'Required', 'StructureDefinitionKind',
'StructureDefinition.context.type', 'How an extension context is interpreted.', 'Required', 'ExtensionContextType',
'StructureDefinition.type', 'Either a resource or a data type, including logical model types.', 'Extensible', 'FHIRDefinedType',
'StructureDefinition.derivation', 'How a type relates to its baseDefinition.', 'Required', 'TypeDerivationRule',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'sdf-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches('[A-Z]([A-Za-z0-9_]){0,254}')',
'sdf-1', 'Rule', '(base)', 'Element paths must be unique unless the structure is a constraint', 'derivation = 'constraint' or snapshot.element.select(path).isDistinct()',
'sdf-15a', 'Rule', '(base)', 'If the first element in a differential has no "." in the path and it's not a logical model, it has no type', '(kind!='logical'  and differential.element.first().path.contains('.').not()) implies differential.element.first().type.empty()',
'sdf-2', 'Rule', 'StructureDefinition.mapping', 'Must have at least a name or a uri (or both)', 'name.exists() or uri.exists()',
'sdf-3', 'Rule', 'StructureDefinition.snapshot', 'Each element definition in a snapshot must have a formal definition and cardinalities', 'element.all(definition.exists() and min.exists() and max.exists())',
'sdf-4', 'Rule', '(base)', 'If the structure is not abstract, then there SHALL be a baseDefinition', 'abstract = true or baseDefinition.exists()',
'sdf-5', 'Rule', '(base)', 'If the structure defines an extension then the structure must have context information', 'type != 'Extension' or derivation = 'specialization' or (context.exists())',
'sdf-6', 'Rule', '(base)', 'A structure must have either a differential, or a snapshot (or both)', 'snapshot.exists() or differential.exists()',
'sdf-8', 'Rule', 'StructureDefinition.snapshot', 'All snapshot elements must start with the StructureDefinition's specified type for non-logical models, or with the same type name for logical models', '(%resource.kind = 'logical' or element.first().path = %resource.type) and element.tail().all(path.startsWith(%resource.snapshot.element.first().path&'.'))',
'sdf-10', 'Rule', 'StructureDefinition.snapshot.element', 'provide either a binding reference or a description (or both)', 'binding.empty() or binding.valueSet.exists() or binding.description.exists()',
'sdf-11', 'Rule', '(base)', 'If there's a type, its content must match the path name in the first element of a snapshot', 'kind != 'logical' implies snapshot.empty() or snapshot.element.first().path = type',
'sdf-14', 'Rule', '(base)', 'All element definitions must have an id', 'snapshot.element.all(id.exists()) and differential.element.all(id.exists())',
'sdf-15', 'Rule', '(base)', 'The first element in a snapshot has no type unless model is a logical model.', 'kind!='logical' implies snapshot.element.first().type.empty()',
'sdf-16', 'Rule', '(base)', 'All element definitions must have unique ids (snapshot)', 'snapshot.element.all(id.exists()) and snapshot.element.id.trace('ids').isDistinct()',
'sdf-17', 'Rule', '(base)', 'All element definitions must have unique ids (diff)', 'differential.element.all(id.exists()) and differential.element.id.trace('ids').isDistinct()',
'sdf-18', 'Rule', '(base)', 'Context Invariants can only be used for extensions', 'contextInvariant.exists() implies type = 'Extension'',
'sdf-19', 'Rule', '(base)', 'FHIR Specification models only use FHIR defined types', 'url.startsWith('http://hl7.org/fhir/StructureDefinition') implies (differential.element.type.code.all(matches('^[a-zA-Z0-9]+$') or matches('^http:\\/\\/hl7\\.org\\/fhirpath\\/System\\.[A-Z][A-Za-z]+$')) and snapshot.element.type.code.all(matches('^[a-zA-Z0-9\\.]+$') or matches('^http:\\/\\/hl7\\.org\\/fhirpath\\/System\\.[A-Z][A-Za-z]+$')))',
'sdf-20', 'Rule', 'StructureDefinition.differential', 'No slicing on the root element', 'element.where(path.contains('.').not()).slicing.empty()',
'sdf-21', 'Rule', '(base)', 'Default values can only be specified on specializations', 'differential.element.defaultValue.exists() implies (derivation = 'specialization')',
'sdf-22', 'Rule', '(base)', 'FHIR Specification models never have default values', 'url.startsWith('http://hl7.org/fhir/StructureDefinition') implies (snapshot.element.defaultValue.empty() and differential.element.defaultValue.empty())',
'sdf-23', 'Rule', '(base)', 'No slice name on root', '(snapshot | differential).element.all(path.contains('.').not() implies sliceName.empty())',
'sdf-8a', 'Rule', 'StructureDefinition.differential', 'In any differential, all the elements must start with the StructureDefinition's specified type for non-logical models, or with the same type name for logical models', '(%resource.kind = 'logical' or element.first().path.startsWith(%resource.type)) and (element.tail().empty() or element.tail().all(path.startsWith(%resource.differential.element.first().path.replaceMatches('\\..*','')&'.')))',
'sdf-8b', 'Rule', 'StructureDefinition.snapshot', 'All snapshot elements must have a base definition', 'element.all(base.exists())',
'sdf-9', 'Rule', '(base)', 'In any snapshot or differential, no label, code or requirements on an element without a "." in the path (e.g. the first element)', 'children().element.where(path.contains('.').not()).label.empty() and children().element.where(path.contains('.').not()).code.empty() and children().element.where(path.contains('.').not()).requirements.empty()',
)


df10 <- 
tibble::tribble(
~`Name`,~`Details`,
'Logical Mapping', 'Formal URL: http://hl7.org/fhir/logical',
'ClinicalTrials.gov Mapping', 'Formal URL: http://clinicaltrials.gov',
'Workflow Pattern', 'Formal URL: http://hl7.org/fhir/workflow',
'CDISC Define XML 2.0 metadata standard', 'Formal URL: http://www.cdisc.org/define-xml',
'Mapping to NCPDP SCRIPT 10.6', 'Formal URL: http://ncpdp.org/SCRIPT10_6',
'FiveWs Pattern Mapping', 'Formal URL: http://hl7.org/fhir/fivews',
'BRIDG 5.1 Mapping', 'Formal URL: https://bridgmodel.nci.nih.gov',
'FHIR Composition', 'Formal URL: http://hl7.org/fhir/composition',
'IHE Structured Data Capture', 'Formal URL: http://siframework.org/ihe-sdc-profile',
'Canadian Dental Association eclaims standard', 'Formal URL: http://www.cda-adc.ca/en/services/cdanet/',
'SNOMED CT Concept Domain Binding', 'Formal URL: http://snomed.info/conceptdomain

			  
      Concept domain bindings link a resource or an element to a set of SNOMED CT concepts that represent the intended semantics of the instances (whether or not SNOMED CT is used to encode that data element).
      This set of concepts is represented using a SNOMED CT expression constraint. Note that the 'Concept domain binding' may be a superset of the 'value set binding'. These bindings help to support:
      

        Quality checking FHIR resources by ensuring that (a) the intended semantics of the instances matches the valid range of the corresponding SNOMED CT attribute, and (b) the intended value set is appropriate for the intended semantics of the instances

            Semantic checking of data instances by helping to detect potential inconsistencies caused by overlap between the semantics incorporated in two concept domains',
'R3-ReferalRequest Mapping', 'Formal URL: http://hl7.org/fhir/rr',
'HL7 v2 Mapping', 'Formal URL: http://hl7.org/v2',
'RIM Mapping', 'Formal URL: http://hl7.org/v3',
'ISO 11179', 'Formal URL: http://metadata-standards.org/11179/

			  
      These mappings are included to indicate where properties of the data elements defined by the FHIR specification relate to similar fields in the ISO 11179 specification.',
'Mapping to Quality Improvement Domain Analysis Model', 'Formal URL: http://hl7.org/qidam',
'DICOM Tag Mapping', 'Formal URL: http://nema.org/dicom',
'MDMI Referent Index Mapping', 'Formal URL: http://github.com/MDMI/ReferentIndexContent',
'V3 Pharmacy Dispense RMIM', 'Formal URL: http://www.hl7.org/v3/PORX_RM020070UV',
'XDS metadata equivalent', 'Formal URL: http://ihe.net/xds',
'Equivalent CAP Code', 'Formal URL: http://cap.org/ecc',
'CDA (R2)', 'Formal URL: http://hl7.org/v3/cda',
'Quality Improvement and Clinical Knowledge (QUICK)', 'Formal URL: http://siframework.org/cqf',
'FHIR DocumentReference', 'Formal URL: http://hl7.org/fhir/documentreference',
'Canadian Pharmacy Associaiton eclaims standard', 'Formal URL: http://www.pharmacists.ca/',
'UDI Mapping', 'Formal URL: http://fda.gov/UDI

			  UDI is a unique numeric or alphanumeric code that consists of two parts:
			 (1) a device identifier (DI), a mandatory, fixed portion of a UDI that identifies the labeler and the specific version or model of a device, and (2)
		a production identifier (PI), a conditional, variable portion of a UDI that identifies one or more of the following when included on the label of a device:
		 (2a) the lot or batch number within which a device was manufactured; (2b) the serial number of a specific device; (2c) the expiration date of a specific device; (2d) the date a specific device was manufactured; (2e) the distinct identification code required by §1271.290(c) for a human cell, tissue, or cellular and tissue-based product (HCT/P) regulated as a device.',
'Quality Data Model', 'Formal URL: http://www.healthit.gov/quality-data-model',
'FHIR AuditEvent Mapping', 'Formal URL: http://hl7.org/fhir/auditevent',
'IHE Data Element Exchange (DEX)', 'Formal URL: http://ihe.net/data-element-exchange',
'SNOMED CT Attribute Binding', 'Formal URL: http://snomed.org/attributebinding

			  
      Attribute bindings link coded data elements in FHIR resources to a corresponding attribute in the SNOMED CT concept model. These bindings help to support:
      

        clarifying the intended meaning of the data element

            Quality checking the alignment between FHIR resource design and any coresponding SNOMED CT concept model

            Composition and decomposition of data instances by indicating the SNOMED CT concept model attribute whose value may be used to decompose a precoordinated concept into this data element',
'W3C PROV', 'Formal URL: http://www.w3.org/ns/prov

			  

      The provenance resource is based on known practices in the
      HL7 implementation space, particularly those found in the
      v2 EVN segment, the v3 ControlAct Wrapper, the CDA header, and
      IHE ATNA.
      The conceptual model underlying the design is the     W3C
      provenance Specification 
. Though the content and format
      of the resource is designed to meet specific requirements for FHIR,
      all the parts of the resource are formally mapped to the PROV-O
      specification, and FHIR resources can be transformed to their W3C
      PROV equivalent.',
'Ontological RIM Mapping', 'Formal URL: http://hl7.org/orim',
'LOINC code for the element', 'Formal URL: http://loinc.org',
'vCard Mapping', 'Formal URL: http://w3.org/vcard',
'Open EHR Archetype Mapping', 'Formal URL: http://openehr.org',
'ServD', 'Formal URL: http://www.omg.org/spec/ServD/1.0/',
'FHIR Provenance Mapping', 'Formal URL: http://hl7.org/fhir/provenance',
'iCalendar', 'Formal URL: http://ietf.org/rfc/2445',
)


df11 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'abstract TU', 'token', 'Whether the structure is abstract', 'StructureDefinition.abstract', '',
'base TU', 'reference', 'Definition that this type is constrained/specialized from', 'StructureDefinition.baseDefinition(StructureDefinition)', '',
'base-path TU', 'token', 'Path that identifies the base element', 'StructureDefinition.snapshot.element.base.path | StructureDefinition.differential.element.base.path', '',
'context TU', 'token', 'A use context assigned to the structure definition', '(StructureDefinition.useContext.value as CodeableConcept)', '',
'context-quantity TU', 'quantity', 'A quantity- or range-valued use context assigned to the structure definition', '(StructureDefinition.useContext.value as Quantity) | (StructureDefinition.useContext.value as Range)', '',
'context-type TU', 'token', 'A type of use context assigned to the structure definition', 'StructureDefinition.useContext.code', '',
'context-type-quantity TU', 'composite', 'A use context type and quantity- or range-based value assigned to the structure definition', 'On StructureDefinition.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value TU', 'composite', 'A use context type and value assigned to the structure definition', 'On StructureDefinition.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date TU', 'date', 'The structure definition publication date', 'StructureDefinition.date', '',
'derivation TU', 'token', 'specialization | constraint - How relates to base definition', 'StructureDefinition.derivation', '',
'description TU', 'string', 'The description of the structure definition', 'StructureDefinition.description', '',
'experimental TU', 'token', 'For testing purposes, not real usage', 'StructureDefinition.experimental', '',
'ext-context TU', 'token', 'The system is the URL for the context-type: e.g. http://hl7.org/fhir/extension-context-type#element|CodeableConcept.text', 'StructureDefinition.context.type', '',
'identifier TU', 'token', 'External identifier for the structure definition', 'StructureDefinition.identifier', '',
'jurisdiction TU', 'token', 'Intended jurisdiction for the structure definition', 'StructureDefinition.jurisdiction', '',
'keyword TU', 'token', 'A code for the StructureDefinition', 'StructureDefinition.keyword', '',
'kind TU', 'token', 'primitive-type | complex-type | resource | logical', 'StructureDefinition.kind', '',
'name TU', 'string', 'Computationally friendly name of the structure definition', 'StructureDefinition.name', '',
'path TU', 'token', 'A path that is constrained in the StructureDefinition', 'StructureDefinition.snapshot.element.path | StructureDefinition.differential.element.path', '',
'publisher TU', 'string', 'Name of the publisher of the structure definition', 'StructureDefinition.publisher', '',
'status TU', 'token', 'The current status of the structure definition', 'StructureDefinition.status', '',
'title TU', 'string', 'The human-friendly name of the structure definition', 'StructureDefinition.title', '',
'type TU', 'uri', 'Type defined or constrained by this structure', 'StructureDefinition.type', '',
'url TU', 'uri', 'The uri that identifies the structure definition', 'StructureDefinition.url', '',
'valueset TU', 'reference', 'A vocabulary binding reference', 'StructureDefinition.snapshot.element.binding.valueSet(ValueSet)', '',
'version TU', 'token', 'The business version of the structure definition', 'StructureDefinition.version', '',
)


