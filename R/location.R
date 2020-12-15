df1 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Patient Administration  Work Group', 'Maturity Level: 3', 'Trial Use', 'Security Category: Business', 'Compartments: Not linked to any defined compartments',
)


df2 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Location', 'TU', '', 'DomainResource', 'Details and position information for a physical placeElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique code or number identifying the location to its users',
'status', '?!Σ', '0..1', 'code', 'active | suspended | inactiveLocationStatus (Required)',
'operationalStatus', 'Σ', '0..1', 'Coding', 'The operational status of the location (typically only for a bed/room)v2 BED STATUS (Preferred)',
'name', 'Σ', '0..1', 'string', 'Name of the location as used by humans',
'alias', '', '0..*', 'string', 'A list of alternate names that the location is known as, or was known as, in the past',
'description', 'Σ', '0..1', 'string', 'Additional details about the location that could be displayed as further information to identify the location beyond its name',
'mode', 'Σ', '0..1', 'code', 'instance | kindLocationMode (Required)',
'type', 'Σ', '0..*', 'CodeableConcept', 'Type of function performedV3 Value SetServiceDeliveryLocationRoleType (Extensible)',
'telecom', '', '0..*', 'ContactPoint', 'Contact details of the location',
'address', '', '0..1', 'Address', 'Physical location',
'physicalType', 'Σ', '0..1', 'CodeableConcept', 'Physical form of the locationLocation type (Example)',
'position', '', '0..1', 'BackboneElement', 'The absolute geographic location',
'longitude', '', '1..1', 'decimal', 'Longitude with WGS84 datum',
'latitude', '', '1..1', 'decimal', 'Latitude with WGS84 datum',
'altitude', '', '0..1', 'decimal', 'Altitude with WGS84 datum',
'managingOrganization', 'Σ', '0..1', 'Reference(Organization)', 'Organization responsible for provisioning and upkeep',
'partOf', '', '0..1', 'Reference(Location)', 'Another Location this one is physically a part of',
'hoursOfOperation', '', '0..*', 'BackboneElement', 'What days/times during a week is this location usually open',
'daysOfWeek', '', '0..*', 'code', 'mon | tue | wed | thu | fri | sat | sunDaysOfWeek (Required)',
'allDay', '', '0..1', 'boolean', 'The Location is open all day',
'openingTime', '', '0..1', 'time', 'Time that the Location opens',
'closingTime', '', '0..1', 'time', 'Time that the Location closes',
'availabilityExceptions', '', '0..1', 'string', 'Description of availability exceptions',
'endpoint', '', '0..*', 'Reference(Endpoint)', 'Technical endpoints providing access to services operated for the location',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df3 <- 
tibble::tribble(
~`X1`,~`X2`,
'Location', '',
'Location.status', 'Change value set from http://hl7.org/fhir/ValueSet/location-status to http://hl7.org/fhir/ValueSet/location-status|4.0.1',
'Location.mode', 'Change value set from http://hl7.org/fhir/ValueSet/location-mode to http://hl7.org/fhir/ValueSet/location-mode|4.0.1
        No longer marked as Modifier',
'Location.type', 'Max Cardinality changed from 1 to *',
'Location.hoursOfOperation', 'Added Element',
'Location.hoursOfOperation.daysOfWeek', 'Added Element',
'Location.hoursOfOperation.allDay', 'Added Element',
'Location.hoursOfOperation.openingTime', 'Added Element',
'Location.hoursOfOperation.closingTime', 'Added Element',
'Location.availabilityExceptions', 'Added Element',
)


df4 <- 
tibble::tribble(
~`Name`,~`Flags`,~`Card.`,~`Type`,~`Description & Constraints`,
'Location', 'TU', '', 'DomainResource', 'Details and position information for a physical placeElements defined in Ancestors: id, meta, implicitRules, language, text, contained, extension, modifierExtension',
'identifier', 'Σ', '0..*', 'Identifier', 'Unique code or number identifying the location to its users',
'status', '?!Σ', '0..1', 'code', 'active | suspended | inactiveLocationStatus (Required)',
'operationalStatus', 'Σ', '0..1', 'Coding', 'The operational status of the location (typically only for a bed/room)v2 BED STATUS (Preferred)',
'name', 'Σ', '0..1', 'string', 'Name of the location as used by humans',
'alias', '', '0..*', 'string', 'A list of alternate names that the location is known as, or was known as, in the past',
'description', 'Σ', '0..1', 'string', 'Additional details about the location that could be displayed as further information to identify the location beyond its name',
'mode', 'Σ', '0..1', 'code', 'instance | kindLocationMode (Required)',
'type', 'Σ', '0..*', 'CodeableConcept', 'Type of function performedV3 Value SetServiceDeliveryLocationRoleType (Extensible)',
'telecom', '', '0..*', 'ContactPoint', 'Contact details of the location',
'address', '', '0..1', 'Address', 'Physical location',
'physicalType', 'Σ', '0..1', 'CodeableConcept', 'Physical form of the locationLocation type (Example)',
'position', '', '0..1', 'BackboneElement', 'The absolute geographic location',
'longitude', '', '1..1', 'decimal', 'Longitude with WGS84 datum',
'latitude', '', '1..1', 'decimal', 'Latitude with WGS84 datum',
'altitude', '', '0..1', 'decimal', 'Altitude with WGS84 datum',
'managingOrganization', 'Σ', '0..1', 'Reference(Organization)', 'Organization responsible for provisioning and upkeep',
'partOf', '', '0..1', 'Reference(Location)', 'Another Location this one is physically a part of',
'hoursOfOperation', '', '0..*', 'BackboneElement', 'What days/times during a week is this location usually open',
'daysOfWeek', '', '0..*', 'code', 'mon | tue | wed | thu | fri | sat | sunDaysOfWeek (Required)',
'allDay', '', '0..1', 'boolean', 'The Location is open all day',
'openingTime', '', '0..1', 'time', 'Time that the Location opens',
'closingTime', '', '0..1', 'time', 'Time that the Location closes',
'availabilityExceptions', '', '0..1', 'string', 'Description of availability exceptions',
'endpoint', '', '0..*', 'Reference(Endpoint)', 'Technical endpoints providing access to services operated for the location',
'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format', 'Documentation for this format',
)


