df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: N', 'Normative (from v4.0.0)', 'Security Category: Patient', 'Compartments: Device, Encounter, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
NA, 'This page has been approved as part of an ANSI  standard.
   See the Observation Package for further details.',
)


df3 <- 
tibble::tribble(
~`Profile`,~`Description`,
'Vital signs', 'The FHIR Vital Signs profile sets minimum expectations for the Observation Resource to record, search and fetch the vital signs (e.g. temperature, blood pressure, respiration rate, etc.) associated with a patient',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Observation', 'IN', '', 'DomainResource', 'Measurements and simple assertions+ Rule: dataAbsentReason SHALL only be present if Observation.value[x] is not present+ Rule: If Observation.code is the same as an Observation.component.code then the value element associated with the code SHALL NOT be presentElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for observation',
'basedOn', 'Σ', '0..*', 'Reference(CarePlan | DeviceRequest | ImmunizationRecommendation | MedicationRequest | NutritionOrder | ServiceRequest)', 'Fulfills plan, proposal or order',
'partOf', 'Σ', '0..*', 'Reference(MedicationAdministration | MedicationDispense | MedicationStatement | Procedure | Immunization | ImagingStudy)', 'Part of referenced event',
'status', '?!Σ', '1..1', 'code', 'registered | preliminary | final | amended +ObservationStatus (Required)',
'category', '', '0..*', 'CodeableConcept', 'Classification of  type of observationObservation Category Codes (Preferred)',
'code', 'Σ', '1..1', 'CodeableConcept', 'Type of observation (code / type)LOINC Codes (Example)',
'subject', 'Σ', '0..1', 'Reference(Patient | Group | Device | Location)', 'Who and/or what the observation is about',
'focus', 'ΣTU', '0..*', 'Reference(Any)', 'What the observation is about, when it is not about the subject of record',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Healthcare event during which this observation is made',
'effective[x]', 'Σ', '0..1', '', 'Clinically relevant time/time-period for observation',
'effectiveDateTime', '', '', 'dateTime', '',
'effectivePeriod', '', '', 'Period', '',
'effectiveTiming', '', '', 'Timing', '',
'effectiveInstant', '', '', 'instant', '',
'issued', 'Σ', '0..1', 'instant', 'Date/Time this version was made available',
'performer', 'Σ', '0..*', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam | Patient | RelatedPerson)', 'Who is responsible for the observation',
'value[x]', 'ΣI', '0..1', '', 'Actual result',
'valueQuantity', '', '', 'Quantity', '',
'valueCodeableConcept', '', '', 'CodeableConcept', '',
'valueString', '', '', 'string', '',
'valueBoolean', '', '', 'boolean', '',
'valueInteger', '', '', 'integer', '',
'valueRange', '', '', 'Range', '',
'valueRatio', '', '', 'Ratio', '',
'valueSampledData', '', '', 'SampledData', '',
'valueTime', '', '', 'time', '',
'valueDateTime', '', '', 'dateTime', '',
'valuePeriod', '', '', 'Period', '',
'dataAbsentReason', 'I', '0..1', 'CodeableConcept', 'Why the result is missingDataAbsentReason (Extensible)',
'interpretation', '', '0..*', 'CodeableConcept', 'High, low, normal, etc.Observation Interpretation Codes (Extensible)',
'note', '', '0..*', 'Annotation', 'Comments about the observation',
'bodySite', '', '0..1', 'CodeableConcept', 'Observed body partSNOMED CT Body Structures (Example)',
'method', '', '0..1', 'CodeableConcept', 'How it was doneObservation Methods (Example)',
'specimen', '', '0..1', 'Reference(Specimen)', 'Specimen used for this observation',
'device', '', '0..1', 'Reference(Device | DeviceMetric)', '(Measurement) Device',
'referenceRange', 'I', '0..*', 'BackboneElement', 'Provides guide for interpretation+ Rule: Must have at least a low or a high or text',
'low', 'I', '0..1', 'SimpleQuantity', 'Low Range, if relevant',
'high', 'I', '0..1', 'SimpleQuantity', 'High Range, if relevant',
'type', '', '0..1', 'CodeableConcept', 'Reference range qualifierObservation Reference Range Meaning Codes (Preferred)',
'appliesTo', '', '0..*', 'CodeableConcept', 'Reference range populationObservation Reference Range Applies To Codes (Example)',
'age', '', '0..1', 'Range', 'Applicable age range, if relevant',
'text', '', '0..1', 'string', 'Text based reference range in an observation',
'hasMember', 'Σ', '0..*', 'Reference(Observation | QuestionnaireResponse | MolecularSequence)', 'Related resource that belongs to the Observation group',
'derivedFrom', 'Σ', '0..*', 'Reference(DocumentReference | ImagingStudy | Media | QuestionnaireResponse | Observation | MolecularSequence)', 'Related measurements the observation is made from',
'component', 'Σ', '0..*', 'BackboneElement', 'Component results',
'code', 'Σ', '1..1', 'CodeableConcept', 'Type of component observation (code / type)LOINC Codes (Example)',
'value[x]', 'Σ', '0..1', '', 'Actual component result',
'valueQuantity', '', '', 'Quantity', '',
'valueCodeableConcept', '', '', 'CodeableConcept', '',
'valueString', '', '', 'string', '',
'valueBoolean', '', '', 'boolean', '',
'valueInteger', '', '', 'integer', '',
'valueRange', '', '', 'Range', '',
'valueRatio', '', '', 'Ratio', '',
'valueSampledData', '', '', 'SampledData', '',
'valueTime', '', '', 'time', '',
'valueDateTime', '', '', 'dateTime', '',
'valuePeriod', '', '', 'Period', '',
'dataAbsentReason', 'I', '0..1', 'CodeableConcept', 'Why the component result is missingDataAbsentReason (Extensible)',
'interpretation', '', '0..*', 'CodeableConcept', 'High, low, normal, etc.Observation Interpretation Codes (Extensible)',
'referenceRange', '', '0..*', 'see referenceRange', 'Provides guide for interpretation of component result',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Observation', '',
'Observation.basedOn', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Types ProcedureRequest, ReferralRequest',
'Observation.partOf', 'Added Element',
'Observation.status', 'Change value set from http://hl7.org/fhir/ValueSet/observation-status to http://hl7.org/fhir/ValueSet/observation-status|4.0.1',
'Observation.focus', 'Added Element',
'Observation.encounter', 'Renamed from context to encounter
        Type Reference: Removed Target Type EpisodeOfCare',
