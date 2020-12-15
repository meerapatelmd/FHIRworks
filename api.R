baseURL <- "http://test.fhir.org/r4"

#' @export
#' @title
#' List Resources
#'
#' @description
#' Resource list taken from \url{https://www.hl7.org/fhir/resourcelist.html} on 2020-12-14.

get_resources <-
        function() {
                c('Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition (aka Problem)', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSpecification', 'SubstanceSourceMaterial', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription')
        }

get_resource_entity_set <-
        function(resource = "Patient") {

                response <-
                        httr::GET(sprintf("%s/%s",
                                          baseURL,
                                          "Patient"))

                if (httr::http_error(response)) {

                        stop(
                                sprintf(
                                        "Test FHIR API request failed [%s]\n%s",
                                        httr::status_code(response),
                                        httr::http_status(response)$message
                                ),
                                call. = FALSE
                        )


                } else {

                        parsed <- httr::content(response,
                                                as = "text",
                                                encosing = "UTF-8")
                        jsonlite::fromJSON(parsed)
                }



        }
response <-
httr::GET(sprintf("%s/%s",
                  baseURL,
                  "Patient"))

if (httr::http_error(response)) {


} else {

        parsed <- httr::content(response, as = "text")
        jsonlite::fromJSON(parsed)
}

library(rvest)
response <- xml2::read_html("http://build.fhir.org/http.html")

sections <-
response %>%
        rvest::html_nodes(".self-link-parent") %>%
        rvest::html_text()


endpoints <-
response %>%
        rvest::html_nodes(".self-link-parent , pre") %>%
        rvest::html_text()

output <- vector()
for (i in seq_along(sections)) {

        section <- sections[i]
        output <-
                c(output,
                  grep(section, x = endpoints))
}

starting <- output
ending <- c(output[-1], length(endpoints))
ending <- ending-1

for (i in seq_along(starting)) {

        if (starting[i] < ending[i]) {

        }

}
