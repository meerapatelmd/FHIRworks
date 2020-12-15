df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DeviceDefinition', 'TU', '', 'DomainResource', 'An instance of a medical-related component of a medical deviceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Instance identifier',
'udiDeviceIdentifier', '', '0..*', 'BackboneElement', 'Unique Device Identifier (UDI) Barcode string',
'deviceIdentifier', '', '1..1', 'string', 'The identifier that is to be associated with every Device that references this DeviceDefintiion for the issuer and jurisdication porvided in the DeviceDefinition.udiDeviceIdentifier',
'issuer', '', '1..1', 'uri', 'The organization that assigns the identifier algorithm',
'jurisdiction', '', '1..1', 'uri', 'The jurisdiction to which the deviceIdentifier applies',
'manufacturer[x]', '', '0..1', '', 'Name of device manufacturer',
'manufacturerString', '', '', 'string', '',
'manufacturerReference', '', '', 'Reference(Organization)', '',
'deviceName', '', '0..*', 'BackboneElement', 'A name given to the device to identify it',
'name', '', '1..1', 'string', 'The name of the device',
'type', '', '1..1', 'code', 'udi-label-name | user-friendly-name | patient-reported-name | manufacturer-name | model-name | otherDeviceNameType (Required)',
'modelNumber', '', '0..1', 'string', 'The model number for the device',
'type', '', '0..1', 'CodeableConcept', 'What kind of device or device system this isFHIR Device Types (Example)',
'specialization', '', '0..*', 'BackboneElement', 'The capabilities supported on a  device, the standards to which the device conforms for a particular purpose, and used for the communication',
'systemType', '', '1..1', 'string', 'The standard that is used to operate and communicate',
'version', '', '0..1', 'string', 'The version of the standard that is used to operate and communicate',
'version', '', '0..*', 'string', 'Available versions',
'safety', 'Σ', '0..*', 'CodeableConcept', 'Safety characteristics of the deviceDevice safety (Example)',
'shelfLifeStorage', '', '0..*', 'ProductShelfLife', 'Shelf Life and storage information',
'physicalCharacteristics', '', '0..1', 'ProdCharacteristic', 'Dimensions, color etc.',
'languageCode', '', '0..*', 'CodeableConcept', 'Language code for the human-readable text strings produced by the device (all supported)',
'capability', '', '0..*', 'BackboneElement', 'Device capabilities',
'type', '', '1..1', 'CodeableConcept', 'Type of capability',
'description', '', '0..*', 'CodeableConcept', 'Description of capability',
'property', '', '0..*', 'BackboneElement', 'The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties',
'type', '', '1..1', 'CodeableConcept', 'Code that specifies the property DeviceDefinitionPropetyCode (Extensible)',
'valueQuantity', '', '0..*', 'Quantity', 'Property value as a quantity',
'valueCode', '', '0..*', 'CodeableConcept', 'Property value as a code, e.g., NTP4 (synced to NTP)',
'owner', '', '0..1', 'Reference(Organization)', 'Organization responsible for device',
'contact', '', '0..*', 'ContactPoint', 'Details for human/organization for support',
'url', '', '0..1', 'uri', 'Network address to contact device',
'onlineInformation', '', '0..1', 'uri', 'Access to on-line information',
'note', '', '0..*', 'Annotation', 'Device notes and comments',
'quantity', '', '0..1', 'Quantity', 'The quantity of the device present in the packaging (e.g. the number of devices present in a pack, or the number of devices in the same package of the medicinal product)',
'parentDevice', 'Σ', '0..1', 'Reference(DeviceDefinition)', 'The parent device it can be part of',
'material', '', '0..*', 'BackboneElement', 'A substance used to create the material(s) of which the device is made',
'substance', '', '1..1', 'CodeableConcept', 'The substance',
'alternate', '', '0..1', 'boolean', 'Indicates an alternative material of the device',
'allergenicIndicator', '', '0..1', 'boolean', 'Whether the substance is a known or suspected allergen',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DeviceDefinition', 'TU', '', 'DomainResource', 'An instance of a medical-related component of a medical deviceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Instance identifier',
'udiDeviceIdentifier', '', '0..*', 'BackboneElement', 'Unique Device Identifier (UDI) Barcode string',
'deviceIdentifier', '', '1..1', 'string', 'The identifier that is to be associated with every Device that references this DeviceDefintiion for the issuer and jurisdication porvided in the DeviceDefinition.udiDeviceIdentifier',
'issuer', '', '1..1', 'uri', 'The organization that assigns the identifier algorithm',
'jurisdiction', '', '1..1', 'uri', 'The jurisdiction to which the deviceIdentifier applies',
'manufacturer[x]', '', '0..1', '', 'Name of device manufacturer',
'manufacturerString', '', '', 'string', '',
'manufacturerReference', '', '', 'Reference(Organization)', '',
'deviceName', '', '0..*', 'BackboneElement', 'A name given to the device to identify it',
'name', '', '1..1', 'string', 'The name of the device',
'type', '', '1..1', 'code', 'udi-label-name | user-friendly-name | patient-reported-name | manufacturer-name | model-name | otherDeviceNameType (Required)',
'modelNumber', '', '0..1', 'string', 'The model number for the device',
'type', '', '0..1', 'CodeableConcept', 'What kind of device or device system this isFHIR Device Types (Example)',
'specialization', '', '0..*', 'BackboneElement', 'The capabilities supported on a  device, the standards to which the device conforms for a particular purpose, and used for the communication',
'systemType', '', '1..1', 'string', 'The standard that is used to operate and communicate',
'version', '', '0..1', 'string', 'The version of the standard that is used to operate and communicate',
'version', '', '0..*', 'string', 'Available versions',
'safety', 'Σ', '0..*', 'CodeableConcept', 'Safety characteristics of the deviceDevice safety (Example)',
'shelfLifeStorage', '', '0..*', 'ProductShelfLife', 'Shelf Life and storage information',
'physicalCharacteristics', '', '0..1', 'ProdCharacteristic', 'Dimensions, color etc.',
'languageCode', '', '0..*', 'CodeableConcept', 'Language code for the human-readable text strings produced by the device (all supported)',
'capability', '', '0..*', 'BackboneElement', 'Device capabilities',
'type', '', '1..1', 'CodeableConcept', 'Type of capability',
'description', '', '0..*', 'CodeableConcept', 'Description of capability',
'property', '', '0..*', 'BackboneElement', 'The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties',
'type', '', '1..1', 'CodeableConcept', 'Code that specifies the property DeviceDefinitionPropetyCode (Extensible)',
'valueQuantity', '', '0..*', 'Quantity', 'Property value as a quantity',
'valueCode', '', '0..*', 'CodeableConcept', 'Property value as a code, e.g., NTP4 (synced to NTP)',
'owner', '', '0..1', 'Reference(Organization)', 'Organization responsible for device',
'contact', '', '0..*', 'ContactPoint', 'Details for human/organization for support',
'url', '', '0..1', 'uri', 'Network address to contact device',
'onlineInformation', '', '0..1', 'uri', 'Access to on-line information',
'note', '', '0..*', 'Annotation', 'Device notes and comments',
'quantity', '', '0..1', 'Quantity', 'The quantity of the device present in the packaging (e.g. the number of devices present in a pack, or the number of devices in the same package of the medicinal product)',
'parentDevice', 'Σ', '0..1', 'Reference(DeviceDefinition)', 'The parent device it can be part of',
'material', '', '0..*', 'BackboneElement', 'A substance used to create the material(s) of which the device is made',
'substance', '', '1..1', 'CodeableConcept', 'The substance',
'alternate', '', '0..1', 'boolean', 'Indicates an alternative material of the device',
'allergenicIndicator', '', '0..1', 'boolean', 'Whether the substance is a known or suspected allergen',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'DeviceDefinition.deviceName.type', 'The type of name the device is referred by.', 'Required', 'DeviceNameType',
'DeviceDefinition.type', 'Type of device e.g. according to official classification.', 'Example', 'FHIRDeviceTypes',
'DeviceDefinition.safety', '', 'Example', 'DeviceSafety',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'identifier', 'token', 'The identifier of the component', 'DeviceDefinition.identifier', '',
'parent', 'reference', 'The parent DeviceDefinition resource', 'DeviceDefinition.parentDevice(DeviceDefinition)', '',
'type', 'token', 'The device component type', 'DeviceDefinition.type', '',
)