'Observation.effective[x]', 'Add Types Timing, instant',
'Observation.performer', 'Type Reference: Added Target Types PractitionerRole, CareTeam',
'Observation.value[x]', 'Add Type integer
        Remove Type Attachment',
'Observation.dataAbsentReason', 'Change value set from http://hl7.org/fhir/ValueSet/observation-valueabsentreason to http://hl7.org/fhir/ValueSet/data-absent-reason
        Change code system for extensibly bound codes from "http://hl7.org/fhir/data-absent-reason" to "http://terminology.hl7.org/CodeSystem/data-absent-reason"',
'Observation.interpretation', 'Max Cardinality changed from 1 to *
        Change code system for extensibly bound codes from "http://terminology.hl7.org/CodeSystem/v2-0078" to "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"',
'Observation.note', 'Renamed from comment to note
        Max Cardinality changed from 1 to *
        Type changed from string to Annotation',
'Observation.referenceRange.type', 'Remove Binding http://hl7.org/fhir/ValueSet/referencerange-meaning (extensible)',
'Observation.hasMember', 'Added Element',
'Observation.derivedFrom', 'Added Element',
'Observation.component.value[x]', 'Add Types boolean, integer
        Remove Type Attachment',
'Observation.component.dataAbsentReason', 'Change value set from http://hl7.org/fhir/ValueSet/observation-valueabsentreason to http://hl7.org/fhir/ValueSet/data-absent-reason
        Change code system for extensibly bound codes from "http://hl7.org/fhir/data-absent-reason" to "http://terminology.hl7.org/CodeSystem/data-absent-reason"',
