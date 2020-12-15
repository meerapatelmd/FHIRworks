df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: N', 'Normative (from v4.0.0)', 'Security Category: Patient', 'Compartments: Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`X1`,~`X2`,
NA, 'This page has been approved as part of an ANSI  standard.
   See the Patient Package for further details.',
)


df3 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Patient', 'N', '', 'DomainResource', 'Information about an individual or animal receiving health care servicesElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'An identifier for this patient',
'active', '?!Σ', '0..1', 'boolean', 'Whether this patient's record is in active use',
'name', 'Σ', '0..*', 'HumanName', 'A name associated with the patient',
'telecom', 'Σ', '0..*', 'ContactPoint', 'A contact detail for the individual',
'gender', 'Σ', '0..1', 'code', 'male | female | other | unknownAdministrativeGender (Required)',
'birthDate', 'Σ', '0..1', 'date', 'The date of birth for the individual',
'deceased[x]', '?!Σ', '0..1', '', 'Indicates if the individual is deceased or not',
'deceasedBoolean', '', '', 'boolean', '',
'deceasedDateTime', '', '', 'dateTime', '',
'address', 'Σ', '0..*', 'Address', 'An address for the individual',
'maritalStatus', '', '0..1', 'CodeableConcept', 'Marital (civil) status of a patientMaritalStatus (Extensible)',
'multipleBirth[x]', '', '0..1', '', 'Whether patient is part of a multiple birth',
'multipleBirthBoolean', '', '', 'boolean', '',
'multipleBirthInteger', '', '', 'integer', '',
'photo', '', '0..*', 'Attachment', 'Image of the patient',
'contact', 'I', '0..*', 'BackboneElement', 'A contact party (e.g. guardian, partner, friend) for the patient+ Rule: SHALL at least contain a contact's details or a reference to an organization',
'relationship', '', '0..*', 'CodeableConcept', 'The kind of relationshipPatient Contact Relationship  (Extensible)',
'name', '', '0..1', 'HumanName', 'A name associated with the contact person',
'telecom', '', '0..*', 'ContactPoint', 'A contact detail for the person',
'address', '', '0..1', 'Address', 'Address for the contact person',
'gender', '', '0..1', 'code', 'male | female | other | unknownAdministrativeGender (Required)',
'organization', 'I', '0..1', 'Reference(Organization)', 'Organization that is associated with the contact',
'period', '', '0..1', 'Period', 'The period during which this contact person or organization is valid to be contacted relating to this patient',
'communication', '', '0..*', 'BackboneElement', 'A language which may be used to communicate with the patient about his or her health',
'language', '', '1..1', 'CodeableConcept', 'The language which can be used to communicate with the patient about his or her healthCommon Languages (Preferred but limited to AllLanguages)',
'preferred', '', '0..1', 'boolean', 'Language preference indicator',
'generalPractitioner', '', '0..*', 'Reference(Organization | Practitioner | PractitionerRole)', 'Patient's nominated primary care provider',
'managingOrganization', 'Σ', '0..1', 'Reference(Organization)', 'Organization that is the custodian of the patient record',
'link', '?!Σ', '0..*', 'BackboneElement', 'Link to another patient resource that concerns the same actual person',
'other', 'Σ', '1..1', 'Reference(Patient | RelatedPerson)', 'The other patient or related person resource that the link refers to',
'type', 'Σ', '1..1', 'code', 'replaced-by | replaces | refer | seealsoLinkType (Required)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df4 <- 
tibble::tribble(
~`X1`,~`X2`,
'Patient', '',
'Patient.active', 'Default Value "true" removed',
'Patient.gender', 'Change value set from http://hl7.org/fhir/ValueSet/administrative-gender to http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1',
'Patient.contact.relationship', 'Change value set from http://terminology.hl7.org/ValueSet/v2-0131 to http://hl7.org/fhir/ValueSet/patient-contactrelationship',
'Patient.contact.gender', 'Change value set from http://hl7.org/fhir/ValueSet/administrative-gender to http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1',
'Patient.communication.language', 'Change binding strength from extensible to preferred',
'Patient.generalPractitioner', 'Type Reference: Added Target Type PractitionerRole',
'Patient.link.type', 'Change value set from http://hl7.org/fhir/ValueSet/link-type to http://hl7.org/fhir/ValueSet/link-type|4.0.1',
'Patient.animal', 'deleted',
)


