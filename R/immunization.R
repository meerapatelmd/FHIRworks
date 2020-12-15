df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Public Health and Emergency Response  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Immunization', 'TU', '', 'DomainResource', 'Immunization event informationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business identifier',
'status', '?!Σ', '1..1', 'code', 'completed | entered-in-error | not-doneImmunization Status Codes (Required)',
'statusReason', '', '0..1', 'CodeableConcept', 'Reason not doneImmunization Status Reason Codes (Example)',
'vaccineCode', 'Σ', '1..1', 'CodeableConcept', 'Vaccine product administeredVaccine Administered Value Set (Example)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Who was immunized',
'encounter', '', '0..1', 'Reference(Encounter)', 'Encounter immunization was part of',
'occurrence[x]', 'Σ', '1..1', '', 'Vaccine administration date',
'occurrenceDateTime', '', '', 'dateTime', '',
'occurrenceString', '', '', 'string', '',
'recorded', '', '0..1', 'dateTime', 'When the immunization was first captured in the subject's record',
'primarySource', 'Σ', '0..1', 'boolean', 'Indicates context the data was recorded in',
'reportOrigin', '', '0..1', 'CodeableConcept', 'Indicates the source of a secondarily reported recordImmunization Origin Codes (Example)',
'location', '', '0..1', 'Reference(Location)', 'Where immunization occurred',
'manufacturer', '', '0..1', 'Reference(Organization)', 'Vaccine manufacturer',
'lotNumber', '', '0..1', 'string', 'Vaccine lot number',
'expirationDate', '', '0..1', 'date', 'Vaccine expiration date',
'site', '', '0..1', 'CodeableConcept', 'Body site vaccine  was administeredCodes for Immunization Site of Administration (Example)',
'route', '', '0..1', 'CodeableConcept', 'How vaccine entered bodyImmunization Route Codes (Example)',
'doseQuantity', '', '0..1', 'SimpleQuantity', 'Amount of vaccine administered',
'performer', 'Σ', '0..*', 'BackboneElement', 'Who performed event',
'function', 'Σ', '0..1', 'CodeableConcept', 'What type of performance was doneImmunization Function Codes (Extensible)',
'actor', 'Σ', '1..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Individual or organization who was performing',
'note', 'Σ', '0..*', 'Annotation', 'Additional immunization notes',
'reasonCode', '', '0..*', 'CodeableConcept', 'Why immunization occurredImmunization Reason Codes (Example)',
'reasonReference', '', '0..*', 'Reference(Condition | Observation | DiagnosticReport)', 'Why immunization occurred',
'isSubpotent', '?!Σ', '0..1', 'boolean', 'Dose potency',
'subpotentReason', '', '0..*', 'CodeableConcept', 'Reason for being subpotentImmunization Subpotent Reason (Example)',
'education', 'I', '0..*', 'BackboneElement', 'Educational material presented to patient+ Rule: One of documentType or reference SHALL be present',
'documentType', '', '0..1', 'string', 'Educational material document identifier',
'reference', '', '0..1', 'uri', 'Educational material reference pointer',
'publicationDate', '', '0..1', 'dateTime', 'Educational material publication date',
'presentationDate', '', '0..1', 'dateTime', 'Educational material presentation date',
'programEligibility', '', '0..*', 'CodeableConcept', 'Patient eligibility for a vaccination programImmunization Program Eligibility (Example)',
'fundingSource', '', '0..1', 'CodeableConcept', 'Funding source for the vaccineImmunization Funding Source (Example)',
'reaction', '', '0..*', 'BackboneElement', 'Details of a reaction that follows immunization',
'date', '', '0..1', 'dateTime', 'When reaction started',
'detail', '', '0..1', 'Reference(Observation)', 'Additional information on reaction',
'reported', '', '0..1', 'boolean', 'Indicates self-reported reaction',
'protocolApplied', '', '0..*', 'BackboneElement', 'Protocol followed by the provider',
'series', '', '0..1', 'string', 'Name of vaccine series',
'authority', '', '0..1', 'Reference(Organization)', 'Who is responsible for publishing the recommendations',
'targetDisease', '', '0..*', 'CodeableConcept', 'Vaccine preventatable disease being targettedImmunization Target Disease Codes (Example)',
'doseNumber[x]', '', '1..1', '', 'Dose number within series',
'doseNumberPositiveInt', '', '', 'positiveInt', '',
'doseNumberString', '', '', 'string', '',
'seriesDoses[x]', '', '0..1', '', 'Recommended number of doses for immunity',
'seriesDosesPositiveInt', '', '', 'positiveInt', '',
'seriesDosesString', '', '', 'string', '',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Immunization', '',
'Immunization.status', 'Change value set from http://hl7.org/fhir/ValueSet/immunization-status to http://hl7.org/fhir/ValueSet/immunization-status|4.0.1',
'Immunization.statusReason', 'Renamed from notGiven to statusReason
        Min Cardinality changed from 1 to 0
        Type changed from boolean to CodeableConcept
        No longer marked as Modifier',
