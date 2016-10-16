polluntantmean <- function(directory, polluntant, id = 1:332){
    csvfiles <- list.files(directory)[id]
    meanvector <- c()
    for (datafile in csvfiles){
        filemean <- colMeans(read.csv(paste(directory, datafile, sep = "/"))[polluntant], na.rm = T)
        meanvector <- append(meanvector, filemean)
    }
    print(mean(meanvector))
}