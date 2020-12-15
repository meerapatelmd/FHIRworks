df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Imaging Integration  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ImagingStudy', 'TU', '', 'DomainResource', 'A set of images produced in single study (one or more series of references images)Elements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Identifiers for the whole study',
'status', '?!Σ', '1..1', 'code', 'registered | available | cancelled | entered-in-error | unknownImagingStudyStatus (Required)',
'modality', 'Σ', '0..*', 'Coding', 'All series modality if actual acquisition modalitiesAcquisitionModality  (Extensible)',
'subject', 'Σ', '1..1', 'Reference(Patient | Device | Group)', 'Who or what is the subject of the study',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter with which this imaging study is associated',
'started', 'Σ', '0..1', 'dateTime', 'When the study was started',
'basedOn', 'Σ', '0..*', 'Reference(CarePlan | ServiceRequest | Appointment | AppointmentResponse | Task)', 'Request fulfilled',
'referrer', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Referring physician',
'interpreter', 'Σ', '0..*', 'Reference(Practitioner | PractitionerRole)', 'Who interpreted images',
'endpoint', 'Σ', '0..*', 'Reference(Endpoint)', 'Study access endpoint',
'numberOfSeries', 'Σ', '0..1', 'unsignedInt', 'Number of Study Related Series',
'numberOfInstances', 'Σ', '0..1', 'unsignedInt', 'Number of Study Related Instances',
'procedureReference', 'Σ', '0..1', 'Reference(Procedure)', 'The performed Procedure reference',
'procedureCode', 'Σ', '0..*', 'CodeableConcept', 'The performed procedure codeImagingProcedureCode  (Extensible)',
'location', 'Σ', '0..1', 'Reference(Location)', 'Where ImagingStudy occurred',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Why the study was requestedProcedure Reason Codes (Example)',
'reasonReference', 'Σ', '0..*', 'Reference(Condition | Observation | Media | DiagnosticReport | DocumentReference)', 'Why was study performed',
'note', 'Σ', '0..*', 'Annotation', 'User-defined comments',
'description', 'Σ', '0..1', 'string', 'Institution-generated description',
'series', 'Σ', '0..*', 'BackboneElement', 'Each study has one or more series of instances',
'uid', 'Σ', '1..1', 'id', 'DICOM Series Instance UID for the series',
'number', 'Σ', '0..1', 'unsignedInt', 'Numeric identifier of this series',
'modality', 'Σ', '1..1', 'Coding', 'The modality of the instances in the seriesAcquisitionModality  (Extensible)',
'description', 'Σ', '0..1', 'string', 'A short human readable summary of the series',
'numberOfInstances', 'Σ', '0..1', 'unsignedInt', 'Number of Series Related Instances',
'endpoint', 'Σ', '0..*', 'Reference(Endpoint)', 'Series access endpoint',
'bodySite', 'Σ', '0..1', 'Coding', 'Body part examinedSNOMED CT Body Structures (Example)',
'laterality', 'Σ', '0..1', 'Coding', 'Body part lateralityLaterality (Example)',
'specimen', 'Σ', '0..*', 'Reference(Specimen)', 'Specimen imaged',
'started', 'Σ', '0..1', 'dateTime', 'When the series started',
'performer', 'Σ', '0..*', 'BackboneElement', 'Who performed the series',
'function', 'Σ', '0..1', 'CodeableConcept', 'Type of performanceImagingStudy series performer function (Extensible)',
'actor', 'Σ', '1..1', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam | Patient | Device | RelatedPerson)', 'Who performed the series',
'instance', '', '0..*', 'BackboneElement', 'A single SOP instance from the series',
'uid', '', '1..1', 'id', 'DICOM SOP Instance UID',
'sopClass', '', '1..1', 'Coding', 'DICOM class typesopClass  (Extensible)',
'number', '', '0..1', 'unsignedInt', 'The number of this instance in the series',
'title', '', '0..1', 'string', 'Description of instance',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'ImagingStudy', '',
'ImagingStudy.status', 'Added Mandatory Element',
'ImagingStudy.modality', 'Renamed from modalityList to modality
        Change value set from http://hl7.org/fhir/ValueSet/dicom-cid29 to http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_29.html',
'ImagingStudy.subject', 'Renamed from patient to subject
        Type Reference: Added Target Types Device, Group',
'ImagingStudy.encounter', 'Added Element',
'ImagingStudy.basedOn', 'Type Reference: Added Target Types ServiceRequest, Appointment, AppointmentResponse, Task
        Type Reference: Removed Target Types ReferralRequest, ProcedureRequest',
