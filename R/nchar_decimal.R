#'@export
nchar_decimal <-
        function(vector) {
                nchar(gsub("[^\\.]", "", as.character(vector)))
        }
