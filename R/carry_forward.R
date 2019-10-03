#' Imputes true NAs with the prior value in a character string (excluding position 1)
#' @param vector character vector of length 2 or greater
#' @export
carry_forward <-
        function(vector) {
                for (i in 2:length(vector)) {
                        if (is.na(vector[i])) {
                                vector[i] <- vector[i-1]
                        }
                }
                return(vector)
        }
