df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient, Practitioner',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'EpisodeOfCare', 'TU', '', 'DomainResource', 'An association of a Patient with an Organization and  Healthcare Provider(s) for a period of time that the Organization assumes some level of responsibilityElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier(s) relevant for this EpisodeOfCare',
'status', '?!Σ', '1..1', 'code', 'planned | waitlist | active | onhold | finished | cancelled | entered-in-errorEpisodeOfCareStatus (Required)',
'statusHistory', '', '0..*', 'BackboneElement', 'Past list of status codes (the current status may be included to cover the start date of the status)',
'status', '', '1..1', 'code', 'planned | waitlist | active | onhold | finished | cancelled | entered-in-errorEpisodeOfCareStatus (Required)',
'period', '', '1..1', 'Period', 'Duration the EpisodeOfCare was in the specified status',
'type', 'Σ', '0..*', 'CodeableConcept', 'Type/class  - e.g. specialist referral, disease managementEpisode of care type (Example)',
'diagnosis', 'Σ', '0..*', 'BackboneElement', 'The list of diagnosis relevant to this episode of care',
'condition', 'Σ', '1..1', 'Reference(Condition)', 'Conditions/problems/diagnoses this episode of care is for',
'role', 'Σ', '0..1', 'CodeableConcept', 'Role that this diagnosis has within the episode of care (e.g. admission, billing, discharge …)DiagnosisRole (Preferred)',
'rank', 'Σ', '0..1', 'positiveInt', 'Ranking of the diagnosis (for each role type)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'The patient who is the focus of this episode of care',
'managingOrganization', 'Σ', '0..1', 'Reference(Organization)', 'Organization that assumes care',
'period', 'Σ', '0..1', 'Period', 'Interval during responsibility is assumed',
'referralRequest', '', '0..*', 'Reference(ServiceRequest)', 'Originating Referral Request(s)',
'careManager', '', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Care manager/care coordinator for the patient',
'team', '', '0..*', 'Reference(CareTeam)', 'Other practitioners facilitating this episode of care',
'account', '', '0..*', 'Reference(Account)', 'The set of accounts that may be used for billing for this EpisodeOfCare',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'EpisodeOfCare', '',
'EpisodeOfCare.status', 'Change value set from http://hl7.org/fhir/ValueSet/episode-of-care-status to http://hl7.org/fhir/ValueSet/episode-of-care-status|4.0.1',
'EpisodeOfCare.statusHistory.status', 'Change value set from http://hl7.org/fhir/ValueSet/episode-of-care-status to http://hl7.org/fhir/ValueSet/episode-of-care-status|4.0.1',
'EpisodeOfCare.referralRequest', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Type ReferralRequest',
'EpisodeOfCare.careManager', 'Type Reference: Added Target Type PractitionerRole',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'EpisodeOfCare', 'TU', '', 'DomainResource', 'An association of a Patient with an Organization and  Healthcare Provider(s) for a period of time that the Organization assumes some level of responsibilityElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Business Identifier(s) relevant for this EpisodeOfCare',
'status', '?!Σ', '1..1', 'code', 'planned | waitlist | active | onhold | finished | cancelled | entered-in-errorEpisodeOfCareStatus (Required)',
'statusHistory', '', '0..*', 'BackboneElement', 'Past list of status codes (the current status may be included to cover the start date of the status)',
'status', '', '1..1', 'code', 'planned | waitlist | active | onhold | finished | cancelled | entered-in-errorEpisodeOfCareStatus (Required)',
'period', '', '1..1', 'Period', 'Duration the EpisodeOfCare was in the specified status',
'type', 'Σ', '0..*', 'CodeableConcept', 'Type/class  - e.g. specialist referral, disease managementEpisode of care type (Example)',
'diagnosis', 'Σ', '0..*', 'BackboneElement', 'The list of diagnosis relevant to this episode of care',
'condition', 'Σ', '1..1', 'Reference(Condition)', 'Conditions/problems/diagnoses this episode of care is for',
'role', 'Σ', '0..1', 'CodeableConcept', 'Role that this diagnosis has within the episode of care (e.g. admission, billing, discharge …)DiagnosisRole (Preferred)',
'rank', 'Σ', '0..1', 'positiveInt', 'Ranking of the diagnosis (for each role type)',
'patient', 'Σ', '1..1', 'Reference(Patient)', 'The patient who is the focus of this episode of care',
'managingOrganization', 'Σ', '0..1', 'Reference(Organization)', 'Organization that assumes care',
'period', 'Σ', '0..1', 'Period', 'Interval during responsibility is assumed',
'referralRequest', '', '0..*', 'Reference(ServiceRequest)', 'Originating Referral Request(s)',
'careManager', '', '0..1', 'Reference(Practitioner | PractitionerRole)', 'Care manager/care coordinator for the patient',
'team', '', '0..*', 'Reference(CareTeam)', 'Other practitioners facilitating this episode of care',
'account', '', '0..*', 'Reference(Account)', 'The set of accounts that may be used for billing for this EpisodeOfCare',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'EpisodeOfCare', '',
'EpisodeOfCare.status', 'Change value set from http://hl7.org/fhir/ValueSet/episode-of-care-status to http://hl7.org/fhir/ValueSet/episode-of-care-status|4.0.1',
'EpisodeOfCare.statusHistory.status', 'Change value set from http://hl7.org/fhir/ValueSet/episode-of-care-status to http://hl7.org/fhir/ValueSet/episode-of-care-status|4.0.1',
'EpisodeOfCare.referralRequest', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Type ReferralRequest',
'EpisodeOfCare.careManager', 'Type Reference: Added Target Type PractitionerRole',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'EpisodeOfCare.statusEpisodeOfCare.statusHistory.status', 'The status of the episode of care.', 'Required', 'EpisodeOfCareStatus',
'EpisodeOfCare.type', 'The type of the episode of care.', 'Example', 'EpisodeOfCareType',
'EpisodeOfCare.diagnosis.role', 'The type of diagnosis this condition represents.', 'Preferred', 'DiagnosisRole',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'care-manager', 'reference', 'Care manager/care coordinator for the patient', 'EpisodeOfCare.careManager.where(resolve() is Practitioner)(Practitioner)', '',
'condition', 'reference', 'Conditions/problems/diagnoses this episode of care is for', 'EpisodeOfCare.diagnosis.condition(Condition)', '',
'date', 'date', 'The provided date search value falls within the episode of care's period', 'EpisodeOfCare.period', '17 Resources',
'identifier', 'token', 'Business Identifier(s) relevant for this EpisodeOfCare', 'EpisodeOfCare.identifier', '30 Resources',
'incoming-referral', 'reference', 'Incoming Referral Request', 'EpisodeOfCare.referralRequest(ServiceRequest)', '',
'organization', 'reference', 'The organization that has assumed the specific responsibilities of this EpisodeOfCare', 'EpisodeOfCare.managingOrganization(Organization)', '',
'patient', 'reference', 'The patient who is the focus of this episode of care', 'EpisodeOfCare.patient(Patient)', '33 Resources',
'status', 'token', 'The current status of the Episode of Care as provided (does not check the status history collection)', 'EpisodeOfCare.status', '',
'type', 'token', 'Type/class  - e.g. specialist referral, disease management', 'EpisodeOfCare.type', '5 Resources',
)


