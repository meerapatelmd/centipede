
convert_to_title_format <-
        function(strings, exclusions = c("Of", "The", "In", "And")) {
                output <- vector()
                for (i in 1:length(strings)) {
                        x <- strsplit_into_vector(strings[i], split = " ")
                        x <- capitalize(x)
                        x <- paste(x, collapse = " ")
                        for (j in 1:length(exclusions)) {
                                if (grepl(paste0(" ", exclusions[j], " "),x)) {
                                        x <- str_replace_all(x, exclusions[j], tolower(exclusions[j]))
                                }
                        }
                        output[i] <- x
                }
                return(output)
        }
