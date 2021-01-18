## Code Book

The **run_analysis.R** script performs the tasks in the Getting and Cleaning Data Course Project by performing the following steps.


### 1- Download and unzip data

Download the data and extract it from the provided URL: *https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip*

### 2- Read labels and features details

The labels data contains a mapping table of the activity id (1-6) and the name of the activity. The features data contains the names on the measurements.

### 3- Read, Merge and assign the proper labels and features

Read the subject id, activity id and measurement, attach the proper labels and features and merge the train and test data.

### 4- Extract the desired columns related to mean and standard deviation measurements

From the dataset created in step 3, keep the subject, activity and all measurements of mean and standard deviation.

### 5- Tidy the column names

1- Remove periods from column names  
2- Replace starting *t* and *f* with *time* and *frequency*  
3- Replace abbreviation *Acc* and *Gyro* with *Acceleration* and *Gyroscope*  

### 6- Calculate the mean for each subject and position

Calculate the mean for each subject and position for the desired measurements in step 4.