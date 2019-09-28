nchar_punct <-
        function(vector) {
                nchar(gsub("[^[:punct:]]", "", as.character(vector)))
        }
