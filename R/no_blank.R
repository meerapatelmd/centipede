#' Remove blank from a string
#' @export

no_blank <-
        function(vector) {
                vector[!(vector %in% "")]
        }