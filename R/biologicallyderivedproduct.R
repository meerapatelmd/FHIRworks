df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Patient', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'BiologicallyDerivedProduct', 'TU', '', 'DomainResource', 'A material substance originating from a biological entityElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External ids for this item',
'productCategory', '', '0..1', 'code', 'organ | tissue | fluid | cells | biologicalAgentBiologicallyDerivedProductCategory (Required)',
'productCode', '', '0..1', 'CodeableConcept', 'What this biologically derived product is',
'status', '', '0..1', 'code', 'available | unavailableBiologicallyDerivedProductStatus (Required)',
'request', '', '0..*', 'Reference(ServiceRequest)', 'Procedure request',
'quantity', '', '0..1', 'integer', 'The amount of this biologically derived product',
'parent', '', '0..*', 'Reference(BiologicallyDerivedProduct)', 'BiologicallyDerivedProduct parent',
'collection', '', '0..1', 'BackboneElement', 'How this product was collected',
'collector', '', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Individual performing collection',
'source', '', '0..1', 'Reference(Patient | Organization)', 'Who is product from',
'collected[x]', '', '0..1', '', 'Time of product collection',
'collectedDateTime', '', '', 'dateTime', '',
'collectedPeriod', '', '', 'Period', '',
'processing', '', '0..*', 'BackboneElement', 'Any processing of the product during collection',
'description', '', '0..1', 'string', 'Description of of processing',
'procedure', '', '0..1', 'CodeableConcept', 'Procesing codeProcedure Codes (SNOMED CT) (Example)',
'additive', '', '0..1', 'Reference(Substance)', 'Substance added during processing',
'time[x]', '', '0..1', '', 'Time of processing',
'timeDateTime', '', '', 'dateTime', '',
'timePeriod', '', '', 'Period', '',
'manipulation', '', '0..1', 'BackboneElement', 'Any manipulation of product post-collection',
'description', '', '0..1', 'string', 'Description of manipulation',
'time[x]', '', '0..1', '', 'Time of manipulation',
'timeDateTime', '', '', 'dateTime', '',
'timePeriod', '', '', 'Period', '',
'storage', '', '0..*', 'BackboneElement', 'Product storage',
'description', '', '0..1', 'string', 'Description of storage',
'temperature', '', '0..1', 'decimal', 'Storage temperature',
'scale', '', '0..1', 'code', 'farenheit | celsius | kelvinBiologicallyDerivedProductStorageScale (Required)',
'duration', '', '0..1', 'Period', 'Storage timeperiod',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'BiologicallyDerivedProduct', 'TU', '', 'DomainResource', 'A material substance originating from a biological entityElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External ids for this item',
'productCategory', '', '0..1', 'code', 'organ | tissue | fluid | cells | biologicalAgentBiologicallyDerivedProductCategory (Required)',
'productCode', '', '0..1', 'CodeableConcept', 'What this biologically derived product is',
'status', '', '0..1', 'code', 'available | unavailableBiologicallyDerivedProductStatus (Required)',
'request', '', '0..*', 'Reference(ServiceRequest)', 'Procedure request',
'quantity', '', '0..1', 'integer', 'The amount of this biologically derived product',
'parent', '', '0..*', 'Reference(BiologicallyDerivedProduct)', 'BiologicallyDerivedProduct parent',
'collection', '', '0..1', 'BackboneElement', 'How this product was collected',
'collector', '', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Individual performing collection',
'source', '', '0..1', 'Reference(Patient | Organization)', 'Who is product from',
'collected[x]', '', '0..1', '', 'Time of product collection',
'collectedDateTime', '', '', 'dateTime', '',
'collectedPeriod', '', '', 'Period', '',
'processing', '', '0..*', 'BackboneElement', 'Any processing of the product during collection',
'description', '', '0..1', 'string', 'Description of of processing',
'procedure', '', '0..1', 'CodeableConcept', 'Procesing codeProcedure Codes (SNOMED CT) (Example)',
'additive', '', '0..1', 'Reference(Substance)', 'Substance added during processing',
'time[x]', '', '0..1', '', 'Time of processing',
'timeDateTime', '', '', 'dateTime', '',
'timePeriod', '', '', 'Period', '',
'manipulation', '', '0..1', 'BackboneElement', 'Any manipulation of product post-collection',
'description', '', '0..1', 'string', 'Description of manipulation',
'time[x]', '', '0..1', '', 'Time of manipulation',
'timeDateTime', '', '', 'dateTime', '',
'timePeriod', '', '', 'Period', '',
'storage', '', '0..*', 'BackboneElement', 'Product storage',
'description', '', '0..1', 'string', 'Description of storage',
'temperature', '', '0..1', 'decimal', 'Storage temperature',
'scale', '', '0..1', 'code', 'farenheit | celsius | kelvinBiologicallyDerivedProductStorageScale (Required)',
'duration', '', '0..1', 'Period', 'Storage timeperiod',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'BiologicallyDerivedProduct.productCategory', 'Biologically Derived Product Category.', 'Required', 'BiologicallyDerivedProductCategory',
'BiologicallyDerivedProduct.productCode', 'Biologically Derived Product Code.', 'Unknown', 'No details provided yet',
'BiologicallyDerivedProduct.status', 'Biologically Derived Product Status.', 'Required', 'BiologicallyDerivedProductStatus',
'BiologicallyDerivedProduct.processing.procedure', 'Biologically Derived Product Procedure.', 'Example', 'ProcedureCodes(SNOMEDCT)',
'BiologicallyDerivedProduct.storage.scale', 'BiologicallyDerived Product Storage Scale.', 'Required', 'BiologicallyDerivedProductStorageScale',
)


