nchar_fslash <-
        function(vector) {
                nchar(gsub("[^\\/]", "", as.character(vector)))
        }
