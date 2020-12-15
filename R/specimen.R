df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Specimen', 'TU', '', 'DomainResource', 'Sample for analysisElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Identifier',
'accessionIdentifier', 'Σ', '0..1', 'Identifier', 'Identifier assigned by the lab',
'status', '?!Σ', '0..1', 'code', 'available | unavailable | unsatisfactory | entered-in-errorSpecimenStatus (Required)',
'type', 'Σ', '0..1', 'CodeableConcept', 'Kind of material that forms the specimenv2 Specimen Type (Example)',
'subject', 'Σ', '0..1', 'Reference(Patient | Group | Device | Substance | Location)', 'Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental sample), or a sampling of a substance or a device',
'receivedTime', 'Σ', '0..1', 'dateTime', 'The time when specimen was received for processing',
'parent', '', '0..*', 'Reference(Specimen)', 'Specimen from which this specimen originated',
'request', '', '0..*', 'Reference(ServiceRequest)', 'Why the specimen was collected',
'collection', '', '0..1', 'BackboneElement', 'Collection details',
'collector', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Who collected the specimen',
'collected[x]', 'Σ', '0..1', '', 'Collection time',
'collectedDateTime', '', '', 'dateTime', '',
'collectedPeriod', '', '', 'Period', '',
'duration', 'Σ', '0..1', 'Duration', 'How long it took to collect specimen',
'quantity', '', '0..1', 'SimpleQuantity', 'The quantity of specimen collected',
'method', '', '0..1', 'CodeableConcept', 'Technique used to perform collectionFHIR Specimen Collection Method (Example)',
'bodySite', '', '0..1', 'CodeableConcept', 'Anatomical collection siteSNOMED CT Body Structures (Example)',
'fastingStatus[x]', 'Σ', '0..1', '', 'Whether or how long patient abstained from food and/or drinkv2 Relevant Clincial Information (Extensible)',
'fastingStatusCodeableConcept', '', '', 'CodeableConcept', '',
'fastingStatusDuration', '', '', 'Duration', '',
'processing', '', '0..*', 'BackboneElement', 'Processing and processing step details',
'description', '', '0..1', 'string', 'Textual description of procedure',
'procedure', '', '0..1', 'CodeableConcept', 'Indicates the treatment step  applied to the specimenSpecimen processing procedure (Example)',
'additive', '', '0..*', 'Reference(Substance)', 'Material used in the processing step',
'time[x]', '', '0..1', '', 'Date and time of specimen processing',
'timeDateTime', '', '', 'dateTime', '',
'timePeriod', '', '', 'Period', '',
'container', '', '0..*', 'BackboneElement', 'Direct container of specimen (tube/slide, etc.)',
'identifier', 'Σ', '0..*', 'Identifier', 'Id for the container',
'description', '', '0..1', 'string', 'Textual description of the container',
'type', '', '0..1', 'CodeableConcept', 'Kind of container directly associated with specimenSpecimen container (Example)',
'capacity', '', '0..1', 'SimpleQuantity', 'Container volume or size',
'specimenQuantity', '', '0..1', 'SimpleQuantity', 'Quantity of specimen within container',
'additive[x]', '', '0..1', '', 'Additive associated with containerv2 Additive (Example)',
'additiveCodeableConcept', '', '', 'CodeableConcept', '',
'additiveReference', '', '', 'Reference(Substance)', '',
'condition', 'Σ', '0..*', 'CodeableConcept', 'State of the specimenv2 Specimen Condition (Extensible)',
'note', '', '0..*', 'Annotation', 'Comments',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Specimen', '',
'Specimen.status', 'Change value set from http://hl7.org/fhir/ValueSet/specimen-status to http://hl7.org/fhir/ValueSet/specimen-status|4.0.1',
'Specimen.subject', 'Min Cardinality changed from 1 to 0
        Type Reference: Added Target Type Location',
