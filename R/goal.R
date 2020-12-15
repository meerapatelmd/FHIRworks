df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Care  Work Group', 'Maturity Level: 2', 'Trial Use', 'Security Category: Patient', 'Compartments: Patient',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Goal', 'TU', '', 'DomainResource', 'Describes the intended objective(s) for a patient, group or organizationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'External Ids for this goal',
'lifecycleStatus', '?!Σ', '1..1', 'code', 'proposed | planned | accepted | active | on-hold | completed | cancelled | entered-in-error | rejectedGoalLifecycleStatus (Required)',
'achievementStatus', 'Σ', '0..1', 'CodeableConcept', 'in-progress | improving | worsening | no-change | achieved | sustaining | not-achieved | no-progress | not-attainableGoal achievement status (Preferred)',
'category', 'Σ', '0..*', 'CodeableConcept', 'E.g. Treatment, dietary, behavioral, etc.Goal category (Example)',
'priority', 'Σ', '0..1', 'CodeableConcept', 'high-priority | medium-priority | low-priorityGoal priority (Preferred)',
'description', 'Σ', '1..1', 'CodeableConcept', 'Code or text describing goalSNOMED CT Clinical Findings (Example)',
'subject', 'Σ', '1..1', 'Reference(Patient | Group | Organization)', 'Who this goal is intended for',
'start[x]', 'Σ', '0..1', '', 'When goal pursuit beginsGoal start event (Example)',
'startDate', '', '', 'date', '',
'startCodeableConcept', '', '', 'CodeableConcept', '',
'target', 'I', '0..*', 'BackboneElement', 'Target outcome for the goal+ Rule: Goal.target.measure is required if Goal.target.detail is populated',
'measure', 'ΣI', '0..1', 'CodeableConcept', 'The parameter whose value is being trackedLOINC Codes (Example)',
'detail[x]', 'ΣI', '0..1', '', 'The target value to be achieved',
'detailQuantity', '', '', 'Quantity', '',
'detailRange', '', '', 'Range', '',
'detailCodeableConcept', '', '', 'CodeableConcept', '',
'detailString', '', '', 'string', '',
'detailBoolean', '', '', 'boolean', '',
'detailInteger', '', '', 'integer', '',
'detailRatio', '', '', 'Ratio', '',
'due[x]', 'Σ', '0..1', '', 'Reach goal on or before',
'dueDate', '', '', 'date', '',
'dueDuration', '', '', 'Duration', '',
'statusDate', 'Σ', '0..1', 'date', 'When goal status took effect',
'statusReason', '', '0..1', 'string', 'Reason for current status',
'expressedBy', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson)', 'Who's responsible for creating Goal?',
'addresses', '', '0..*', 'Reference(Condition | Observation | MedicationStatement | NutritionOrder | ServiceRequest | RiskAssessment)', 'Issues addressed by this goal',
'note', '', '0..*', 'Annotation', 'Comments about the goal',
'outcomeCode', '', '0..*', 'CodeableConcept', 'What result was achieved regarding the goal?SNOMED CT Clinical Findings (Example)',
'outcomeReference', '', '0..*', 'Reference(Observation)', 'Observation that resulted from goal',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Goal', '',
'Goal.lifecycleStatus', 'Added Mandatory Element',
'Goal.achievementStatus', 'Added Element',
'Goal.subject', 'Min Cardinality changed from 0 to 1',
'Goal.target', 'Max Cardinality changed from 1 to *',
'Goal.target.detail[x]', 'Add Types string, boolean, integer, Ratio',
'Goal.expressedBy', 'Type Reference: Added Target Type PractitionerRole',
'Goal.addresses', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Type ProcedureRequest',
'Goal.status', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Goal', 'TU', '', 'DomainResource', 'Describes the intended objective(s) for a patient, group or organizationElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', '', '0..*', 'Identifier', 'External Ids for this goal',
'lifecycleStatus', '?!Σ', '1..1', 'code', 'proposed | planned | accepted | active | on-hold | completed | cancelled | entered-in-error | rejectedGoalLifecycleStatus (Required)',
'achievementStatus', 'Σ', '0..1', 'CodeableConcept', 'in-progress | improving | worsening | no-change | achieved | sustaining | not-achieved | no-progress | not-attainableGoal achievement status (Preferred)',
'category', 'Σ', '0..*', 'CodeableConcept', 'E.g. Treatment, dietary, behavioral, etc.Goal category (Example)',
'priority', 'Σ', '0..1', 'CodeableConcept', 'high-priority | medium-priority | low-priorityGoal priority (Preferred)',
'description', 'Σ', '1..1', 'CodeableConcept', 'Code or text describing goalSNOMED CT Clinical Findings (Example)',
'subject', 'Σ', '1..1', 'Reference(Patient | Group | Organization)', 'Who this goal is intended for',
'start[x]', 'Σ', '0..1', '', 'When goal pursuit beginsGoal start event (Example)',
'startDate', '', '', 'date', '',
'startCodeableConcept', '', '', 'CodeableConcept', '',
'target', 'I', '0..*', 'BackboneElement', 'Target outcome for the goal+ Rule: Goal.target.measure is required if Goal.target.detail is populated',
'measure', 'ΣI', '0..1', 'CodeableConcept', 'The parameter whose value is being trackedLOINC Codes (Example)',
'detail[x]', 'ΣI', '0..1', '', 'The target value to be achieved',
'detailQuantity', '', '', 'Quantity', '',
'detailRange', '', '', 'Range', '',
'detailCodeableConcept', '', '', 'CodeableConcept', '',
'detailString', '', '', 'string', '',
'detailBoolean', '', '', 'boolean', '',
'detailInteger', '', '', 'integer', '',
'detailRatio', '', '', 'Ratio', '',
'due[x]', 'Σ', '0..1', '', 'Reach goal on or before',
'dueDate', '', '', 'date', '',
'dueDuration', '', '', 'Duration', '',
'statusDate', 'Σ', '0..1', 'date', 'When goal status took effect',
'statusReason', '', '0..1', 'string', 'Reason for current status',
'expressedBy', 'Σ', '0..1', 'Reference(Patient | Practitioner | PractitionerRole | RelatedPerson)', 'Who's responsible for creating Goal?',
'addresses', '', '0..*', 'Reference(Condition | Observation | MedicationStatement | NutritionOrder | ServiceRequest | RiskAssessment)', 'Issues addressed by this goal',
'note', '', '0..*', 'Annotation', 'Comments about the goal',
'outcomeCode', '', '0..*', 'CodeableConcept', 'What result was achieved regarding the goal?SNOMED CT Clinical Findings (Example)',
'outcomeReference', '', '0..*', 'Reference(Observation)', 'Observation that resulted from goal',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Goal', '',
'Goal.lifecycleStatus', 'Added Mandatory Element',
'Goal.achievementStatus', 'Added Element',
'Goal.subject', 'Min Cardinality changed from 0 to 1',
'Goal.target', 'Max Cardinality changed from 1 to *',
'Goal.target.detail[x]', 'Add Types string, boolean, integer, Ratio',
'Goal.expressedBy', 'Type Reference: Added Target Type PractitionerRole',
'Goal.addresses', 'Type Reference: Added Target Type ServiceRequest
        Type Reference: Removed Target Type ProcedureRequest',
