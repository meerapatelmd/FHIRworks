df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Orders and Observations  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Not Classified', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Task', 'ITU', '', 'DomainResource', 'A task to be performed+ Rule: Last modified date must be greater than or equal to authored-on date.Elements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Task Instance Identifier',
'instantiatesCanonical', 'Σ', '0..1', 'canonical(ActivityDefinition)', 'Formal definition of task',
'instantiatesUri', 'Σ', '0..1', 'uri', 'Formal definition of task',
'basedOn', 'Σ', '0..*', 'Reference(Any)', 'Request fulfilled by this task',
'groupIdentifier', 'Σ', '0..1', 'Identifier', 'Requisition or grouper id',
'partOf', 'Σ', '0..*', 'Reference(Task)', 'Composite task',
'status', '?!Σ', '1..1', 'code', 'draft | requested | received | accepted | +TaskStatus (Required)',
'statusReason', 'Σ', '0..1', 'CodeableConcept', 'Reason for current status',
'businessStatus', 'Σ', '0..1', 'CodeableConcept', 'E.g. "Specimen collected", "IV prepped"',
'intent', 'Σ', '1..1', 'code', 'unknown | proposal | plan | order | original-order | reflex-order | filler-order | instance-order | optionTaskIntent (Required)',
'priority', '', '0..1', 'code', 'routine | urgent | asap | statRequest priority (Required)',
'code', 'Σ', '0..1', 'CodeableConcept', 'Task TypeTask Codes (Example)',
'description', 'Σ', '0..1', 'string', 'Human-readable explanation of task',
'focus', 'Σ', '0..1', 'Reference(Any)', 'What task is acting on',
'for', 'Σ', '0..1', 'Reference(Any)', 'Beneficiary of the Task',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Healthcare event during which this task originated',
'executionPeriod', 'Σ', '0..1', 'Period', 'Start and end time of execution',
'authoredOn', 'I', '0..1', 'dateTime', 'Task Creation Date',
'lastModified', 'ΣI', '0..1', 'dateTime', 'Task Last Modified Date',
'requester', 'Σ', '0..1', 'Reference(Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson)', 'Who is asking for task to be done',
'performerType', '', '0..*', 'CodeableConcept', 'Requested performerProcedure Performer Role Codes (Preferred)',
'owner', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam | HealthcareService | Patient | Device | RelatedPerson)', 'Responsible individual',
'location', 'Σ', '0..1', 'Reference(Location)', 'Where task occurs',
'reasonCode', '', '0..1', 'CodeableConcept', 'Why task is needed',
'reasonReference', '', '0..1', 'Reference(Any)', 'Why task is needed',
'insurance', '', '0..*', 'Reference(Coverage | ClaimResponse)', 'Associated insurance coverage',
'note', '', '0..*', 'Annotation', 'Comments made about the task',
'relevantHistory', '', '0..*', 'Reference(Provenance)', 'Key events in history of the Task',
'restriction', '', '0..1', 'BackboneElement', 'Constraints on fulfillment tasks',
'repetitions', '', '0..1', 'positiveInt', 'How many times to repeat',
'period', '', '0..1', 'Period', 'When fulfillment sought',
'recipient', '', '0..*', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson | Group | Organization)', 'For whom is fulfillment sought?',
'input', '', '0..*', 'BackboneElement', 'Information used to perform task',
'type', '', '1..1', 'CodeableConcept', 'Label for the input',
'value[x]', '', '1..1', '*', 'Content to use in performing the task',
'output', '', '0..*', 'BackboneElement', 'Information produced as part of task',
'type', '', '1..1', 'CodeableConcept', 'Label for output',
'value[x]', '', '1..1', '*', 'Result of output',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Task', '',
'Task.instantiatesCanonical', 'Added Element',
'Task.instantiatesUri', 'Added Element',
'Task.status', 'Change value set from http://hl7.org/fhir/ValueSet/task-status to http://hl7.org/fhir/ValueSet/task-status|4.0.1
        Now marked as Modifier',
