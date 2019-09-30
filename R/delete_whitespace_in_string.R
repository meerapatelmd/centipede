#' Delete extra spaces
#' @param character_vector vector of strings of length 1 or greater
#' @importFrom stringr str_replace_all
#' @export

delete_whitespace_in_string <-
        function(character_vector) {
                stringr::str_replace_all(string, " {2,}", " ")
        }
