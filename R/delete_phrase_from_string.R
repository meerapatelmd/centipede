#' Deletes a phrase from a string
#' @param string character vector of length 1
#' @param phrase character vector of length 1 of the phrase to be deleted
#' @export

delete_phrase_from_string <-
        function(string, phrase) {
                p <- paste0("(.*\\s{0,1})(", phrase, ")(\\s{0,1}.*)")
                gsub(p, paste0("\\1 \\3"), string)
        }
