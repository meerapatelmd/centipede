#' Paste0 for character_vector into string after removing true NA
#' @param character_vector vector greater than length 1
#' @export


paste0_if_not_na <-
        function(character_vector, ...) {
                character_vector <- remove_true_na(character_vector)
                return(
                        paste0(character_vector, ...)
                )
        }
