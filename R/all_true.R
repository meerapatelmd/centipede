#' Aggregate logical function
#' @description Returns TRUE if all values in a logical vector are TRUE
#' @export

all_true <-
        function(vector) {
                all(vector == TRUE)
        }