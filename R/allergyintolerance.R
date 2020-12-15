df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Care  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'AllergyIntolerance', 'ITU', '', 'DomainResource', 'Allergy or Intolerance (generally: Risk of adverse reaction to a substance)+ Rule: AllergyIntolerance.clinicalStatus SHALL be present if verificationStatus is not entered-in-error.+ Rule: AllergyIntolerance.clinicalStatus SHALL NOT be present if verification Status is entered-in-errorElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External ids for this item',
'clinicalStatus', '?!ΣI', '0..1', 'CodeableConcept', 'active | inactive | resolvedAllergyIntolerance Clinical Status Codes (Required)',
'verificationStatus', '?!ΣI', '0..1', 'CodeableConcept', 'unconfirmed | confirmed | refuted | entered-in-errorAllergyIntolerance Verification Status Codes (Required)',
'type', 'Σ', '0..1', 'code', 'allergy | intolerance - Underlying mechanism (if known)AllergyIntoleranceType (Required)',
'category', 'Σ', '0..*', 'code', 'food | medication | environment | biologicAllergyIntoleranceCategory (Required)',
'criticality', 'Σ', '0..1', 'code', 'low | high | unable-to-assessAllergyIntoleranceCriticality (Required)',
'code', 'Σ', '0..1', 'CodeableConcept', 'Code that identifies the allergy or intoleranceAllergyIntolerance Substance/Product, Condition and Negation Codes (Example)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Who the sensitivity is for',
'encounter', '', '0..1', 'Reference(Encounter)', 'Encounter when the allergy or intolerance was asserted',
'onset[x]', '', '0..1', '', 'When allergy or intolerance was identified',
'onsetDateTime', '', '', 'dateTime', '',
'onsetAge', '', '', 'Age', '',
'onsetPeriod', '', '', 'Period', '',
'onsetRange', '', '', 'Range', '',
'onsetString', '', '', 'string', '',
'recordedDate', '', '0..1', 'dateTime', 'Date first version of the resource instance was recorded',
'recorder', '', '0..1', 'Reference(Practitioner | PractitionerRole | Patient | RelatedPerson)', 'Who recorded the sensitivity',
'asserter', 'Σ', '0..1', 'Reference(Patient | RelatedPerson | Practitioner | PractitionerRole)', 'Source of the information about the allergy',
'lastOccurrence', '', '0..1', 'dateTime', 'Date(/time) of last known occurrence of a reaction',
'note', '', '0..*', 'Annotation', 'Additional text not captured in other fields',
'reaction', '', '0..*', 'BackboneElement', 'Adverse Reaction Events linked to exposure to substance',
'substance', '', '0..1', 'CodeableConcept', 'Specific substance or pharmaceutical product considered to be responsible for eventSubstance Code (Example)',
'manifestation', '', '1..*', 'CodeableConcept', 'Clinical symptoms/signs associated with the EventSNOMED CT Clinical Findings (Example)',
'description', '', '0..1', 'string', 'Description of the event as a whole',
'onset', '', '0..1', 'dateTime', 'Date(/time) when manifestations showed',
'severity', '', '0..1', 'code', 'mild | moderate | severe (of event as a whole)AllergyIntoleranceSeverity (Required)',
'exposureRoute', '', '0..1', 'CodeableConcept', 'How the subject was exposed to the substanceSNOMED CT Route Codes (Example)',
'note', '', '0..*', 'Annotation', 'Text about event not captured in other fields',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'AllergyIntolerance', '',
'AllergyIntolerance.clinicalStatus', 'Type changed from code to CodeableConcept
        Change value set from http://hl7.org/fhir/ValueSet/allergy-clinical-status to http://hl7.org/fhir/ValueSet/allergyintolerance-clinical|4.0.1',
'AllergyIntolerance.verificationStatus', 'Min Cardinality changed from 1 to 0
        Type changed from code to CodeableConcept
        Change value set from http://hl7.org/fhir/ValueSet/allergy-verification-status to http://hl7.org/fhir/ValueSet/allergyintolerance-verification|4.0.1',
