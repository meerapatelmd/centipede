#' Calculates maximum of a vector and adds one
#' @vector vector of integers
#' @export

calc_next_integer <-
        function(vector) {
                1 + max(as.integer(vector))
        }