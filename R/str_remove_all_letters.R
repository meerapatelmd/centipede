#' Removes all letters in a string
#' @import stringr
#' @export

str_remove_all_letters <-
        function(x, type = c("both", "upper", "lower")) {
                if (type == "both") {
                        return(stringr::str_remove_all(x, pattern = "[A-Za-z]"))
                } else if (type == "upper") {
                        return(stringr::str_remove_all(x, pattern = "[A-Z]"))
                } else if (type == "lower") {
                        return(stringr::str_remove_all(x, pattern = "[a-z]"))
                }
        }