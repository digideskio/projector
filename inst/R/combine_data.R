# Concatenate multiple data files

data_folder <- "../data/"
this_data = data.frame(NULL)
for (fn in list.files(data_folder)){
    print(fn)
    if (grepl(".csv", fn)) {
        file_name = paste(data_folder, fn, sep="")
        ifelse(file.exists(file_name),
               (this_data = rbind(this_data,
                                  read.csv(file_name, header=T))),
               print(paste(file_name, "does not exist.")))
    }
}
write.csv(this_data, "combined_data.csv")
