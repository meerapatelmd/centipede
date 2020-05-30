#' Remove blank from a string
#' @param all_lengths if TRUE, strings of one space (ie "^ $") and longer (ie "^          $") are also removed.
#' @export

no_blank <-
        function(vector, all_lengths = FALSE) {
                if (all_lengths) {

                        grep(pattern = "^[ ]{1,}$",
                             vector,
                             invert = TRUE)

                } else {
                        vector[!(vector %in% "")]
                }
        }