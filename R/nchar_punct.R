#' @export
nchar_punct <-
        function(vector, punct = NULL) {
                if (is.null(punct)) {

                        nchar(gsub("[^[:punct:]]", "", as.character(vector)))

                } else {

                        x <- stringr::str_remove_all(vector,
                                                     pattern = paste0("[^[", punct, "]]"))
                        nchar(x)

                }
        }
