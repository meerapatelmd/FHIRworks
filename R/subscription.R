df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'FHIR Infrastructure  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Subscription', 'ΣTU', '', 'DomainResource', 'Server push subscription criteriaElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'status', '?!Σ', '1..1', 'code', 'requested | active | error | offSubscriptionStatus (Required)',
'contact', 'Σ', '0..*', 'ContactPoint', 'Contact details for source (e.g. troubleshooting)',
'end', 'Σ', '0..1', 'instant', 'When to automatically delete the subscription',
'reason', 'Σ', '1..1', 'string', 'Description of why this subscription was created',
'criteria', 'Σ', '1..1', 'string', 'Rule for server push',
'error', 'Σ', '0..1', 'string', 'Latest error note',
'channel', 'Σ', '1..1', 'BackboneElement', 'The channel on which to report matches to the criteria',
'type', 'Σ', '1..1', 'code', 'rest-hook | websocket | email | sms | messageSubscriptionChannelType (Required)',
'endpoint', 'Σ', '0..1', 'url', 'Where the channel points to',
'payload', 'Σ', '0..1', 'code', 'MIME type to send, or omit for no payloadMimeType (Required)',
'header', 'Σ', '0..*', 'string', 'Usage depends on the channel type',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Subscription', '',
'Subscription.status', 'Change value set from http://hl7.org/fhir/ValueSet/subscription-status to http://hl7.org/fhir/ValueSet/subscription-status|4.0.1',
'Subscription.channel.type', 'Change value set from http://hl7.org/fhir/ValueSet/subscription-channel-type to http://hl7.org/fhir/ValueSet/subscription-channel-type|4.0.1',
'Subscription.channel.endpoint', 'Type changed from uri to url',
'Subscription.channel.payload', 'Type changed from string to code
        
Add Binding http://hl7.org/fhir/ValueSet/mimetypes|4.0.1 (required)',
'Subscription.tag', 'deleted',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Subscription', 'ΣTU', '', 'DomainResource', 'Server push subscription criteriaElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'status', '?!Σ', '1..1', 'code', 'requested | active | error | offSubscriptionStatus (Required)',
'contact', 'Σ', '0..*', 'ContactPoint', 'Contact details for source (e.g. troubleshooting)',
'end', 'Σ', '0..1', 'instant', 'When to automatically delete the subscription',
'reason', 'Σ', '1..1', 'string', 'Description of why this subscription was created',
'criteria', 'Σ', '1..1', 'string', 'Rule for server push',
'error', 'Σ', '0..1', 'string', 'Latest error note',
'channel', 'Σ', '1..1', 'BackboneElement', 'The channel on which to report matches to the criteria',
'type', 'Σ', '1..1', 'code', 'rest-hook | websocket | email | sms | messageSubscriptionChannelType (Required)',
'endpoint', 'Σ', '0..1', 'url', 'Where the channel points to',
'payload', 'Σ', '0..1', 'code', 'MIME type to send, or omit for no payloadMimeType (Required)',
'header', 'Σ', '0..*', 'string', 'Usage depends on the channel type',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Subscription', '',
'Subscription.status', 'Change value set from http://hl7.org/fhir/ValueSet/subscription-status to http://hl7.org/fhir/ValueSet/subscription-status|4.0.1',
'Subscription.channel.type', 'Change value set from http://hl7.org/fhir/ValueSet/subscription-channel-type to http://hl7.org/fhir/ValueSet/subscription-channel-type|4.0.1',
'Subscription.channel.endpoint', 'Type changed from uri to url',
'Subscription.channel.payload', 'Type changed from string to code
        
Add Binding http://hl7.org/fhir/ValueSet/mimetypes|4.0.1 (required)',
'Subscription.tag', 'deleted',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Subscription.status', 'The status of a subscription.', 'Required', 'SubscriptionStatus',
'Subscription.channel.type', 'The type of method used to execute a subscription.', 'Required', 'SubscriptionChannelType',
'Subscription.channel.payload', 'The mime type of an attachment. Any valid mime type is allowed.', 'Required', 'Mime Types',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'contact', 'token', 'Contact details for the subscription', 'Subscription.contact', '',
'criteria', 'string', 'The search rules used to determine when to send a notification', 'Subscription.criteria', '',
'payload', 'token', 'The mime-type of the notification payload', 'Subscription.channel.payload', '',
'status', 'token', 'The current state of the subscription', 'Subscription.status', '',
'type', 'token', 'The type of channel for the sent notifications', 'Subscription.channel.type', '',
'url', 'uri', 'The uri that will receive the notifications', 'Subscription.channel.endpoint', '',
)


