#' Get the number of numerics in a string
#' @export
#'
nchar_number <-
        function(vector) {
                nchar(gsub("[^0-9]", "", as.character(vector)))
        }
