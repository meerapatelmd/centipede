#' Splits a string by the pipe, unlists, and trims whitespace on both sides
#' @import stringr
#' @export

strsplit_trim_pipe <-
        function(string) {
                stringr::str_trim(unlist(strsplit(string, "|", fixed = TRUE)), "both")
        }
