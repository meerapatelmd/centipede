#' Creates a random string of either all uppercase, all lowercase, or both of a given character_length
#' @export

str_random <-
        function(character_length,
                 replace = TRUE,
                 type = "both") {

                if (type == "upper") {
                        paste(LETTERS[sample(1:26, character_length, replace = replace)], collapse = "")
                } else if (type == "lower") {
                        paste(letters[sample(1:26, character_length)], collapse = "")
                } else {
                        ALL_LETTERS <- c(LETTERS[1:26], letters[1:25])
                        paste(ALL_LETTERS[sample(1:52, character_length, replace = replace)], collapse = "")
                }
        }
