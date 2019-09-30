#' Remove true na from a character vector
#' @param character_vector vector greater than 0
#'
remove_true_na <-
        function(character_vector) {
                if (is.character(character_vector)) {
                        return(
                                character_vector[!(is.na(character_vector))]
                        )
                } else if (is.symbol(character_vector)) {
                        character_vector <- get(character_vector)
                        return(
                                character_vector[!(is.na(character_vector))]
                        )
                }
        }
