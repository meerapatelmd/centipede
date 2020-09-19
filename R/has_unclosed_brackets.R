#' Logical for unclosed brackets
#' @export

has_unclosed_brackets <-
        function(strings) {
                output <- vector()
                for (string in strings) {

                        output_1 <- grepl("\\[", string)

                        if (output_1 == TRUE) {

                                output_2 <- grepl("\\]", string)

                                if (output_2 == TRUE) {
                                        output <- c(output, FALSE)
                                } else {
                                        output <- c(output, TRUE)
                                }
                        } else {
                                output_2 <- grepl("\\]", string)
                                if (output_2 == TRUE) {
                                        output <- c(output, TRUE)
                                } else {
                                        output <- c(output, FALSE)
                                }
                        }
                }
                return(output)
        }