'Observation.component.interpretation', 'Max Cardinality changed from 1 to *
        Change code system for extensibly bound codes from "http://terminology.hl7.org/CodeSystem/v2-0078" to "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"',
'Observation.related', 'deleted',
)


df6 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Observation', 'IN', '', 'DomainResource', 'Measurements and simple assertions+ Rule: dataAbsentReason SHALL only be present if Observation.value[x] is not present+ Rule: If Observation.code is the same as an Observation.component.code then the value element associated with the code SHALL NOT be presentElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Business Identifier for observation',
'basedOn', 'Σ', '0..*', 'Reference(CarePlan | DeviceRequest | ImmunizationRecommendation | MedicationRequest | NutritionOrder | ServiceRequest)', 'Fulfills plan, proposal or order',
'partOf', 'Σ', '0..*', 'Reference(MedicationAdministration | MedicationDispense | MedicationStatement | Procedure | Immunization | ImagingStudy)', 'Part of referenced event',
'status', '?!Σ', '1..1', 'code', 'registered | preliminary | final | amended +ObservationStatus (Required)',
'category', '', '0..*', 'CodeableConcept', 'Classification of  type of observationObservation Category Codes (Preferred)',
'code', 'Σ', '1..1', 'CodeableConcept', 'Type of observation (code / type)LOINC Codes (Example)',
'subject', 'Σ', '0..1', 'Reference(Patient | Group | Device | Location)', 'Who and/or what the observation is about',
'focus', 'ΣTU', '0..*', 'Reference(Any)', 'What the observation is about, when it is not about the subject of record',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Healthcare event during which this observation is made',
'effective[x]', 'Σ', '0..1', '', 'Clinically relevant time/time-period for observation',
'effectiveDateTime', '', '', 'dateTime', '',
'effectivePeriod', '', '', 'Period', '',
'effectiveTiming', '', '', 'Timing', '',
'effectiveInstant', '', '', 'instant', '',
'issued', 'Σ', '0..1', 'instant', 'Date/Time this version was made available',
'performer', 'Σ', '0..*', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam | Patient | RelatedPerson)', 'Who is responsible for the observation',
'value[x]', 'ΣI', '0..1', '', 'Actual result',
'valueQuantity', '', '', 'Quantity', '',
'valueCodeableConcept', '', '', 'CodeableConcept', '',
'valueString', '', '', 'string', '',
'valueBoolean', '', '', 'boolean', '',
'valueInteger', '', '', 'integer', '',
'valueRange', '', '', 'Range', '',
'valueRatio', '', '', 'Ratio', '',
'valueSampledData', '', '', 'SampledData', '',
'valueTime', '', '', 'time', '',
'valueDateTime', '', '', 'dateTime', '',
'valuePeriod', '', '', 'Period', '',
'dataAbsentReason', 'I', '0..1', 'CodeableConcept', 'Why the result is missingDataAbsentReason (Extensible)',
'interpretation', '', '0..*', 'CodeableConcept', 'High, low, normal, etc.Observation Interpretation Codes (Extensible)',
'note', '', '0..*', 'Annotation', 'Comments about the observation',
'bodySite', '', '0..1', 'CodeableConcept', 'Observed body partSNOMED CT Body Structures (Example)',
'method', '', '0..1', 'CodeableConcept', 'How it was doneObservation Methods (Example)',
'specimen', '', '0..1', 'Reference(Specimen)', 'Specimen used for this observation',
'device', '', '0..1', 'Reference(Device | DeviceMetric)', '(Measurement) Device',
'referenceRange', 'I', '0..*', 'BackboneElement', 'Provides guide for interpretation+ Rule: Must have at least a low or a high or text',
'low', 'I', '0..1', 'SimpleQuantity', 'Low Range, if relevant',
'high', 'I', '0..1', 'SimpleQuantity', 'High Range, if relevant',
'type', '', '0..1', 'CodeableConcept', 'Reference range qualifierObservation Reference Range Meaning Codes (Preferred)',
'appliesTo', '', '0..*', 'CodeableConcept', 'Reference range populationObservation Reference Range Applies To Codes (Example)',
'age', '', '0..1', 'Range', 'Applicable age range, if relevant',
'text', '', '0..1', 'string', 'Text based reference range in an observation',
'hasMember', 'Σ', '0..*', 'Reference(Observation | QuestionnaireResponse | MolecularSequence)', 'Related resource that belongs to the Observation group',
'derivedFrom', 'Σ', '0..*', 'Reference(DocumentReference | ImagingStudy | Media | QuestionnaireResponse | Observation | MolecularSequence)', 'Related measurements the observation is made from',
'component', 'Σ', '0..*', 'BackboneElement', 'Component results',
'code', 'Σ', '1..1', 'CodeableConcept', 'Type of component observation (code / type)LOINC Codes (Example)',
'value[x]', 'Σ', '0..1', '', 'Actual component result',
'valueQuantity', '', '', 'Quantity', '',
'valueCodeableConcept', '', '', 'CodeableConcept', '',
'valueString', '', '', 'string', '',
'valueBoolean', '', '', 'boolean', '',
'valueInteger', '', '', 'integer', '',
'valueRange', '', '', 'Range', '',
'valueRatio', '', '', 'Ratio', '',
'valueSampledData', '', '', 'SampledData', '',
'valueTime', '', '', 'time', '',
'valueDateTime', '', '', 'dateTime', '',
'valuePeriod', '', '', 'Period', '',
'dataAbsentReason', 'I', '0..1', 'CodeableConcept', 'Why the component result is missingDataAbsentReason (Extensible)',
'interpretation', '', '0..*', 'CodeableConcept', 'High, low, normal, etc.Observation Interpretation Codes (Extensible)',
'referenceRange', '', '0..*', 'see referenceRange', 'Provides guide for interpretation of component result',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,
'Observation', '',
'Observation.basedOn', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Types ProcedureRequest, ReferralRequest',
'Observation.partOf', 'Added Element',
'Observation.status', 'Change value set from http://hl7.org/fhir/ValueSet/observation-status to http://hl7.org/fhir/ValueSet/observation-status|4.0.1',
'Observation.focus', 'Added Element',
'Observation.encounter', 'Renamed from context to encounter
        Type Reference: Removed Target Type EpisodeOfCare',
