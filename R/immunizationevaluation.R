df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Public Health and Emergency Response  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ImmunizationEvaluation', 'TU', '', 'DomainResource', 'Immunization evaluation informationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business identifier',
'status', '?!Σ', '1..1', 'code', 'completed | entered-in-errorImmunization Evaluation Status Codes (Required)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Who this evaluation is for',
'date', '', '0..1', 'dateTime', 'Date evaluation was performed',
'authority', '', '0..1', 'Reference(Organization)', 'Who is responsible for publishing the recommendations',
'targetDisease', 'Σ', '1..1', 'CodeableConcept', 'Evaluation target diseaseImmunization Evaluation Target Disease Codes (Example)',
'immunizationEvent', 'Σ', '1..1', 'Reference(Immunization)', 'Immunization being evaluated',
'doseStatus', 'Σ', '1..1', 'CodeableConcept', 'Status of the dose relative to published recommendationsImmunization Evaluation Dose Status codes (Example)',
'doseStatusReason', '', '0..*', 'CodeableConcept', 'Reason for the dose statusImmunization Evaluation Dose Status Reason codes (Example)',
'description', '', '0..1', 'string', 'Evaluation notes',
'series', '', '0..1', 'string', 'Name of vaccine series',
'doseNumber[x]', '', '0..1', '', 'Dose number within series',
'doseNumberPositiveInt', '', '', 'positiveInt', '',
'doseNumberString', '', '', 'string', '',
'seriesDoses[x]', '', '0..1', '', 'Recommended number of doses for immunity',
'seriesDosesPositiveInt', '', '', 'positiveInt', '',
'seriesDosesString', '', '', 'string', '',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ImmunizationEvaluation', 'TU', '', 'DomainResource', 'Immunization evaluation informationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business identifier',
'status', '?!Σ', '1..1', 'code', 'completed | entered-in-errorImmunization Evaluation Status Codes (Required)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Who this evaluation is for',
'date', '', '0..1', 'dateTime', 'Date evaluation was performed',
'authority', '', '0..1', 'Reference(Organization)', 'Who is responsible for publishing the recommendations',
'targetDisease', 'Σ', '1..1', 'CodeableConcept', 'Evaluation target diseaseImmunization Evaluation Target Disease Codes (Example)',
'immunizationEvent', 'Σ', '1..1', 'Reference(Immunization)', 'Immunization being evaluated',
'doseStatus', 'Σ', '1..1', 'CodeableConcept', 'Status of the dose relative to published recommendationsImmunization Evaluation Dose Status codes (Example)',
'doseStatusReason', '', '0..*', 'CodeableConcept', 'Reason for the dose statusImmunization Evaluation Dose Status Reason codes (Example)',
'description', '', '0..1', 'string', 'Evaluation notes',
'series', '', '0..1', 'string', 'Name of vaccine series',
'doseNumber[x]', '', '0..1', '', 'Dose number within series',
'doseNumberPositiveInt', '', '', 'positiveInt', '',
'doseNumberString', '', '', 'string', '',
'seriesDoses[x]', '', '0..1', '', 'Recommended number of doses for immunity',
'seriesDosesPositiveInt', '', '', 'positiveInt', '',
'seriesDosesString', '', '', 'string', '',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'ImmunizationEvaluation.status', 'The status of the evaluation being done.', 'Required', 'ImmunizationEvaluationStatusCodes',
'ImmunizationEvaluation.targetDisease', 'The vaccine preventable disease the dose is being evaluated against.', 'Example', 'ImmunizationEvaluationTargetDiseaseCodes',
'ImmunizationEvaluation.doseStatus', 'The status of the administered dose relative to the published recommendations for the target disease.', 'Example', 'ImmunizationEvaluationDoseStatusCodes',
'ImmunizationEvaluation.doseStatusReason', 'The reason the dose status was assigned.', 'Example', 'ImmunizationEvaluationDoseStatusReasonCodes',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'date', 'date', 'Date the evaluation was generated', 'ImmunizationEvaluation.date', '',
'dose-status', 'token', 'The status of the dose relative to published recommendations', 'ImmunizationEvaluation.doseStatus', '',
'identifier', 'token', 'ID of the evaluation', 'ImmunizationEvaluation.identifier', '',
'immunization-event', 'reference', 'The vaccine administration event being evaluated', 'ImmunizationEvaluation.immunizationEvent(Immunization)', '',
'patient', 'reference', 'The patient being evaluated', 'ImmunizationEvaluation.patient(Patient)', '',
'status', 'token', 'Immunization evaluation status', 'ImmunizationEvaluation.status', '',
'target-disease', 'token', 'The vaccine preventable disease being evaluated against', 'ImmunizationEvaluation.targetDisease', '',
)


