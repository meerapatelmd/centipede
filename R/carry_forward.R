

carry_forward <-
        function(vector) {
                for (i in 2:length(vector)) {
                        if (is.na(vector[i])) {
                                value[i] <- value[(i-1)]
                        }
        }
}