df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Encounter, Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Media', 'TU', '', 'DomainResource', 'A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided by direct referenceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Identifier(s) for the image',
'basedOn', 'Σ', '0..*', 'Reference(ServiceRequest | CarePlan)', 'Procedure that caused this media to be created',
'partOf', 'Σ', '0..*', 'Reference(Any)', 'Part of referenced event',
'status', '?!Σ', '1..1', 'code', 'preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknownEventStatus (Required)',
'type', 'Σ', '0..1', 'CodeableConcept', 'Classification of media as image, video, or audioMedia Type (Extensible)',
'modality', 'Σ', '0..1', 'CodeableConcept', 'The type of acquisition equipment/processMedia Modality (Example)',
'view', 'Σ', '0..1', 'CodeableConcept', 'Imaging view, e.g. Lateral or Antero-posteriorMedia Collection View/Projection (Example)',
'subject', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | Group | Device | Specimen | Location)', 'Who/What this Media is a record of',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter associated with media',
'created[x]', 'Σ', '0..1', '', 'When Media was collected',
'createdDateTime', '', '', 'dateTime', '',
'createdPeriod', '', '', 'Period', '',
'issued', 'Σ', '0..1', 'instant', 'Date/Time this version was made available',
'operator', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam | Patient | Device | RelatedPerson)', 'The person who generated the image',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Why was event performed?Procedure Reason Codes (Example)',
'bodySite', 'Σ', '0..1', 'CodeableConcept', 'Observed body partSNOMED CT Body Structures (Example)',
'deviceName', 'Σ', '0..1', 'string', 'Name of the device/manufacturer',
'device', 'Σ', '0..1', 'Reference(Device | DeviceMetric | Device)', 'Observing Device',
'height', 'Σ', '0..1', 'positiveInt', 'Height of the image in pixels (photo/video)',
'width', 'Σ', '0..1', 'positiveInt', 'Width of the image in pixels (photo/video)',
'frames', 'Σ', '0..1', 'positiveInt', 'Number of frames if > 1 (photo)',
'duration', 'Σ', '0..1', 'decimal', 'Length in seconds (audio / video)',
'content', 'Σ', '1..1', 'Attachment', 'Actual Media - reference or data',
'note', '', '0..*', 'Annotation', 'Comments made about the media',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Media', '',
'Media.basedOn', 'Type Reference: Added Target Types ServiceRequest, CarePlan
        Type Reference: Removed Target Type ProcedureRequest',
'Media.partOf', 'Added Element',
'Media.status', 'Added Mandatory Element',
'Media.type', 'Min Cardinality changed from 1 to 0
        Type changed from code to CodeableConcept
        Change binding strength from required to extensible
        Change value set from http://hl7.org/fhir/ValueSet/digital-media-type to http://hl7.org/fhir/ValueSet/media-type',
'Media.modality', 'Renamed from subtype to modality',
'Media.subject', 'Type Reference: Added Target Types PractitionerRole, Location',
'Media.encounter', 'Added Element',
'Media.created[x]', 'Renamed from occurrence[x] to created[x]',
'Media.issued', 'Added Element',
'Media.operator', 'Type Reference: Added Target Types PractitionerRole, Organization, CareTeam, Patient, Device, RelatedPerson',
'Media.deviceName', 'Added Element',
'Media.frames', 'Default Value "1" removed',
'Media.duration', 'Type changed from unsignedInt to decimal',
'Media.context', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Media', 'TU', '', 'DomainResource', 'A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided by direct referenceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Identifier(s) for the image',
'basedOn', 'Σ', '0..*', 'Reference(ServiceRequest | CarePlan)', 'Procedure that caused this media to be created',
'partOf', 'Σ', '0..*', 'Reference(Any)', 'Part of referenced event',
'status', '?!Σ', '1..1', 'code', 'preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknownEventStatus (Required)',
'type', 'Σ', '0..1', 'CodeableConcept', 'Classification of media as image, video, or audioMedia Type (Extensible)',
'modality', 'Σ', '0..1', 'CodeableConcept', 'The type of acquisition equipment/processMedia Modality (Example)',
'view', 'Σ', '0..1', 'CodeableConcept', 'Imaging view, e.g. Lateral or Antero-posteriorMedia Collection View/Projection (Example)',
'subject', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | Group | Device | Specimen | Location)', 'Who/What this Media is a record of',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter associated with media',
'created[x]', 'Σ', '0..1', '', 'When Media was collected',
'createdDateTime', '', '', 'dateTime', '',
'createdPeriod', '', '', 'Period', '',
'issued', 'Σ', '0..1', 'instant', 'Date/Time this version was made available',
'operator', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam | Patient | Device | RelatedPerson)', 'The person who generated the image',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Why was event performed?Procedure Reason Codes (Example)',
'bodySite', 'Σ', '0..1', 'CodeableConcept', 'Observed body partSNOMED CT Body Structures (Example)',
'deviceName', 'Σ', '0..1', 'string', 'Name of the device/manufacturer',
'device', 'Σ', '0..1', 'Reference(Device | DeviceMetric | Device)', 'Observing Device',
'height', 'Σ', '0..1', 'positiveInt', 'Height of the image in pixels (photo/video)',
'width', 'Σ', '0..1', 'positiveInt', 'Width of the image in pixels (photo/video)',
'frames', 'Σ', '0..1', 'positiveInt', 'Number of frames if > 1 (photo)',
'duration', 'Σ', '0..1', 'decimal', 'Length in seconds (audio / video)',
'content', 'Σ', '1..1', 'Attachment', 'Actual Media - reference or data',
'note', '', '0..*', 'Annotation', 'Comments made about the media',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Media', '',
'Media.basedOn', 'Type Reference: Added Target Types ServiceRequest, CarePlan
        Type Reference: Removed Target Type ProcedureRequest',
