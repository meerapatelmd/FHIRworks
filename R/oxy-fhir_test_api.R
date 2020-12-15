#' @title
#' Send a GET request to the FHIR Test API
#' @param path          Path from \url{http://test.fhir.org/r4/} base url.
#' @param user_agent    (Optional) User agent.
#' @return
#' A fhir_test_api class object.
#' @seealso
#'  \code{\link[httr]{GET}},\code{\link[httr]{http_type}},\code{\link[httr]{content}},\code{\link[httr]{http_error}},\code{\link[httr]{status_code}}
#'  \code{\link[jsonlite]{toJSON, fromJSON}}
#' @rdname fhir_test_api
#' @export
#' @importFrom httr GET http_type content http_error status_code
#' @importFrom jsonlite fromJSON
fhir_test_api <-
        function(path,
                 user_agent) {

                url <- sprintf("http://test.fhir.org/r4/%s", path)


                if (missing(user_agent)) {
                response <- httr::GET(url)
                } else {
                        response <- httr::GET(url, user_agent)
                }

                if (httr::http_type(response) != "application/fhir+json") {

                        stop("API did not return fhir+json", call. = FALSE)
                }

                parsed <- jsonlite::fromJSON(httr::content(response,
                                                           as = "text",
                                                           encoding = "UTF-8"),
                                             simplifyVector = FALSE)

                if (httr::http_error(response)) {
                        stop(
                                sprintf(
                                        "FHIR Test API request failed [%s %s: %s]\n<%s>",
                                        httr::status_code(response),
                                        parsed$issue[[1]]$severity,
                                        parsed$issue[[1]]$code,
                                        parsed$issue[[1]]$details$text
                                ),
                                call. = FALSE
                        )
                }

                structure(
                        list(
                                content = parsed,
                                path = path,
                                response = response
                        ),
                        class = "fhir_test_api"
                )

        }

#' @noRd
print.fhir_test_api <-
        function(x, ...) {
                cat("<FHIR Test", x$path, ">\n", sep = "")
                str(x$content)
                invisible(x)
        }
