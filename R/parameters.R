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
'Parameters', 'ΣN', '', 'Resource', 'Operation Request or ResponseElements defined in Ancestors: id, meta, implicitRules, language',
'parameter', 'ΣI', '0..*', 'BackboneElement', 'Operation Parameter+ Rule: A parameter must have one and only one of (value, resource, part)',
'name', 'Σ', '1..1', 'string', 'Name from the definition',
'value[x]', 'ΣI', '0..1', '*', 'If parameter is a data type',
'resource', 'ΣI', '0..1', 'Resource', 'If parameter is a whole resource',
'part', 'Σ', '0..*', 'see parameter', 'Named part of a multi-part parameter',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'Parameters', '',
'Parameters.parameter.value[x]', 'Add Types canonical, url, uuid, ContactDetail, Contributor, DataRequirement, Expression, ParameterDefinition, RelatedArtifact, TriggerDefinition, UsageContext, Dosage',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Parameters', 'ΣN', '', 'Resource', 'Operation Request or ResponseElements defined in Ancestors: id, meta, implicitRules, language',
'parameter', 'ΣI', '0..*', 'BackboneElement', 'Operation Parameter+ Rule: A parameter must have one and only one of (value, resource, part)',
'name', 'Σ', '1..1', 'string', 'Name from the definition',
'value[x]', 'ΣI', '0..1', '*', 'If parameter is a data type',
'resource', 'ΣI', '0..1', 'Resource', 'If parameter is a whole resource',
'part', 'Σ', '0..*', 'see parameter', 'Named part of a multi-part parameter',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'Parameters', '',
'Parameters.parameter.value[x]', 'Add Types canonical, url, uuid, ContactDetail, Contributor, DataRequirement, Expression, ParameterDefinition, RelatedArtifact, TriggerDefinition, UsageContext, Dosage',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'inv-1', 'Rule', 'Parameters.parameter', 'A parameter must have one and only one of (value, resource, part)', '(part.exists() and value.empty() and resource.empty()) or (part.empty() and (value.exists() xor resource.exists()))',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,
'Parameter Names', 'Parameter names can be repeated at any level. The meaning of duplicate parameter names - and whether it is valid to 
    repeat any given parameter name - depends on the context. Typically, operation definitions
	define what parameters can be used, and whether they can repeat. The order of parameters with different names is not considered significant',
'Resources', 'Resources in parameter.resource do not need to be unique, though the interpretation of 
    non-unique resources, or different versions of the same resource, may be ambiguous in cases where
	the parameter names do not clearly differentiate the purpose of the parameter. For 
	additional commentary, see the notes about about resource uniqueness in Bundles,
	though be aware that those rules do not apply to the Parameters resource unless the fullUrl extension is present on parameters with resources.',
'Internal References', 'When internal references are resolved in a resource in a parameter.resource, the 
    resolution stops at parameter.resource. This allows resources to appear more than
	once in a Parameters resource, and also means that resources cannot reference content in another 
	resource using an internal reference (except for references inside contained resources)',
'References', 'When resolving references in resources, the applicable Operation Definition may 
	  specify how references may be resolved between parameters. If a reference cannot be resolved between the parameters, the application should fall back to it's 
		general resource resolution methods',
)


