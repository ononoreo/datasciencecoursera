polluntantmean <- function(directory, polluntant, id = 1:332){
    csvfiles <- list.files(directory)[id]
    for (datafile in csvfiles){
        setwd(directory)
        filemean <- colMeans(read.csv(datafile)[polluntant], na.rm = T)
        print(filemean)
        setwd("../")
    }
}