df5 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Patient', 'N', '', 'DomainResource', 'Information about an individual or animal receiving health care servicesElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'An identifier for this patient',
'active', '?!Σ', '0..1', 'boolean', 'Whether this patient's record is in active use',
'name', 'Σ', '0..*', 'HumanName', 'A name associated with the patient',
'telecom', 'Σ', '0..*', 'ContactPoint', 'A contact detail for the individual',
'gender', 'Σ', '0..1', 'code', 'male | female | other | unknownAdministrativeGender (Required)',
'birthDate', 'Σ', '0..1', 'date', 'The date of birth for the individual',
'deceased[x]', '?!Σ', '0..1', '', 'Indicates if the individual is deceased or not',
'deceasedBoolean', '', '', 'boolean', '',
'deceasedDateTime', '', '', 'dateTime', '',
'address', 'Σ', '0..*', 'Address', 'An address for the individual',
'maritalStatus', '', '0..1', 'CodeableConcept', 'Marital (civil) status of a patientMaritalStatus (Extensible)',
'multipleBirth[x]', '', '0..1', '', 'Whether patient is part of a multiple birth',
'multipleBirthBoolean', '', '', 'boolean', '',
'multipleBirthInteger', '', '', 'integer', '',
'photo', '', '0..*', 'Attachment', 'Image of the patient',
'contact', 'I', '0..*', 'BackboneElement', 'A contact party (e.g. guardian, partner, friend) for the patient+ Rule: SHALL at least contain a contact's details or a reference to an organization',
'relationship', '', '0..*', 'CodeableConcept', 'The kind of relationshipPatient Contact Relationship  (Extensible)',
'name', '', '0..1', 'HumanName', 'A name associated with the contact person',
'telecom', '', '0..*', 'ContactPoint', 'A contact detail for the person',
'address', '', '0..1', 'Address', 'Address for the contact person',
'gender', '', '0..1', 'code', 'male | female | other | unknownAdministrativeGender (Required)',
'organization', 'I', '0..1', 'Reference(Organization)', 'Organization that is associated with the contact',
'period', '', '0..1', 'Period', 'The period during which this contact person or organization is valid to be contacted relating to this patient',
'communication', '', '0..*', 'BackboneElement', 'A language which may be used to communicate with the patient about his or her health',
'language', '', '1..1', 'CodeableConcept', 'The language which can be used to communicate with the patient about his or her healthCommon Languages (Preferred but limited to AllLanguages)',
'preferred', '', '0..1', 'boolean', 'Language preference indicator',
'generalPractitioner', '', '0..*', 'Reference(Organization | Practitioner | PractitionerRole)', 'Patient's nominated primary care provider',
'managingOrganization', 'Σ', '0..1', 'Reference(Organization)', 'Organization that is the custodian of the patient record',
'link', '?!Σ', '0..*', 'BackboneElement', 'Link to another patient resource that concerns the same actual person',
'other', 'Σ', '1..1', 'Reference(Patient | RelatedPerson)', 'The other patient or related person resource that the link refers to',
'type', 'Σ', '1..1', 'code', 'replaced-by | replaces | refer | seealsoLinkType (Required)',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df6 <- 
tibble::tribble(
~`X1`,~`X2`,
'Patient', '',
'Patient.active', 'Default Value "true" removed',
'Patient.gender', 'Change value set from http://hl7.org/fhir/ValueSet/administrative-gender to http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1',
'Patient.contact.relationship', 'Change value set from http://terminology.hl7.org/ValueSet/v2-0131 to http://hl7.org/fhir/ValueSet/patient-contactrelationship',
'Patient.contact.gender', 'Change value set from http://hl7.org/fhir/ValueSet/administrative-gender to http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1',
'Patient.communication.language', 'Change binding strength from extensible to preferred',
'Patient.generalPractitioner', 'Type Reference: Added Target Type PractitionerRole',
'Patient.link.type', 'Change value set from http://hl7.org/fhir/ValueSet/link-type to http://hl7.org/fhir/ValueSet/link-type|4.0.1',
'Patient.animal', 'deleted',
)


