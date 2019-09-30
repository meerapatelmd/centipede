#' Format a string with title-style capitalization
#' @param string string to be formatted
#' @param exclusions character vector of exclusions in the expected output format
#' @importFrom Hmisc capitalize
#' @export
in_title_format <-
        function(string, exclusions = c("of", "the", "in", "and")) {
                x <- strsplit(string, split = " ")[[1]]
                x <- Hmisc::capitalize(x)
                x <- paste(x, collapse = " ")

               str_replace_loop(x = x,
                                pattern_vector = Hmisc::capitalize(exclusions),
                                replacement_vector = exclusions)
        }