'Immunization.occurrence[x]', 'Renamed from date to occurrence[x]
        Min Cardinality changed from 0 to 1
        Add Type string',
'Immunization.recorded', 'Added Element',
'Immunization.primarySource', 'Min Cardinality changed from 1 to 0',
'Immunization.performer', 'Renamed from practitioner to performer',
'Immunization.performer.function', 'Moved from Immunization.practitioner.role to function
        Change value set from http://hl7.org/fhir/ValueSet/immunization-role to http://hl7.org/fhir/ValueSet/immunization-function',
'Immunization.performer.actor', 'Moved from Immunization.practitioner to Immunization.performer
        Type Reference: Added Target Types PractitionerRole, Organization',
'Immunization.reasonCode', 'Moved from Immunization.explanation.reason to reasonCode',
'Immunization.reasonReference', 'Added Element',
'Immunization.isSubpotent', 'Added Element',
'Immunization.subpotentReason', 'Added Element',
'Immunization.education', 'Added Element',
'Immunization.education.documentType', 'Added Element',
'Immunization.education.reference', 'Added Element',
'Immunization.education.publicationDate', 'Added Element',
'Immunization.education.presentationDate', 'Added Element',
'Immunization.programEligibility', 'Added Element',
'Immunization.fundingSource', 'Added Element',
'Immunization.protocolApplied', 'Renamed from vaccinationProtocol to protocolApplied',
'Immunization.protocolApplied.series', 'Moved from Immunization.vaccinationProtocol to Immunization.protocolApplied',
'Immunization.protocolApplied.authority', 'Moved from Immunization.vaccinationProtocol to Immunization.protocolApplied',
'Immunization.protocolApplied.targetDisease', 'Moved from Immunization.vaccinationProtocol to Immunization.protocolApplied
        Min Cardinality changed from 1 to 0',
'Immunization.protocolApplied.doseNumber[x]', 'Moved from Immunization.vaccinationProtocol.doseSequence to doseNumber[x]
        Min Cardinality changed from 0 to 1
        Add Type string',
'Immunization.protocolApplied.seriesDoses[x]', 'Moved from Immunization.vaccinationProtocol.seriesDoses to seriesDoses[x]
        Add Type string',
