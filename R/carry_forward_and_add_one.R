#' Imputes true NAs with the prior value in a character string (excluding position 1)
#' @param vector character vector of length 2 or greater
#' @export
carry_forward_and_add_one <-
        function(vector) {
                for (i in 2:length(vector)) {
                        if (is.na(vector[i])) {
                                x <- vector[i-1]
                                vector[i] <- (as.integer(x) + 1)
                        }
                }
                return(vector)
        }
