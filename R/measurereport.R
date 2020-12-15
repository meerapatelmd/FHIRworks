df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Clinical Quality Information  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Business', 'Compartments: Patient',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MeasureReport', 'ITU', '', 'DomainResource', 'Results of a measure evaluation+ Rule: Measure Reports used for data collection SHALL NOT communicate group and score information+ Rule: Stratifiers SHALL be either a single criteria or a set of criteria componentsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the MeasureReport',
'status', '?!Σ', '1..1', 'code', 'complete | pending | errorMeasureReportStatus (Required)',
'type', 'ΣI', '1..1', 'code', 'individual | subject-list | summary | data-collectionMeasureReportType (Required)',
'measure', 'Σ', '1..1', 'canonical(Measure)', 'What measure was calculated',
'subject', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | Location | Device | RelatedPerson | Group)', 'What individual(s) the report is for',
'date', 'Σ', '0..1', 'dateTime', 'When the report was generated',
'reporter', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Location | Organization)', 'Who is reporting the data',
'period', 'Σ', '1..1', 'Period', 'What period the report covers',
'improvementNotation', '?!Σ', '0..1', 'CodeableConcept', 'increase | decreaseMeasureImprovementNotation (Required)',
'group', 'I', '0..*', 'BackboneElement', 'Measure results for each group',
'code', 'Σ', '0..1', 'CodeableConcept', 'Meaning of the group',
'population', '', '0..*', 'BackboneElement', 'The populations in the group',
'code', 'Σ', '0..1', 'CodeableConcept', 'initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-observationMeasurePopulationType (Extensible)',
'count', '', '0..1', 'integer', 'Size of the population',
'subjectResults', '', '0..1', 'Reference(List)', 'For subject-list reports, the subject results in this population',
'measureScore', 'Σ', '0..1', 'Quantity', 'What score this group achieved',
'stratifier', '', '0..*', 'BackboneElement', 'Stratification results',
'code', '', '0..*', 'CodeableConcept', 'What stratifier of the group',
'stratum', '', '0..*', 'BackboneElement', 'Stratum results, one for each unique value, or set of values, in the stratifier, or stratifier components',
'value', '', '0..1', 'CodeableConcept', 'The stratum value, e.g. male',
'component', '', '0..*', 'BackboneElement', 'Stratifier component values',
'code', '', '1..1', 'CodeableConcept', 'What stratifier component of the group',
'value', '', '1..1', 'CodeableConcept', 'The stratum component value, e.g. male',
'population', '', '0..*', 'BackboneElement', 'Population results in this stratum',
'code', '', '0..1', 'CodeableConcept', 'initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-observationMeasurePopulationType (Extensible)',
'count', '', '0..1', 'integer', 'Size of the population',
'subjectResults', '', '0..1', 'Reference(List)', 'For subject-list reports, the subject results in this population',
'measureScore', '', '0..1', 'Quantity', 'What score this stratum achieved',
'evaluatedResource', '', '0..*', 'Reference(Any)', 'What data was used to calculate the measure score',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'MeasureReport', '',
'MeasureReport.identifier', 'Max Cardinality changed from 1 to *',
'MeasureReport.status', 'Change value set from http://hl7.org/fhir/ValueSet/measure-report-status to http://hl7.org/fhir/ValueSet/measure-report-status|4.0.1',
'MeasureReport.type', 'Change value set from http://hl7.org/fhir/ValueSet/measure-report-type to http://hl7.org/fhir/ValueSet/measure-report-type|4.0.1',
'MeasureReport.measure', 'Type changed from Reference(Measure) to canonical(Measure)',
'MeasureReport.subject', 'Added Element',
'MeasureReport.reporter', 'Added Element',
'MeasureReport.improvementNotation', 'Added Element',
'MeasureReport.group.code', 'Added Element',
'MeasureReport.group.population.code', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/measure-population" to "http://terminology.hl7.org/CodeSystem/measure-population"',
'MeasureReport.group.population.subjectResults', 'Added Element',
'MeasureReport.group.measureScore', 'Type changed from decimal to Quantity',
'MeasureReport.group.stratifier.code', 'Added Element',
'MeasureReport.group.stratifier.stratum.value', 'Min Cardinality changed from 1 to 0
        Type changed from string to CodeableConcept',
