#' Logical for strings that have 1 or more leading punctuation marks
#' @export

has_leading_punct <-
        function(strings) {
                output <- vector()
                for(string in strings) {
                        output <- c(output, grepl("^[[::punct::]]{1,}", string))
                }
                return(output)
        }