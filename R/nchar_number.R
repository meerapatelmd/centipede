#' @export
get_nchar_number <-
        function(vector) {
                nchar(gsub("[^0-9]", "", as.character(vector)))
        }
