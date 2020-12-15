df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ChargeItemDefinition', 'ITU', '', 'DomainResource', 'Definition of properties and rules about how the price and the applicability of a ChargeItem can be determined+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '1..1', 'uri', 'Canonical identifier for this charge item definition, represented as a URI (globally unique)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the charge item definition',
'version', 'Σ', '0..1', 'string', 'Business version of the charge item definition',
'title', 'Σ', '0..1', 'string', 'Name for this charge item definition (human friendly)',
'derivedFromUri', 'Σ', '0..*', 'uri', 'Underlying externally-defined charge item definition',
'partOf', 'Σ', '0..*', 'canonical(ChargeItemDefinition)', 'A larger definition of which this particular definition is a component or step',
'replaces', 'Σ', '0..*', 'canonical(ChargeItemDefinition)', 'Completed or terminated request(s) whose function is taken by this new request',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', 'Σ', '0..1', 'markdown', 'Natural language description of the charge item definition',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for charge item definition (if applicable)Jurisdiction (Extensible)',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'approvalDate', '', '0..1', 'date', 'When the charge item definition was approved by publisher',
'lastReviewDate', '', '0..1', 'date', 'When the charge item definition was last reviewed',
'effectivePeriod', 'Σ', '0..1', 'Period', 'When the charge item definition is expected to be used',
'code', 'Σ', '0..1', 'CodeableConcept', 'Billing codes or product types this definition applies toChargeItemCode (Example)',
'instance', '', '0..*', 'Reference(Medication | Substance | Device)', 'Instances this definition applies to',
'applicability', '', '0..*', 'BackboneElement', 'Whether or not the billing code is applicable',
'description', '', '0..1', 'string', 'Natural language description of the condition',
'language', '', '0..1', 'string', 'Language of the expression',
'expression', '', '0..1', 'string', 'Boolean-valued expression',
'propertyGroup', '', '0..*', 'BackboneElement', 'Group of properties which are applicable under the same conditions',
'applicability', '', '0..*', 'see applicability', 'Conditions under which the priceComponent is applicable',
'priceComponent', '', '0..*', 'BackboneElement', 'Components of total line item price',
'type', '', '1..1', 'code', 'base | surcharge | deduction | discount | tax | informationalInvoicePriceComponentType (Required)',
'code', '', '0..1', 'CodeableConcept', 'Code identifying the specific component',
'factor', '', '0..1', 'decimal', 'Factor used for calculating this component',
'amount', '', '0..1', 'Money', 'Monetary amount associated with this component',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ChargeItemDefinition', 'ITU', '', 'DomainResource', 'Definition of properties and rules about how the price and the applicability of a ChargeItem can be determined+ Warning: Name should be usable as an identifier for the module by machine processing applications such as code generationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'url', 'Σ', '1..1', 'uri', 'Canonical identifier for this charge item definition, represented as a URI (globally unique)',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the charge item definition',
'version', 'Σ', '0..1', 'string', 'Business version of the charge item definition',
'title', 'Σ', '0..1', 'string', 'Name for this charge item definition (human friendly)',
'derivedFromUri', 'Σ', '0..*', 'uri', 'Underlying externally-defined charge item definition',
'partOf', 'Σ', '0..*', 'canonical(ChargeItemDefinition)', 'A larger definition of which this particular definition is a component or step',
'replaces', 'Σ', '0..*', 'canonical(ChargeItemDefinition)', 'Completed or terminated request(s) whose function is taken by this new request',
'status', '?!Σ', '1..1', 'code', 'draft | active | retired | unknownPublicationStatus (Required)',
'experimental', 'Σ', '0..1', 'boolean', 'For testing purposes, not real usage',
'date', 'Σ', '0..1', 'dateTime', 'Date last changed',
'publisher', 'Σ', '0..1', 'string', 'Name of the publisher (organization or individual)',
'contact', 'Σ', '0..*', 'ContactDetail', 'Contact details for the publisher',
'description', 'Σ', '0..1', 'markdown', 'Natural language description of the charge item definition',
'useContext', 'Σ', '0..*', 'UsageContext', 'The context that the content is intended to support',
'jurisdiction', 'Σ', '0..*', 'CodeableConcept', 'Intended jurisdiction for charge item definition (if applicable)Jurisdiction (Extensible)',
'copyright', '', '0..1', 'markdown', 'Use and/or publishing restrictions',
'approvalDate', '', '0..1', 'date', 'When the charge item definition was approved by publisher',
'lastReviewDate', '', '0..1', 'date', 'When the charge item definition was last reviewed',
'effectivePeriod', 'Σ', '0..1', 'Period', 'When the charge item definition is expected to be used',
'code', 'Σ', '0..1', 'CodeableConcept', 'Billing codes or product types this definition applies toChargeItemCode (Example)',
'instance', '', '0..*', 'Reference(Medication | Substance | Device)', 'Instances this definition applies to',
'applicability', '', '0..*', 'BackboneElement', 'Whether or not the billing code is applicable',
'description', '', '0..1', 'string', 'Natural language description of the condition',
'language', '', '0..1', 'string', 'Language of the expression',
'expression', '', '0..1', 'string', 'Boolean-valued expression',
'propertyGroup', '', '0..*', 'BackboneElement', 'Group of properties which are applicable under the same conditions',
'applicability', '', '0..*', 'see applicability', 'Conditions under which the priceComponent is applicable',
'priceComponent', '', '0..*', 'BackboneElement', 'Components of total line item price',
'type', '', '1..1', 'code', 'base | surcharge | deduction | discount | tax | informationalInvoicePriceComponentType (Required)',
'code', '', '0..1', 'CodeableConcept', 'Code identifying the specific component',
'factor', '', '0..1', 'decimal', 'Factor used for calculating this component',
'amount', '', '0..1', 'Money', 'Monetary amount associated with this component',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'ChargeItemDefinition.status', 'The lifecycle status of an artifact.', 'Required', 'PublicationStatus',
'ChargeItemDefinition.jurisdiction', 'Countries and regions within which this artifact is targeted for use.', 'Extensible', 'Jurisdiction ValueSet',
'ChargeItemDefinition.code', 'Billing Code defined by this ChargeItemDefinition.', 'Example', 'ChargeItemCode',
'ChargeItemDefinition.propertyGroup.priceComponent.type', 'Codes indicating the kind of the price component.', 'Required', 'InvoicePriceComponentType',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'cid-0', 'Warning', '(base)', 'Name should be usable as an identifier for the module by machine processing applications such as code generation', 'name.matches('[A-Z]([A-Za-z0-9_]){0,254}')',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'context', 'token', 'A use context assigned to the charge item definition', '(ChargeItemDefinition.useContext.value as CodeableConcept)', '',
'context-quantity', 'quantity', 'A quantity- or range-valued use context assigned to the charge item definition', '(ChargeItemDefinition.useContext.value as Quantity) | (ChargeItemDefinition.useContext.value as Range)', '',
'context-type', 'token', 'A type of use context assigned to the charge item definition', 'ChargeItemDefinition.useContext.code', '',
'context-type-quantity', 'composite', 'A use context type and quantity- or range-based value assigned to the charge item definition', 'On ChargeItemDefinition.useContext:  context-type: code  context-quantity: value.as(Quantity) | value.as(Range)', '',
'context-type-value', 'composite', 'A use context type and value assigned to the charge item definition', 'On ChargeItemDefinition.useContext:  context-type: code  context: value.as(CodeableConcept)', '',
'date', 'date', 'The charge item definition publication date', 'ChargeItemDefinition.date', '',
'description', 'string', 'The description of the charge item definition', 'ChargeItemDefinition.description', '',
'effective', 'date', 'The time during which the charge item definition is intended to be in use', 'ChargeItemDefinition.effectivePeriod', '',
'identifier', 'token', 'External identifier for the charge item definition', 'ChargeItemDefinition.identifier', '',
'jurisdiction', 'token', 'Intended jurisdiction for the charge item definition', 'ChargeItemDefinition.jurisdiction', '',
'publisher', 'string', 'Name of the publisher of the charge item definition', 'ChargeItemDefinition.publisher', '',
'status', 'token', 'The current status of the charge item definition', 'ChargeItemDefinition.status', '',
'title', 'string', 'The human-friendly name of the charge item definition', 'ChargeItemDefinition.title', '',
'url', 'uri', 'The uri that identifies the charge item definition', 'ChargeItemDefinition.url', '',
'version', 'token', 'The business version of the charge item definition', 'ChargeItemDefinition.version', '',
)


