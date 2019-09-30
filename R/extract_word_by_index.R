#' Return the word in the string by number
#' @param string character vector of length one
#' @param n word number
#' @export

extract_word_by_index <-
        function(string, n) {
                base::strsplit(string, split = " ")[[1]][n]
        }
