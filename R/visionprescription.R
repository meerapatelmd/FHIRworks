df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Financial Management  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Encounter, Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
'VisionPrescription', 'The VisionPrescription resource is used to provide the authorized specification of lenses for glasses and contacts.',
'DeviceRequest', 'This resource is used to prescribe, authorize, and request provision of a health care device such as a halter monitor or a wheelchair services.',
'MedicationRequest', 'This resource is used to prescribe, authorize, and request provision of medications such a pharmaceuticals and vaccines.',
'ServiceRequest', 'This resource is used to prescribe, authorize, and request provision of health care services such as consultative or rehabilitative services.',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'VisionPrescription', 'TU', '', 'DomainResource', 'Prescription for vision correction products for a patientElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier for vision prescription',
'status', '?!Σ', '1..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'created', 'Σ', '1..1', 'dateTime', 'Response creation date',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Who prescription is for',
'encounter', '', '0..1', 'Reference(Encounter)', 'Created during encounter / admission / stay',
'dateWritten', 'Σ', '1..1', 'dateTime', 'When prescription was authorized',
'prescriber', 'Σ', '1..1', 'Reference(Practitioner | PractitionerRole)', 'Who authorized the vision prescription',
'lensSpecification', 'Σ', '1..*', 'BackboneElement', 'Vision lens authorization',
'product', 'Σ', '1..1', 'CodeableConcept', 'Product to be suppliedExample Vision Prescription Product Codes (Example)',
'eye', 'Σ', '1..1', 'code', 'right | leftVisionEyes (Required)',
'sphere', '', '0..1', 'decimal', 'Power of the lens',
'cylinder', '', '0..1', 'decimal', 'Lens power for astigmatism',
'axis', '', '0..1', 'integer', 'Lens meridian which contain no power for astigmatism',
'prism', '', '0..*', 'BackboneElement', 'Eye alignment compensation',
'amount', '', '1..1', 'decimal', 'Amount of adjustment',
'base', '', '1..1', 'code', 'up | down | in | outVisionBase (Required)',
'add', '', '0..1', 'decimal', 'Added power for multifocal levels',
'power', '', '0..1', 'decimal', 'Contact lens power',
'backCurve', '', '0..1', 'decimal', 'Contact lens back curvature',
'diameter', '', '0..1', 'decimal', 'Contact lens diameter',
'duration', '', '0..1', 'SimpleQuantity', 'Lens wear duration',
'color', '', '0..1', 'string', 'Color required',
'brand', '', '0..1', 'string', 'Brand required',
'note', '', '0..*', 'Annotation', 'Notes for coatings',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'VisionPrescription', '',
'VisionPrescription.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/fm-status to http://hl7.org/fhir/ValueSet/fm-status|4.0.1',
'VisionPrescription.created', 'Added Mandatory Element',
'VisionPrescription.patient', 'Min Cardinality changed from 0 to 1',
'VisionPrescription.dateWritten', 'Min Cardinality changed from 0 to 1',
'VisionPrescription.prescriber', 'Min Cardinality changed from 0 to 1
        Type Reference: Added Target Type PractitionerRole',
