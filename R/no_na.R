#' Remove NA from a string
#' @export

no_na <-
        function(vector) {
                vector[!(is.na(vector))]
        }