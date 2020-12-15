#' @title
#' Get a Resource's Entity Set
#'
#' @param resource FHIR resource.
#' @inheritParams fhir_test_api
#' @inherit fhir_test_api return
#' @rdname get_resource_entity_set
#' @export
get_resource_entity_set <-
        function(resource,
                 user_agent) {

                fhir_test_api(path = resource,
                              user_agent = user_agent)

        }
