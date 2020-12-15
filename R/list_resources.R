#' @export
#' @title
#' List Resources
#'
#' @description
#' Resource list taken from \url{https://www.hl7.org/fhir/resourcelist.html} on 2020-12-14.
#' @export

list_resources <-
        function() {
                c("Account",
                  "ActivityDefinition",
                  "AdverseEvent",
                  "AllergyIntolerance",
                  "Appointment",
                  "AppointmentResponse",
                  "AuditEvent",
                  "Basic",
                  "Binary",
                  "BiologicallyDerivedProduct",
                  "BodyStructure",
                  "Bundle",
                  "CapabilityStatement",
                  "CarePlan",
                  "CareTeam",
                  "CatalogEntry",
                  "ChargeItem",
                  "ChargeItemDefinition",
                  "Claim",
                  "ClaimResponse",
                  "ClinicalImpression",
                  "CodeSystem",
                  "Communication",
                  "CommunicationRequest",
                  "CompartmentDefinition",
                  "Composition",
                  "ConceptMap",
                  "Condition (aka Problem)",
                  "Consent",
                  "Contract",
                  "Coverage",
                  "CoverageEligibilityRequest",
                  "CoverageEligibilityResponse",
                  "DetectedIssue",
                  "Device",
                  "DeviceDefinition",
                  "DeviceMetric",
                  "DeviceRequest",
                  "DeviceUseStatement",
                  "DiagnosticReport",
                  "DocumentManifest",
                  "DocumentReference",
                  "EffectEvidenceSynthesis",
                  "Encounter",
                  "Endpoint",
                  "EnrollmentRequest",
                  "EnrollmentResponse",
                  "EpisodeOfCare",
                  "EventDefinition",
                  "Evidence",
                  "EvidenceVariable",
                  "ExampleScenario",
                  "ExplanationOfBenefit",
                  "FamilyMemberHistory",
                  "Flag",
                  "Goal",
                  "GraphDefinition",
                  "Group",
                  "GuidanceResponse",
                  "HealthcareService",
                  "ImagingStudy",
                  "Immunization",
                  "ImmunizationEvaluation",
                  "ImmunizationRecommendation",
                  "ImplementationGuide",
                  "InsurancePlan",
                  "Invoice",
                  "Library",
                  "Linkage",
                  "List",
                  "Location",
                  "Measure",
                  "MeasureReport",
                  "Media",
                  "Medication",
                  "MedicationAdministration",
                  "MedicationDispense",
                  "MedicationKnowledge",
                  "MedicationRequest",
                  "MedicationStatement",
                  "MedicinalProduct",
                  "MedicinalProductAuthorization",
                  "MedicinalProductContraindication",
                  "MedicinalProductIndication",
                  "MedicinalProductIngredient",
                  "MedicinalProductInteraction",
                  "MedicinalProductManufactured",
                  "MedicinalProductPackaged",
                  "MedicinalProductPharmaceutical",
                  "MedicinalProductUndesirableEffect",
                  "MessageDefinition",
                  "MessageHeader",
                  "MolecularSequence",
                  "NamingSystem",
                  "NutritionOrder",
                  "Observation",
                  "ObservationDefinition",
                  "OperationDefinition",
                  "OperationOutcome",
                  "Organization",
                  "OrganizationAffiliation",
                  "Parameters",
                  "Patient",
                  "PaymentNotice",
                  "PaymentReconciliation",
                  "Person",
                  "PlanDefinition",
                  "Practitioner",
                  "PractitionerRole",
                  "Procedure",
                  "Provenance",
                  "Questionnaire",
                  "QuestionnaireResponse",
                  "RelatedPerson",
                  "RequestGroup",
                  "ResearchDefinition",
                  "ResearchElementDefinition",
                  "ResearchStudy",
                  "ResearchSubject",
                  "RiskAssessment",
                  "RiskEvidenceSynthesis",
                  "Schedule",
                  "SearchParameter",
                  "ServiceRequest",
                  "Slot",
                  "Specimen",
                  "SpecimenDefinition",
                  "StructureDefinition",
                  "StructureMap",
                  "Subscription",
                  "Substance",
                  "SubstancePolymer",
                  "SubstanceProtein",
                  "SubstanceReferenceInformation",
                  "SubstanceSpecification",
                  "SubstanceSourceMaterial",
                  "SupplyDelivery",
                  "SupplyRequest",
                  "Task",
                  "TerminologyCapabilities",
                  "TestReport",
                  "TestScript",
                  "ValueSet",
                  "VerificationResult",
                  "VisionPrescription")
        }


mkTribble <-
function (data) {

        data <- data %>%
                dplyr::mutate_if(is.factor, as.character)

        output <- vector()
        for (i in 1:nrow(data)) {
                output <- c(output,
                            sprintf("%s,",
                                    data[i, ] %>%
                                            unlist() %>%
                                            paste(collapse = ", ")))
        }
        output_colnames <- paste0("~`", colnames(data), "`") %>% paste(collapse = ",")

        c("tibble::tribble(",
          sprintf("%s,", output_colnames),
          output, ")") %>%
                paste0(collapse = "\n")
}


resources <- list_resources()

for (i in seq_along(resources)) {

        resource <- resources[i]
        file <- sprintf("R/%s.R", tolower(resource))

        if (!file.exists(file)) {
        cat(file = file,
            append = FALSE)

        Sys.sleep(5)
        response <- xml2::read_html(sprintf("http://hl7.org/fhir/%s.html", tolower(resource)))

        dfs <-
        response %>%
                html_nodes("table") %>%
                html_table()

        for (j in seq_along(dfs)) {
                data <- dfs[[j]]
                data <-
                        data %>%
                        dplyr::mutate_if(is.factor, as.character) %>%
                        dplyr::mutate_if(is.character, ~sprintf("'%s'",
                                                                 .))
                output <- vector()
                for (k in 1:nrow(data)) {
                        output <- c(output,
                                    data[i, ] %>%
                                            unlist() %>%
                                            paste(collapse = ", "))
                }

                output_colnames <-
                        paste0("~", colnames(data)) %>%
                        paste(collapse = ",")

                c(sprintf("df%s <- ", j),
                  mkTribble(data = data)) %>%
                        paste0(collapse = "\n") %>%
                        cat(file = file,
                            append = TRUE)

                cat("\n\n\n",
                    file = file,
                    append = TRUE)
        }
        closeAllConnections()
        }
}
