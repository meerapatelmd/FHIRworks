df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Public Health and Emergency Response  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ImmunizationRecommendation', 'TU', '', 'DomainResource', 'Guidance or advice relating to an immunizationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Who this profile is for',
'date', 'Σ', '1..1', 'dateTime', 'Date recommendation(s) created',
'authority', '', '0..1', 'Reference(Organization)', 'Who is responsible for protocol',
'recommendation', 'ΣI', '1..*', 'BackboneElement', 'Vaccine administration recommendations+ Rule: One of vaccineCode or targetDisease SHALL be present',
'vaccineCode', 'Σ', '0..*', 'CodeableConcept', 'Vaccine  or vaccine group recommendation applies toVaccine Administered Value Set (Example)',
'targetDisease', 'Σ', '0..1', 'CodeableConcept', 'Disease to be immunized againstImmunization Recommendation Target Disease Codes (Example)',
'contraindicatedVaccineCode', 'Σ', '0..*', 'CodeableConcept', 'Vaccine which is contraindicated to fulfill the recommendationVaccine Administered Value Set (Example)',
'forecastStatus', '?!Σ', '1..1', 'CodeableConcept', 'Vaccine recommendation statusImmunization Recommendation Status Codes (Example)',
'forecastReason', 'Σ', '0..*', 'CodeableConcept', 'Vaccine administration status reasonImmunization Recommendation Reason Codes (Example)',
'dateCriterion', '', '0..*', 'BackboneElement', 'Dates governing proposed immunization',
'code', '', '1..1', 'CodeableConcept', 'Type of dateImmunization Recommendation Date Criterion Codes (Example)',
'value', '', '1..1', 'dateTime', 'Recommended date',
'description', '', '0..1', 'string', 'Protocol details',
'series', '', '0..1', 'string', 'Name of vaccination series',
'doseNumber[x]', 'Σ', '0..1', '', 'Recommended dose number within series',
'doseNumberPositiveInt', '', '', 'positiveInt', '',
'doseNumberString', '', '', 'string', '',
'seriesDoses[x]', '', '0..1', '', 'Recommended number of doses for immunity',
'seriesDosesPositiveInt', '', '', 'positiveInt', '',
'seriesDosesString', '', '', 'string', '',
'supportingImmunization', '', '0..*', 'Reference(Immunization | ImmunizationEvaluation)', 'Past immunizations supporting recommendation',
'supportingPatientInformation', '', '0..*', 'Reference(Any)', 'Patient observations supporting recommendation',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'ImmunizationRecommendation', '',
'ImmunizationRecommendation.date', 'Moved from ImmunizationRecommendation.recommendation to ImmunizationRecommendation',
'ImmunizationRecommendation.authority', 'Moved from ImmunizationRecommendation.recommendation.protocol to ImmunizationRecommendation',
'ImmunizationRecommendation.recommendation.vaccineCode', 'Max Cardinality changed from 1 to *',
'ImmunizationRecommendation.recommendation.contraindicatedVaccineCode', 'Added Element',
'ImmunizationRecommendation.recommendation.forecastStatus', 'Now marked as Modifier',
'ImmunizationRecommendation.recommendation.forecastReason', 'Added Element',
'ImmunizationRecommendation.recommendation.description', 'Moved from ImmunizationRecommendation.recommendation.protocol to ImmunizationRecommendation.recommendation',
'ImmunizationRecommendation.recommendation.series', 'Moved from ImmunizationRecommendation.recommendation.protocol to ImmunizationRecommendation.recommendation',
'ImmunizationRecommendation.recommendation.doseNumber[x]', 'Renamed from doseNumber to doseNumber[x]
        Add Type string',
'ImmunizationRecommendation.recommendation.seriesDoses[x]', 'Moved from ImmunizationRecommendation.recommendation.protocol.doseSequence to seriesDoses[x]
        Add Type string',
'ImmunizationRecommendation.recommendation.supportingImmunization', 'Type Reference: Added Target Type ImmunizationEvaluation',
'ImmunizationRecommendation.recommendation.supportingPatientInformation', 'Type Reference: Added Target Type Resource
        Type Reference: Removed Target Types Observation, AllergyIntolerance',
