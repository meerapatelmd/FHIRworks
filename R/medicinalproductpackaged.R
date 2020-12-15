df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Biomedical Research and Regulation  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductPackaged', 'ΣTU', '', 'DomainResource', 'A medicinal product in a container or packageElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique identifier',
'subject', 'Σ', '0..*', 'Reference(MedicinalProduct)', 'The product with this is a pack for',
'description', 'Σ', '0..1', 'string', 'Textual description',
'legalStatusOfSupply', 'Σ', '0..1', 'CodeableConcept', 'The legal status of supply of the medicinal product as classified by the regulator',
'marketingStatus', 'Σ', '0..*', 'MarketingStatus', 'Marketing information',
'marketingAuthorization', 'Σ', '0..1', 'Reference(MedicinalProductAuthorization)', 'Manufacturer of this Package Item',
'manufacturer', 'Σ', '0..*', 'Reference(Organization)', 'Manufacturer of this Package Item',
'batchIdentifier', 'Σ', '0..*', 'BackboneElement', 'Batch numbering',
'outerPackaging', 'Σ', '1..1', 'Identifier', 'A number appearing on the outer packaging of a specific batch',
'immediatePackaging', 'Σ', '0..1', 'Identifier', 'A number appearing on the immediate packaging (and not the outer packaging)',
'packageItem', 'Σ', '1..*', 'BackboneElement', 'A packaging item, as a contained for medicine, possibly with other packaging items within',
'identifier', 'Σ', '0..*', 'Identifier', 'Including possibly Data Carrier Identifier',
'type', 'Σ', '1..1', 'CodeableConcept', 'The physical type of the container of the medicine',
'quantity', 'Σ', '1..1', 'Quantity', 'The quantity of this package in the medicinal product, at the current level of packaging. The outermost is always 1',
'material', 'Σ', '0..*', 'CodeableConcept', 'Material type of the package item',
'alternateMaterial', 'Σ', '0..*', 'CodeableConcept', 'A possible alternate material for the packaging',
'device', 'Σ', '0..*', 'Reference(DeviceDefinition)', 'A device accompanying a medicinal product',
'manufacturedItem', 'Σ', '0..*', 'Reference(MedicinalProductManufactured)', 'The manufactured item as contained in the packaged medicinal product',
'packageItem', 'Σ', '0..*', 'see packageItem', 'Allows containers within containers',
'physicalCharacteristics', 'Σ', '0..1', 'ProdCharacteristic', 'Dimensions, color etc.',
'otherCharacteristics', 'Σ', '0..*', 'CodeableConcept', 'Other codeable characteristics',
'shelfLifeStorage', 'Σ', '0..*', 'ProductShelfLife', 'Shelf Life and storage information',
'manufacturer', 'Σ', '0..*', 'Reference(Organization)', 'Manufacturer of this Package Item',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MedicinalProductPackaged', 'ΣTU', '', 'DomainResource', 'A medicinal product in a container or packageElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique identifier',
'subject', 'Σ', '0..*', 'Reference(MedicinalProduct)', 'The product with this is a pack for',
'description', 'Σ', '0..1', 'string', 'Textual description',
'legalStatusOfSupply', 'Σ', '0..1', 'CodeableConcept', 'The legal status of supply of the medicinal product as classified by the regulator',
'marketingStatus', 'Σ', '0..*', 'MarketingStatus', 'Marketing information',
'marketingAuthorization', 'Σ', '0..1', 'Reference(MedicinalProductAuthorization)', 'Manufacturer of this Package Item',
'manufacturer', 'Σ', '0..*', 'Reference(Organization)', 'Manufacturer of this Package Item',
'batchIdentifier', 'Σ', '0..*', 'BackboneElement', 'Batch numbering',
'outerPackaging', 'Σ', '1..1', 'Identifier', 'A number appearing on the outer packaging of a specific batch',
'immediatePackaging', 'Σ', '0..1', 'Identifier', 'A number appearing on the immediate packaging (and not the outer packaging)',
'packageItem', 'Σ', '1..*', 'BackboneElement', 'A packaging item, as a contained for medicine, possibly with other packaging items within',
'identifier', 'Σ', '0..*', 'Identifier', 'Including possibly Data Carrier Identifier',
'type', 'Σ', '1..1', 'CodeableConcept', 'The physical type of the container of the medicine',
'quantity', 'Σ', '1..1', 'Quantity', 'The quantity of this package in the medicinal product, at the current level of packaging. The outermost is always 1',
'material', 'Σ', '0..*', 'CodeableConcept', 'Material type of the package item',
'alternateMaterial', 'Σ', '0..*', 'CodeableConcept', 'A possible alternate material for the packaging',
'device', 'Σ', '0..*', 'Reference(DeviceDefinition)', 'A device accompanying a medicinal product',
'manufacturedItem', 'Σ', '0..*', 'Reference(MedicinalProductManufactured)', 'The manufactured item as contained in the packaged medicinal product',
'packageItem', 'Σ', '0..*', 'see packageItem', 'Allows containers within containers',
'physicalCharacteristics', 'Σ', '0..1', 'ProdCharacteristic', 'Dimensions, color etc.',
'otherCharacteristics', 'Σ', '0..*', 'CodeableConcept', 'Other codeable characteristics',
'shelfLifeStorage', 'Σ', '0..*', 'ProductShelfLife', 'Shelf Life and storage information',
'manufacturer', 'Σ', '0..*', 'Reference(Organization)', 'Manufacturer of this Package Item',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'identifier', 'token', 'Unique identifier', 'MedicinalProductPackaged.identifier', '',
'subject', 'reference', 'The product with this is a pack for', 'MedicinalProductPackaged.subject(MedicinalProduct)', '',
)