'Observation.effective[x]', 'Add Types Timing, instant',
'Observation.performer', 'Type Reference: Added Target Types PractitionerRole, CareTeam',
'Observation.value[x]', 'Add Type integer
        Remove Type Attachment',
'Observation.dataAbsentReason', 'Change value set from http://hl7.org/fhir/ValueSet/observation-valueabsentreason to http://hl7.org/fhir/ValueSet/data-absent-reason
        Change code system for extensibly bound codes from "http://hl7.org/fhir/data-absent-reason" to "http://terminology.hl7.org/CodeSystem/data-absent-reason"',
'Observation.interpretation', 'Max Cardinality changed from 1 to *
        Change code system for extensibly bound codes from "http://terminology.hl7.org/CodeSystem/v2-0078" to "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"',
'Observation.note', 'Renamed from comment to note
        Max Cardinality changed from 1 to *
        Type changed from string to Annotation',
'Observation.referenceRange.type', 'Remove Binding http://hl7.org/fhir/ValueSet/referencerange-meaning (extensible)',
'Observation.hasMember', 'Added Element',
'Observation.derivedFrom', 'Added Element',
'Observation.component.value[x]', 'Add Types boolean, integer
        Remove Type Attachment',
'Observation.component.dataAbsentReason', 'Change value set from http://hl7.org/fhir/ValueSet/observation-valueabsentreason to http://hl7.org/fhir/ValueSet/data-absent-reason
        Change code system for extensibly bound codes from "http://hl7.org/fhir/data-absent-reason" to "http://terminology.hl7.org/CodeSystem/data-absent-reason"',