'VisionPrescription.lensSpecification', 'Added Mandatory Element',
'VisionPrescription.lensSpecification.product', 'Added Mandatory Element',
'VisionPrescription.lensSpecification.eye', 'Added Mandatory Element',
'VisionPrescription.lensSpecification.sphere', 'Added Element',
'VisionPrescription.lensSpecification.cylinder', 'Added Element',
'VisionPrescription.lensSpecification.axis', 'Added Element',
'VisionPrescription.lensSpecification.prism', 'Added Element',
'VisionPrescription.lensSpecification.prism.amount', 'Added Mandatory Element',
'VisionPrescription.lensSpecification.prism.base', 'Added Mandatory Element',
'VisionPrescription.lensSpecification.add', 'Added Element',
'VisionPrescription.lensSpecification.power', 'Added Element',
'VisionPrescription.lensSpecification.backCurve', 'Added Element',
'VisionPrescription.lensSpecification.diameter', 'Added Element',
'VisionPrescription.lensSpecification.duration', 'Added Element',
'VisionPrescription.lensSpecification.color', 'Added Element',
'VisionPrescription.lensSpecification.brand', 'Added Element',
'VisionPrescription.lensSpecification.note', 'Added Element',
'VisionPrescription.reason[x]', 'deleted',
'VisionPrescription.dispense', 'deleted',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'VisionPrescription', 'TU', '', 'DomainResource', 'Prescription for vision correction products for a patientElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier for vision prescription',
'status', '?!Σ', '1..1', 'code', 'active | cancelled | draft | entered-in-errorFinancial Resource Status Codes (Required)',
'created', 'Σ', '1..1', 'dateTime', 'Response creation date',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Who prescription is for',
'encounter', '', '0..1', 'Reference(Encounter)', 'Created during encounter / admission / stay',
'dateWritten', 'Σ', '1..1', 'dateTime', 'When prescription was authorized',
'prescriber', 'Σ', '1..1', 'Reference(Practitioner | PractitionerRole)', 'Who authorized the vision prescription',
'lensSpecification', 'Σ', '1..*', 'BackboneElement', 'Vision lens authorization',
'product', 'Σ', '1..1', 'CodeableConcept', 'Product to be suppliedExample Vision Prescription Product Codes (Example)',
'eye', 'Σ', '1..1', 'code', 'right | leftVisionEyes (Required)',
'sphere', '', '0..1', 'decimal', 'Power of the lens',
'cylinder', '', '0..1', 'decimal', 'Lens power for astigmatism',
'axis', '', '0..1', 'integer', 'Lens meridian which contain no power for astigmatism',
'prism', '', '0..*', 'BackboneElement', 'Eye alignment compensation',
'amount', '', '1..1', 'decimal', 'Amount of adjustment',
'base', '', '1..1', 'code', 'up | down | in | outVisionBase (Required)',
'add', '', '0..1', 'decimal', 'Added power for multifocal levels',
'power', '', '0..1', 'decimal', 'Contact lens power',
'backCurve', '', '0..1', 'decimal', 'Contact lens back curvature',
'diameter', '', '0..1', 'decimal', 'Contact lens diameter',
'duration', '', '0..1', 'SimpleQuantity', 'Lens wear duration',
'color', '', '0..1', 'string', 'Color required',
'brand', '', '0..1', 'string', 'Brand required',
'note', '', '0..*', 'Annotation', 'Notes for coatings',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'VisionPrescription', '',
'VisionPrescription.status', 'Min Cardinality changed from 0 to 1
        Change value set from http://hl7.org/fhir/ValueSet/fm-status to http://hl7.org/fhir/ValueSet/fm-status|4.0.1',
'VisionPrescription.created', 'Added Mandatory Element',
'VisionPrescription.patient', 'Min Cardinality changed from 0 to 1',
'VisionPrescription.dateWritten', 'Min Cardinality changed from 0 to 1',
'VisionPrescription.prescriber', 'Min Cardinality changed from 0 to 1
        Type Reference: Added Target Type PractitionerRole',
'VisionPrescription.lensSpecification', 'Added Mandatory Element',
'VisionPrescription.lensSpecification.product', 'Added Mandatory Element',
'VisionPrescription.lensSpecification.eye', 'Added Mandatory Element',
'VisionPrescription.lensSpecification.sphere', 'Added Element',
'VisionPrescription.lensSpecification.cylinder', 'Added Element',
'VisionPrescription.lensSpecification.axis', 'Added Element',
'VisionPrescription.lensSpecification.prism', 'Added Element',
'VisionPrescription.lensSpecification.prism.amount', 'Added Mandatory Element',
'VisionPrescription.lensSpecification.prism.base', 'Added Mandatory Element',
'VisionPrescription.lensSpecification.add', 'Added Element',
'VisionPrescription.lensSpecification.power', 'Added Element',
'VisionPrescription.lensSpecification.backCurve', 'Added Element',
'VisionPrescription.lensSpecification.diameter', 'Added Element',
'VisionPrescription.lensSpecification.duration', 'Added Element',
'VisionPrescription.lensSpecification.color', 'Added Element',
'VisionPrescription.lensSpecification.brand', 'Added Element',
'VisionPrescription.lensSpecification.note', 'Added Element',
'VisionPrescription.reason[x]', 'deleted',
'VisionPrescription.dispense', 'deleted',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'VisionPrescription.status', 'A code specifying the state of the resource instance.', 'Required', 'FinancialResourceStatusCodes',
'VisionPrescription.lensSpecification.product', 'A coded concept describing the vision products.', 'Example', 'ExampleVisionPrescriptionProductCodes',
'VisionPrescription.lensSpecification.eye', 'A coded concept listing the eye codes.', 'Required', 'VisionEyes',
'VisionPrescription.lensSpecification.prism.base', 'A coded concept listing the base codes.', 'Required', 'VisionBase',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'datewritten', 'date', 'Return prescriptions written on this date', 'VisionPrescription.dateWritten', '',
'encounter', 'reference', 'Return prescriptions with this encounter identifier', 'VisionPrescription.encounter(Encounter)', '12 Resources',
'identifier', 'token', 'Return prescriptions with this external identifier', 'VisionPrescription.identifier', '30 Resources',
'patient', 'reference', 'The identity of a patient to list dispenses for', 'VisionPrescription.patient(Patient)', '33 Resources',
'prescriber', 'reference', 'Who authorized the vision prescription', 'VisionPrescription.prescriber(Practitioner, PractitionerRole)', '',
'status', 'token', 'The status of the vision prescription', 'VisionPrescription.status', '',
)


