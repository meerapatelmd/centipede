#' Split string
#' @export

strsplit <- function(x,
                     split,
                     type = "remove",
                     perl = FALSE,
                     ...) {
        if (type == "remove") {
                # use base::strsplit
                out <- base::strsplit(x = x, split = split, perl = perl, ...)
        } else if (type == "before") {
                # split before the delimiter and keep it
                out <- base::strsplit(x = x,
                                      split = paste0("(?<=.)(?=", split, ")"),
                                      perl = TRUE,
                                      ...)
        } else if (type == "after") {
                # split after the delimiter and keep it
                out <- base::strsplit(x = x,
                                      split = paste0("(?<=", split, ")"),
                                      perl = TRUE,
                                      ...)
        } else {
                # wrong type input
                stop("type must be remove, after or before!")
        }
        return(out)
}