'MeasureReport.group.stratifier.stratum.component', 'Added Element',
'MeasureReport.group.stratifier.stratum.component.code', 'Added Mandatory Element',
'MeasureReport.group.stratifier.stratum.component.value', 'Added Mandatory Element',
'MeasureReport.group.stratifier.stratum.population.code', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/measure-population" to "http://terminology.hl7.org/CodeSystem/measure-population"',
'MeasureReport.group.stratifier.stratum.population.subjectResults', 'Added Element',
'MeasureReport.group.stratifier.stratum.measureScore', 'Type changed from decimal to Quantity',
'MeasureReport.evaluatedResource', 'Added Element',
'MeasureReport.patient', 'deleted',
'MeasureReport.reportingOrganization', 'deleted',
'MeasureReport.group.identifier', 'deleted',
'MeasureReport.group.population.identifier', 'deleted',
'MeasureReport.group.population.patients', 'deleted',
'MeasureReport.group.stratifier.identifier', 'deleted',
'MeasureReport.group.stratifier.stratum.population.identifier', 'deleted',
'MeasureReport.group.stratifier.stratum.population.patients', 'deleted',
'MeasureReport.evaluatedResources', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'MeasureReport', 'ITU', '', 'DomainResource', 'Results of a measure evaluation+ Rule: Measure Reports used for data collection SHALL NOT communicate group and score information+ Rule: Stratifiers SHALL be either a single criteria or a set of criteria componentsElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Additional identifier for the MeasureReport',
'status', '?!Σ', '1..1', 'code', 'complete | pending | errorMeasureReportStatus (Required)',
'type', 'ΣI', '1..1', 'code', 'individual | subject-list | summary | data-collectionMeasureReportType (Required)',
'measure', 'Σ', '1..1', 'canonical(Measure)', 'What measure was calculated',
'subject', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | Location | Device | RelatedPerson | Group)', 'What individual(s) the report is for',
'date', 'Σ', '0..1', 'dateTime', 'When the report was generated',
'reporter', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Location | Organization)', 'Who is reporting the data',
'period', 'Σ', '1..1', 'Period', 'What period the report covers',
'improvementNotation', '?!Σ', '0..1', 'CodeableConcept', 'increase | decreaseMeasureImprovementNotation (Required)',
'group', 'I', '0..*', 'BackboneElement', 'Measure results for each group',
'code', 'Σ', '0..1', 'CodeableConcept', 'Meaning of the group',
'population', '', '0..*', 'BackboneElement', 'The populations in the group',
'code', 'Σ', '0..1', 'CodeableConcept', 'initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-observationMeasurePopulationType (Extensible)',
'count', '', '0..1', 'integer', 'Size of the population',
'subjectResults', '', '0..1', 'Reference(List)', 'For subject-list reports, the subject results in this population',
'measureScore', 'Σ', '0..1', 'Quantity', 'What score this group achieved',
'stratifier', '', '0..*', 'BackboneElement', 'Stratification results',
'code', '', '0..*', 'CodeableConcept', 'What stratifier of the group',
'stratum', '', '0..*', 'BackboneElement', 'Stratum results, one for each unique value, or set of values, in the stratifier, or stratifier components',
'value', '', '0..1', 'CodeableConcept', 'The stratum value, e.g. male',
'component', '', '0..*', 'BackboneElement', 'Stratifier component values',
'code', '', '1..1', 'CodeableConcept', 'What stratifier component of the group',
'value', '', '1..1', 'CodeableConcept', 'The stratum component value, e.g. male',
'population', '', '0..*', 'BackboneElement', 'Population results in this stratum',
'code', '', '0..1', 'CodeableConcept', 'initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-observationMeasurePopulationType (Extensible)',
'count', '', '0..1', 'integer', 'Size of the population',
'subjectResults', '', '0..1', 'Reference(List)', 'For subject-list reports, the subject results in this population',
'measureScore', '', '0..1', 'Quantity', 'What score this stratum achieved',
'evaluatedResource', '', '0..*', 'Reference(Any)', 'What data was used to calculate the measure score',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'MeasureReport', '',
'MeasureReport.identifier', 'Max Cardinality changed from 1 to *',
'MeasureReport.status', 'Change value set from http://hl7.org/fhir/ValueSet/measure-report-status to http://hl7.org/fhir/ValueSet/measure-report-status|4.0.1',
'MeasureReport.type', 'Change value set from http://hl7.org/fhir/ValueSet/measure-report-type to http://hl7.org/fhir/ValueSet/measure-report-type|4.0.1',
'MeasureReport.measure', 'Type changed from Reference(Measure) to canonical(Measure)',
'MeasureReport.subject', 'Added Element',
'MeasureReport.reporter', 'Added Element',
'MeasureReport.improvementNotation', 'Added Element',
'MeasureReport.group.code', 'Added Element',
'MeasureReport.group.population.code', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/measure-population" to "http://terminology.hl7.org/CodeSystem/measure-population"',
'MeasureReport.group.population.subjectResults', 'Added Element',
'MeasureReport.group.measureScore', 'Type changed from decimal to Quantity',
'MeasureReport.group.stratifier.code', 'Added Element',
'MeasureReport.group.stratifier.stratum.value', 'Min Cardinality changed from 1 to 0
        Type changed from string to CodeableConcept',
