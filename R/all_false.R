#' Aggregate logical function
#' @description Returns TRUE if all values in a logical vector are FALSE
#' @export

all_false <-
        function(vector) {
                all(vector == FALSE)
        }