'Observation.component.interpretation', 'Max Cardinality changed from 1 to *
        Change code system for extensibly bound codes from "http://terminology.hl7.org/CodeSystem/v2-0078" to "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"',
'Observation.related', 'deleted',
)


df8 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Observation.status', 'Codes providing the status of an observation.', 'Required', 'ObservationStatus',
'Observation.category', 'Codes for high level observation categories.', 'Preferred', 'ObservationCategoryCodes',
'Observation.codeObservation.component.code', 'Codes identifying names of simple observations.', 'Example', 'LOINCCodes',
'Observation.dataAbsentReasonObservation.component.dataAbsentReason', 'Codes specifying why the result (`Observation.value[x]`) is missing.', 'Extensible', 'DataAbsentReason',
'Observation.interpretationObservation.component.interpretation', 'Codes identifying interpretations of observations.', 'Extensible', 'ObservationInterpretationCodes',
'Observation.bodySite', 'Codes describing anatomical locations. May include laterality.', 'Example', 'SNOMEDCTBodyStructures',
'Observation.method', 'Methods for simple observations.', 'Example', 'ObservationMethods',
'Observation.referenceRange.type', 'Code for the meaning of a reference range.', 'Preferred', 'ObservationReferenceRangeMeaningCodes',
'Observation.referenceRange.appliesTo', 'Codes identifying the population the reference range applies to.', 'Example', 'ObservationReferenceRangeAppliesToCodes',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'obs-3', 'Rule', 'Observation.referenceRange', 'Must have at least a low or a high or text', 'low.exists() or high.exists() or text.exists()',
'obs-6', 'Rule', '(base)', 'dataAbsentReason SHALL only be present if Observation.value[x] is not present', 'dataAbsentReason.empty() or value.empty()',
'obs-7', 'Rule', '(base)', 'If Observation.code is the same as an Observation.component.code then the value element associated with the code SHALL NOT be present', 'value.empty() or component.code.where(coding.intersect(%resource.code.coding).exists()).empty()',
)


