df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Health Care Devices  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Anonymous', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DeviceMetric', 'ΣTU', '', 'DomainResource', 'Measurement, calculation or setting capability of a medical deviceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Instance identifier',
'type', 'Σ', '1..1', 'CodeableConcept', 'Identity of metric, for example Heart Rate or PEEP SettingDevice Metric and Component Types (Preferred)',
'unit', 'Σ', '0..1', 'CodeableConcept', 'Unit of Measure for the MetricDevice Metric and Component Types (Preferred)',
'source', 'Σ', '0..1', 'Reference(Device)', 'Describes the link to the source Device',
'parent', 'Σ', '0..1', 'Reference(Device)', 'Describes the link to the parent Device',
'operationalStatus', 'Σ', '0..1', 'code', 'on | off | standby | entered-in-errorDeviceMetricOperationalStatus (Required)',
'color', 'Σ', '0..1', 'code', 'black | red | green | yellow | blue | magenta | cyan | whiteDeviceMetricColor (Required)',
'category', 'Σ', '1..1', 'code', 'measurement | setting | calculation | unspecifiedDeviceMetricCategory (Required)',
'measurementPeriod', 'Σ', '0..1', 'Timing', 'Describes the measurement repetition time',
'calibration', 'Σ', '0..*', 'BackboneElement', 'Describes the calibrations that have been performed or that are required to be performed',
'type', 'Σ', '0..1', 'code', 'unspecified | offset | gain | two-pointDeviceMetricCalibrationType (Required)',
'state', 'Σ', '0..1', 'code', 'not-calibrated | calibration-required | calibrated | unspecifiedDeviceMetricCalibrationState (Required)',
'time', 'Σ', '0..1', 'instant', 'Describes the time last calibration has been performed',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'DeviceMetric', '',
'DeviceMetric.identifier', 'Min Cardinality changed from 1 to 0
        Max Cardinality changed from 1 to *',
'DeviceMetric.parent', 'Type Reference: Added Target Type Device
        Type Reference: Removed Target Type DeviceComponent',
'DeviceMetric.operationalStatus', 'Change value set from http://hl7.org/fhir/ValueSet/metric-operational-status to http://hl7.org/fhir/ValueSet/metric-operational-status|4.0.1',
'DeviceMetric.color', 'Change value set from http://hl7.org/fhir/ValueSet/metric-color to http://hl7.org/fhir/ValueSet/metric-color|4.0.1',
'DeviceMetric.category', 'Change value set from http://hl7.org/fhir/ValueSet/metric-category to http://hl7.org/fhir/ValueSet/metric-category|4.0.1',
'DeviceMetric.calibration.type', 'Change value set from http://hl7.org/fhir/ValueSet/metric-calibration-type to http://hl7.org/fhir/ValueSet/metric-calibration-type|4.0.1',
'DeviceMetric.calibration.state', 'Change value set from http://hl7.org/fhir/ValueSet/metric-calibration-state to http://hl7.org/fhir/ValueSet/metric-calibration-state|4.0.1',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'DeviceMetric', 'ΣTU', '', 'DomainResource', 'Measurement, calculation or setting capability of a medical deviceElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Instance identifier',
'type', 'Σ', '1..1', 'CodeableConcept', 'Identity of metric, for example Heart Rate or PEEP SettingDevice Metric and Component Types (Preferred)',
'unit', 'Σ', '0..1', 'CodeableConcept', 'Unit of Measure for the MetricDevice Metric and Component Types (Preferred)',
'source', 'Σ', '0..1', 'Reference(Device)', 'Describes the link to the source Device',
'parent', 'Σ', '0..1', 'Reference(Device)', 'Describes the link to the parent Device',
'operationalStatus', 'Σ', '0..1', 'code', 'on | off | standby | entered-in-errorDeviceMetricOperationalStatus (Required)',
'color', 'Σ', '0..1', 'code', 'black | red | green | yellow | blue | magenta | cyan | whiteDeviceMetricColor (Required)',
'category', 'Σ', '1..1', 'code', 'measurement | setting | calculation | unspecifiedDeviceMetricCategory (Required)',
'measurementPeriod', 'Σ', '0..1', 'Timing', 'Describes the measurement repetition time',
'calibration', 'Σ', '0..*', 'BackboneElement', 'Describes the calibrations that have been performed or that are required to be performed',
'type', 'Σ', '0..1', 'code', 'unspecified | offset | gain | two-pointDeviceMetricCalibrationType (Required)',
'state', 'Σ', '0..1', 'code', 'not-calibrated | calibration-required | calibrated | unspecifiedDeviceMetricCalibrationState (Required)',
'time', 'Σ', '0..1', 'instant', 'Describes the time last calibration has been performed',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'DeviceMetric', '',
'DeviceMetric.identifier', 'Min Cardinality changed from 1 to 0
        Max Cardinality changed from 1 to *',
'DeviceMetric.parent', 'Type Reference: Added Target Type Device
        Type Reference: Removed Target Type DeviceComponent',
'DeviceMetric.operationalStatus', 'Change value set from http://hl7.org/fhir/ValueSet/metric-operational-status to http://hl7.org/fhir/ValueSet/metric-operational-status|4.0.1',
'DeviceMetric.color', 'Change value set from http://hl7.org/fhir/ValueSet/metric-color to http://hl7.org/fhir/ValueSet/metric-color|4.0.1',
'DeviceMetric.category', 'Change value set from http://hl7.org/fhir/ValueSet/metric-category to http://hl7.org/fhir/ValueSet/metric-category|4.0.1',
'DeviceMetric.calibration.type', 'Change value set from http://hl7.org/fhir/ValueSet/metric-calibration-type to http://hl7.org/fhir/ValueSet/metric-calibration-type|4.0.1',
'DeviceMetric.calibration.state', 'Change value set from http://hl7.org/fhir/ValueSet/metric-calibration-state to http://hl7.org/fhir/ValueSet/metric-calibration-state|4.0.1',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'DeviceMetric.type', 'Describes the metric type.', 'Preferred', 'DeviceMetricAndComponentTypes',
'DeviceMetric.unit', 'Describes the unit of the metric.', 'Preferred', 'DeviceMetricAndComponentTypes',
'DeviceMetric.operationalStatus', 'Describes the operational status of the DeviceMetric.', 'Required', 'DeviceMetricOperationalStatus',
'DeviceMetric.color', 'Describes the typical color of representation.', 'Required', 'DeviceMetricColor',
'DeviceMetric.category', 'Describes the category of the metric.', 'Required', 'DeviceMetricCategory',
'DeviceMetric.calibration.type', 'Describes the type of a metric calibration.', 'Required', 'DeviceMetricCalibrationType',
'DeviceMetric.calibration.state', 'Describes the state of a metric calibration.', 'Required', 'DeviceMetricCalibrationState',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'category', 'token', 'The category of the metric', 'DeviceMetric.category', '',
'identifier', 'token', 'The identifier of the metric', 'DeviceMetric.identifier', '',
'parent', 'reference', 'The parent DeviceMetric resource', 'DeviceMetric.parent(Device)', '',
'source', 'reference', 'The device resource', 'DeviceMetric.source(Device)', '',
'type', 'token', 'The component type', 'DeviceMetric.type', '',
)