'Goal.status', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Goal.lifecycleStatus', 'Codes that reflect the current state of a goal and whether the goal is still being targeted.', 'Required', 'GoalLifecycleStatus',
'Goal.achievementStatus', 'Indicates the progression, or lack thereof, towards the goal against the target.', 'Preferred', 'GoalAchievementStatus',
'Goal.category', 'Codes for grouping and sorting goals.', 'Example', 'GoalCategory',
'Goal.priority', 'The level of importance associated with a goal.', 'Preferred', 'GoalPriority',
'Goal.description', 'Codes providing the details of a particular goal.  This will generally be system or implementation guide-specific.  In many systems, only the text element will be used.', 'Example', 'SNOMEDCTClinicalFindings',
'Goal.start[x]', 'Codes describing events that can trigger the initiation of a goal.', 'Example', 'GoalStartEvent',
'Goal.target.measure', 'Codes to identify the value being tracked, e.g. body weight, blood pressure, or hemoglobin A1c level.', 'Example', 'LOINCCodes',
'Goal.target.detail[x]', 'Codes to identify the target value of the focus to be achieved to signify the fulfillment of the goal.', 'Unknown', 'No details provided yet',
'Goal.outcomeCode', 'The result of the goal; e.g. "25% increase in shoulder mobility", "Anxiety reduced to moderate levels".  "15 kg weight loss sustained over 6 months".', 'Example', 'SNOMEDCTClinicalFindings',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'gol-1', 'Rule', 'Goal.target', 'Goal.target.measure is required if Goal.target.detail is populated', '(detail.exists() and measure.exists()) or detail.exists().not()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'achievement-status', 'token', 'in-progress | improving | worsening | no-change | achieved | sustaining | not-achieved | no-progress | not-attainable', 'Goal.achievementStatus', '',
'category', 'token', 'E.g. Treatment, dietary, behavioral, etc.', 'Goal.category', '',
'identifier', 'token', 'External Ids for this goal', 'Goal.identifier', '30 Resources',
'lifecycle-status', 'token', 'proposed | planned | accepted | active | on-hold | completed | cancelled | entered-in-error | rejected', 'Goal.lifecycleStatus', '',
'patient', 'reference', 'Who this goal is intended for', 'Goal.subject.where(resolve() is Patient)(Patient)', '33 Resources',
'start-date', 'date', 'When goal pursuit begins', '(Goal.start as date)', '',
'subject', 'reference', 'Who this goal is intended for', 'Goal.subject(Group, Organization, Patient)', '',
'target-date', 'date', 'Reach goal on or before', '(Goal.target.due as date)', '',
)


