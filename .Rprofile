.First <-
        function() {
                mirCat::git_pull_this_repo()
        }

.Last <-
        function() {
                typewriteR::tell_me("Goodbye", Sys.time(), tabs = 0)
                typewriteR::tell_me("Would you like to update Git with the current changes?")
                ans <- readline("Would you like to update Git with the current changes? Y/n: ")
                if (substr(ans, 1, 1) == "Y") {
                        mirCat::git_status_this_repo()
                        cat("\n")
                        commit_message <- readline("What is the commit message? ")
                        cat("\n")
                        if (commit_message != "") {
                                description <- readline("What is the description? ")
                                if (description == "") {
                                        description <- NULL
                                }

                                mirCat::git_add_commit_all_this_repo(commit_message = commit_message,
                                                                     description = description)

                                ans <- readline("Push to origin master now? Y/n: ")
                                if ((substr(ans, 1, 1) == "Y")) {
                                        mirCat::git_push_this_repo()
                                }

                        }

                }

        }
