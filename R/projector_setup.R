#' Set up a folder structure for a projector project
#'
#' Populates a folder with default folder structure.
#' @param sub_projects number of desired subprojects (or flat if 0). Defaults to 1.
#' Call this function only within existing root folder.

projector_setup <- function(sub_projects = 1) {
    # Create folder structure
    dir.create("admin")
    dir.create("documents")
    dir.create("common")
    dir.create("visuals")
    if (sub_projects >= 1){
        for (n in 1:sub_projects){
            root <- paste("subproject_", n, sep = "")
            dir.create(root)
            dir.create(paste(root, "/admin", sep = ""))
            dir.create(paste(root, "/analysis", sep = ""))
            file.copy(
                from = system.file("R/combine_data.R", package="projector"),
                to = paste(root, "/analysis", sep = "")
                )
            file.copy(
                from = system.file("R/script.R", package="projector"),
                to = paste(root, "/analysis", sep = "")
            )
            dir.create(paste(root, "/data", sep = ""))
            dir.create(paste(root, "/documents", sep = ""))
            dir.create(paste(root, "/experiment", sep = ""))
            dir.create(paste(root, "/experiment/includes", sep = ""))
            dir.create(paste(root, "/reports", sep = ""))
            file.copy(
                from = system.file("rmarkdown/template.Rmd", package="projector"),
                to = paste(root, "/reports", sep = "")
            )
            dir.create(paste(root, "/visuals", sep = ""))
        }
    } else {
        dir.create("/analysis")
        dir.create("/data")
        dir.create("/experiment")
        dir.create("/experiment/includes")
        dir.create("/reports")
    }
    # Create common files
    word_template <- system.file("docx/word_template.docx", package="projector")
    file.copy(from = word_template, to = "./common/")
}
