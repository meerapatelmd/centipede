#' Aggregates the logic functions for all unclosed punctuation
#' @description Aggregate of parentheses, brackets, and curly bracket logical functions.
#' @importFrom tibble tibble
#' @export

has_unclosed_punct <-
        function(strings) {

                p_output <- has_unclosed_parentheses(strings = strings)
                b_output <- has_unclosed_brackets(strings = strings)
                c_output <- has_unclosed_curly_brackets(strings = strings)

                output <-
                        tibble::tibble(p = p_output,
                               b = b_output,
                               c = c_output)

                final_output <- vector()
                for (i in 1:nrow(output)) {
                        obs <-
                                output %>%
                                rubix::filter_first_row()

                        obs <- unlist(obs)

                        final_output <- c(final_output, any_true(obs))


                        output <-
                                output %>%
                                rubix::slice_first_row()
                }
                return(final_output)
        }
