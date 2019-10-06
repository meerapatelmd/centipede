#' Get number of uppercase letters
#' @export
nchar_upper_letter <-
        function(vector) {
                nchar(gsub("[^A-Z]", "", as.character(vector)))
        }