'MeasureReport.group.stratifier.stratum.component', 'Added Element',
'MeasureReport.group.stratifier.stratum.component.code', 'Added Mandatory Element',
'MeasureReport.group.stratifier.stratum.component.value', 'Added Mandatory Element',
'MeasureReport.group.stratifier.stratum.population.code', 'Change code system for extensibly bound codes from "http://hl7.org/fhir/measure-population" to "http://terminology.hl7.org/CodeSystem/measure-population"',
'MeasureReport.group.stratifier.stratum.population.subjectResults', 'Added Element',
'MeasureReport.group.stratifier.stratum.measureScore', 'Type changed from decimal to Quantity',
'MeasureReport.evaluatedResource', 'Added Element',
'MeasureReport.patient', 'deleted',
'MeasureReport.reportingOrganization', 'deleted',
'MeasureReport.group.identifier', 'deleted',
'MeasureReport.group.population.identifier', 'deleted',
'MeasureReport.group.population.patients', 'deleted',
'MeasureReport.group.stratifier.identifier', 'deleted',
'MeasureReport.group.stratifier.stratum.population.identifier', 'deleted',
'MeasureReport.group.stratifier.stratum.population.patients', 'deleted',
'MeasureReport.evaluatedResources', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'MeasureReport.status', 'The status of the measure report.', 'Required', 'MeasureReportStatus',
'MeasureReport.type', 'The type of the measure report.', 'Required', 'MeasureReportType',
'MeasureReport.improvementNotation', 'Observation values that indicate what change in a measurement value or score is indicative of an improvement in the measured item or scored issue.', 'Required', 'MeasureImprovementNotation',
'MeasureReport.group.population.codeMeasureReport.group.stratifier.stratum.population.code', 'The type of population (e.g. initial, numerator, denominator, etc.).', 'Extensible', 'MeasurePopulationType',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'mrp-1', 'Rule', '(base)', 'Measure Reports used for data collection SHALL NOT communicate group and score information', '(type != 'data-collection') or group.exists().not()',
'mrp-2', 'Rule', '(base)', 'Stratifiers SHALL be either a single criteria or a set of criteria components', 'group.stratifier.stratum.all(value.exists() xor component.exists())',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'date', 'date', 'The date of the measure report', 'MeasureReport.date', '',
'evaluated-resource', 'reference', 'An evaluated resource referenced by the measure report', 'MeasureReport.evaluatedResource(Any)', '',
'identifier', 'token', 'External identifier of the measure report to be returned', 'MeasureReport.identifier', '',
'measure', 'reference', 'The measure to return measure report results for', 'MeasureReport.measure(Measure)', '',
'patient', 'reference', 'The identity of a patient to search for individual measure report results for', 'MeasureReport.subject.where(resolve() is Patient)(Patient)', '',
'period', 'date', 'The period of the measure report', 'MeasureReport.period', '',
'reporter', 'reference', 'The reporter to return measure report results for', 'MeasureReport.reporter(Practitioner, Organization, PractitionerRole, Location)', '',
'status', 'token', 'The status of the measure report', 'MeasureReport.status', '',
'subject', 'reference', 'The identity of a subject to search for individual measure report results for', 'MeasureReport.subject(Practitioner, Group, Device, Patient, PractitionerRole, RelatedPerson, Location)', '',
)


