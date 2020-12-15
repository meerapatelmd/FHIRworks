df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Care  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Encounter, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CareTeam', 'TU', '', 'DomainResource', 'Planned participants in the coordination and delivery of care for a patient or groupElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Ids for this team',
'status', '?!Σ', '0..1', 'code', 'proposed | active | suspended | inactive | entered-in-errorCareTeamStatus (Required)',
'category', 'Σ', '0..*', 'CodeableConcept', 'Type of teamCare Team category (Example)',
'name', 'Σ', '0..1', 'string', 'Name of the team, such as crisis assessment team',
'subject', 'Σ', '0..1', 'Reference(Patient | Group)', 'Who care team is for',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter created as part of',
'period', 'Σ', '0..1', 'Period', 'Time period team covers',
'participant', 'I', '0..*', 'BackboneElement', 'Members of the team+ Rule: CareTeam.participant.onBehalfOf can only be populated when CareTeam.participant.member is a Practitioner',
'role', 'Σ', '0..*', 'CodeableConcept', 'Type of involvementParticipant Roles (Example)',
'member', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | RelatedPerson | Patient | Organization | CareTeam)', 'Who is involved',
'onBehalfOf', 'Σ', '0..1', 'Reference(Organization)', 'Organization of the practitioner',
'period', '', '0..1', 'Period', 'Time period of participant',
'reasonCode', '', '0..*', 'CodeableConcept', 'Why the care team existsSNOMED CT Clinical Findings (Example)',
'reasonReference', '', '0..*', 'Reference(Condition)', 'Why the care team exists',
'managingOrganization', 'Σ', '0..*', 'Reference(Organization)', 'Organization responsible for the care team',
'telecom', '', '0..*', 'ContactPoint', 'A contact detail for the care team (that applies to all members)',
'note', '', '0..*', 'Annotation', 'Comments made about the CareTeam',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'CareTeam', '',
'CareTeam.status', 'Change value set from http://hl7.org/fhir/ValueSet/care-team-status to http://hl7.org/fhir/ValueSet/care-team-status|4.0.1',
'CareTeam.encounter', 'Added Element',
'CareTeam.participant.role', 'Max Cardinality changed from 1 to *',
'CareTeam.participant.member', 'Type Reference: Added Target Type PractitionerRole',
'CareTeam.telecom', 'Added Element',
'CareTeam.context', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'CareTeam', 'TU', '', 'DomainResource', 'Planned participants in the coordination and delivery of care for a patient or groupElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'External Ids for this team',
'status', '?!Σ', '0..1', 'code', 'proposed | active | suspended | inactive | entered-in-errorCareTeamStatus (Required)',
'category', 'Σ', '0..*', 'CodeableConcept', 'Type of teamCare Team category (Example)',
'name', 'Σ', '0..1', 'string', 'Name of the team, such as crisis assessment team',
'subject', 'Σ', '0..1', 'Reference(Patient | Group)', 'Who care team is for',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter created as part of',
'period', 'Σ', '0..1', 'Period', 'Time period team covers',
'participant', 'I', '0..*', 'BackboneElement', 'Members of the team+ Rule: CareTeam.participant.onBehalfOf can only be populated when CareTeam.participant.member is a Practitioner',
'role', 'Σ', '0..*', 'CodeableConcept', 'Type of involvementParticipant Roles (Example)',
'member', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | RelatedPerson | Patient | Organization | CareTeam)', 'Who is involved',
'onBehalfOf', 'Σ', '0..1', 'Reference(Organization)', 'Organization of the practitioner',
'period', '', '0..1', 'Period', 'Time period of participant',
'reasonCode', '', '0..*', 'CodeableConcept', 'Why the care team existsSNOMED CT Clinical Findings (Example)',
'reasonReference', '', '0..*', 'Reference(Condition)', 'Why the care team exists',
'managingOrganization', 'Σ', '0..*', 'Reference(Organization)', 'Organization responsible for the care team',
'telecom', '', '0..*', 'ContactPoint', 'A contact detail for the care team (that applies to all members)',
'note', '', '0..*', 'Annotation', 'Comments made about the CareTeam',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'CareTeam', '',
'CareTeam.status', 'Change value set from http://hl7.org/fhir/ValueSet/care-team-status to http://hl7.org/fhir/ValueSet/care-team-status|4.0.1',
'CareTeam.encounter', 'Added Element',
'CareTeam.participant.role', 'Max Cardinality changed from 1 to *',
'CareTeam.participant.member', 'Type Reference: Added Target Type PractitionerRole',
'CareTeam.telecom', 'Added Element',
'CareTeam.context', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'CareTeam.status', 'Indicates the status of the care team.', 'Required', 'CareTeamStatus',
'CareTeam.category', 'Indicates the type of care team.', 'Example', 'CareTeamCategory',
'CareTeam.participant.role', 'Indicates specific responsibility of an individual within the care team, such as "Primary physician", "Team coordinator", "Caregiver", etc.', 'Example', 'ParticipantRoles',
'CareTeam.reasonCode', 'Indicates the reason for the care team.', 'Example', 'SNOMEDCTClinicalFindings',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'ctm-1', 'Rule', 'CareTeam.participant', 'CareTeam.participant.onBehalfOf can only be populated when CareTeam.participant.member is a Practitioner', 'onBehalfOf.exists() implies (member.resolve().iif(empty(), true, ofType(Practitioner).exists()))',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'category', 'token', 'Type of team', 'CareTeam.category', '',
'date', 'date', 'Time period team covers', 'CareTeam.period', '17 Resources',
'encounter', 'reference', 'Encounter created as part of', 'CareTeam.encounter(Encounter)', '',
'identifier', 'token', 'External Ids for this team', 'CareTeam.identifier', '30 Resources',
'participant', 'reference', 'Who is involved', 'CareTeam.participant.member(Practitioner, Organization, CareTeam, Patient, PractitionerRole, RelatedPerson)', '',
'patient', 'reference', 'Who care team is for', 'CareTeam.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'status', 'token', 'proposed | active | suspended | inactive | entered-in-error', 'CareTeam.status', '',
'subject', 'reference', 'Who care team is for', 'CareTeam.subject(Group, Patient)', '',
)


