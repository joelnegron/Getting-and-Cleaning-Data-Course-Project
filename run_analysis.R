
# Getting and Cleaning Data Course Project --------------------------------

# Download and unzip data files -------------------------------------------


if(!file.exists("./Data")) {dir.create("./Data")}

urlZipFile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(urlZipFile, "./Data/Project Data.zip")

unzip("./Data/Project Data.zip", exdir = "./Data")


# Read Test and Train Data ------------------------------------------------

TrainPath <- "./Data/UCI HAR Dataset/train/"
TestPath <- "./Data/UCI HAR Dataset/test/"

xTrain <- read.table(paste0(TrainPath, "X_train.txt"))

xTest <- read.table(xTestPath)

xData <- rbind(xTrain, xTest)
