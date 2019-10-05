#' Get what is in vector that is not in the other vector
#' @param vector main vector that is being assessed
#' @param other_vector vector that is being compared against
#' @export


diff_between_vectors <-
        function(vector, other_vector) {
                return(
                        vector[!(vector %in% other_vector)]
                )
        }
