#' Paste everything but na into a single string
#' @param ... character vector to convert to string
#'
paste_if_not_na <-
        function(..., sep = "", collapse = " ") {
                ARGS <- list(...)
                ARGS <- lapply(ARGS, remove_true_na)
                return(
                        paste(unlist(ARGS), sep = sep, collapse = collapse)
                )
        }
