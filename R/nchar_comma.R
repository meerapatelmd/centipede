#'@export
#'
nchar_comma <-
        function(vector) {
                nchar(gsub("[^,]", "", as.character(vector)))
        }