'Immunization.explanation', 'deleted',
'Immunization.vaccinationProtocol.description', 'deleted',
'Immunization.vaccinationProtocol.doseStatus', 'deleted',
'Immunization.vaccinationProtocol.doseStatusReason', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Immunization', 'TU', '', 'DomainResource', 'Immunization event informationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business identifier',
'status', '?!Σ', '1..1', 'code', 'completed | entered-in-error | not-doneImmunization Status Codes (Required)',
'statusReason', '', '0..1', 'CodeableConcept', 'Reason not doneImmunization Status Reason Codes (Example)',
'vaccineCode', 'Σ', '1..1', 'CodeableConcept', 'Vaccine product administeredVaccine Administered Value Set (Example)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'Who was immunized',
'encounter', '', '0..1', 'Reference(Encounter)', 'Encounter immunization was part of',
'occurrence[x]', 'Σ', '1..1', '', 'Vaccine administration date',
'occurrenceDateTime', '', '', 'dateTime', '',
'occurrenceString', '', '', 'string', '',
'recorded', '', '0..1', 'dateTime', 'When the immunization was first captured in the subject's record',
'primarySource', 'Σ', '0..1', 'boolean', 'Indicates context the data was recorded in',
'reportOrigin', '', '0..1', 'CodeableConcept', 'Indicates the source of a secondarily reported recordImmunization Origin Codes (Example)',
'location', '', '0..1', 'Reference(Location)', 'Where immunization occurred',
'manufacturer', '', '0..1', 'Reference(Organization)', 'Vaccine manufacturer',
'lotNumber', '', '0..1', 'string', 'Vaccine lot number',
'expirationDate', '', '0..1', 'date', 'Vaccine expiration date',
'site', '', '0..1', 'CodeableConcept', 'Body site vaccine  was administeredCodes for Immunization Site of Administration (Example)',
'route', '', '0..1', 'CodeableConcept', 'How vaccine entered bodyImmunization Route Codes (Example)',
'doseQuantity', '', '0..1', 'SimpleQuantity', 'Amount of vaccine administered',
'performer', 'Σ', '0..*', 'BackboneElement', 'Who performed event',
'function', 'Σ', '0..1', 'CodeableConcept', 'What type of performance was doneImmunization Function Codes (Extensible)',
'actor', 'Σ', '1..1', 'Reference(Practitioner | PractitionerRole | Organization)', 'Individual or organization who was performing',
'note', 'Σ', '0..*', 'Annotation', 'Additional immunization notes',
'reasonCode', '', '0..*', 'CodeableConcept', 'Why immunization occurredImmunization Reason Codes (Example)',
'reasonReference', '', '0..*', 'Reference(Condition | Observation | DiagnosticReport)', 'Why immunization occurred',
'isSubpotent', '?!Σ', '0..1', 'boolean', 'Dose potency',
'subpotentReason', '', '0..*', 'CodeableConcept', 'Reason for being subpotentImmunization Subpotent Reason (Example)',
'education', 'I', '0..*', 'BackboneElement', 'Educational material presented to patient+ Rule: One of documentType or reference SHALL be present',
'documentType', '', '0..1', 'string', 'Educational material document identifier',
'reference', '', '0..1', 'uri', 'Educational material reference pointer',
'publicationDate', '', '0..1', 'dateTime', 'Educational material publication date',
'presentationDate', '', '0..1', 'dateTime', 'Educational material presentation date',
'programEligibility', '', '0..*', 'CodeableConcept', 'Patient eligibility for a vaccination programImmunization Program Eligibility (Example)',
'fundingSource', '', '0..1', 'CodeableConcept', 'Funding source for the vaccineImmunization Funding Source (Example)',
'reaction', '', '0..*', 'BackboneElement', 'Details of a reaction that follows immunization',
'date', '', '0..1', 'dateTime', 'When reaction started',
'detail', '', '0..1', 'Reference(Observation)', 'Additional information on reaction',
'reported', '', '0..1', 'boolean', 'Indicates self-reported reaction',
'protocolApplied', '', '0..*', 'BackboneElement', 'Protocol followed by the provider',
'series', '', '0..1', 'string', 'Name of vaccine series',
'authority', '', '0..1', 'Reference(Organization)', 'Who is responsible for publishing the recommendations',
'targetDisease', '', '0..*', 'CodeableConcept', 'Vaccine preventatable disease being targettedImmunization Target Disease Codes (Example)',
'doseNumber[x]', '', '1..1', '', 'Dose number within series',
'doseNumberPositiveInt', '', '', 'positiveInt', '',
'doseNumberString', '', '', 'string', '',
'seriesDoses[x]', '', '0..1', '', 'Recommended number of doses for immunity',
'seriesDosesPositiveInt', '', '', 'positiveInt', '',
'seriesDosesString', '', '', 'string', '',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Immunization', '',
'Immunization.status', 'Change value set from http://hl7.org/fhir/ValueSet/immunization-status to http://hl7.org/fhir/ValueSet/immunization-status|4.0.1',
'Immunization.statusReason', 'Renamed from notGiven to statusReason
        Min Cardinality changed from 1 to 0
        Type changed from boolean to CodeableConcept
        No longer marked as Modifier',
'Immunization.occurrence[x]', 'Renamed from date to occurrence[x]
        Min Cardinality changed from 0 to 1
        Add Type string',
'Immunization.recorded', 'Added Element',
'Immunization.primarySource', 'Min Cardinality changed from 1 to 0',
'Immunization.performer', 'Renamed from practitioner to performer',
'Immunization.performer.function', 'Moved from Immunization.practitioner.role to function
        Change value set from http://hl7.org/fhir/ValueSet/immunization-role to http://hl7.org/fhir/ValueSet/immunization-function',
'Immunization.performer.actor', 'Moved from Immunization.practitioner to Immunization.performer
        Type Reference: Added Target Types PractitionerRole, Organization',
'Immunization.reasonCode', 'Moved from Immunization.explanation.reason to reasonCode',
'Immunization.reasonReference', 'Added Element',
'Immunization.isSubpotent', 'Added Element',
'Immunization.subpotentReason', 'Added Element',
'Immunization.education', 'Added Element',
'Immunization.education.documentType', 'Added Element',
'Immunization.education.reference', 'Added Element',
'Immunization.education.publicationDate', 'Added Element',
'Immunization.education.presentationDate', 'Added Element',
'Immunization.programEligibility', 'Added Element',
'Immunization.fundingSource', 'Added Element',
'Immunization.protocolApplied', 'Renamed from vaccinationProtocol to protocolApplied',
'Immunization.protocolApplied.series', 'Moved from Immunization.vaccinationProtocol to Immunization.protocolApplied',
'Immunization.protocolApplied.authority', 'Moved from Immunization.vaccinationProtocol to Immunization.protocolApplied',
'Immunization.protocolApplied.targetDisease', 'Moved from Immunization.vaccinationProtocol to Immunization.protocolApplied
        Min Cardinality changed from 1 to 0',
