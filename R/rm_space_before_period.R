#' Remove spaces before period
#' @description This function takes a string such as "Mary had a little lamb ." or "Mary had a little lamb ..." and removes the unecessary space to "Mary had a little lamb.".
#' @importFrom stringr str_replace_all
#' @export

rm_space_before_period <-
        function(x) {
                stringr::str_replace_all(x, "([ ]{1})([.]{1,3})", "\\2")
        }
