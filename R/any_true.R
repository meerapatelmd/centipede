#' Aggregate logical function
#' @description Returns TRUE if at least 1 of the values in a logical vector is TRUE
#' @export

any_true <-
        function(vector) {
                any(vector == TRUE)
        }