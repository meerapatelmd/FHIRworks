resources <- list_resources()
usethis::use_vignette("sample-resources")
file <- "~/GitHub/packages/FHIRworks/vignettes/sample-resources.Rmd"

for (i in seq_along(resources)) {

        resource <- resources[i]

        cat("\n",
            sprintf("# %s  ", resource),
            sprintf("```{r %s}", resource),
            sprintf("response <- get_resource_entity_set(resource = '%s')", resource),
            "payload <- return_payload(response)",
            "if (!is.null(payload)) {
  head(payload$resource)
}
            ",
            "```",
            "\n",
            sep = "\n",
            file = file,
            append = TRUE)

        cat("\n",
            sprintf("```{r %s_pause, echo=FALSE,eval=TRUE}", resource),
            "Sys.sleep(5)",
            "```",
            "\n",
            sep = "\n",
            file = file,
            append = TRUE)


}
