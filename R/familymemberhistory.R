df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Care  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'FamilyMemberHistory', 'ITU', '', 'DomainResource', 'Information about patient's relatives, relevant for patient+ Rule: Can have age[x] or born[x], but not both+ Rule: Can only have estimatedAge if age[x] is presentElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Id(s) for this record',
'instantiatesCanonical', 'Σ', '0..*', 'canonical(PlanDefinition | Questionnaire | ActivityDefinition | Measure | OperationDefinition)', 'Instantiates FHIR protocol or definition',
'instantiatesUri', 'Σ', '0..*', 'uri', 'Instantiates external protocol or definition',
'status', '?!Σ', '1..1', 'code', 'partial | completed | entered-in-error | health-unknownFamilyHistoryStatus (Required)',
'dataAbsentReason', 'Σ', '0..1', 'CodeableConcept', 'subject-unknown | withheld | unable-to-obtain | deferredFamilyHistoryAbsentReason (Example)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Patient history is about',
'date', 'Σ', '0..1', 'dateTime', 'When history was recorded or last updated',
'name', 'Σ', '0..1', 'string', 'The family member described',
'relationship', 'Σ', '1..1', 'CodeableConcept', 'Relationship to the subjectV3 Value SetFamilyMember (Example)',
'sex', 'Σ', '0..1', 'CodeableConcept', 'male | female | other | unknownAdministrativeGender (Extensible)',
'born[x]', 'I', '0..1', '', '(approximate) date of birth',
'bornPeriod', '', '', 'Period', '',
'bornDate', '', '', 'date', '',
'bornString', '', '', 'string', '',
'age[x]', 'ΣI', '0..1', '', '(approximate) age',
'ageAge', '', '', 'Age', '',
'ageRange', '', '', 'Range', '',
'ageString', '', '', 'string', '',
'estimatedAge', 'ΣI', '0..1', 'boolean', 'Age is estimated?',
'deceased[x]', 'Σ', '0..1', '', 'Dead? How old/when?',
'deceasedBoolean', '', '', 'boolean', '',
'deceasedAge', '', '', 'Age', '',
'deceasedRange', '', '', 'Range', '',
'deceasedDate', '', '', 'date', '',
'deceasedString', '', '', 'string', '',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Why was family member history performed?SNOMED CT Clinical Findings (Example)',
'reasonReference', 'Σ', '0..*', 'Reference(Condition | Observation | AllergyIntolerance | QuestionnaireResponse | DiagnosticReport | DocumentReference)', 'Why was family member history performed?',
'note', '', '0..*', 'Annotation', 'General note about related person',
'condition', '', '0..*', 'BackboneElement', 'Condition that the related person had',
'code', '', '1..1', 'CodeableConcept', 'Condition suffered by relationCondition/Problem/Diagnosis Codes (Example)',
'outcome', '', '0..1', 'CodeableConcept', 'deceased | permanent disability | etc.Condition Outcome Codes (Example)',
'contributedToDeath', '', '0..1', 'boolean', 'Whether the condition contributed to the cause of death',
'onset[x]', '', '0..1', '', 'When condition first manifested',
'onsetAge', '', '', 'Age', '',
'onsetRange', '', '', 'Range', '',
'onsetPeriod', '', '', 'Period', '',
'onsetString', '', '', 'string', '',
'note', '', '0..*', 'Annotation', 'Extra information about condition',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'FamilyMemberHistory', '',
'FamilyMemberHistory.instantiatesCanonical', 'Added Element',
'FamilyMemberHistory.instantiatesUri', 'Added Element',
'FamilyMemberHistory.status', 'Change value set from http://hl7.org/fhir/ValueSet/history-status to http://hl7.org/fhir/ValueSet/history-status|4.0.1',
'FamilyMemberHistory.dataAbsentReason', 'Added Element',
'FamilyMemberHistory.sex', 'Added Element',
'FamilyMemberHistory.estimatedAge', 'No longer marked as Modifier',
'FamilyMemberHistory.reasonReference', 'Type Reference: Added Target Types DiagnosticReport, DocumentReference',
'FamilyMemberHistory.condition.contributedToDeath', 'Added Element',
'FamilyMemberHistory.definition', 'deleted',
'FamilyMemberHistory.notDone', 'deleted',
'FamilyMemberHistory.notDoneReason', 'deleted',
'FamilyMemberHistory.gender', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'FamilyMemberHistory', 'ITU', '', 'DomainResource', 'Information about patient's relatives, relevant for patient+ Rule: Can have age[x] or born[x], but not both+ Rule: Can only have estimatedAge if age[x] is presentElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Id(s) for this record',
'instantiatesCanonical', 'Σ', '0..*', 'canonical(PlanDefinition | Questionnaire | ActivityDefinition | Measure | OperationDefinition)', 'Instantiates FHIR protocol or definition',
'instantiatesUri', 'Σ', '0..*', 'uri', 'Instantiates external protocol or definition',
'status', '?!Σ', '1..1', 'code', 'partial | completed | entered-in-error | health-unknownFamilyHistoryStatus (Required)',
'dataAbsentReason', 'Σ', '0..1', 'CodeableConcept', 'subject-unknown | withheld | unable-to-obtain | deferredFamilyHistoryAbsentReason (Example)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Patient history is about',
'date', 'Σ', '0..1', 'dateTime', 'When history was recorded or last updated',
'name', 'Σ', '0..1', 'string', 'The family member described',
'relationship', 'Σ', '1..1', 'CodeableConcept', 'Relationship to the subjectV3 Value SetFamilyMember (Example)',
'sex', 'Σ', '0..1', 'CodeableConcept', 'male | female | other | unknownAdministrativeGender (Extensible)',
'born[x]', 'I', '0..1', '', '(approximate) date of birth',
'bornPeriod', '', '', 'Period', '',
'bornDate', '', '', 'date', '',
'bornString', '', '', 'string', '',
'age[x]', 'ΣI', '0..1', '', '(approximate) age',
'ageAge', '', '', 'Age', '',
'ageRange', '', '', 'Range', '',
'ageString', '', '', 'string', '',
'estimatedAge', 'ΣI', '0..1', 'boolean', 'Age is estimated?',
'deceased[x]', 'Σ', '0..1', '', 'Dead? How old/when?',
'deceasedBoolean', '', '', 'boolean', '',
'deceasedAge', '', '', 'Age', '',
'deceasedRange', '', '', 'Range', '',
'deceasedDate', '', '', 'date', '',
'deceasedString', '', '', 'string', '',
'reasonCode', 'Σ', '0..*', 'CodeableConcept', 'Why was family member history performed?SNOMED CT Clinical Findings (Example)',
'reasonReference', 'Σ', '0..*', 'Reference(Condition | Observation | AllergyIntolerance | QuestionnaireResponse | DiagnosticReport | DocumentReference)', 'Why was family member history performed?',
'note', '', '0..*', 'Annotation', 'General note about related person',
'condition', '', '0..*', 'BackboneElement', 'Condition that the related person had',
'code', '', '1..1', 'CodeableConcept', 'Condition suffered by relationCondition/Problem/Diagnosis Codes (Example)',
'outcome', '', '0..1', 'CodeableConcept', 'deceased | permanent disability | etc.Condition Outcome Codes (Example)',
'contributedToDeath', '', '0..1', 'boolean', 'Whether the condition contributed to the cause of death',
'onset[x]', '', '0..1', '', 'When condition first manifested',
'onsetAge', '', '', 'Age', '',
'onsetRange', '', '', 'Range', '',
'onsetPeriod', '', '', 'Period', '',
'onsetString', '', '', 'string', '',
'note', '', '0..*', 'Annotation', 'Extra information about condition',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'FamilyMemberHistory', '',
'FamilyMemberHistory.instantiatesCanonical', 'Added Element',
'FamilyMemberHistory.instantiatesUri', 'Added Element',
'FamilyMemberHistory.status', 'Change value set from http://hl7.org/fhir/ValueSet/history-status to http://hl7.org/fhir/ValueSet/history-status|4.0.1',
'FamilyMemberHistory.dataAbsentReason', 'Added Element',
'FamilyMemberHistory.sex', 'Added Element',
'FamilyMemberHistory.estimatedAge', 'No longer marked as Modifier',
'FamilyMemberHistory.reasonReference', 'Type Reference: Added Target Types DiagnosticReport, DocumentReference',
'FamilyMemberHistory.condition.contributedToDeath', 'Added Element',
'FamilyMemberHistory.definition', 'deleted',
'FamilyMemberHistory.notDone', 'deleted',
'FamilyMemberHistory.notDoneReason', 'deleted',
'FamilyMemberHistory.gender', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'FamilyMemberHistory.status', 'A code that identifies the status of the family history record.', 'Required', 'FamilyHistoryStatus',
'FamilyMemberHistory.dataAbsentReason', 'Codes describing the reason why a family member's history is not available.', 'Example', 'FamilyHistoryAbsentReason',
'FamilyMemberHistory.relationship', 'The nature of the relationship between the patient and the related person being described in the family member history.', 'Example', 'v3.FamilyMember',
'FamilyMemberHistory.sex', 'Codes describing the sex assigned at birth as documented on the birth registration.', 'Extensible', 'AdministrativeGender',
'FamilyMemberHistory.reasonCode', 'Codes indicating why the family member history was done.', 'Example', 'SNOMEDCTClinicalFindings',
'FamilyMemberHistory.condition.code', 'Identification of the Condition or diagnosis.', 'Example', 'Condition/Problem/DiagnosisCodes',
'FamilyMemberHistory.condition.outcome', 'The result of the condition for the patient; e.g. death, permanent disability, temporary disability, etc.', 'Example', 'ConditionOutcomeCodes',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'fhs-1', 'Rule', '(base)', 'Can have age[x] or born[x], but not both', 'age.empty() or born.empty()',
'fhs-2', 'Rule', '(base)', 'Can only have estimatedAge if age[x] is present', 'age.exists() or estimatedAge.empty()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'code', 'token', 'A search by a condition code', 'FamilyMemberHistory.condition.code', '13 Resources',
'date', 'date', 'When history was recorded or last updated', 'FamilyMemberHistory.date', '17 Resources',
'identifier', 'token', 'A search by a record identifier', 'FamilyMemberHistory.identifier', '30 Resources',
'instantiates-canonical', 'reference', 'Instantiates FHIR protocol or definition', 'FamilyMemberHistory.instantiatesCanonical(Questionnaire, Measure, PlanDefinition, OperationDefinition, ActivityDefinition)', '',
'instantiates-uri', 'uri', 'Instantiates external protocol or definition', 'FamilyMemberHistory.instantiatesUri', '',
'patient', 'reference', 'The identity of a subject to list family member history items for', 'FamilyMemberHistory.patient(Patient)', '33 Resources',
'relationship', 'token', 'A search by a relationship type', 'FamilyMemberHistory.relationship', '',
'sex', 'token', 'A search by a sex code of a family member', 'FamilyMemberHistory.sex', '',
'status', 'token', 'partial | completed | entered-in-error | health-unknown', 'FamilyMemberHistory.status', '',
)


