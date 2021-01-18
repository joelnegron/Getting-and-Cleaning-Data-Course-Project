## Read me

### Getting and Cleaning Data Course Project

This repository contains the submission for the peer reviewed course project for the Getting and Cleaning Data Course.  
The repository contains the following:

#### Dataset:
[Human Activity Recognition](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  
For data description see the following [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

#### Files:

- Code Book.md
The code book describes the steps taken in the course project through the execution of the **run_analysis.R** script.

- run_analysis.R
The script performs all the tasks to process the raw data into the final result through the following steps: 

        - Download and unzip data
        - Read labels and features details
        - Read, Merge and assign the proper labels and features
        - Extract the desired columns related to mean and standard deviation measurements
        - Tidy the column names
        - Calculate the mean for each subject and position
        
- Final Data.txt
Table with summarize data after getting and cleaning the data through the previous steps.