'Task.intent', 'Change value set from http://hl7.org/fhir/ValueSet/request-intent to http://hl7.org/fhir/ValueSet/task-intent|4.0.1',
'Task.priority', 'Change value set from http://hl7.org/fhir/ValueSet/request-priority to http://hl7.org/fhir/ValueSet/request-priority|4.0.1',
'Task.encounter', 'Added Element',
'Task.requester', 'Type changed from BackboneElement to Reference(Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson)',
'Task.owner', 'Type Reference: Added Target Types PractitionerRole, CareTeam, HealthcareService',
'Task.location', 'Added Element',
'Task.reasonCode', 'Added Element',
'Task.reasonReference', 'Added Element',
'Task.insurance', 'Added Element',
'Task.restriction.recipient', 'Type Reference: Added Target Type PractitionerRole',
'Task.input.value[x]', 'Add Types canonical, url, uuid, ContactDetail, Contributor, DataRequirement, Expression, ParameterDefinition, RelatedArtifact, TriggerDefinition, UsageContext, Dosage',
'Task.output.value[x]', 'Add Types canonical, url, uuid, ContactDetail, Contributor, DataRequirement, Expression, ParameterDefinition, RelatedArtifact, TriggerDefinition, UsageContext, Dosage',
'Task.definition[x]', 'deleted',
'Task.context', 'deleted',
'Task.requester.agent', 'deleted',
'Task.requester.onBehalfOf', 'deleted',
'Task.reason', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Task', 'ITU', '', 'DomainResource', 'A task to be performed+ Rule: Last modified date must be greater than or equal to authored-on date.Elements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'Task Instance Identifier',
'instantiatesCanonical', 'Σ', '0..1', 'canonical(ActivityDefinition)', 'Formal definition of task',
'instantiatesUri', 'Σ', '0..1', 'uri', 'Formal definition of task',
'basedOn', 'Σ', '0..*', 'Reference(Any)', 'Request fulfilled by this task',
'groupIdentifier', 'Σ', '0..1', 'Identifier', 'Requisition or grouper id',
'partOf', 'Σ', '0..*', 'Reference(Task)', 'Composite task',
'status', '?!Σ', '1..1', 'code', 'draft | requested | received | accepted | +TaskStatus (Required)',
'statusReason', 'Σ', '0..1', 'CodeableConcept', 'Reason for current status',
'businessStatus', 'Σ', '0..1', 'CodeableConcept', 'E.g. "Specimen collected", "IV prepped"',
'intent', 'Σ', '1..1', 'code', 'unknown | proposal | plan | order | original-order | reflex-order | filler-order | instance-order | optionTaskIntent (Required)',
'priority', '', '0..1', 'code', 'routine | urgent | asap | statRequest priority (Required)',
'code', 'Σ', '0..1', 'CodeableConcept', 'Task TypeTask Codes (Example)',
'description', 'Σ', '0..1', 'string', 'Human-readable explanation of task',
'focus', 'Σ', '0..1', 'Reference(Any)', 'What task is acting on',
'for', 'Σ', '0..1', 'Reference(Any)', 'Beneficiary of the Task',
'encounter', 'Σ', '0..1', 'Reference(Encounter)', 'Healthcare event during which this task originated',
'executionPeriod', 'Σ', '0..1', 'Period', 'Start and end time of execution',
'authoredOn', 'I', '0..1', 'dateTime', 'Task Creation Date',
'lastModified', 'ΣI', '0..1', 'dateTime', 'Task Last Modified Date',
'requester', 'Σ', '0..1', 'Reference(Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson)', 'Who is asking for task to be done',
'performerType', '', '0..*', 'CodeableConcept', 'Requested performerProcedure Performer Role Codes (Preferred)',
'owner', 'Σ', '0..1', 'Reference(Practitioner | PractitionerRole | Organization | CareTeam | HealthcareService | Patient | Device | RelatedPerson)', 'Responsible individual',
'location', 'Σ', '0..1', 'Reference(Location)', 'Where task occurs',
'reasonCode', '', '0..1', 'CodeableConcept', 'Why task is needed',
'reasonReference', '', '0..1', 'Reference(Any)', 'Why task is needed',
'insurance', '', '0..*', 'Reference(Coverage | ClaimResponse)', 'Associated insurance coverage',
'note', '', '0..*', 'Annotation', 'Comments made about the task',
'relevantHistory', '', '0..*', 'Reference(Provenance)', 'Key events in history of the Task',
'restriction', '', '0..1', 'BackboneElement', 'Constraints on fulfillment tasks',
'repetitions', '', '0..1', 'positiveInt', 'How many times to repeat',
'period', '', '0..1', 'Period', 'When fulfillment sought',
'recipient', '', '0..*', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson | Group | Organization)', 'For whom is fulfillment sought?',
'input', '', '0..*', 'BackboneElement', 'Information used to perform task',
'type', '', '1..1', 'CodeableConcept', 'Label for the input',
'value[x]', '', '1..1', '*', 'Content to use in performing the task',
'output', '', '0..*', 'BackboneElement', 'Information produced as part of task',
'type', '', '1..1', 'CodeableConcept', 'Label for output',
'value[x]', '', '1..1', '*', 'Result of output',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Task', '',
'Task.instantiatesCanonical', 'Added Element',
'Task.instantiatesUri', 'Added Element',
'Task.status', 'Change value set from http://hl7.org/fhir/ValueSet/task-status to http://hl7.org/fhir/ValueSet/task-status|4.0.1
        Now marked as Modifier',