'AllergyIntolerance.type', 'Change value set from http://hl7.org/fhir/ValueSet/allergy-intolerance-type to http://hl7.org/fhir/ValueSet/allergy-intolerance-type|4.0.1',
'AllergyIntolerance.category', 'Change value set from http://hl7.org/fhir/ValueSet/allergy-intolerance-category to http://hl7.org/fhir/ValueSet/allergy-intolerance-category|4.0.1',
'AllergyIntolerance.criticality', 'Change value set from http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality to http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality|4.0.1',
'AllergyIntolerance.encounter', 'Added Element',
'AllergyIntolerance.recordedDate', 'Renamed from assertedDate to recordedDate',
'AllergyIntolerance.recorder', 'Type Reference: Added Target Types PractitionerRole, RelatedPerson',
'AllergyIntolerance.asserter', 'Type Reference: Added Target Type PractitionerRole',
'AllergyIntolerance.reaction.severity', 'Change value set from http://hl7.org/fhir/ValueSet/reaction-event-severity to http://hl7.org/fhir/ValueSet/reaction-event-severity|4.0.1',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'AllergyIntolerance', 'ITU', '', 'DomainResource', 'Allergy or Intolerance (generally: Risk of adverse reaction to a substance)+ Rule: AllergyIntolerance.clinicalStatus SHALL be present if verificationStatus is not entered-in-error.+ Rule: AllergyIntolerance.clinicalStatus SHALL NOT be present if verification Status is entered-in-errorElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External ids for this item',
'clinicalStatus', '?!ΣI', '0..1', 'CodeableConcept', 'active | inactive | resolvedAllergyIntolerance Clinical Status Codes (Required)',
'verificationStatus', '?!ΣI', '0..1', 'CodeableConcept', 'unconfirmed | confirmed | refuted | entered-in-errorAllergyIntolerance Verification Status Codes (Required)',
'type', 'Σ', '0..1', 'code', 'allergy | intolerance - Underlying mechanism (if known)AllergyIntoleranceType (Required)',
'category', 'Σ', '0..*', 'code', 'food | medication | environment | biologicAllergyIntoleranceCategory (Required)',
'criticality', 'Σ', '0..1', 'code', 'low | high | unable-to-assessAllergyIntoleranceCriticality (Required)',
'code', 'Σ', '0..1', 'CodeableConcept', 'Code that identifies the allergy or intoleranceAllergyIntolerance Substance/Product, Condition and Negation Codes (Example)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Who the sensitivity is for',
'encounter', '', '0..1', 'Reference(Encounter)', 'Encounter when the allergy or intolerance was asserted',
'onset[x]', '', '0..1', '', 'When allergy or intolerance was identified',
'onsetDateTime', '', '', 'dateTime', '',
'onsetAge', '', '', 'Age', '',
'onsetPeriod', '', '', 'Period', '',
'onsetRange', '', '', 'Range', '',
'onsetString', '', '', 'string', '',
'recordedDate', '', '0..1', 'dateTime', 'Date first version of the resource instance was recorded',
'recorder', '', '0..1', 'Reference(Practitioner | PractitionerRole | Patient | RelatedPerson)', 'Who recorded the sensitivity',
'asserter', 'Σ', '0..1', 'Reference(Patient | RelatedPerson | Practitioner | PractitionerRole)', 'Source of the information about the allergy',
'lastOccurrence', '', '0..1', 'dateTime', 'Date(/time) of last known occurrence of a reaction',
'note', '', '0..*', 'Annotation', 'Additional text not captured in other fields',
'reaction', '', '0..*', 'BackboneElement', 'Adverse Reaction Events linked to exposure to substance',
'substance', '', '0..1', 'CodeableConcept', 'Specific substance or pharmaceutical product considered to be responsible for eventSubstance Code (Example)',
'manifestation', '', '1..*', 'CodeableConcept', 'Clinical symptoms/signs associated with the EventSNOMED CT Clinical Findings (Example)',
'description', '', '0..1', 'string', 'Description of the event as a whole',
'onset', '', '0..1', 'dateTime', 'Date(/time) when manifestations showed',
'severity', '', '0..1', 'code', 'mild | moderate | severe (of event as a whole)AllergyIntoleranceSeverity (Required)',
'exposureRoute', '', '0..1', 'CodeableConcept', 'How the subject was exposed to the substanceSNOMED CT Route Codes (Example)',
'note', '', '0..*', 'Annotation', 'Text about event not captured in other fields',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'AllergyIntolerance', '',
'AllergyIntolerance.clinicalStatus', 'Type changed from code to CodeableConcept
        Change value set from http://hl7.org/fhir/ValueSet/allergy-clinical-status to http://hl7.org/fhir/ValueSet/allergyintolerance-clinical|4.0.1',
'AllergyIntolerance.verificationStatus', 'Min Cardinality changed from 1 to 0
        Type changed from code to CodeableConcept
        Change value set from http://hl7.org/fhir/ValueSet/allergy-verification-status to http://hl7.org/fhir/ValueSet/allergyintolerance-verification|4.0.1',
