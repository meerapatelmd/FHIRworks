df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'FHIR Infrastructure  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Patient', 'Compartments: Device, Encounter, Patient, Practitioner, RelatedPerson',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'QuestionnaireResponse', 'TU', '', 'DomainResource', 'A structured set of questions and their answersElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..1', 'Identifier', 'Unique id for this set of answers',
'basedOn', 'Σ', '0..*', 'Reference(CarePlan | ServiceRequest)', 'Request fulfilled by this QuestionnaireResponse',
'partOf', 'Σ', '0..*', 'Reference(Observation | Procedure)', 'Part of this action',
'questionnaire', 'Σ', '0..1', 'canonical(Questionnaire)', 'Form being answered',
'status', '?!Σ', '1..1', 'code', 'in-progress | completed | amended | entered-in-error | stoppedQuestionnaireResponseStatus (Required)',
'subject', 'Σ', '0..1', 'Reference(Any)', 'The subject of the questions',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter created as part of',
'authored', 'Σ', '0..1', 'dateTime', 'Date the answers were gathered',
'author', 'Σ', '0..1', 'Reference(Device | Practitioner | PractitionerRole | Patient | RelatedPerson | Organization)', 'Person who received and recorded the answers',
'source', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson)', 'The person who answered the questions',
'item', 'I', '0..*', 'BackboneElement', 'Groups and questions+ Rule: Nested item can't be beneath both item and answer',
'linkId', '', '1..1', 'string', 'Pointer to specific item from Questionnaire',
'definition', '', '0..1', 'uri', 'ElementDefinition - details for the item',
'text', '', '0..1', 'string', 'Name for group or question text',
'answer', '', '0..*', 'BackboneElement', 'The response(s) to the question',
'value[x]', '', '0..1', '', 'Single-valued answer to the questionQuestionnaire Answer Codes (Example)',
'valueBoolean', '', '', 'boolean', '',
'valueDecimal', '', '', 'decimal', '',
'valueInteger', '', '', 'integer', '',
'valueDate', '', '', 'date', '',
'valueDateTime', '', '', 'dateTime', '',
'valueTime', '', '', 'time', '',
'valueString', '', '', 'string', '',
'valueUri', '', '', 'uri', '',
'valueAttachment', '', '', 'Attachment', '',
'valueCoding', '', '', 'Coding', '',
'valueQuantity', '', '', 'Quantity', '',
'valueReference', '', '', 'Reference(Any)', '',
'item', '', '0..*', 'see item', 'Nested groups and questions',
'item', '', '0..*', 'see item', 'Nested questionnaire response items',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'QuestionnaireResponse', '',
'QuestionnaireResponse.basedOn', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Types ReferralRequest, ProcedureRequest',
'QuestionnaireResponse.partOf', 'Renamed from parent to partOf',
'QuestionnaireResponse.questionnaire', 'Type changed from Reference(Questionnaire) to canonical(Questionnaire)',
'QuestionnaireResponse.status', 'Change value set from http://hl7.org/fhir/ValueSet/questionnaire-answers-status to http://hl7.org/fhir/ValueSet/questionnaire-answers-status|4.0.1',
'QuestionnaireResponse.encounter', 'Added Element',
'QuestionnaireResponse.author', 'Type Reference: Added Target Types PractitionerRole, Organization',
'QuestionnaireResponse.source', 'Type Reference: Added Target Type PractitionerRole',
'QuestionnaireResponse.context', 'deleted',
'QuestionnaireResponse.item.subject', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'QuestionnaireResponse', 'TU', '', 'DomainResource', 'A structured set of questions and their answersElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..1', 'Identifier', 'Unique id for this set of answers',
'basedOn', 'Σ', '0..*', 'Reference(CarePlan | ServiceRequest)', 'Request fulfilled by this QuestionnaireResponse',
'partOf', 'Σ', '0..*', 'Reference(Observation | Procedure)', 'Part of this action',
'questionnaire', 'Σ', '0..1', 'canonical(Questionnaire)', 'Form being answered',
'status', '?!Σ', '1..1', 'code', 'in-progress | completed | amended | entered-in-error | stoppedQuestionnaireResponseStatus (Required)',
'subject', 'Σ', '0..1', 'Reference(Any)', 'The subject of the questions',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Encounter created as part of',
'authored', 'Σ', '0..1', 'dateTime', 'Date the answers were gathered',
'author', 'Σ', '0..1', 'Reference(Device | Practitioner | PractitionerRole | Patient | RelatedPerson | Organization)', 'Person who received and recorded the answers',
'source', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson)', 'The person who answered the questions',
'item', 'I', '0..*', 'BackboneElement', 'Groups and questions+ Rule: Nested item can't be beneath both item and answer',
'linkId', '', '1..1', 'string', 'Pointer to specific item from Questionnaire',
'definition', '', '0..1', 'uri', 'ElementDefinition - details for the item',
'text', '', '0..1', 'string', 'Name for group or question text',
'answer', '', '0..*', 'BackboneElement', 'The response(s) to the question',
'value[x]', '', '0..1', '', 'Single-valued answer to the questionQuestionnaire Answer Codes (Example)',
'valueBoolean', '', '', 'boolean', '',
'valueDecimal', '', '', 'decimal', '',
'valueInteger', '', '', 'integer', '',
'valueDate', '', '', 'date', '',
'valueDateTime', '', '', 'dateTime', '',
'valueTime', '', '', 'time', '',
'valueString', '', '', 'string', '',
'valueUri', '', '', 'uri', '',
'valueAttachment', '', '', 'Attachment', '',
'valueCoding', '', '', 'Coding', '',
'valueQuantity', '', '', 'Quantity', '',
'valueReference', '', '', 'Reference(Any)', '',
'item', '', '0..*', 'see item', 'Nested groups and questions',
'item', '', '0..*', 'see item', 'Nested questionnaire response items',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'QuestionnaireResponse', '',
'QuestionnaireResponse.basedOn', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Types ReferralRequest, ProcedureRequest',
'QuestionnaireResponse.partOf', 'Renamed from parent to partOf',
'QuestionnaireResponse.questionnaire', 'Type changed from Reference(Questionnaire) to canonical(Questionnaire)',
'QuestionnaireResponse.status', 'Change value set from http://hl7.org/fhir/ValueSet/questionnaire-answers-status to http://hl7.org/fhir/ValueSet/questionnaire-answers-status|4.0.1',
'QuestionnaireResponse.encounter', 'Added Element',
'QuestionnaireResponse.author', 'Type Reference: Added Target Types PractitionerRole, Organization',
'QuestionnaireResponse.source', 'Type Reference: Added Target Type PractitionerRole',
'QuestionnaireResponse.context', 'deleted',
'QuestionnaireResponse.item.subject', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'QuestionnaireResponse.status', 'Lifecycle status of the questionnaire response.', 'Required', 'QuestionnaireResponseStatus',
'QuestionnaireResponse.item.answer.value[x]', 'Code indicating the response provided for a question.', 'Example', 'QuestionnaireAnswerCodes',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'qrs-1', 'Rule', 'QuestionnaireResponse.item', 'Nested item can't be beneath both item and answer', '(answer.exists() and item.exists()).not()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'author', 'reference', 'The author of the questionnaire response', 'QuestionnaireResponse.author(Practitioner, Organization, Device, Patient, PractitionerRole, RelatedPerson)', '',
'authored', 'date', 'When the questionnaire response was last changed', 'QuestionnaireResponse.authored', '',
'based-on', 'reference', 'Plan/proposal/order fulfilled by this questionnaire response', 'QuestionnaireResponse.basedOn(CarePlan, ServiceRequest)', '',
'encounter', 'reference', 'Encounter associated with the questionnaire response', 'QuestionnaireResponse.encounter(Encounter)', '',
'identifier', 'token', 'The unique identifier for the questionnaire response', 'QuestionnaireResponse.identifier', '',
'part-of', 'reference', 'Procedure or observation this questionnaire response was performed as a part of', 'QuestionnaireResponse.partOf(Observation, Procedure)', '',
'patient', 'reference', 'The patient that is the subject of the questionnaire response', 'QuestionnaireResponse.subject.where(resolve() is Patient)(Patient)', '',
'questionnaire', 'reference', 'The questionnaire the answers are provided for', 'QuestionnaireResponse.questionnaire(Questionnaire)', '',
'source', 'reference', 'The individual providing the information reflected in the questionnaire respose', 'QuestionnaireResponse.source(Practitioner, Patient, PractitionerRole, RelatedPerson)', '',
'status', 'token', 'The status of the questionnaire response', 'QuestionnaireResponse.status', '',
'subject', 'reference', 'The subject of the questionnaire response', 'QuestionnaireResponse.subject(Any)', '',
)


