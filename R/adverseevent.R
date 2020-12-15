df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Care  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'AdverseEvent', 'ΣTU', '', 'DomainResource', 'Medical care, research study or other healthcare event causing physical injuryElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..1', 'Identifier', 'Business identifier for the event',
'actuality', '?!Σ', '1..1', 'code', 'actual | potentialAdverseEventActuality (Required)',
'category', 'Σ', '0..*', 'CodeableConcept', 'product-problem | product-quality | product-use-error | wrong-dose | incorrect-prescribing-information | wrong-technique | wrong-route-of-administration | wrong-rate | wrong-duration | wrong-time | expired-drug | medical-device-use-error | problem-different-manufacturer | unsafe-physical-environmentAdverseEventCategory (Extensible)',
'event', 'Σ', '0..1', 'CodeableConcept', 'Type of the event itself in relation to the subjectSNOMED CT Clinical Findings (Example)',
'subject', 'Σ', '1..1', 'Reference(Patient | Group | Practitioner | RelatedPerson)', 'Subject impacted by event',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter created as part of',
'date', 'Σ', '0..1', 'dateTime', 'When the event occurred',
'detected', 'Σ', '0..1', 'dateTime', 'When the event was detected',
'recordedDate', 'Σ', '0..1', 'dateTime', 'When the event was recorded',
'resultingCondition', 'Σ', '0..*', 'Reference(Condition)', 'Effect on the subject due to this event',
'location', 'Σ', '0..1', 'Reference(Location)', 'Location where adverse event occurred',
'seriousness', 'Σ', '0..1', 'CodeableConcept', 'Seriousness of the eventAdverseEventSeriousness (Example)',
'severity', 'Σ', '0..1', 'CodeableConcept', 'mild | moderate | severeAdverseEventSeverity (Required)',
'outcome', 'Σ', '0..1', 'CodeableConcept', 'resolved | recovering | ongoing | resolvedWithSequelae | fatal | unknownAdverseEventOutcome (Required)',
'recorder', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson)', 'Who recorded the adverse event',
'contributor', 'Σ', '0..*', 'Reference(Practitioner | PractitionerRole | Device)', 'Who  was involved in the adverse event or the potential adverse event',
'suspectEntity', 'Σ', '0..*', 'BackboneElement', 'The suspected agent causing the adverse event',
'instance', 'Σ', '1..1', 'Reference(Immunization | Procedure | Substance | Medication | MedicationAdministration | MedicationStatement | Device)', 'Refers to the specific entity that caused the adverse event',
'causality', 'Σ', '0..*', 'BackboneElement', 'Information on the possible cause of the event',
'assessment', 'Σ', '0..1', 'CodeableConcept', 'Assessment of if the entity caused the eventAdverseEventCausalityAssessment (Example)',
'productRelatedness', 'Σ', '0..1', 'string', 'AdverseEvent.suspectEntity.causalityProductRelatedness',
'author', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'AdverseEvent.suspectEntity.causalityAuthor',
'method', 'Σ', '0..1', 'CodeableConcept', 'ProbabilityScale | Bayesian | ChecklistAdverseEventCausalityMethod (Example)',
'subjectMedicalHistory', 'Σ', '0..*', 'Reference(Condition | Observation | AllergyIntolerance | FamilyMemberHistory | Immunization | Procedure | Media | DocumentReference)', 'AdverseEvent.subjectMedicalHistory',
'referenceDocument', 'Σ', '0..*', 'Reference(DocumentReference)', 'AdverseEvent.referenceDocument',
'study', 'Σ', '0..*', 'Reference(ResearchStudy)', 'AdverseEvent.study',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'AdverseEvent', '',
'AdverseEvent.actuality', 'Added Mandatory Element',
'AdverseEvent.category', 'Max Cardinality changed from 1 to *
        Type changed from code to CodeableConcept
        Change binding strength from required to extensible',
'AdverseEvent.event', 'Added Element',
'AdverseEvent.subject', 'Min Cardinality changed from 0 to 1
        Type Reference: Added Target Types Group, Practitioner, RelatedPerson
        Type Reference: Removed Target Types ResearchSubject, Medication, Device',
'AdverseEvent.encounter', 'Added Element',
'AdverseEvent.detected', 'Added Element',
'AdverseEvent.recordedDate', 'Added Element',
'AdverseEvent.resultingCondition', 'Added Element',
'AdverseEvent.severity', 'Added Element',
'AdverseEvent.outcome', 'Change value set from http://hl7.org/fhir/ValueSet/adverse-event-outcome to http://hl7.org/fhir/ValueSet/adverse-event-outcome|4.0.1',
'AdverseEvent.recorder', 'Type Reference: Added Target Type PractitionerRole',
'AdverseEvent.contributor', 'Added Element',
'AdverseEvent.suspectEntity.instance', 'Type Reference: Added Target Types Immunization, Procedure',
'AdverseEvent.suspectEntity.causality', 'Max Cardinality changed from 1 to *
        Type changed from code to BackboneElement
        
