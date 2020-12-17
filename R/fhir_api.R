#' @title
#' Send a GET request to a FHIR API
#' @param base_url      Base url.
#' @param delay         Delay in seconds before making the API call.
#' @param path          Path from the base url.
#' @param user_agent    (Optional) User agent.
#' @return
#' A fhir_api class object.
#' @seealso
#'  \code{\link[httr]{GET}},\code{\link[httr]{http_type}},\code{\link[httr]{content}},\code{\link[httr]{http_error}},\code{\link[httr]{status_code}}
#'  \code{\link[jsonlite]{toJSON, fromJSON}}
#' @rdname fhir_api
#' @export
#' @importFrom httr GET http_type content http_error status_code
#' @importFrom jsonlite fromJSON
fhir_api <-
        function(path,
                 base_url = "http://hapi.fhir.org/baseR4",
                 delay = 5,
                 user_agent,
                 ...) {

                Sys.sleep(delay)

                url <- sprintf("%s/%s", base_url, path)


                if (missing(user_agent)) {

                        response <- httr::GET(url,
                                              ...)

                } else {

                        response <- httr::GET(url, user_agent,
                                              ...)

                }

                if (httr::http_type(response) != "application/fhir+json") {

                        stop("API did not return fhir+json", call. = FALSE)
                }

                parsed <- jsonlite::fromJSON(httr::content(response,
                                                           as = "text",
                                                           encoding = "UTF-8"))

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
                        class = "fhir_api"
                )

        }

#' @noRd
print.fhir_api <-
        function(x, ...) {
                cat("<FHIR Test", x$path, ">\n", sep = "")
                str(x$content)
                invisible(x)
        }



#' @noRd

return_payload <-
        function(fhir_api) {

                fhir_api$content$entry
        }
