#' Loop over replacements in a string
#' @export
str_replace_loop <-
        function(x, pattern_vector, replacement_vector) {
                for (i in 1:length(pattern_vector)) {
                        pattern     <- pattern_vector[i]
                        replacement <- replacement_vector[i]
                        x <- gsub(x, pattern = pattern, replacement = replacement)
                }
                return(x)
        }
