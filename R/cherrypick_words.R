cherrypick_words <- function(x, phrase, n_words = 3L, upto = NULL) {
        if (length(x) > 0) {
                x <- paste0(x, collapse = ' ')
        }

        phrase <- paste0(".*", phrase)

        if (!is.null(upto)) {
                word <<- '(\\b\\w+\\b.*)'
                p <<- paste0(phrase," {0,}", word, " {0,}", upto, "*|.")
        } else {
                word <<- paste0("((\\b\\w+\\b[[:punct:]]{0,1}\\s{0,1}){1,", n_words, "})")
                p <<- paste0(phrase, " {0,1}", word, "|.")
        }

        trimws(gsub(p, '\\1', x))
}
