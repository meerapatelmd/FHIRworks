df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Encounter, Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DiagnosticReport', 'TU', '', 'DomainResource', 'A Diagnostic report - a combination of request information, atomic results, images, interpretation, as well as formatted reportsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier for report',
'basedOn', '', '0..*', 'Reference(CarePlan | ImmunizationRecommendation | MedicationRequest | NutritionOrder | ServiceRequest)', 'What was requested',
'status', '?!Σ', '1..1', 'code', 'registered | partial | preliminary | final +DiagnosticReportStatus (Required)',
'category', 'Σ', '0..*', 'CodeableConcept', 'Service categoryDiagnostic Service Section Codes (Example)',
'code', 'Σ', '1..1', 'CodeableConcept', 'Name/Code for this diagnostic reportLOINC Diagnostic Report Codes (Preferred)',
'subject', 'Σ', '0..1', 'Reference(Patient | Group | Device | Location)', 'The subject of the report - usually, but not always, the patient',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Health care event when test ordered',
'effective[x]', 'Σ', '0..1', '', 'Clinically relevant time/time-period for report',
'effectiveDateTime', '', '', 'dateTime', '',
'effectivePeriod', '', '', 'Period', '',
'issued', 'Σ', '0..1', 'instant', 'DateTime this version was made',
'performer', 'Σ', '0..*', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam)', 'Responsible Diagnostic Service',
'resultsInterpreter', 'Σ', '0..*', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam)', 'Primary result interpreter',
'specimen', '', '0..*', 'Reference(Specimen)', 'Specimens this report is based on',
'result', '', '0..*', 'Reference(Observation)', 'Observations',
'imagingStudy', '', '0..*', 'Reference(ImagingStudy)', 'Reference to full details of imaging associated with the diagnostic report',
'media', 'Σ', '0..*', 'BackboneElement', 'Key images associated with this report',
'comment', '', '0..1', 'string', 'Comment about the image (e.g. explanation)',
'link', 'Σ', '1..1', 'Reference(Media)', 'Reference to the image source',
'conclusion', '', '0..1', 'string', 'Clinical conclusion (interpretation) of test results',
'conclusionCode', '', '0..*', 'CodeableConcept', 'Codes for the clinical conclusion of test resultsSNOMED CT Clinical Findings (Example)',
'presentedForm', '', '0..*', 'Attachment', 'Entire report as issued',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'DiagnosticReport', '',
'DiagnosticReport.basedOn', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Types ProcedureRequest, ReferralRequest',
'DiagnosticReport.status', 'Change value set from http://hl7.org/fhir/ValueSet/diagnostic-report-status to http://hl7.org/fhir/ValueSet/diagnostic-report-status|4.0.1',
'DiagnosticReport.category', 'Max Cardinality changed from 1 to *',
'DiagnosticReport.encounter', 'Added Element',
'DiagnosticReport.performer', 'Type changed from BackboneElement to Reference(Practitioner | PractitionerRole | Organization | CareTeam)',
'DiagnosticReport.resultsInterpreter', 'Added Element',
'DiagnosticReport.imagingStudy', 'Type Reference: Removed Target Type ImagingManifest',
'DiagnosticReport.media', 'Renamed from image to media',
'DiagnosticReport.media.comment', 'Moved from DiagnosticReport.image to DiagnosticReport.media',
'DiagnosticReport.media.link', 'Moved from DiagnosticReport.image to DiagnosticReport.media',
'DiagnosticReport.conclusionCode', 'Renamed from codedDiagnosis to conclusionCode',
'DiagnosticReport.context', 'deleted',
'DiagnosticReport.performer.role', 'deleted',
'DiagnosticReport.performer.actor', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DiagnosticReport', 'TU', '', 'DomainResource', 'A Diagnostic report - a combination of request information, atomic results, images, interpretation, as well as formatted reportsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier for report',
'basedOn', '', '0..*', 'Reference(CarePlan | ImmunizationRecommendation | MedicationRequest | NutritionOrder | ServiceRequest)', 'What was requested',
'status', '?!Σ', '1..1', 'code', 'registered | partial | preliminary | final +DiagnosticReportStatus (Required)',
'category', 'Σ', '0..*', 'CodeableConcept', 'Service categoryDiagnostic Service Section Codes (Example)',
'code', 'Σ', '1..1', 'CodeableConcept', 'Name/Code for this diagnostic reportLOINC Diagnostic Report Codes (Preferred)',
'subject', 'Σ', '0..1', 'Reference(Patient | Group | Device | Location)', 'The subject of the report - usually, but not always, the patient',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Health care event when test ordered',
'effective[x]', 'Σ', '0..1', '', 'Clinically relevant time/time-period for report',
'effectiveDateTime', '', '', 'dateTime', '',
'effectivePeriod', '', '', 'Period', '',
'issued', 'Σ', '0..1', 'instant', 'DateTime this version was made',
'performer', 'Σ', '0..*', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam)', 'Responsible Diagnostic Service',
'resultsInterpreter', 'Σ', '0..*', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam)', 'Primary result interpreter',
'specimen', '', '0..*', 'Reference(Specimen)', 'Specimens this report is based on',
'result', '', '0..*', 'Reference(Observation)', 'Observations',
'imagingStudy', '', '0..*', 'Reference(ImagingStudy)', 'Reference to full details of imaging associated with the diagnostic report',
'media', 'Σ', '0..*', 'BackboneElement', 'Key images associated with this report',
'comment', '', '0..1', 'string', 'Comment about the image (e.g. explanation)',
'link', 'Σ', '1..1', 'Reference(Media)', 'Reference to the image source',
'conclusion', '', '0..1', 'string', 'Clinical conclusion (interpretation) of test results',
'conclusionCode', '', '0..*', 'CodeableConcept', 'Codes for the clinical conclusion of test resultsSNOMED CT Clinical Findings (Example)',
'presentedForm', '', '0..*', 'Attachment', 'Entire report as issued',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'DiagnosticReport', '',
'DiagnosticReport.basedOn', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Types ProcedureRequest, ReferralRequest',
'DiagnosticReport.status', 'Change value set from http://hl7.org/fhir/ValueSet/diagnostic-report-status to http://hl7.org/fhir/ValueSet/diagnostic-report-status|4.0.1',
'DiagnosticReport.category', 'Max Cardinality changed from 1 to *',
'DiagnosticReport.encounter', 'Added Element',
'DiagnosticReport.performer', 'Type changed from BackboneElement to Reference(Practitioner | PractitionerRole | Organization | CareTeam)',
'DiagnosticReport.resultsInterpreter', 'Added Element',
'DiagnosticReport.imagingStudy', 'Type Reference: Removed Target Type ImagingManifest',
'DiagnosticReport.media', 'Renamed from image to media',
'DiagnosticReport.media.comment', 'Moved from DiagnosticReport.image to DiagnosticReport.media',
'DiagnosticReport.media.link', 'Moved from DiagnosticReport.image to DiagnosticReport.media',
'DiagnosticReport.conclusionCode', 'Renamed from codedDiagnosis to conclusionCode',
'DiagnosticReport.context', 'deleted',
'DiagnosticReport.performer.role', 'deleted',
'DiagnosticReport.performer.actor', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'DiagnosticReport.status', 'The status of the diagnostic report.', 'Required', 'DiagnosticReportStatus',
'DiagnosticReport.category', 'Codes for diagnostic service sections.', 'Example', 'DiagnosticServiceSectionCodes',
'DiagnosticReport.code', 'Codes that describe Diagnostic Reports.', 'Preferred', 'LOINCDiagnosticReportCodes',
'DiagnosticReport.conclusionCode', 'Diagnosis codes provided as adjuncts to the report.', 'Example', 'SNOMEDCTClinicalFindings',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'based-on', 'reference', 'Reference to the service request.', 'DiagnosticReport.basedOn(CarePlan, MedicationRequest, NutritionOrder, ServiceRequest, ImmunizationRecommendation)', '',
'category', 'token', 'Which diagnostic discipline/department created the report', 'DiagnosticReport.category', '',
'code', 'token', 'The code for the report, as opposed to codes for the atomic results, which are the names on the observation resource referred to from the result', 'DiagnosticReport.code', '13 Resources',
'conclusion', 'token', 'A coded conclusion (interpretation/impression) on the report', 'DiagnosticReport.conclusionCode', '',
'date', 'date', 'The clinically relevant time of the report', 'DiagnosticReport.effective', '17 Resources',
'encounter', 'reference', 'The Encounter when the order was made', 'DiagnosticReport.encounter(Encounter)', '12 Resources',
'identifier', 'token', 'An identifier for the report', 'DiagnosticReport.identifier', '30 Resources',
'issued', 'date', 'When the report was issued', 'DiagnosticReport.issued', '',
'media', 'reference', 'A reference to the image source.', 'DiagnosticReport.media.link(Media)', '',
'patient', 'reference', 'The subject of the report if a patient', 'DiagnosticReport.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'performer', 'reference', 'Who is responsible for the report', 'DiagnosticReport.performer(Practitioner, Organization, CareTeam, PractitionerRole)', '',
'result', 'reference', 'Link to an atomic result (observation resource)', 'DiagnosticReport.result(Observation)', '',
'results-interpreter', 'reference', 'Who was the source of the report', 'DiagnosticReport.resultsInterpreter(Practitioner, Organization, CareTeam, PractitionerRole)', '',
'specimen', 'reference', 'The specimen details', 'DiagnosticReport.specimen(Specimen)', '',
'status', 'token', 'The status of the report', 'DiagnosticReport.status', '',
'subject', 'reference', 'The subject of the report', 'DiagnosticReport.subject(Group, Device, Patient, Location)', '',
)


