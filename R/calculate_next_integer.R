#' Calculates maximum of a vector and adds one
#' @param vector vector of 1 or more integers
#' @param sampled if TRUE, will add a number from 1 to 9 at random instead of adding 1.
#' @importFrom gmp as.bigz
#' @export

calculate_next_integer <-
        function(vector, sampled = FALSE) {
                max <- max(as.integer(vector))
                if (sampled == FALSE) {
                        if (max <= 10000) {
                                return(as.character(1 + max(as.integer(vector))))
                        } else {
                                return(as.character(1 + max(gmp::as.bigz(vector), na.rm = TRUE)))
                        }
                } else {
                        if (max <= 10000) {
                                return(as.character((sample(1:9, 1)) + max(as.integer(vector))))
                        } else {
                                return(as.character((sample(1:9, 1)) + max(gmp::as.bigz(vector), na.rm = TRUE)))
                        }
                }

        }