'ImagingStudy.referrer', 'Type Reference: Added Target Type PractitionerRole',
'ImagingStudy.interpreter', 'Type Reference: Added Target Type PractitionerRole',
'ImagingStudy.procedureReference', 'Max Cardinality changed from * to 1',
'ImagingStudy.procedureCode', 'Add Binding http://www.rsna.org/RadLex_Playbook.aspx (extensible)',
'ImagingStudy.location', 'Added Element',
'ImagingStudy.reasonCode', 'Added Element',
'ImagingStudy.reasonReference', 'Added Element',
'ImagingStudy.note', 'Added Element',
'ImagingStudy.series.uid', 'Type changed from oid to id',
'ImagingStudy.series.modality', 'Change value set from http://hl7.org/fhir/ValueSet/dicom-cid29 to http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_29.html',
'ImagingStudy.series.specimen', 'Added Element',
'ImagingStudy.series.performer', 'Type changed from Reference(Practitioner) to BackboneElement',
'ImagingStudy.series.performer.function', 'Added Element',
'ImagingStudy.series.performer.actor', 'Added Mandatory Element',
'ImagingStudy.series.instance.uid', 'Type changed from oid to id',
'ImagingStudy.series.instance.sopClass', 'Type changed from oid to Coding
        
Add Binding http://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1 (extensible)',
'ImagingStudy.uid', 'deleted',
'ImagingStudy.accession', 'deleted',
'ImagingStudy.availability', 'deleted',
'ImagingStudy.context', 'deleted',
'ImagingStudy.reason', 'deleted',
'ImagingStudy.series.availability', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ImagingStudy', 'TU', '', 'DomainResource', 'A set of images produced in single study (one or more series of references images)Elements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Identifiers for the whole study',
'status', '?!Σ', '1..1', 'code', 'registered | available | cancelled | entered-in-error | unknownImagingStudyStatus (Required)',
'modality', 'Σ', '0..*', 'Coding', 'All series modality if actual acquisition modalitiesAcquisitionModality  (Extensible)',
'subject', 'Σ', '1..1', 'Reference(Patient | Device | Group)', 'Who or what is the subject of the study',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter with which this imaging study is associated',
'started', 'Σ', '0..1', 'dateTime', 'When the study was started',
'basedOn', 'Σ', '0..*', 'Reference(CarePlan | ServiceRequest | Appointment | AppointmentResponse | Task)', 'Request fulfilled',
'referrer', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Referring physician',
'interpreter', 'Σ', '0..*', 'Reference(Practitioner | PractitionerRole)', 'Who interpreted images',
'endpoint', 'Σ', '0..*', 'Reference(Endpoint)', 'Study access endpoint',
'numberOfSeries', 'Σ', '0..1', 'unsignedInt', 'Number of Study Related Series',
'numberOfInstances', 'Σ', '0..1', 'unsignedInt', 'Number of Study Related Instances',
'procedureReference', 'Σ', '0..1', 'Reference(Procedure)', 'The performed Procedure reference',
'procedureCode', 'Σ', '0..*', 'CodeableConcept', 'The performed procedure codeImagingProcedureCode  (Extensible)',
'location', 'Σ', '0..1', 'Reference(Location)', 'Where ImagingStudy occurred',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Why the study was requestedProcedure Reason Codes (Example)',
'reasonReference', 'Σ', '0..*', 'Reference(Condition | Observation | Media | DiagnosticReport | DocumentReference)', 'Why was study performed',
'note', 'Σ', '0..*', 'Annotation', 'User-defined comments',
'description', 'Σ', '0..1', 'string', 'Institution-generated description',
'series', 'Σ', '0..*', 'BackboneElement', 'Each study has one or more series of instances',
'uid', 'Σ', '1..1', 'id', 'DICOM Series Instance UID for the series',
'number', 'Σ', '0..1', 'unsignedInt', 'Numeric identifier of this series',
'modality', 'Σ', '1..1', 'Coding', 'The modality of the instances in the seriesAcquisitionModality  (Extensible)',
'description', 'Σ', '0..1', 'string', 'A short human readable summary of the series',
'numberOfInstances', 'Σ', '0..1', 'unsignedInt', 'Number of Series Related Instances',
'endpoint', 'Σ', '0..*', 'Reference(Endpoint)', 'Series access endpoint',
'bodySite', 'Σ', '0..1', 'Coding', 'Body part examinedSNOMED CT Body Structures (Example)',
'laterality', 'Σ', '0..1', 'Coding', 'Body part lateralityLaterality (Example)',
'specimen', 'Σ', '0..*', 'Reference(Specimen)', 'Specimen imaged',
'started', 'Σ', '0..1', 'dateTime', 'When the series started',
'performer', 'Σ', '0..*', 'BackboneElement', 'Who performed the series',
'function', 'Σ', '0..1', 'CodeableConcept', 'Type of performanceImagingStudy series performer function (Extensible)',
'actor', 'Σ', '1..1', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam | Patient | Device | RelatedPerson)', 'Who performed the series',
'instance', '', '0..*', 'BackboneElement', 'A single SOP instance from the series',
'uid', '', '1..1', 'id', 'DICOM SOP Instance UID',
'sopClass', '', '1..1', 'Coding', 'DICOM class typesopClass  (Extensible)',
'number', '', '0..1', 'unsignedInt', 'The number of this instance in the series',
'title', '', '0..1', 'string', 'Description of instance',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'ImagingStudy', '',
'ImagingStudy.status', 'Added Mandatory Element',
'ImagingStudy.modality', 'Renamed from modalityList to modality
        Change value set from http://hl7.org/fhir/ValueSet/dicom-cid29 to http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_29.html',
