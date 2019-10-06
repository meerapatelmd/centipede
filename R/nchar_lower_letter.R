#' @export
nchar_lower_letter <-
        function(vector) {
                nchar(gsub("[^a-z]", "", as.character(vector)))
        }