df7 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Patient.genderPatient.contact.gender', 'The gender of a person used for administrative purposes.', 'Required', 'AdministrativeGender',
'Patient.maritalStatus', 'The domestic partnership status of a person.', 'Extensible', 'Marital Status Codes',
'Patient.contact.relationship', 'The nature of the relationship between a patient and a contact person for that patient.', 'Extensible', 'PatientContactRelationship',
'Patient.communication.language', 'A human language.', 'Preferred, but limited to AllLanguages', 'CommonLanguages',
'Patient.link.type', 'The type of link between this patient resource and another patient resource.', 'Required', 'LinkType',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'pat-1', 'Rule', 'Patient.contact', 'SHALL at least contain a contact's details or a reference to an organization', 'name.exists() or telecom.exists() or address.exists() or organization.exists()',
)


df9 <- 
tibble::tribble(
~`X1`,~`X2`,
'certain', 'This record meets the matching criteria to be automatically considered as a full match.',
'probable', 'This record is a close match, but not a certain match. Additional review (e.g. by a human) may be required before using this as a match.',
'possible', 'This record may be a matching one. Additional review (e.g. by a human) SHOULD be performed before using this as a match.',
'certainly-not', 'This record is known not to be a match. Note that usually non-matching records are not returned, but in some cases records previously or likely considered as a match may specifically be negated by the matching engine.',
)


df10 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'active TU', 'token', 'Whether the patient record is active', 'Patient.active', '',
'address TU', 'string', 'A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text', 'Patient.address', '3 Resources',
'address-city TU', 'string', 'A city specified in an address', 'Patient.address.city', '3 Resources',
'address-country TU', 'string', 'A country specified in an address', 'Patient.address.country', '3 Resources',
'address-postalcode TU', 'string', 'A postalCode specified in an address', 'Patient.address.postalCode', '3 Resources',
'address-state TU', 'string', 'A state specified in an address', 'Patient.address.state', '3 Resources',
'address-use TU', 'token', 'A use code specified in an address', 'Patient.address.use', '3 Resources',
'birthdate TU', 'date', 'The patient's date of birth', 'Patient.birthDate', '2 Resources',
'death-date TU', 'date', 'The date of death has been provided and satisfies this search value', '(Patient.deceased as dateTime)', '',
'deceased TU', 'token', 'This patient has been marked as deceased, or as a death date entered', 'Patient.deceased.exists() and Patient.deceased != false', '',
'email TU', 'token', 'A value in an email contact', 'Patient.telecom.where(system='email')', '4 Resources',
'family TU', 'string', 'A portion of the family name of the patient', 'Patient.name.family', '1 Resources',
'gender TU', 'token', 'Gender of the patient', 'Patient.gender', '3 Resources',
'general-practitioner TU', 'reference', 'Patient's nominated general practitioner, not the organization that manages the record', 'Patient.generalPractitioner(Practitioner, Organization, PractitionerRole)', '',
'given TU', 'string', 'A portion of the given name of the patient', 'Patient.name.given', '1 Resources',
'identifier TU', 'token', 'A patient identifier', 'Patient.identifier', '',
'language TU', 'token', 'Language code (irrespective of use value)', 'Patient.communication.language', '',
'link TU', 'reference', 'All patients linked to the given patient', 'Patient.link.other(Patient, RelatedPerson)', '',
'name TU', 'string', 'A server defined search that may match any of the string fields in the HumanName, including family, give, prefix, suffix, suffix, and/or text', 'Patient.name', '',
'organization TU', 'reference', 'The organization that is the custodian of the patient record', 'Patient.managingOrganization(Organization)', '',
'phone TU', 'token', 'A value in a phone contact', 'Patient.telecom.where(system='phone')', '4 Resources',
'phonetic TU', 'string', 'A portion of either family or given name using some kind of phonetic matching algorithm', 'Patient.name', '3 Resources',
'telecom TU', 'token', 'The value in any kind of telecom details of the patient', 'Patient.telecom', '4 Resources',
)


