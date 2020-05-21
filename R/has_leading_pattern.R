#' Logical Function checking for leading patterns
#' @param pattern expression in a non-regex format that is automatically converted to the {pattern}$ in the function
#' @export

has_leading_pattern <-
        function(strings, pattern) {
                output <- vector()
                for(string in strings) {
                        output <- c(output, grepl(paste0("^", pattern), string))
                }
                return(output)
        }