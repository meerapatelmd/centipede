cherrypick_words_2 <- function(x, phrase, n_words = 3L, upto = NULL) {
        if (length(x) > 0) {
                x <- paste0(x, collapse = ' ')
        }
        word <- '\\b\\w+\\b\\s*'

        p <- if (!is.null(upto))
                sprintf('(?:%s)\\s*((%s)+)%s|.', phrase, word, upto)
        else sprintf('(?:%s)\\s*((%s){1,%s})|.', phrase, word, n_words)

        trimws(gsub(p, '\\1', x))
}
