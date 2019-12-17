#' Base trimws with an "inner" option that removes all spaces greater than 1 inside strings
#' @importFrom stringr str_replace_all
#' @export


trimws <-
        function(x,
                 which = c("both", "left", "right"),
                 inner_space = TRUE) {
                if (inner_space == FALSE) {
                        output <-
                                base::trimws(x = x,
                                       which = which,
                                       whitespace = whitespace)
                } else {
                        output <-
                                base::trimws(x = x,
                                       which = which)

                        output <-
                                stringr::str_replace_all(output, "[ ]{2,}", " ")
                }
                return(output)
        }
