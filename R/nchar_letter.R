#' @export
nchar_letter <-
        function(vector) {
                nchar(gsub("[^A-Za-z]", "", as.character(vector)))
        }
