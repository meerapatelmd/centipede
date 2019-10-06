#' @export
nchar_space <-
        function(vector) {
                nchar(gsub("[^ ]", "", as.character(vector)))
        }
