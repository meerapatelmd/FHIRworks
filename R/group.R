df1 <-
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'FHIR Infrastructure  Work Group', 'Maturity Level: 1', 'Trial Use', 'Security Category: Business', 'Compartments: Device, Patient, Practitioner',
)


df2 <-
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Group', 'ITU', '', 'DomainResource', 'Group of multiple entities+ Rule: Can only have members if group is "actual"Elements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique id',
'active', 'Σ', '0..1', 'boolean', 'Whether this group\'s record is in active use',
'type', 'Σ', '1..1', 'code', 'person | animal | practitioner | device | medication | substanceGroupType (Required)',
'actual', 'ΣI', '1..1', 'boolean', 'Descriptive or actual',
'code', 'Σ', '0..1', 'CodeableConcept', 'Kind of Group members',
'name', 'Σ', '0..1', 'string', 'Label for Group',
'quantity', 'Σ', '0..1', 'unsignedInt', 'Number of members',
'managingEntity', 'Σ', '0..1', 'Reference(Organization | RelatedPerson | Practitioner | PractitionerRole)', 'Entity that is the custodian of the Group\'s definition',
'characteristic', '', '0..*', 'BackboneElement', 'Include / Exclude group members by Trait',
'code', '', '1..1', 'CodeableConcept', 'Kind of characteristic',
'value[x]', '', '1..1', '', 'Value held by characteristic',
'valueCodeableConcept', '', '', 'CodeableConcept', '',
'valueBoolean', '', '', 'boolean', '',
'valueQuantity', '', '', 'Quantity', '',
'valueRange', '', '', 'Range', '',
'valueReference', '', '', 'Reference()', '',
'exclude', '', '1..1', 'boolean', 'Group includes or excludes',
'period', '', '0..1', 'Period', 'Period over which characteristic is tested',
'member', 'I', '0..*', 'BackboneElement', 'Who or what is in group',
'entity', '', '1..1', 'Reference(Patient | Practitioner | PractitionerRole | Device | Medication | Substance | Group)', 'Reference to the group member',
'period', '', '0..1', 'Period', 'Period member belonged to the group',
'inactive', '', '0..1', 'boolean', 'If member is no longer in group',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <-
tibble::tribble(
~`X1`,~`X2`,
'Group', '',
'Group.active', 'Default Value "true" removed',
'Group.type', 'Change value set from http://hl7.org/fhir/ValueSet/group-type to http://hl7.org/fhir/ValueSet/group-type|4.0.1',
'Group.managingEntity', 'Added Element',
'Group.characteristic.value[x]', 'Add Type Reference',
'Group.characteristic.exclude', 'No longer marked as Modifier',
'Group.member.entity', 'Type Reference: Added Target Types PractitionerRole, Group',
'Group.member.inactive', 'Default Value "false" removed',
)


df4 <-
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Group', 'ITU', '', 'DomainResource', 'Group of multiple entities+ Rule: Can only have members if group is "actual"Elements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique id',
'active', 'Σ', '0..1', 'boolean', 'Whether this group\'s record is in active use',
'type', 'Σ', '1..1', 'code', 'person | animal | practitioner | device | medication | substanceGroupType (Required)',
'actual', 'ΣI', '1..1', 'boolean', 'Descriptive or actual',
'code', 'Σ', '0..1', 'CodeableConcept', 'Kind of Group members',
'name', 'Σ', '0..1', 'string', 'Label for Group',
'quantity', 'Σ', '0..1', 'unsignedInt', 'Number of members',
'managingEntity', 'Σ', '0..1', 'Reference(Organization | RelatedPerson | Practitioner | PractitionerRole)', 'Entity that is the custodian of the Group\'s definition',
'characteristic', '', '0..*', 'BackboneElement', 'Include / Exclude group members by Trait',
'code', '', '1..1', 'CodeableConcept', 'Kind of characteristic',
'value[x]', '', '1..1', '', 'Value held by characteristic',
'valueCodeableConcept', '', '', 'CodeableConcept', '',
'valueBoolean', '', '', 'boolean', '',
'valueQuantity', '', '', 'Quantity', '',
'valueRange', '', '', 'Range', '',
'valueReference', '', '', 'Reference()', '',
'exclude', '', '1..1', 'boolean', 'Group includes or excludes',
'period', '', '0..1', 'Period', 'Period over which characteristic is tested',
'member', 'I', '0..*', 'BackboneElement', 'Who or what is in group',
'entity', '', '1..1', 'Reference(Patient | Practitioner | PractitionerRole | Device | Medication | Substance | Group)', 'Reference to the group member',
'period', '', '0..1', 'Period', 'Period member belonged to the group',
'inactive', '', '0..1', 'boolean', 'If member is no longer in group',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <-
tibble::tribble(
~`X1`,~`X2`,
'Group', '',
'Group.active', 'Default Value "true" removed',
'Group.type', 'Change value set from http://hl7.org/fhir/ValueSet/group-type to http://hl7.org/fhir/ValueSet/group-type|4.0.1',
'Group.managingEntity', 'Added Element',
'Group.characteristic.value[x]', 'Add Type Reference',
'Group.characteristic.exclude', 'No longer marked as Modifier',
'Group.member.entity', 'Type Reference: Added Target Types PractitionerRole, Group',
'Group.member.inactive', 'Default Value "false" removed',
)


df6 <-
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Group.type', 'Types of resources that are part of group.', 'Required', 'GroupType',
'Group.code', 'Kind of particular resource; e.g. cow, syringe, lake, etc.', 'Unknown', 'No details provided yet',
'Group.characteristic.code', 'List of characteristics used to describe group members; e.g. gender, age, owner, location, etc.', 'Unknown', 'No details provided yet',
'Group.characteristic.value[x]', 'Value of descriptive member characteristic; e.g. red, male, pneumonia, Caucasian, etc.', 'Unknown', 'No details provided yet',
)


df7 <-
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'grp-1', 'Rule', '(base)', 'Can only have members if group is "actual"', 'member.empty() or (actual = true)',
)


df8 <-
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'actual', 'token', 'Descriptive or actual', 'Group.actual', '',
'characteristic', 'token', 'Kind of characteristic', 'Group.characteristic.code', '',
'characteristic-value', 'composite', 'A composite of both characteristic and value', 'On Group.characteristic:  characteristic: code  value: value', '',
'code', 'token', 'The kind of resources contained', 'Group.code', '',
'exclude', 'token', 'Group includes or excludes', 'Group.characteristic.exclude', '',
'identifier', 'token', 'Unique id', 'Group.identifier', '',
'managing-entity', 'reference', 'Entity that is the custodian of the Group\'s definition', 'Group.managingEntity(Practitioner, Organization, PractitionerRole, RelatedPerson)', '',
'member', 'reference', 'Reference to the group member', 'Group.member.entity(Practitioner, Group, Device, Medication, Patient, Substance, PractitionerRole)', '',
'type', 'token', 'The type of resources the group contains', 'Group.type', '',
'value', 'token', 'Value held by characteristic', '(Group.characteristic.value as CodeableConcept) | (Group.characteristic.value as boolean)', '',
)


