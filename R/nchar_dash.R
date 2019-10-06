#'@export
#'
nchar_dash <-
        function(vector) {
                nchar(gsub("[^\\-]", "", as.character(vector)))
        }
