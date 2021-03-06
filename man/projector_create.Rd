% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/projector_create.R
\name{projector_create}
\alias{projector_create}
\title{Create a new project with pre-specified structure}
\usage{
projector_create(name = "project_or", sub_projects = 1)
}
\arguments{
\item{name}{give a name to the project.}

\item{sub_projects}{number of desired subprojects (or flat if 0). Defaults to 1.}
}
\description{
Creates a new project root folder and calls projector_setup() to populate it with default folder structure.
}

