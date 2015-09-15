#' Set up a folder structure for a projector project
#'
#' Populates a folder with default folder structure. Usually called from within projector_create()
#' @param sub_projects number of desired subprojects (or flat if 0). Defaults to 1.
#' Call this function only within existing root folder.

projector_setup <- function(sub_projects = 1) {
    # Create folder structure
    dir.create("admin")
    dir.create("documents")
    dir.create("common")
    dir.create("visuals")
    for (n in 1:sub_projects){
        root <- paste("subproject_", n, sep = "")
        dir.create(root)
        dir.create(paste(root, "/admin", sep = ""))
        dir.create(paste(root, "/analysis", sep = ""))
        dir.create(paste(root, "/data", sep = ""))
        dir.create(paste(root, "/documents", sep = ""))
        dir.create(paste(root, "/experiment", sep = ""))
        dir.create(paste(root, "/reports", sep = ""))
        dir.create(paste(root, "/visuals", sep = ""))
    }
    # Create common files
    setwd("../")

}