'AllergyIntolerance.type', 'Change value set from http://hl7.org/fhir/ValueSet/allergy-intolerance-type to http://hl7.org/fhir/ValueSet/allergy-intolerance-type|4.0.1',
'AllergyIntolerance.category', 'Change value set from http://hl7.org/fhir/ValueSet/allergy-intolerance-category to http://hl7.org/fhir/ValueSet/allergy-intolerance-category|4.0.1',
'AllergyIntolerance.criticality', 'Change value set from http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality to http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality|4.0.1',
'AllergyIntolerance.encounter', 'Added Element',
'AllergyIntolerance.recordedDate', 'Renamed from assertedDate to recordedDate',
'AllergyIntolerance.recorder', 'Type Reference: Added Target Types PractitionerRole, RelatedPerson',
'AllergyIntolerance.asserter', 'Type Reference: Added Target Type PractitionerRole',
'AllergyIntolerance.reaction.severity', 'Change value set from http://hl7.org/fhir/ValueSet/reaction-event-severity to http://hl7.org/fhir/ValueSet/reaction-event-severity|4.0.1',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'AllergyIntolerance.clinicalStatus', 'The clinical status of the allergy or intolerance.', 'Required', 'AllergyIntoleranceClinicalStatusCodes',
'AllergyIntolerance.verificationStatus', 'Assertion about certainty associated with a propensity, or potential risk, of a reaction to the identified substance.', 'Required', 'AllergyIntoleranceVerificationStatusCodes',
'AllergyIntolerance.type', 'Identification of the underlying physiological mechanism for a Reaction Risk.', 'Required', 'AllergyIntoleranceType',
'AllergyIntolerance.category', 'Category of an identified substance associated with allergies or intolerances.', 'Required', 'AllergyIntoleranceCategory',
'AllergyIntolerance.criticality', 'Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance.', 'Required', 'AllergyIntoleranceCriticality',
'AllergyIntolerance.code', 'Type of the substance/product, allergy or intolerance condition, or negation/exclusion codes for reporting no known allergies.', 'Example', 'AllergyIntoleranceSubstance/Product,ConditionAndNegationCodes',
'AllergyIntolerance.reaction.substance', 'Codes defining the type of the substance (including pharmaceutical products).', 'Example', 'SubstanceCode',
'AllergyIntolerance.reaction.manifestation', 'Clinical symptoms and/or signs that are observed or associated with an Adverse Reaction Event.', 'Example', 'SNOMEDCTClinicalFindings',
'AllergyIntolerance.reaction.severity', 'Clinical assessment of the severity of a reaction event as a whole, potentially considering multiple different manifestations.', 'Required', 'AllergyIntoleranceSeverity',
'AllergyIntolerance.reaction.exposureRoute', 'A coded concept describing the route or physiological path of administration of a therapeutic agent into or onto the body of a subject.', 'Example', 'SNOMEDCTRouteCodes',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'ait-1', 'Rule', '(base)', 'AllergyIntolerance.clinicalStatus SHALL be present if verificationStatus is not entered-in-error.', 'verificationStatus.coding.where(system = 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification' and code = 'entered-in-error').exists() or clinicalStatus.exists()',
'ait-2', 'Rule', '(base)', 'AllergyIntolerance.clinicalStatus SHALL NOT be present if verification Status is entered-in-error', 'verificationStatus.coding.where(system = 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification' and code = 'entered-in-error').empty() or clinicalStatus.empty()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'asserter', 'reference', 'Source of the information about the allergy', 'AllergyIntolerance.asserter(Practitioner, Patient, PractitionerRole, RelatedPerson)', '',
'category', 'token', 'food | medication | environment | biologic', 'AllergyIntolerance.category', '',
'clinical-status', 'token', 'active | inactive | resolved', 'AllergyIntolerance.clinicalStatus', '',
'code', 'token', 'Code that identifies the allergy or intolerance', 'AllergyIntolerance.code | AllergyIntolerance.reaction.substance', '13 Resources',
'criticality', 'token', 'low | high | unable-to-assess', 'AllergyIntolerance.criticality', '',
'date', 'date', 'Date first version of the resource instance was recorded', 'AllergyIntolerance.recordedDate', '17 Resources',
'identifier', 'token', 'External ids for this item', 'AllergyIntolerance.identifier', '30 Resources',
'last-date', 'date', 'Date(/time) of last known occurrence of a reaction', 'AllergyIntolerance.lastOccurrence', '',
'manifestation', 'token', 'Clinical symptoms/signs associated with the Event', 'AllergyIntolerance.reaction.manifestation', '',
'onset', 'date', 'Date(/time) when manifestations showed', 'AllergyIntolerance.reaction.onset', '',
'patient', 'reference', 'Who the sensitivity is for', 'AllergyIntolerance.patient(Patient)', '33 Resources',
'recorder', 'reference', 'Who recorded the sensitivity', 'AllergyIntolerance.recorder(Practitioner, Patient, PractitionerRole, RelatedPerson)', '',
'route', 'token', 'How the subject was exposed to the substance', 'AllergyIntolerance.reaction.exposureRoute', '',
'severity', 'token', 'mild | moderate | severe (of event as a whole)', 'AllergyIntolerance.reaction.severity', '',
'type', 'token', 'allergy | intolerance - Underlying mechanism (if known)', 'AllergyIntolerance.type', '5 Resources',
'verification-status', 'token', 'unconfirmed | confirmed | refuted | entered-in-error', 'AllergyIntolerance.verificationStatus', '',
)


