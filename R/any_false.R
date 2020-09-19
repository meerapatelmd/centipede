#' Aggregate logical function
#' @description Returns TRUE if at least 1 of the values in a logical vector is FALSE
#' @export

any_false <-
        function(vector) {
                any(vector == FALSE)
        }