'ImagingStudy.subject', 'Renamed from patient to subject
        Type Reference: Added Target Types Device, Group',
'ImagingStudy.encounter', 'Added Element',
'ImagingStudy.basedOn', 'Type Reference: Added Target Types ServiceRequest, Appointment, AppointmentResponse, Task
        Type Reference: Removed Target Types ReferralRequest, ProcedureRequest',
'ImagingStudy.referrer', 'Type Reference: Added Target Type PractitionerRole',
'ImagingStudy.interpreter', 'Type Reference: Added Target Type PractitionerRole',
'ImagingStudy.procedureReference', 'Max Cardinality changed from * to 1',
'ImagingStudy.procedureCode', 'Add Binding http://www.rsna.org/RadLex_Playbook.aspx (extensible)',
'ImagingStudy.location', 'Added Element',
'ImagingStudy.reasonCode', 'Added Element',
'ImagingStudy.reasonReference', 'Added Element',
'ImagingStudy.note', 'Added Element',
'ImagingStudy.series.uid', 'Type changed from oid to id',
'ImagingStudy.series.modality', 'Change value set from http://hl7.org/fhir/ValueSet/dicom-cid29 to http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_29.html',
'ImagingStudy.series.specimen', 'Added Element',
'ImagingStudy.series.performer', 'Type changed from Reference(Practitioner) to BackboneElement',
'ImagingStudy.series.performer.function', 'Added Element',
'ImagingStudy.series.performer.actor', 'Added Mandatory Element',
'ImagingStudy.series.instance.uid', 'Type changed from oid to id',
'ImagingStudy.series.instance.sopClass', 'Type changed from oid to Coding
        
Add Binding http://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1 (extensible)',
'ImagingStudy.uid', 'deleted',
'ImagingStudy.accession', 'deleted',
'ImagingStudy.availability', 'deleted',
'ImagingStudy.context', 'deleted',
'ImagingStudy.reason', 'deleted',
'ImagingStudy.series.availability', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'ImagingStudy.status', 'The status of the ImagingStudy.', 'Required', 'ImagingStudyStatus',
'ImagingStudy.modalityImagingStudy.series.modality', 'Type of acquired data in the instance.', 'Extensible', 'AcquisitionModality',
'ImagingStudy.procedureCode', 'The performed procedure type.', 'Extensible', 'http://www.rsna.org/RadLex_Playbook.aspx',
'ImagingStudy.reasonCode', 'The reason for the study.', 'Example', 'ProcedureReasonCodes',
'ImagingStudy.series.bodySite', 'Codes describing anatomical locations. May include laterality.', 'Example', 'SNOMEDCTBodyStructures',
'ImagingStudy.series.laterality', 'Codes describing body site laterality (left, right, etc.).', 'Example', 'Laterality',
'ImagingStudy.series.performer.function', 'The type of involvement of the performer.', 'Extensible', 'ImagingStudySeriesPerformerFunction',
'ImagingStudy.series.instance.sopClass', 'The sopClass for the instance.', 'Extensible', 'http://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'basedon', 'reference', 'The order for the image', 'ImagingStudy.basedOn(Appointment, AppointmentResponse, CarePlan, Task, ServiceRequest)', '',
'bodysite', 'token', 'The body site studied', 'ImagingStudy.series.bodySite', '',
'dicom-class', 'token', 'The type of the instance', 'ImagingStudy.series.instance.sopClass', '',
'encounter', 'reference', 'The context of the study', 'ImagingStudy.encounter(Encounter)', '',
'endpoint', 'reference', 'The endpoint for the study or series', 'ImagingStudy.endpoint | ImagingStudy.series.endpoint(Endpoint)', '',
'identifier', 'token', 'Identifiers for the Study, such as DICOM Study Instance UID and Accession number', 'ImagingStudy.identifier', '30 Resources',
'instance', 'token', 'SOP Instance UID for an instance', 'ImagingStudy.series.instance.uid', '',
'interpreter', 'reference', 'Who interpreted the images', 'ImagingStudy.interpreter(Practitioner, PractitionerRole)', '',
'modality', 'token', 'The modality of the series', 'ImagingStudy.series.modality', '',
'patient', 'reference', 'Who the study is about', 'ImagingStudy.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'performer', 'reference', 'The person who performed the study', 'ImagingStudy.series.performer.actor(Practitioner, Organization, CareTeam, Device, Patient, PractitionerRole, RelatedPerson)', '',
'reason', 'token', 'The reason for the study', 'ImagingStudy.reasonCode', '',
'referrer', 'reference', 'The referring physician', 'ImagingStudy.referrer(Practitioner, PractitionerRole)', '',
'series', 'token', 'DICOM Series Instance UID for a series', 'ImagingStudy.series.uid', '',
'started', 'date', 'When the study was started', 'ImagingStudy.started', '',
'status', 'token', 'The status of the study', 'ImagingStudy.status', '',
'subject', 'reference', 'Who the study is about', 'ImagingStudy.subject(Group, Device, Patient)', '',
)