df10 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'based-on TU', 'reference', 'Reference to the service request.', 'Observation.basedOn(CarePlan, MedicationRequest, NutritionOrder, DeviceRequest, ServiceRequest, ImmunizationRecommendation)', '',
'category TU', 'token', 'The classification of the type of observation', 'Observation.category', '',
'code TU', 'token', 'The code of the observation type', 'Observation.code', '13 Resources',
'code-value-concept TU', 'composite', 'Code and coded value parameter pair', 'On Observation:  code: code  value-concept: value.as(CodeableConcept)', '',
'code-value-date TU', 'composite', 'Code and date/time value parameter pair', 'On Observation:  code: code  value-date: value.as(DateTime) | value.as(Period)', '',
'code-value-quantity TU', 'composite', 'Code and quantity value parameter pair', 'On Observation:  code: code  value-quantity: value.as(Quantity)', '',
'code-value-string TU', 'composite', 'Code and string value parameter pair', 'On Observation:  code: code  value-string: value.as(string)', '',
'combo-code TU', 'token', 'The code of the observation type or component type', 'Observation.code | Observation.component.code', '',
'combo-code-value-concept TU', 'composite', 'Code and coded value parameter pair, including in components', 'On Observation | Observation.component:  combo-code: code  combo-value-concept: value.as(CodeableConcept)', '',
'combo-code-value-quantity TU', 'composite', 'Code and quantity value parameter pair, including in components', 'On Observation | Observation.component:  combo-code: code  combo-value-quantity: value.as(Quantity)', '',
'combo-data-absent-reason TU', 'token', 'The reason why the expected value in the element Observation.value[x] or Observation.component.value[x] is missing.', 'Observation.dataAbsentReason | Observation.component.dataAbsentReason', '',
'combo-value-concept TU', 'token', 'The value or component value of the observation, if the value is a CodeableConcept', '(Observation.value as CodeableConcept) | (Observation.component.value as CodeableConcept)', '',
'combo-value-quantity TU', 'quantity', 'The value or component value of the observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)', '(Observation.value as Quantity) | (Observation.value as SampledData) | (Observation.component.value as Quantity) | (Observation.component.value as SampledData)', '',
'component-code TU', 'token', 'The component code of the observation type', 'Observation.component.code', '',
'component-code-value-concept TU', 'composite', 'Component code and component coded value parameter pair', 'On Observation.component:  component-code: code  component-value-concept: value.as(CodeableConcept)', '',
'component-code-value-quantity TU', 'composite', 'Component code and component quantity value parameter pair', 'On Observation.component:  component-code: code  component-value-quantity: value.as(Quantity)', '',
'component-data-absent-reason TU', 'token', 'The reason why the expected value in the element Observation.component.value[x] is missing.', 'Observation.component.dataAbsentReason', '',
'component-value-concept TU', 'token', 'The value of the component observation, if the value is a CodeableConcept', '(Observation.component.value as CodeableConcept)', '',
'component-value-quantity TU', 'quantity', 'The value of the component observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)', '(Observation.component.value as Quantity) | (Observation.component.value as SampledData)', '',
'data-absent-reason TU', 'token', 'The reason why the expected value in the element Observation.value[x] is missing.', 'Observation.dataAbsentReason', '',
'date TU', 'date', 'Obtained date/time. If the obtained element is a period, a date that falls in the period', 'Observation.effective', '17 Resources',
'derived-from TU', 'reference', 'Related measurements the observation is made from', 'Observation.derivedFrom(Media, Observation, ImagingStudy, MolecularSequence, QuestionnaireResponse, DocumentReference)', '',
'device TU', 'reference', 'The Device that generated the observation data.', 'Observation.device(Device, DeviceMetric)', '',
'encounter TU', 'reference', 'Encounter related to the observation', 'Observation.encounter(Encounter)', '12 Resources',
'focus TU', 'reference', 'The focus of an observation when the focus is not the patient of record.', 'Observation.focus(Any)', '',
'has-member TU', 'reference', 'Related resource that belongs to the Observation group', 'Observation.hasMember(Observation, MolecularSequence, QuestionnaireResponse)', '',
'identifier TU', 'token', 'The unique id for a particular observation', 'Observation.identifier', '30 Resources',
'method TU', 'token', 'The method used for the observation', 'Observation.method', '',
'part-of TU', 'reference', 'Part of referenced event', 'Observation.partOf(Immunization, MedicationDispense, MedicationAdministration, Procedure, ImagingStudy, MedicationStatement)', '',
'patient TU', 'reference', 'The subject that the observation is about (if patient)', 'Observation.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'performer TU', 'reference', 'Who performed the observation', 'Observation.performer(Practitioner, Organization, CareTeam, Patient, PractitionerRole, RelatedPerson)', '',
'specimen TU', 'reference', 'Specimen used for this observation', 'Observation.specimen(Specimen)', '',
'status TU', 'token', 'The status of the observation', 'Observation.status', '',
'subject TU', 'reference', 'The subject that the observation is about', 'Observation.subject(Group, Device, Patient, Location)', '',
'value-concept TU', 'token', 'The value of the observation, if the value is a CodeableConcept', '(Observation.value as CodeableConcept)', '',
'value-date TU', 'date', 'The value of the observation, if the value is a date or period of time', '(Observation.value as dateTime) | (Observation.value as Period)', '',
'value-quantity TU', 'quantity', 'The value of the observation, if the value is a Quantity, or a SampledData (just search on the bounds of the values in sampled data)', '(Observation.value as Quantity) | (Observation.value as SampledData)', '',
'value-string TU', 'string', 'The value of the observation, if the value is a string, and also searches in CodeableConcept.text', '(Observation.value as string) | (Observation.value as CodeableConcept).text', '',
)