'Media.partOf', 'Added Element',
'Media.status', 'Added Mandatory Element',
'Media.type', 'Min Cardinality changed from 1 to 0
        Type changed from code to CodeableConcept
        Change binding strength from required to extensible
        Change value set from http://hl7.org/fhir/ValueSet/digital-media-type to http://hl7.org/fhir/ValueSet/media-type',
'Media.modality', 'Renamed from subtype to modality',
'Media.subject', 'Type Reference: Added Target Types PractitionerRole, Location',
'Media.encounter', 'Added Element',
'Media.created[x]', 'Renamed from occurrence[x] to created[x]',
'Media.issued', 'Added Element',
'Media.operator', 'Type Reference: Added Target Types PractitionerRole, Organization, CareTeam, Patient, Device, RelatedPerson',
'Media.deviceName', 'Added Element',
'Media.frames', 'Default Value "1" removed',
'Media.duration', 'Type changed from unsignedInt to decimal',
'Media.context', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Media.status', 'Codes identifying the lifecycle stage of an event.', 'Required', 'EventStatus',
'Media.type', 'Codes for high level media categories.', 'Extensible', 'MediaType',
'Media.modality', 'Detailed information about the type of the image - its kind, purpose, or the kind of equipment used to generate it.', 'Example', 'MediaModality',
'Media.view', 'Imaging view (projection) used when collecting an image.', 'Example', 'MediaCollectionView/Projection',
'Media.reasonCode', 'The reason for the media.', 'Example', 'ProcedureReasonCodes',
'Media.bodySite', 'Codes describing anatomical locations. May include laterality.', 'Example', 'SNOMEDCTBodyStructures',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'based-on', 'reference', 'Procedure that caused this media to be created', 'Media.basedOn(CarePlan, ServiceRequest)', '',
'created', 'date', 'When Media was collected', 'Media.created', '',
'device', 'reference', 'Observing Device', 'Media.device(Device, DeviceMetric)', '',
'encounter', 'reference', 'Encounter associated with media', 'Media.encounter(Encounter)', '',
'identifier', 'token', 'Identifier(s) for the image', 'Media.identifier', '',
'modality', 'token', 'The type of acquisition equipment/process', 'Media.modality', '',
'operator', 'reference', 'The person who generated the image', 'Media.operator(Practitioner, Organization, CareTeam, Device, Patient, PractitionerRole, RelatedPerson)', '',
'patient', 'reference', 'Who/What this Media is a record of', 'Media.subject.where(resolve() is Patient)(Patient)', '',
'site', 'token', 'Observed body part', 'Media.bodySite', '',
'status', 'token', 'preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown', 'Media.status', '',
'subject', 'reference', 'Who/What this Media is a record of', 'Media.subject(Practitioner, Group, Specimen, Device, Patient, PractitionerRole, Location)', '',
'type', 'token', 'Classification of media as image, video, or audio', 'Media.type', '',
'view', 'token', 'Imaging view, e.g. Lateral or Antero-posterior', 'Media.view', '',
)


