#' @title
#' Get a Resource's Entity Set
#'
#' @description
#' All possible FHIR Resources can be returned as a character vector with \code{\link{list_resources}}.
#'
#' @param resource FHIR resource.
#'
#' @inheritParams fhir_api
#' @inherit fhir_api return
#' @rdname get_resource_entity_set
#' @example inst/example/get_patient_entity_set.R
#' @export
get_resource_entity_set <-
        function(resource,
                 base_url = "http://hapi.fhir.org/baseR4",
                 delay = 5,
                 user_agent) {

                fhir_api(path = resource,
                         base_url = base_url,
                         delay = delay,
                         user_agent = user_agent)

        }
