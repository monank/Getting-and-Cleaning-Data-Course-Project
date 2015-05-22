## Code Book for Getting and Cleaning Data Course Project
Download the original data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
Unzip it and set your working directory as the data folder, UCI HAR DATASET. run_analysis.R should be placed in the UCI HAR Dataset folder and run from there.
### What run_analysis.R Does
1 Merges the training and the test sets.
2 Extracts the mean and standard deviation for each measurement. 
3 Uses descriptive activity names to name the activities in the data set.
4 Writes the resulting data set into merged_data.txt
5 Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6 Writes the resulting data set into data_with_avg.txt