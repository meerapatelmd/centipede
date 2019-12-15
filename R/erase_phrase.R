#' Removes a pharse from a string
#' @param string character vector of length 1
#' @param phrase character vector of length 1 to be removed from string
#' @importFrom stringr str_replace_all
#' @export
#'
erase_phrase <-
        function(string, phrase) {
                p <- paste0("(.*\\s{0,1})(", phrase, ")(\\s{0,1}.*)")
                stringr::str_replace_all(gsub(p, paste0("\\1\\3"), string), " {2,}", " ")
        }