Remove Binding http://hl7.org/fhir/ValueSet/adverse-event-causality (required)',
'AdverseEvent.suspectEntity.causality.assessment', 'Added Element',
'AdverseEvent.suspectEntity.causality.productRelatedness', 'Added Element',
'AdverseEvent.suspectEntity.causality.author', 'Added Element',
'AdverseEvent.suspectEntity.causality.method', 'Added Element',
'AdverseEvent.subjectMedicalHistory', 'Type Reference: Added Target Types Media, DocumentReference',
'AdverseEvent.type', 'deleted',
'AdverseEvent.reaction', 'deleted',
'AdverseEvent.eventParticipant', 'deleted',
'AdverseEvent.description', 'deleted',
'AdverseEvent.suspectEntity.causalityAssessment', 'deleted',
'AdverseEvent.suspectEntity.causalityProductRelatedness', 'deleted',
'AdverseEvent.suspectEntity.causalityMethod', 'deleted',
'AdverseEvent.suspectEntity.causalityAuthor', 'deleted',
'AdverseEvent.suspectEntity.causalityResult', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'AdverseEvent', 'ΣTU', '', 'DomainResource', 'Medical care, research study or other healthcare event causing physical injuryElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..1', 'Identifier', 'Business identifier for the event',
'actuality', '?!Σ', '1..1', 'code', 'actual | potentialAdverseEventActuality (Required)',
'category', 'Σ', '0..*', 'CodeableConcept', 'product-problem | product-quality | product-use-error | wrong-dose | incorrect-prescribing-information | wrong-technique | wrong-route-of-administration | wrong-rate | wrong-duration | wrong-time | expired-drug | medical-device-use-error | problem-different-manufacturer | unsafe-physical-environmentAdverseEventCategory (Extensible)',
'event', 'Σ', '0..1', 'CodeableConcept', 'Type of the event itself in relation to the subjectSNOMED CT Clinical Findings (Example)',
'subject', 'Σ', '1..1', 'Reference(Patient | Group | Practitioner | RelatedPerson)', 'Subject impacted by event',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter created as part of',
'date', 'Σ', '0..1', 'dateTime', 'When the event occurred',
'detected', 'Σ', '0..1', 'dateTime', 'When the event was detected',
'recordedDate', 'Σ', '0..1', 'dateTime', 'When the event was recorded',
'resultingCondition', 'Σ', '0..*', 'Reference(Condition)', 'Effect on the subject due to this event',
'location', 'Σ', '0..1', 'Reference(Location)', 'Location where adverse event occurred',
'seriousness', 'Σ', '0..1', 'CodeableConcept', 'Seriousness of the eventAdverseEventSeriousness (Example)',
'severity', 'Σ', '0..1', 'CodeableConcept', 'mild | moderate | severeAdverseEventSeverity (Required)',
'outcome', 'Σ', '0..1', 'CodeableConcept', 'resolved | recovering | ongoing | resolvedWithSequelae | fatal | unknownAdverseEventOutcome (Required)',
'recorder', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson)', 'Who recorded the adverse event',
'contributor', 'Σ', '0..*', 'Reference(Practitioner | PractitionerRole | Device)', 'Who  was involved in the adverse event or the potential adverse event',
'suspectEntity', 'Σ', '0..*', 'BackboneElement', 'The suspected agent causing the adverse event',
'instance', 'Σ', '1..1', 'Reference(Immunization | Procedure | Substance | Medication | MedicationAdministration | MedicationStatement | Device)', 'Refers to the specific entity that caused the adverse event',
'causality', 'Σ', '0..*', 'BackboneElement', 'Information on the possible cause of the event',
'assessment', 'Σ', '0..1', 'CodeableConcept', 'Assessment of if the entity caused the eventAdverseEventCausalityAssessment (Example)',
'productRelatedness', 'Σ', '0..1', 'string', 'AdverseEvent.suspectEntity.causalityProductRelatedness',
'author', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole)', 'AdverseEvent.suspectEntity.causalityAuthor',
'method', 'Σ', '0..1', 'CodeableConcept', 'ProbabilityScale | Bayesian | ChecklistAdverseEventCausalityMethod (Example)',
'subjectMedicalHistory', 'Σ', '0..*', 'Reference(Condition | Observation | AllergyIntolerance | FamilyMemberHistory | Immunization | Procedure | Media | DocumentReference)', 'AdverseEvent.subjectMedicalHistory',
'referenceDocument', 'Σ', '0..*', 'Reference(DocumentReference)', 'AdverseEvent.referenceDocument',
'study', 'Σ', '0..*', 'Reference(ResearchStudy)', 'AdverseEvent.study',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'AdverseEvent', '',
'AdverseEvent.actuality', 'Added Mandatory Element',
'AdverseEvent.category', 'Max Cardinality changed from 1 to *
        Type changed from code to CodeableConcept
        Change binding strength from required to extensible',