'Specimen.request', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Type ProcedureRequest',
'Specimen.collection.collector', 'Type Reference: Added Target Type PractitionerRole',
'Specimen.collection.duration', 'Added Element',
'Specimen.collection.fastingStatus[x]', 'Added Element',
'Specimen.condition', 'Added Element',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Specimen', 'TU', '', 'DomainResource', 'Sample for analysisElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Identifier',
'accessionIdentifier', 'Σ', '0..1', 'Identifier', 'Identifier assigned by the lab',
'status', '?!Σ', '0..1', 'code', 'available | unavailable | unsatisfactory | entered-in-errorSpecimenStatus (Required)',
'type', 'Σ', '0..1', 'CodeableConcept', 'Kind of material that forms the specimenv2 Specimen Type (Example)',
'subject', 'Σ', '0..1', 'Reference(Patient | Group | Device | Substance | Location)', 'Where the specimen came from. This may be from patient(s), from a location (e.g., the source of an environmental sample), or a sampling of a substance or a device',
'receivedTime', 'Σ', '0..1', 'dateTime', 'The time when specimen was received for processing',
'parent', '', '0..*', 'Reference(Specimen)', 'Specimen from which this specimen originated',
'request', '', '0..*', 'Reference(ServiceRequest)', 'Why the specimen was collected',
'collection', '', '0..1', 'BackboneElement', 'Collection details',
'collector', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Who collected the specimen',
'collected[x]', 'Σ', '0..1', '', 'Collection time',
'collectedDateTime', '', '', 'dateTime', '',
'collectedPeriod', '', '', 'Period', '',
'duration', 'Σ', '0..1', 'Duration', 'How long it took to collect specimen',
'quantity', '', '0..1', 'SimpleQuantity', 'The quantity of specimen collected',
'method', '', '0..1', 'CodeableConcept', 'Technique used to perform collectionFHIR Specimen Collection Method (Example)',
'bodySite', '', '0..1', 'CodeableConcept', 'Anatomical collection siteSNOMED CT Body Structures (Example)',
'fastingStatus[x]', 'Σ', '0..1', '', 'Whether or how long patient abstained from food and/or drinkv2 Relevant Clincial Information (Extensible)',
'fastingStatusCodeableConcept', '', '', 'CodeableConcept', '',
'fastingStatusDuration', '', '', 'Duration', '',
'processing', '', '0..*', 'BackboneElement', 'Processing and processing step details',
'description', '', '0..1', 'string', 'Textual description of procedure',
'procedure', '', '0..1', 'CodeableConcept', 'Indicates the treatment step  applied to the specimenSpecimen processing procedure (Example)',
'additive', '', '0..*', 'Reference(Substance)', 'Material used in the processing step',
'time[x]', '', '0..1', '', 'Date and time of specimen processing',
'timeDateTime', '', '', 'dateTime', '',
'timePeriod', '', '', 'Period', '',
'container', '', '0..*', 'BackboneElement', 'Direct container of specimen (tube/slide, etc.)',
'identifier', 'Σ', '0..*', 'Identifier', 'Id for the container',
'description', '', '0..1', 'string', 'Textual description of the container',
'type', '', '0..1', 'CodeableConcept', 'Kind of container directly associated with specimenSpecimen container (Example)',
'capacity', '', '0..1', 'SimpleQuantity', 'Container volume or size',
'specimenQuantity', '', '0..1', 'SimpleQuantity', 'Quantity of specimen within container',
'additive[x]', '', '0..1', '', 'Additive associated with containerv2 Additive (Example)',
'additiveCodeableConcept', '', '', 'CodeableConcept', '',
'additiveReference', '', '', 'Reference(Substance)', '',
'condition', 'Σ', '0..*', 'CodeableConcept', 'State of the specimenv2 Specimen Condition (Extensible)',
'note', '', '0..*', 'Annotation', 'Comments',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Specimen', '',
'Specimen.status', 'Change value set from http://hl7.org/fhir/ValueSet/specimen-status to http://hl7.org/fhir/ValueSet/specimen-status|4.0.1',
'Specimen.subject', 'Min Cardinality changed from 1 to 0
        Type Reference: Added Target Type Location',
'Specimen.request', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Type ProcedureRequest',
'Specimen.collection.collector', 'Type Reference: Added Target Type PractitionerRole',
'Specimen.collection.duration', 'Added Element',
'Specimen.collection.fastingStatus[x]', 'Added Element',
'Specimen.condition', 'Added Element',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Specimen.status', 'Codes providing the status/availability of a specimen.', 'Required', 'SpecimenStatus',
'Specimen.type', 'The type of the specimen.', 'Example', 'v2.0487',
'Specimen.collection.method', 'The  technique that is used to perform the procedure.', 'Example', 'FHIRSpecimenCollectionMethod',
'Specimen.collection.bodySite', 'Codes describing anatomical locations. May include laterality.', 'Example', 'SNOMEDCTBodyStructures',
'Specimen.collection.fastingStatus[x]', 'Codes describing the fasting status of the patient.', 'Extensible', 'v2.0916',
'Specimen.processing.procedure', 'Type indicating the technique used to process the specimen.', 'Example', 'SpecimenProcessingProcedure',
'Specimen.container.type', 'Type of specimen container.', 'Example', 'SpecimenContainer',
'Specimen.container.additive[x]', 'Substance added to specimen container.', 'Example', 'v2.0371',
'Specimen.condition', 'Codes describing the state of the specimen.', 'Extensible', 'v2.0493',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'accession', 'token', 'The accession number associated with the specimen', 'Specimen.accessionIdentifier', '',
'bodysite', 'token', 'The code for the body site from where the specimen originated', 'Specimen.collection.bodySite', '',
'collected', 'date', 'The date the specimen was collected', 'Specimen.collection.collected', '',
'collector', 'reference', 'Who collected the specimen', 'Specimen.collection.collector(Practitioner, PractitionerRole)', '',
'container', 'token', 'The kind of specimen container', 'Specimen.container.type', '',
'container-id', 'token', 'The unique identifier associated with the specimen container', 'Specimen.container.identifier', '',
'identifier', 'token', 'The unique identifier associated with the specimen', 'Specimen.identifier', '',
'parent', 'reference', 'The parent of the specimen', 'Specimen.parent(Specimen)', '',
'patient', 'reference', 'The patient the specimen comes from', 'Specimen.subject.where(resolve() is Patient)(Patient)', '',
'status', 'token', 'available | unavailable | unsatisfactory | entered-in-error', 'Specimen.status', '',
'subject', 'reference', 'The subject of the specimen', 'Specimen.subject(Group, Device, Patient, Substance, Location)', '',
'type', 'token', 'The specimen type', 'Specimen.type', '',
)


