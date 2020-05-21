#' Logical for strings that start with 1 or more decimal points
#' @export

has_leading_decimal <-
        function(strings) {
                output <- vector()
                for(string in strings) {
                        output <- c(output, grepl("^[.]{1,}", string))
                }
                return(output)
        }