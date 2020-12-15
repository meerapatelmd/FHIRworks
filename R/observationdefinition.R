df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ObservationDefinition', 'TU', '', 'DomainResource', 'Definition of an observationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'category', 'Σ', '0..*', 'CodeableConcept', 'Category of observationObservation Category Codes (Example)',
'code', 'Σ', '1..1', 'CodeableConcept', 'Type of observation (code / type)LOINC Codes (Example)',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier for this ObservationDefinition instance',
'permittedDataType', '', '0..*', 'code', 'Quantity | CodeableConcept | string | boolean | integer | Range | Ratio | SampledData | time | dateTime | PeriodObservationDataType (Required)',
'multipleResultsAllowed', '', '0..1', 'boolean', 'Multiple results allowed',
'method', '', '0..1', 'CodeableConcept', 'Method used to produce the observationObservation Methods (Example)',
'preferredReportName', '', '0..1', 'string', 'Preferred report name',
'quantitativeDetails', '', '0..1', 'BackboneElement', 'Characteristics of quantitative results',
'customaryUnit', '', '0..1', 'CodeableConcept', 'Customary unit for quantitative resultsUCUM Codes (Extensible)',
'unit', '', '0..1', 'CodeableConcept', 'SI unit for quantitative resultsUCUM Codes (Extensible)',
'conversionFactor', '', '0..1', 'decimal', 'SI to Customary unit conversion factor',
'decimalPrecision', '', '0..1', 'integer', 'Decimal precision of observation quantitative results',
'qualifiedInterval', '', '0..*', 'BackboneElement', 'Qualified range for continuous and ordinal observation results',
'category', '', '0..1', 'code', 'reference | critical | absoluteObservationRangeCategory (Required)',
'range', '', '0..1', 'Range', 'The interval itself, for continuous or ordinal observations',
'context', '', '0..1', 'CodeableConcept', 'Range context qualifierObservation Reference Range Meaning Codes (Extensible)',
'appliesTo', '', '0..*', 'CodeableConcept', 'Targetted population of the rangeObservation Reference Range Applies To Codes (Example)',
'gender', '', '0..1', 'code', 'male | female | other | unknownAdministrativeGender (Required)',
'age', '', '0..1', 'Range', 'Applicable age range, if relevant',
'gestationalAge', '', '0..1', 'Range', 'Applicable gestational age range, if relevant',
'condition', '', '0..1', 'string', 'Condition associated with the reference range',
'validCodedValueSet', '', '0..1', 'Reference(ValueSet)', 'Value set of valid coded values for the observations conforming to this ObservationDefinition',
'normalCodedValueSet', '', '0..1', 'Reference(ValueSet)', 'Value set of normal coded values for the observations conforming to this ObservationDefinition',
'abnormalCodedValueSet', '', '0..1', 'Reference(ValueSet)', 'Value set of abnormal coded values for the observations conforming to this ObservationDefinition',
'criticalCodedValueSet', '', '0..1', 'Reference(ValueSet)', 'Value set of critical coded values for the observations conforming to this ObservationDefinition',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'ObservationDefinition', 'TU', '', 'DomainResource', 'Definition of an observationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'category', 'Σ', '0..*', 'CodeableConcept', 'Category of observationObservation Category Codes (Example)',
'code', 'Σ', '1..1', 'CodeableConcept', 'Type of observation (code / type)LOINC Codes (Example)',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier for this ObservationDefinition instance',
'permittedDataType', '', '0..*', 'code', 'Quantity | CodeableConcept | string | boolean | integer | Range | Ratio | SampledData | time | dateTime | PeriodObservationDataType (Required)',
'multipleResultsAllowed', '', '0..1', 'boolean', 'Multiple results allowed',
'method', '', '0..1', 'CodeableConcept', 'Method used to produce the observationObservation Methods (Example)',
'preferredReportName', '', '0..1', 'string', 'Preferred report name',
'quantitativeDetails', '', '0..1', 'BackboneElement', 'Characteristics of quantitative results',
'customaryUnit', '', '0..1', 'CodeableConcept', 'Customary unit for quantitative resultsUCUM Codes (Extensible)',
'unit', '', '0..1', 'CodeableConcept', 'SI unit for quantitative resultsUCUM Codes (Extensible)',
'conversionFactor', '', '0..1', 'decimal', 'SI to Customary unit conversion factor',
'decimalPrecision', '', '0..1', 'integer', 'Decimal precision of observation quantitative results',
'qualifiedInterval', '', '0..*', 'BackboneElement', 'Qualified range for continuous and ordinal observation results',
'category', '', '0..1', 'code', 'reference | critical | absoluteObservationRangeCategory (Required)',
'range', '', '0..1', 'Range', 'The interval itself, for continuous or ordinal observations',
'context', '', '0..1', 'CodeableConcept', 'Range context qualifierObservation Reference Range Meaning Codes (Extensible)',
'appliesTo', '', '0..*', 'CodeableConcept', 'Targetted population of the rangeObservation Reference Range Applies To Codes (Example)',
'gender', '', '0..1', 'code', 'male | female | other | unknownAdministrativeGender (Required)',
'age', '', '0..1', 'Range', 'Applicable age range, if relevant',
'gestationalAge', '', '0..1', 'Range', 'Applicable gestational age range, if relevant',
'condition', '', '0..1', 'string', 'Condition associated with the reference range',
'validCodedValueSet', '', '0..1', 'Reference(ValueSet)', 'Value set of valid coded values for the observations conforming to this ObservationDefinition',
'normalCodedValueSet', '', '0..1', 'Reference(ValueSet)', 'Value set of normal coded values for the observations conforming to this ObservationDefinition',
'abnormalCodedValueSet', '', '0..1', 'Reference(ValueSet)', 'Value set of abnormal coded values for the observations conforming to this ObservationDefinition',
'criticalCodedValueSet', '', '0..1', 'Reference(ValueSet)', 'Value set of critical coded values for the observations conforming to this ObservationDefinition',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'ObservationDefinition.category', 'Codes for high level observation categories.', 'Example', 'ObservationCategoryCodes',
'ObservationDefinition.code', 'Codes identifying names of simple observations.', 'Example', 'LOINCCodes',
'ObservationDefinition.permittedDataType', 'Permitted data type for observation value.', 'Required', 'ObservationDataType',
'ObservationDefinition.method', 'Methods for simple observations.', 'Example', 'ObservationMethods',
'ObservationDefinition.quantitativeDetails.customaryUnitObservationDefinition.quantitativeDetails.unit', 'Codes identifying units of measure.', 'Extensible', 'UCUMCodes',
'ObservationDefinition.qualifiedInterval.category', 'Codes identifying the category of observation range.', 'Required', 'ObservationRangeCategory',
'ObservationDefinition.qualifiedInterval.context', 'Code identifying the health context of a range.', 'Extensible', 'ObservationReferenceRangeMeaningCodes',
'ObservationDefinition.qualifiedInterval.appliesTo', 'Codes identifying the population the reference range applies to.', 'Example', 'ObservationReferenceRangeAppliesToCodes',
'ObservationDefinition.qualifiedInterval.gender', 'The gender of a person used for administrative purposes.', 'Required', 'AdministrativeGender',
)