'ImmunizationRecommendation.recommendation.protocol', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ImmunizationRecommendation', 'TU', '', 'DomainResource', 'Guidance or advice relating to an immunizationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Who this profile is for',
'date', 'Σ', '1..1', 'dateTime', 'Date recommendation(s) created',
'authority', '', '0..1', 'Reference(Organization)', 'Who is responsible for protocol',
'recommendation', 'ΣI', '1..*', 'BackboneElement', 'Vaccine administration recommendations+ Rule: One of vaccineCode or targetDisease SHALL be present',
'vaccineCode', 'Σ', '0..*', 'CodeableConcept', 'Vaccine  or vaccine group recommendation applies toVaccine Administered Value Set (Example)',
'targetDisease', 'Σ', '0..1', 'CodeableConcept', 'Disease to be immunized againstImmunization Recommendation Target Disease Codes (Example)',
'contraindicatedVaccineCode', 'Σ', '0..*', 'CodeableConcept', 'Vaccine which is contraindicated to fulfill the recommendationVaccine Administered Value Set (Example)',
'forecastStatus', '?!Σ', '1..1', 'CodeableConcept', 'Vaccine recommendation statusImmunization Recommendation Status Codes (Example)',
'forecastReason', 'Σ', '0..*', 'CodeableConcept', 'Vaccine administration status reasonImmunization Recommendation Reason Codes (Example)',
'dateCriterion', '', '0..*', 'BackboneElement', 'Dates governing proposed immunization',
'code', '', '1..1', 'CodeableConcept', 'Type of dateImmunization Recommendation Date Criterion Codes (Example)',
'value', '', '1..1', 'dateTime', 'Recommended date',
'description', '', '0..1', 'string', 'Protocol details',
'series', '', '0..1', 'string', 'Name of vaccination series',
'doseNumber[x]', 'Σ', '0..1', '', 'Recommended dose number within series',
'doseNumberPositiveInt', '', '', 'positiveInt', '',
'doseNumberString', '', '', 'string', '',
'seriesDoses[x]', '', '0..1', '', 'Recommended number of doses for immunity',
'seriesDosesPositiveInt', '', '', 'positiveInt', '',
'seriesDosesString', '', '', 'string', '',
'supportingImmunization', '', '0..*', 'Reference(Immunization | ImmunizationEvaluation)', 'Past immunizations supporting recommendation',
'supportingPatientInformation', '', '0..*', 'Reference(Any)', 'Patient observations supporting recommendation',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'ImmunizationRecommendation', '',
'ImmunizationRecommendation.date', 'Moved from ImmunizationRecommendation.recommendation to ImmunizationRecommendation',
'ImmunizationRecommendation.authority', 'Moved from ImmunizationRecommendation.recommendation.protocol to ImmunizationRecommendation',
'ImmunizationRecommendation.recommendation.vaccineCode', 'Max Cardinality changed from 1 to *',
'ImmunizationRecommendation.recommendation.contraindicatedVaccineCode', 'Added Element',
'ImmunizationRecommendation.recommendation.forecastStatus', 'Now marked as Modifier',
'ImmunizationRecommendation.recommendation.forecastReason', 'Added Element',
'ImmunizationRecommendation.recommendation.description', 'Moved from ImmunizationRecommendation.recommendation.protocol to ImmunizationRecommendation.recommendation',
'ImmunizationRecommendation.recommendation.series', 'Moved from ImmunizationRecommendation.recommendation.protocol to ImmunizationRecommendation.recommendation',
'ImmunizationRecommendation.recommendation.doseNumber[x]', 'Renamed from doseNumber to doseNumber[x]
        Add Type string',
'ImmunizationRecommendation.recommendation.seriesDoses[x]', 'Moved from ImmunizationRecommendation.recommendation.protocol.doseSequence to seriesDoses[x]
        Add Type string',
'ImmunizationRecommendation.recommendation.supportingImmunization', 'Type Reference: Added Target Type ImmunizationEvaluation',
'ImmunizationRecommendation.recommendation.supportingPatientInformation', 'Type Reference: Added Target Type Resource
        Type Reference: Removed Target Types Observation, AllergyIntolerance',
'ImmunizationRecommendation.recommendation.protocol', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'ImmunizationRecommendation.recommendation.vaccineCodeImmunizationRecommendation.recommendation.contraindicatedVaccineCode', 'The type of vaccine administered.', 'Example', 'VaccineAdministeredValueSet',
'ImmunizationRecommendation.recommendation.targetDisease', 'The disease that the recommended vaccination targets.', 'Example', 'ImmunizationRecommendationTargetDiseaseCodes',
'ImmunizationRecommendation.recommendation.forecastStatus', 'The patient's status with respect to a vaccination protocol.', 'Example', 'ImmunizationRecommendationStatusCodes',
'ImmunizationRecommendation.recommendation.forecastReason', 'The reason for the patient's status with respect to a vaccination protocol.', 'Example', 'ImmunizationRecommendationReasonCodes',
'ImmunizationRecommendation.recommendation.dateCriterion.code', 'Classifies date criterion with respect to conveying information about a patient's vaccination status (e.g. due date, latest to give date, etc.).', 'Example', 'ImmunizationRecommendationDateCriterionCodes',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'imr-1', 'Rule', 'ImmunizationRecommendation.recommendation', 'One of vaccineCode or targetDisease SHALL be present', 'vaccineCode.exists() or targetDisease.exists()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'date', 'date', 'Date recommendation(s) created', 'ImmunizationRecommendation.date', '',
'identifier', 'token', 'Business identifier', 'ImmunizationRecommendation.identifier', '',
'information', 'reference', 'Patient observations supporting recommendation', 'ImmunizationRecommendation.recommendation.supportingPatientInformation(Any)', '',
'patient', 'reference', 'Who this profile is for', 'ImmunizationRecommendation.patient(Patient)', '',
'status', 'token', 'Vaccine recommendation status', 'ImmunizationRecommendation.recommendation.forecastStatus', '',
'support', 'reference', 'Past immunizations supporting recommendation', 'ImmunizationRecommendation.recommendation.supportingImmunization(Immunization, ImmunizationEvaluation)', '',
'target-disease', 'token', 'Disease to be immunized against', 'ImmunizationRecommendation.recommendation.targetDisease', '',
'vaccine-type', 'token', 'Vaccine  or vaccine group recommendation applies to', 'ImmunizationRecommendation.recommendation.vaccineCode', '',
)


