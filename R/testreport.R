df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'FHIR Infrastructure  Work Group', 'Maturity Level: 0', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'TestReport', 'TU', '', 'DomainResource', 'Describes the results of a TestScript executionElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..1', 'Identifier', 'External identifier',
'name', 'Σ', '0..1', 'string', 'Informal name of the executed TestScript',
'status', '?!Σ', '1..1', 'code', 'completed | in-progress | waiting | stopped | entered-in-errorTestReportStatus (Required)',
'testScript', 'Σ', '1..1', 'Reference(TestScript)', 'Reference to the  version-specific TestScript that was executed to produce this TestReport',
'result', 'Σ', '1..1', 'code', 'pass | fail | pendingTestReportResult (Required)',
'score', 'Σ', '0..1', 'decimal', 'The final score (percentage of tests passed) resulting from the execution of the TestScript',
'tester', 'Σ', '0..1', 'string', 'Name of the tester producing this report (Organization or individual)',
'issued', 'Σ', '0..1', 'dateTime', 'When the TestScript was executed and this TestReport was generated',
'participant', '', '0..*', 'BackboneElement', 'A participant in the test execution, either the execution engine, a client, or a server',
'type', '', '1..1', 'code', 'test-engine | client | serverTestReportParticipantType (Required)',
'uri', '', '1..1', 'uri', 'The uri of the participant. An absolute URL is preferred',
'display', '', '0..1', 'string', 'The display name of the participant',
'setup', '', '0..1', 'BackboneElement', 'The results of the series of required setup operations before the tests were executed',
'action', 'I', '1..*', 'BackboneElement', 'A setup operation or assert that was executed+ Rule: Setup action SHALL contain either an operation or assert but not both.',
'operation', '', '0..1', 'BackboneElement', 'The operation to perform',
'result', '', '1..1', 'code', 'pass | skip | fail | warning | errorTestReportActionResult (Required)',
'message', '', '0..1', 'markdown', 'A message associated with the result',
'detail', '', '0..1', 'uri', 'A link to further details on the result',
'assert', '', '0..1', 'BackboneElement', 'The assertion to perform',
'result', '', '1..1', 'code', 'pass | skip | fail | warning | errorTestReportActionResult (Required)',
'message', '', '0..1', 'markdown', 'A message associated with the result',
'detail', '', '0..1', 'string', 'A link to further details on the result',
'test', '', '0..*', 'BackboneElement', 'A test executed from the test script',
'name', '', '0..1', 'string', 'Tracking/logging name of this test',
'description', '', '0..1', 'string', 'Tracking/reporting short description of the test',
'action', 'I', '1..*', 'BackboneElement', 'A test operation or assert that was performed+ Rule: Test action SHALL contain either an operation or assert but not both.',
'operation', '', '0..1', 'see operation', 'The operation performed',
'assert', '', '0..1', 'see assert', 'The assertion performed',
'teardown', '', '0..1', 'BackboneElement', 'The results of running the series of required clean up steps',
'action', '', '1..*', 'BackboneElement', 'One or more teardown operations performed',
'operation', '', '1..1', 'see operation', 'The teardown operation performed',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'TestReport', '',
'TestReport.status', 'Change value set from http://hl7.org/fhir/ValueSet/report-status-codes to http://hl7.org/fhir/ValueSet/report-status-codes|4.0.1',
'TestReport.result', 'Change value set from http://hl7.org/fhir/ValueSet/report-result-codes to http://hl7.org/fhir/ValueSet/report-result-codes|4.0.1',
'TestReport.participant.type', 'Change value set from http://hl7.org/fhir/ValueSet/report-participant-type to http://hl7.org/fhir/ValueSet/report-participant-type|4.0.1',
'TestReport.setup.action.operation.result', 'Change value set from http://hl7.org/fhir/ValueSet/report-action-result-codes to http://hl7.org/fhir/ValueSet/report-action-result-codes|4.0.1',
'TestReport.setup.action.assert.result', 'Change value set from http://hl7.org/fhir/ValueSet/report-action-result-codes to http://hl7.org/fhir/ValueSet/report-action-result-codes|4.0.1',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'TestReport', 'TU', '', 'DomainResource', 'Describes the results of a TestScript executionElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..1', 'Identifier', 'External identifier',
'name', 'Σ', '0..1', 'string', 'Informal name of the executed TestScript',
'status', '?!Σ', '1..1', 'code', 'completed | in-progress | waiting | stopped | entered-in-errorTestReportStatus (Required)',
'testScript', 'Σ', '1..1', 'Reference(TestScript)', 'Reference to the  version-specific TestScript that was executed to produce this TestReport',
'result', 'Σ', '1..1', 'code', 'pass | fail | pendingTestReportResult (Required)',
'score', 'Σ', '0..1', 'decimal', 'The final score (percentage of tests passed) resulting from the execution of the TestScript',
'tester', 'Σ', '0..1', 'string', 'Name of the tester producing this report (Organization or individual)',
'issued', 'Σ', '0..1', 'dateTime', 'When the TestScript was executed and this TestReport was generated',
'participant', '', '0..*', 'BackboneElement', 'A participant in the test execution, either the execution engine, a client, or a server',
'type', '', '1..1', 'code', 'test-engine | client | serverTestReportParticipantType (Required)',
'uri', '', '1..1', 'uri', 'The uri of the participant. An absolute URL is preferred',
'display', '', '0..1', 'string', 'The display name of the participant',
'setup', '', '0..1', 'BackboneElement', 'The results of the series of required setup operations before the tests were executed',
'action', 'I', '1..*', 'BackboneElement', 'A setup operation or assert that was executed+ Rule: Setup action SHALL contain either an operation or assert but not both.',
'operation', '', '0..1', 'BackboneElement', 'The operation to perform',
'result', '', '1..1', 'code', 'pass | skip | fail | warning | errorTestReportActionResult (Required)',
'message', '', '0..1', 'markdown', 'A message associated with the result',
'detail', '', '0..1', 'uri', 'A link to further details on the result',
'assert', '', '0..1', 'BackboneElement', 'The assertion to perform',
'result', '', '1..1', 'code', 'pass | skip | fail | warning | errorTestReportActionResult (Required)',
'message', '', '0..1', 'markdown', 'A message associated with the result',
'detail', '', '0..1', 'string', 'A link to further details on the result',
'test', '', '0..*', 'BackboneElement', 'A test executed from the test script',
'name', '', '0..1', 'string', 'Tracking/logging name of this test',
'description', '', '0..1', 'string', 'Tracking/reporting short description of the test',
'action', 'I', '1..*', 'BackboneElement', 'A test operation or assert that was performed+ Rule: Test action SHALL contain either an operation or assert but not both.',
'operation', '', '0..1', 'see operation', 'The operation performed',
'assert', '', '0..1', 'see assert', 'The assertion performed',
'teardown', '', '0..1', 'BackboneElement', 'The results of running the series of required clean up steps',
'action', '', '1..*', 'BackboneElement', 'One or more teardown operations performed',
'operation', '', '1..1', 'see operation', 'The teardown operation performed',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'TestReport', '',
'TestReport.status', 'Change value set from http://hl7.org/fhir/ValueSet/report-status-codes to http://hl7.org/fhir/ValueSet/report-status-codes|4.0.1',
'TestReport.result', 'Change value set from http://hl7.org/fhir/ValueSet/report-result-codes to http://hl7.org/fhir/ValueSet/report-result-codes|4.0.1',
'TestReport.participant.type', 'Change value set from http://hl7.org/fhir/ValueSet/report-participant-type to http://hl7.org/fhir/ValueSet/report-participant-type|4.0.1',
'TestReport.setup.action.operation.result', 'Change value set from http://hl7.org/fhir/ValueSet/report-action-result-codes to http://hl7.org/fhir/ValueSet/report-action-result-codes|4.0.1',
'TestReport.setup.action.assert.result', 'Change value set from http://hl7.org/fhir/ValueSet/report-action-result-codes to http://hl7.org/fhir/ValueSet/report-action-result-codes|4.0.1',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'TestReport.status', 'The current status of the test report.', 'Required', 'TestReportStatus',
'TestReport.result', 'The reported execution result.', 'Required', 'TestReportResult',
'TestReport.participant.type', 'The type of participant.', 'Required', 'TestReportParticipantType',
'TestReport.setup.action.operation.resultTestReport.setup.action.assert.result', 'The results of executing an action.', 'Required', 'TestReportActionResult',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'id', 'Level', 'Location', 'Description', 'Expression',
'inv-1', 'Rule', 'TestReport.setup.action', 'Setup action SHALL contain either an operation or assert but not both.', 'operation.exists() xor assert.exists()',
'inv-2', 'Rule', 'TestReport.test.action', 'Test action SHALL contain either an operation or assert but not both.', 'operation.exists() xor assert.exists()',
)


df8 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'identifier', 'token', 'An external identifier for the test report', 'TestReport.identifier', '',
'issued', 'date', 'The test report generation date', 'TestReport.issued', '',
'participant', 'uri', 'The reference to a participant in the test execution', 'TestReport.participant.uri', '',
'result', 'token', 'The result disposition of the test execution', 'TestReport.result', '',
'tester', 'string', 'The name of the testing organization', 'TestReport.tester', '',
'testscript', 'reference', 'The test script executed to produce this report', 'TestReport.testScript(TestScript)', '',
)


