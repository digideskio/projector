# projector
r package for organizing and managing projects

__projector__ creates standardized folder structures for common project types in cognitive psychology, where each project can consist of multiple experiments ("sub-projects"). These projects are populated with some common tools to facilitate the scientific workflow and reproducible reporting.

# Folder structure

All projects created with ```projector_create()``` have the same folder structure:

```
project  
|
|-- common
|   |-- word_template.docx
|   |-- references.bib
|
|-- documents
|
|-- subproject_1
|   |-- admin
|   |-- data
|   |-- analysis
|       |-- combine_data.R
|       |-- script.R
|   |-- documents
|   |-- experiment
|       |-- includes
|   |-- reports
|       |-- template.Rmd
|   |-- visuals
|
|-- .gitignore
|-- README.md
```

## How to use it?

[Fork from github](https://github.com/mvuorre/projector) or install as an R package:

```
devtools::install_github("mvuorre/projector")
```

Start your first project:

```
library(projector)
projector_create(name = "my_project", sub_projects = 1)
```

### Why?

I got tired of not knowing where things were even a few months after starting a project. Also, having gone through archival data, it is often impossible to find what I'm looking for in other people's archives. Hopefully a standardized format will help my future self and others to find what they are looking for. 
