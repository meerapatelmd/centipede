carry_over_value <-
        function(vector) {
                for (i in 2:length(vector)) {
                        if (is.na(vector[i])) {
                                vector[i] <- vector[i-1]
                        }
                }
                return(vector)
        }