'AdverseEvent.event', 'Added Element',
'AdverseEvent.subject', 'Min Cardinality changed from 0 to 1
        Type Reference: Added Target Types Group, Practitioner, RelatedPerson
        Type Reference: Removed Target Types ResearchSubject, Medication, Device',
'AdverseEvent.encounter', 'Added Element',
'AdverseEvent.detected', 'Added Element',
'AdverseEvent.recordedDate', 'Added Element',
'AdverseEvent.resultingCondition', 'Added Element',
'AdverseEvent.severity', 'Added Element',
'AdverseEvent.outcome', 'Change value set from http://hl7.org/fhir/ValueSet/adverse-event-outcome to http://hl7.org/fhir/ValueSet/adverse-event-outcome|4.0.1',
'AdverseEvent.recorder', 'Type Reference: Added Target Type PractitionerRole',
'AdverseEvent.contributor', 'Added Element',
'AdverseEvent.suspectEntity.instance', 'Type Reference: Added Target Types Immunization, Procedure',
'AdverseEvent.suspectEntity.causality', 'Max Cardinality changed from 1 to *
        Type changed from code to BackboneElement
        
Remove Binding http://hl7.org/fhir/ValueSet/adverse-event-causality (required)',
'AdverseEvent.suspectEntity.causality.assessment', 'Added Element',
'AdverseEvent.suspectEntity.causality.productRelatedness', 'Added Element',
'AdverseEvent.suspectEntity.causality.author', 'Added Element',
'AdverseEvent.suspectEntity.causality.method', 'Added Element',
'AdverseEvent.subjectMedicalHistory', 'Type Reference: Added Target Types Media, DocumentReference',
'AdverseEvent.type', 'deleted',
'AdverseEvent.reaction', 'deleted',
'AdverseEvent.eventParticipant', 'deleted',
'AdverseEvent.description', 'deleted',
'AdverseEvent.suspectEntity.causalityAssessment', 'deleted',
'AdverseEvent.suspectEntity.causalityProductRelatedness', 'deleted',
'AdverseEvent.suspectEntity.causalityMethod', 'deleted',
'AdverseEvent.suspectEntity.causalityAuthor', 'deleted',
'AdverseEvent.suspectEntity.causalityResult', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'AdverseEvent.actuality', 'Overall nature of the adverse event, e.g. real or potential.', 'Required', 'AdverseEventActuality',
'AdverseEvent.category', 'Overall categorization of the event, e.g. product-related or situational.', 'Extensible', 'AdverseEventCategory',
'AdverseEvent.event', 'Detailed type of event.', 'Example', 'SNOMEDCTClinicalFindings',
'AdverseEvent.seriousness', 'Overall seriousness of this event for the patient.', 'Example', 'AdverseEventSeriousness',
'AdverseEvent.severity', 'The severity of the adverse event itself, in direct relation to the subject.', 'Required', 'AdverseEventSeverity',
'AdverseEvent.outcome', 'TODO (and should this be required?).', 'Required', 'AdverseEventOutcome',
'AdverseEvent.suspectEntity.causality.assessment', 'Codes for the assessment of whether the entity caused the event.', 'Example', 'AdverseEventCausalityAssessment',
'AdverseEvent.suspectEntity.causality.method', 'TODO.', 'Example', 'AdverseEventCausalityMethod',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'actuality', 'token', 'actual | potential', 'AdverseEvent.actuality', '',
'category', 'token', 'product-problem | product-quality | product-use-error | wrong-dose | incorrect-prescribing-information | wrong-technique | wrong-route-of-administration | wrong-rate | wrong-duration | wrong-time | expired-drug | medical-device-use-error | problem-different-manufacturer | unsafe-physical-environment', 'AdverseEvent.category', '',
'date', 'date', 'When the event occurred', 'AdverseEvent.date', '',
'event', 'token', 'Type of the event itself in relation to the subject', 'AdverseEvent.event', '',
'location', 'reference', 'Location where adverse event occurred', 'AdverseEvent.location(Location)', '',
'recorder', 'reference', 'Who recorded the adverse event', 'AdverseEvent.recorder(Practitioner, Patient, PractitionerRole, RelatedPerson)', '',
'resultingcondition', 'reference', 'Effect on the subject due to this event', 'AdverseEvent.resultingCondition(Condition)', '',
'seriousness', 'token', 'Seriousness of the event', 'AdverseEvent.seriousness', '',
'severity', 'token', 'mild | moderate | severe', 'AdverseEvent.severity', '',
'study', 'reference', 'AdverseEvent.study', 'AdverseEvent.study(ResearchStudy)', '',
'subject', 'reference', 'Subject impacted by event', 'AdverseEvent.subject(Practitioner, Group, Patient, RelatedPerson)', '',
'substance', 'reference', 'Refers to the specific entity that caused the adverse event', 'AdverseEvent.suspectEntity.instance(Immunization, Device, Medication, Procedure, Substance, MedicationAdministration, MedicationStatement)', '',
)


