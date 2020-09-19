#' Logical Function checking for trailing patterns
#' @param pattern expression in a non-regex format that is automatically converted to the {pattern}$ in the function
#' @export

has_trailing_pattern <-
        function(strings, pattern) {
                output <- vector()
                for(string in strings) {
                        output <- c(output, grepl(paste(pattern, "$"), string))
                }
                return(output)
        }