#' Get the difference between a string and a "subtraction" string
#' @param string main string that is being subtracted from
#' @param subtraction_string the string that is being removed from the primary string
#' @export


diff_strings <-
        function(string, subtraction_string) {
                delete_phrase_from_string(string = string, phrase = subtraction_string)
        }
