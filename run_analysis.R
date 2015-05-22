# Packages necessary for the data transformation
# library(plyr)
# library(dplyr)

# Reading files
activity <- read.table("activity_labels.txt")
features <- read.table("features.txt")
trainData <- read.table("./train/X_train.txt")
trainLabel <- read.table("./train/y_train.txt")
trainSubject <- read.table("./train/subject_train.txt")
testData <- read.table("./test/X_test.txt")
testLabel <- read.table("./test/y_test.txt")
testSubject <- read.table("./test/subject_test.txt")

# Join the data by content
allData <- rbind(trainData, testData)
allLabel <- rbind(trainLabel, testLabel)
allSubject <- rbind(trainSubject, testSubject)

# Extract the mean and standard deviation for each measurement
Indices <- grep("mean\\(\\)|std\\(\\)", features[, 2])
allData <- allData[, Indices]

#Rename columns and remove hyphens
names(allData) <- gsub("\\(\\)", "", features[Indices, 2])
names(allData) <- gsub("mean", "Mean", names(allData))
names(allData) <- gsub("std", "Std", names(allData))
names(allData) <- gsub("-", "", names(allData))

# Name the activities
activity[, 2] <- tolower(gsub("_", " ", activity[, 2]))
# substr(activity[2, 2], 8, 8) <- toupper(substr(activity[2, 2], 8, 8))
# substr(activity[3, 2], 8, 8) <- toupper(substr(activity[3, 2], 8, 8))
activityLabel <- activity[allLabel[, 1], 2]
allLabel[, 1] <- activityLabel
names(allLabel) <- "Activity"

# Add activity labels and create tidy data set
names(allSubject) <- "Subject"
tidyData <- cbind(allSubject, allLabel, allData)
write.table(tidyData, "tidy_data.txt", row.name=FALSE)

# Create a second, independent tidy data set with the average of each variable of activity and subject
sLength <- length(table(allSubject))
aLength <- dim(activity)[1]
cLength <- dim(tidyData)[2]
row <- sLength*aLength
result <- matrix(1, nrow=row, ncol=cLength)
result <- as.data.frame(result)
colnames(result) <- colnames(tidyData)
row <- 1
for(i in 1:sLength) {
    for(j in 1:aLength) {
        result[row, 1] <- sort(unique(allSubject)[, 1])[i]
        result[row, 2] <- activity[j, 2]
        a <- i == tidyData$Subject
        b <- activity[j, 2] == tidyData$Subject
        result[row, 3:cLength] <- colMeans(tidyData[, 3:cLength])
        row <- row + 1
    }
}
write.table(result, "data_with_avg.txt", row.name=FALSE)