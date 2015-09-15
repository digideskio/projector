#' Create a new project with pre-specified structure
#'
#' Creates a new project root folder and calls projector_setup() to populate it with default folder structure.
#' @param name give a name to the project.
#' @param sub_projects number of desired subprojects (or flat if 0). Defaults to 1.
#'

projector_create <- function(name = "project_or", sub_projects = 1) {
    if (file.exists(name)) {
        print("Directory exists.")
        if (readline(prompt="Proceed (y/n): ") == "n"){
            stop
        }
    }
    dir.create(name)
    setwd(name)
    projector_setup(sub_projects = sub_projects)
}
