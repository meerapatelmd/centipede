#' Sub NA
#' @description Substitute NA with another value
#' @export


sub_na <-
        function(vector, sub_value) {
                x <- vector
                x[is.na(x)] <- sub_value
                return(x)
        }