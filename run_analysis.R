
# Getting and Cleaning Data Course Project --------------------------------

# Download and unzip data files -------------------------------------------

if(!file.exists("./Data")) {dir.create("./Data")}

urlZipFile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(urlZipFile, "./Data/Project Data.zip")

unzip("./Data/Project Data.zip", exdir = "./Data")

if(file.exists("./Data/UCI HAR Dataset")) {file.remove("./Data/Project Data.zip")}



# Read labels and features details ----------------------------------------

library(dplyr)

labelsFeaturesPath <- "./Data/UCI HAR Dataset/"

activityLabels <- read.table(paste0(labelsFeaturesPath, "activity_labels.txt"), col.names = c("activityId", "activity"))
features <- read.table(paste0(labelsFeaturesPath, "features.txt"), col.names = c("rowNumber", "feature"))



# Read and Merge Train and Test Data --------------------------------------

## Train Data
trainPath <- "./Data/UCI HAR Dataset/train/"
xTrain <- read.table(paste0(trainPath, "X_train.txt"), col.names = features$feature)
yTrain <- read.table(paste0(trainPath, "y_train.txt"), col.names = "activityId") %>% 
        left_join(activityLabels) %>% 
        select(activity)
subjectTrain <- read.table(paste0(trainPath, "subject_train.txt"), col.names = "subject")

trainData <- cbind(subjectTrain, yTrain, xTrain)

## Test Data
testPath <- "./Data/UCI HAR Dataset/test/"
xTest <- read.table(paste0(testPath, "X_test.txt"), col.names = features$feature)
yTest <- read.table(paste0(testPath, "y_test.txt"), col.names = "activityId") %>% 
        left_join(activityLabels) %>% 
        select(activity)
subjectTest <- read.table(paste0(testPath, "subject_test.txt"), col.names = "subject")

testData <- cbind(subjectTest, yTest, xTest)

# Merged Data
mergeData <- rbind(trainData, testData)

