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

                Sys.sleep(20)
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


resources <- list_resources()
for (i in seq_along(resources)) {
        resource <- resources[i]
        file <- sprintf("R/%s.R", tolower(resource))
        data <- readLines(con = file)
        data <- stringr::str_replace_all(string = data,
                                         pattern = "([(]{1})([']{1}[s]{1})",
                                         replacement = "\\1\\\2")

        cat(file = file, append = FALSE)
        cat(data, file = file, append = TRUE, sep = "\n")

}

resources <- list_resources()
for (i in seq_along(resources)) {
        resource <- resources[i]
        file <- sprintf("R/%s.R", tolower(resource))
        data <- readLines(con = file)
        data <- stringr::str_replace_all(string = data,
                                         pattern = "'s",
                                         replacement = "s")

        cat(file = file, append = FALSE)
        cat(data, file = file, append = TRUE, sep = "\n")

}

resources <- list_resources()
output <- vector()
for (i in seq_along(resources)) {
        resource <- resources[i]
        file <- sprintf("R/%s.R", tolower(resource))
        file <- file.path(getwd(), file)

        results <-
                tryCatch(source(file),
                         error = function(e) "Error")

        if (identical(results, "Error")) {

                output <-
                        c(output,
                          file)

        }

}
