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
