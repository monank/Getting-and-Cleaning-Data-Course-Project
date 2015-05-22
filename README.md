## Getting and Cleaning Data Course Project
Information about the experiment and data can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This course project is to gather data from the dataset, merge them, and clean it for analysis. The experiment had 30 volunteers between the ages of 19 and 48 years old perform six activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying) while wearing a Samsung Galaxy S II smartphone on their waist.

Download the original data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
Unzip it and set your working directory as the data folder, UCI HAR DATASET. run_analysis.R should be placed in the UCI HAR Dataset folder and run from there.

* Merges the training and the test sets.
* Extracts the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set.
* Writes the resulting data set into tidy_data.txt
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* Writes the resulting data set into data_avgs.txt