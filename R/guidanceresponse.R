df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Clinical Decision Support  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'GuidanceResponse', 'TU', '', 'DomainResource', 'The formal response to a guidance requestElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'requestIdentifier', 'Σ', '0..1', 'Identifier', 'The identifier of the request associated with this response, if any',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier',
'module[x]', 'Σ', '1..1', '', 'What guidance was requested',
'moduleUri', '', '', 'uri', '',
'moduleCanonical', '', '', 'canonical()', '',
'moduleCodeableConcept', '', '', 'CodeableConcept', '',
'status', '?!Σ', '1..1', 'code', 'success | data-requested | data-required | in-progress | failure | entered-in-errorGuidanceResponseStatus (Required)',
'subject', '', '0..1', 'Reference(Patient | Group)', 'Patient the request was performed for',
'encounter', '', '0..1', 'Reference(Encounter)', 'Encounter during which the response was returned',
'occurrenceDateTime', '', '0..1', 'dateTime', 'When the guidance response was processed',
'performer', '', '0..1', 'Reference(Device)', 'Device returning the guidance',
'reasonCode', '', '0..*', 'CodeableConcept', 'Why guidance is needed',
'reasonReference', '', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference)', 'Why guidance is needed',
'note', '', '0..*', 'Annotation', 'Additional notes about the response',
'evaluationMessage', '', '0..*', 'Reference(OperationOutcome)', 'Messages resulting from the evaluation of the artifact or artifacts',
'outputParameters', '', '0..1', 'Reference(Parameters)', 'The output parameters of the evaluation, if any',
'result', '', '0..1', 'Reference(CarePlan | RequestGroup)', 'Proposed actions, if any',
'dataRequirement', '', '0..*', 'DataRequirement', 'Additional required data',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'GuidanceResponse', '',
'GuidanceResponse.requestIdentifier', 'Renamed from requestId to requestIdentifier
        Type changed from id to Identifier',
'GuidanceResponse.identifier', 'Max Cardinality changed from 1 to *',
'GuidanceResponse.module[x]', 'Renamed from module to module[x]
        Add Types uri, canonical, CodeableConcept
        Remove Type Reference(ServiceDefinition)',
'GuidanceResponse.status', 'Change value set from http://hl7.org/fhir/ValueSet/guidance-response-status to http://hl7.org/fhir/ValueSet/guidance-response-status|4.0.1',
'GuidanceResponse.encounter', 'Added Element',
'GuidanceResponse.reasonCode', 'Added Element',
'GuidanceResponse.reasonReference', 'Added Element',
'GuidanceResponse.context', 'deleted',
'GuidanceResponse.reason[x]', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'GuidanceResponse', 'TU', '', 'DomainResource', 'The formal response to a guidance requestElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'requestIdentifier', 'Σ', '0..1', 'Identifier', 'The identifier of the request associated with this response, if any',
'identifier', 'Σ', '0..*', 'Identifier', 'Business identifier',
'module[x]', 'Σ', '1..1', '', 'What guidance was requested',
'moduleUri', '', '', 'uri', '',
'moduleCanonical', '', '', 'canonical()', '',
'moduleCodeableConcept', '', '', 'CodeableConcept', '',
'status', '?!Σ', '1..1', 'code', 'success | data-requested | data-required | in-progress | failure | entered-in-errorGuidanceResponseStatus (Required)',
'subject', '', '0..1', 'Reference(Patient | Group)', 'Patient the request was performed for',
'encounter', '', '0..1', 'Reference(Encounter)', 'Encounter during which the response was returned',
'occurrenceDateTime', '', '0..1', 'dateTime', 'When the guidance response was processed',
'performer', '', '0..1', 'Reference(Device)', 'Device returning the guidance',
'reasonCode', '', '0..*', 'CodeableConcept', 'Why guidance is needed',
'reasonReference', '', '0..*', 'Reference(Condition | Observation | DiagnosticReport | DocumentReference)', 'Why guidance is needed',
'note', '', '0..*', 'Annotation', 'Additional notes about the response',
'evaluationMessage', '', '0..*', 'Reference(OperationOutcome)', 'Messages resulting from the evaluation of the artifact or artifacts',
'outputParameters', '', '0..1', 'Reference(Parameters)', 'The output parameters of the evaluation, if any',
'result', '', '0..1', 'Reference(CarePlan | RequestGroup)', 'Proposed actions, if any',
'dataRequirement', '', '0..*', 'DataRequirement', 'Additional required data',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'GuidanceResponse', '',
'GuidanceResponse.requestIdentifier', 'Renamed from requestId to requestIdentifier
        Type changed from id to Identifier',
'GuidanceResponse.identifier', 'Max Cardinality changed from 1 to *',
'GuidanceResponse.module[x]', 'Renamed from module to module[x]
        Add Types uri, canonical, CodeableConcept
        Remove Type Reference(ServiceDefinition)',
'GuidanceResponse.status', 'Change value set from http://hl7.org/fhir/ValueSet/guidance-response-status to http://hl7.org/fhir/ValueSet/guidance-response-status|4.0.1',
'GuidanceResponse.encounter', 'Added Element',
'GuidanceResponse.reasonCode', 'Added Element',
'GuidanceResponse.reasonReference', 'Added Element',
'GuidanceResponse.context', 'deleted',
'GuidanceResponse.reason[x]', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'GuidanceResponse.status', 'The status of a guidance response.', 'Required', 'GuidanceResponseStatus',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'identifier', 'token', 'The identifier of the guidance response', 'GuidanceResponse.identifier', '',
'patient', 'reference', 'The identity of a patient to search for guidance response results', 'GuidanceResponse.subject.where(resolve() is Patient)(Patient)', '',
'request', 'token', 'The identifier of the request associated with the response', 'GuidanceResponse.requestIdentifier', '',
'subject', 'reference', 'The subject that the guidance response is about', 'GuidanceResponse.subject(Group, Patient)', '',
)


