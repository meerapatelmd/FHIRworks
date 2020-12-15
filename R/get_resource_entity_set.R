get_resource_entity_set <-
        function(resource = "Patient") {

                baseURL <- "http://test.fhir.org/r4"
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
                                                encoding = "UTF-8")
                        df <- jsonlite::fromJSON(parsed)
                        tibble::as_tibble(df)
                }

        }