'Immunization.protocolApplied.doseNumber[x]', 'Moved from Immunization.vaccinationProtocol.doseSequence to doseNumber[x]
        Min Cardinality changed from 0 to 1
        Add Type string',
'Immunization.protocolApplied.seriesDoses[x]', 'Moved from Immunization.vaccinationProtocol.seriesDoses to seriesDoses[x]
        Add Type string',
'Immunization.explanation', 'deleted',
'Immunization.vaccinationProtocol.description', 'deleted',
'Immunization.vaccinationProtocol.doseStatus', 'deleted',
'Immunization.vaccinationProtocol.doseStatusReason', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Immunization.status', 'A set of codes indicating the current status of an Immunization.', 'Required', 'ImmunizationStatusCodes',
'Immunization.statusReason', 'The reason why a vaccine was not administered.', 'Example', 'ImmunizationStatusReasonCodes',
'Immunization.vaccineCode', 'The code for vaccine product administered.', 'Example', 'VaccineAdministeredValueSet',
'Immunization.reportOrigin', 'The source of the data for a record which is not from a primary source.', 'Example', 'ImmunizationOriginCodes',
'Immunization.site', 'The site at which the vaccine was administered.', 'Example', 'CodesForImmunizationSiteOfAdministration',
'Immunization.route', 'The route by which the vaccine was administered.', 'Example', 'ImmunizationRouteCodes',
'Immunization.performer.function', 'The role a practitioner or organization plays in the immunization event.', 'Extensible', 'ImmunizationFunctionCodes',
'Immunization.reasonCode', 'The reason why a vaccine was administered.', 'Example', 'ImmunizationReasonCodes',
'Immunization.subpotentReason', 'The reason why a dose is considered to be subpotent.', 'Example', 'ImmunizationSubpotentReason',
'Immunization.programEligibility', 'The patient's eligibility for a vaccation program.', 'Example', 'ImmunizationProgramEligibility',
'Immunization.fundingSource', 'The source of funding used to purchase the vaccine administered.', 'Example', 'ImmunizationFundingSource',
'Immunization.protocolApplied.targetDisease', 'The vaccine preventable disease the dose is being administered for.', 'Example', 'ImmunizationTargetDiseaseCodes',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'imm-1', 'Rule', 'Immunization.education', 'One of documentType or reference SHALL be present', 'documentType.exists() or reference.exists()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'date', 'date', 'Vaccination  (non)-Administration Date', 'Immunization.occurrence', '17 Resources',
'identifier', 'token', 'Business identifier', 'Immunization.identifier', '30 Resources',
'location', 'reference', 'The service delivery location or facility in which the vaccine was / was to be administered', 'Immunization.location(Location)', '',
'lot-number', 'string', 'Vaccine Lot Number', 'Immunization.lotNumber', '',
'manufacturer', 'reference', 'Vaccine Manufacturer', 'Immunization.manufacturer(Organization)', '',
'patient', 'reference', 'The patient for the vaccination record', 'Immunization.patient(Patient)', '33 Resources',
'performer', 'reference', 'The practitioner or organization who played a role in the vaccination', 'Immunization.performer.actor(Practitioner, Organization, PractitionerRole)', '',
'reaction', 'reference', 'Additional information on reaction', 'Immunization.reaction.detail(Observation)', '',
'reaction-date', 'date', 'When reaction started', 'Immunization.reaction.date', '',
'reason-code', 'token', 'Reason why the vaccine was administered', 'Immunization.reasonCode', '',
'reason-reference', 'reference', 'Why immunization occurred', 'Immunization.reasonReference(Condition, Observation, DiagnosticReport)', '',
'series', 'string', 'The series being followed by the provider', 'Immunization.protocolApplied.series', '',
'status', 'token', 'Immunization event status', 'Immunization.status', '',
'status-reason', 'token', 'Reason why the vaccine was not administered', 'Immunization.statusReason', '',
'target-disease', 'token', 'The target disease the dose is being administered against', 'Immunization.protocolApplied.targetDisease', '',
'vaccine-code', 'token', 'Vaccine Product Administered', 'Immunization.vaccineCode', '',
)


