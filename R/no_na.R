#' Remove NA from a string
#' @param incl_str Include "NA" in the removal?
#' @export

no_na <-
        function(vector, incl_str = TRUE) {
                output <-
                vector[!(is.na(vector))]

                if (incl_str) {
                       output <- output[!(output %in% c("NA"))]
                }

                return(output)
        }