# Concatenate multiple data files

data_folder <- "../data/"
root_name <- "" # Naming convention for data files to read

this_data = data.frame(NULL)
for (i in 1:length(list.files(data_folder))){
    file_name = paste(data_folder, root_name, 100+i,".csv", sep="")
    ifelse(file.exists(file_name), 
           (this_data = rbind(this_data, read.csv(file_name, header=T))),
           print(paste(file_name, "does not exist.")))
}

write.csv(this_data, "combined_data.csv")
