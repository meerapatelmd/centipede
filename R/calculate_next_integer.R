#' Calculates maximum of a vector and adds one after removing all letters despite casing
#' @param id_vector vector of length of 1 or greater of combination of letters and strings.
#' @param sampled if TRUE, will add a number from 1 to 9 at random instead of adding 1.
#' @importFrom gmp as.bigz
#' @export

calculate_next_integer <-
        function(id_vector, sampled = FALSE) {
                id_vector <- str_remove_all_letters(id_vector, "both")
                if (sampled == FALSE) {
                                return(as.character(1 + max(gmp::as.bigz(id_vector), na.rm = TRUE)))
                } else {
                                return(as.character((sample(1:9, 1)) + max(gmp::as.bigz(id_vector), na.rm = TRUE)))
                }

        }
