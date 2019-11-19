#' Trims extra spaces within strings
#' @param vector character vector of length one or greater
#' @return vector with inner whitespace removed
#' @importFrom stringr str_replace_all
#' @export

trim_inner_space <-
        function(vector) {
                return(stringr::str_replace_all(vector, "[ ]{2,}", " "))
        }
