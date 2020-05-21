#' Logical Function checking for leading patterns
#' @description This function is meant to be a generic for any of the logical functions.
#' @param regex Full regex expression.
#' @export

has_regex <-
        function(strings, regex) {
                output <- vector()
                for(string in strings) {
                        output <- c(output, grepl(regex, string))
                }
                return(output)
        }