df5 <- 
tibble::tribble(
~`X1`,~`X2`,
'Location', '',
'Location.status', 'Change value set from http://hl7.org/fhir/ValueSet/location-status to http://hl7.org/fhir/ValueSet/location-status|4.0.1',
'Location.mode', 'Change value set from http://hl7.org/fhir/ValueSet/location-mode to http://hl7.org/fhir/ValueSet/location-mode|4.0.1
        No longer marked as Modifier',
'Location.type', 'Max Cardinality changed from 1 to *',
'Location.hoursOfOperation', 'Added Element',
'Location.hoursOfOperation.daysOfWeek', 'Added Element',
'Location.hoursOfOperation.allDay', 'Added Element',
'Location.hoursOfOperation.openingTime', 'Added Element',
'Location.hoursOfOperation.closingTime', 'Added Element',
'Location.availabilityExceptions', 'Added Element',
)


df6 <- 
tibble::tribble(
~`Path`,~`Definition`,~`Type`,~`Reference`,
'Location.status', 'Indicates whether the location is still in use.', 'Required', 'LocationStatus',
'Location.operationalStatus', 'The operational status if the location (where typically a bed/room).', 'Preferred', 'v2.0116',
'Location.mode', 'Indicates whether a resource instance represents a specific location or a class of locations.', 'Required', 'LocationMode',
'Location.type', 'Indicates the type of function performed at the location.', 'Extensible', 'v3.ServiceDeliveryLocationRoleType',
'Location.physicalType', 'Physical form of the location.', 'Example', 'LocationType',
'Location.hoursOfOperation.daysOfWeek', 'The days of the week.', 'Required', 'DaysOfWeek',
)


df7 <- 
tibble::tribble(
~`X1`,~`X2`,~`X3`,~`X4`,~`X5`,
'Name', 'Type', 'Description', 'Expression', 'In Common',
'address', 'string', 'A (part of the) address of the location', 'Location.address', '',
'address-city', 'string', 'A city specified in an address', 'Location.address.city', '',
'address-country', 'string', 'A country specified in an address', 'Location.address.country', '',
'address-postalcode', 'string', 'A postal code specified in an address', 'Location.address.postalCode', '',
'address-state', 'string', 'A state specified in an address', 'Location.address.state', '',
'address-use', 'token', 'A use code specified in an address', 'Location.address.use', '',
'endpoint', 'reference', 'Technical endpoints providing access to services operated for the location', 'Location.endpoint(Endpoint)', '',
'identifier', 'token', 'An identifier for the location', 'Location.identifier', '',
'name', 'string', 'A portion of the location's name or alias', 'Location.name | Location.alias', '',
'near', 'special', 'Search for locations where the location.position is near to, or within a specified distance of, the provided coordinates expressed as [latitude]|[longitude]|[distance]|[units] (using the WGS84 datum, see notes).
If the units are omitted, then kms should be assumed. If the distance is omitted, then the server can use its own discretion as to what distances should be considered near (and units are irrelevant)

Servers may search using various techniques that might have differing accuracies, depending on implementation efficiency.

Requires the near-distance parameter to be provided also', 'Location.position', '',
'operational-status', 'token', 'Searches for locations (typically bed/room) that have an operational status (e.g. contaminated, housekeeping)', 'Location.operationalStatus', '',
'organization', 'reference', 'Searches for locations that are managed by the provided organization', 'Location.managingOrganization(Organization)', '',
'partof', 'reference', 'A location of which this location is a part', 'Location.partOf(Location)', '',
'status', 'token', 'Searches for locations with a specific kind of status', 'Location.status', '',
'type', 'token', 'A code for the type of location', 'Location.type', '',
)


