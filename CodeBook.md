## Code Book for Getting and Cleaning Data Course Project
Download the original data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
Unzip it and set your working directory as the data folder, UCI HAR DATASET. run_analysis.R should be placed in the UCI HAR Dataset folder and run from there.
### File descriptions
* run_analysis.R is an R script that combines all the data, does a couple calculations, and creates 2 data sets
* tidy_data.txt contains the first data set that has all the data combined, and adds the means and standard deviations.
* data_avgs.txt contains the second data set which has all the averages of all the variables for each subject and activity.
### What run_analysis.R Does
* Merges the training and the test sets.
* Extracts the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set.
* Writes the resulting data set into tidy_data.txt
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* Writes the resulting data set into data_avgs.txt