'Task.intent', 'Change value set from http://hl7.org/fhir/ValueSet/request-intent to http://hl7.org/fhir/ValueSet/task-intent|4.0.1',
'Task.priority', 'Change value set from http://hl7.org/fhir/ValueSet/request-priority to http://hl7.org/fhir/ValueSet/request-priority|4.0.1',
'Task.encounter', 'Added Element',
'Task.requester', 'Type changed from BackboneElement to Reference(Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson)',
'Task.owner', 'Type Reference: Added Target Types PractitionerRole, CareTeam, HealthcareService',
'Task.location', 'Added Element',
'Task.reasonCode', 'Added Element',
'Task.reasonReference', 'Added Element',
'Task.insurance', 'Added Element',
'Task.restriction.recipient', 'Type Reference: Added Target Type PractitionerRole',
'Task.input.value[x]', 'Add Types canonical, url, uuid, ContactDetail, Contributor, DataRequirement, Expression, ParameterDefinition, RelatedArtifact, TriggerDefinition, UsageContext, Dosage',
'Task.output.value[x]', 'Add Types canonical, url, uuid, ContactDetail, Contributor, DataRequirement, Expression, ParameterDefinition, RelatedArtifact, TriggerDefinition, UsageContext, Dosage',
'Task.definition[x]', 'deleted',
'Task.context', 'deleted',
'Task.requester.agent', 'deleted',
'Task.requester.onBehalfOf', 'deleted',
'Task.reason', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Task.status', 'The current status of the task.', 'Required', 'TaskStatus',
'Task.statusReason', 'Codes to identify the reason for current status.  These will typically be specific to a particular workflow.', 'Unknown', 'No details provided yet',
'Task.businessStatus', 'The domain-specific business-contextual sub-state of the task.  For example: "Blood drawn", "IV inserted", "Awaiting physician signature", etc.', 'Unknown', 'No details provided yet',
'Task.intent', 'Distinguishes whether the task is a proposal, plan or full order.', 'Required', 'TaskIntent',
'Task.priority', 'The task's priority.', 'Required', 'RequestPriority',
'Task.code', 'Codes to identify what the task involves.  These will typically be specific to a particular workflow.', 'Example', 'TaskCode',
'Task.performerType', 'The type(s) of task performers allowed.', 'Preferred', 'ProcedurePerformerRoleCodes',
'Task.reasonCode', 'Indicates why the task is needed.  E.g. Suspended because patient admitted to hospital.', 'Unknown', 'No details provided yet',
'Task.input.type', 'Codes to identify types of input parameters.  These will typically be specific to a particular workflow.  E.g. "Comparison source", "Applicable consent", "Concomitent Medications", etc.', 'Unknown', 'No details provided yet',
'Task.output.type', 'Codes to identify types of input parameters.  These will typically be specific to a particular workflow.  E.g. "Identified issues", "Preliminary results", "Filler order", "Final results", etc.', 'Unknown', 'No details provided yet',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'inv-1', 'Rule', '(base)', 'Last modified date must be greater than or equal to authored-on date.', 'lastModified.exists().not() or authoredOn.exists().not() or lastModified >= authoredOn',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'authored-on', 'date', 'Search by creation date', 'Task.authoredOn', '',
'based-on', 'reference', 'Search by requests this task is based on', 'Task.basedOn(Any)', '',
'business-status', 'token', 'Search by business status', 'Task.businessStatus', '',
'code', 'token', 'Search by task code', 'Task.code', '',
'encounter', 'reference', 'Search by encounter', 'Task.encounter(Encounter)', '',
'focus', 'reference', 'Search by task focus', 'Task.focus(Any)', '',
'group-identifier', 'token', 'Search by group identifier', 'Task.groupIdentifier', '',
'identifier', 'token', 'Search for a task instance by its business identifier', 'Task.identifier', '',
'intent', 'token', 'Search by task intent', 'Task.intent', '',
'modified', 'date', 'Search by last modification date', 'Task.lastModified', '',
'owner', 'reference', 'Search by task owner', 'Task.owner(Practitioner, Organization, CareTeam, Device, Patient, HealthcareService, PractitionerRole, RelatedPerson)', '',
'part-of', 'reference', 'Search by task this task is part of', 'Task.partOf(Task)', '',
'patient', 'reference', 'Search by patient', 'Task.for.where(resolve() is Patient)(Patient)', '',
'performer', 'token', 'Search by recommended type of performer (e.g., Requester, Performer, Scheduler).', 'Task.performerType', '',
'period', 'date', 'Search by period Task is/was underway', 'Task.executionPeriod', '',
'priority', 'token', 'Search by task priority', 'Task.priority', '',
'requester', 'reference', 'Search by task requester', 'Task.requester(Practitioner, Organization, Device, Patient, PractitionerRole, RelatedPerson)', '',
'status', 'token', 'Search by task status', 'Task.status', '',
'subject', 'reference', 'Search by subject', 'Task.for(Any)', '',
)


