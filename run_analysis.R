# Prior to running this script you must download the data from 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# and unzip the data to the working directory.

# Once confirmed that the working directory contains the folder "UCI HAR Dataset"
# the following script shall complete the below steps as required for the assignment.

# 1) Merges the training and the test sets to create one data set.
# 2) Extracts only the measurements on the mean and standard deviation for each 
#    measurement.
# 3) Uses descriptive activity names to name the activities in the data set
# 4) Appropriately labels the data set with descriptive variable names.
# 5) From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.

## Read required files from the unzipped folder into R.

features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
activityType <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)


## Assign variable names to tables above, excluding features (vector to be used
## as variable names in measurement data)

colnames(activityType) = c("activityID","activityType")
colnames(subjectTrain) = "subjectID"
colnames(xTrain) = features[,2]
colnames(yTrain) = "activityID"
colnames(subjectTest) = "subjectID"
colnames(xTest) = features[,2]
colnames(yTest) = "activityID"

## Create training data set
trainDataSet <- cbind(subjectTrain, yTrain, xTrain)

## Create test data set
testDataSet <- cbind(subjectTest, yTest, xTest)

# Step 1) from above: Merges the training and the test sets to create one data set.
allData <- rbind(trainDataSet, testDataSet)

##Capture all variable names in merged data set in order to filter for next step.
allVariables <- colnames(allData)

# Step 2) from above: Extracts only the measurements on the mean and standard 
#                     deviation for each measurement.
##                    Only those measurements from features which had the suffix
##                    "-mean()" or "-std()" were retained to satisfy the second
##                    requirement of the assignment, in addition to the subject
##                    and activity data.

finalVariables <- (grepl("subject..", allVariables) | grepl("activity..", 
                                                            allVariables) 
                   | grepl("-mean()..", allVariables) & !grepl("-meanFreq()..", 
                                                               allVariables)
                   | grepl("-std()..", allVariables))

##Subset the single data set created for Step 1 to include only measurements
##pertaining to mean or standard deviation.

finalData <- allData[finalVariables == TRUE]

# Step 3) from above: Uses descriptive activity names to name the activities in 
#                     the data set

finalData$activityID <- activityType$activityType[match(finalData$activityID,
                                                        activityType$activityID)]

## Update the variables logical vector as the filtered variable character vector
finalVariables <- colnames(finalData)

# Step 4) from above: Appropriately labels the data set with descriptive variable 
#                     names.

##Loops through character vector to clean up the variable names
for (i in 1:length(finalVariables)) 
{
        finalVariables[i] = gsub("\\()","",finalVariables[i])
        finalVariables[i] = gsub("-","\\.",finalVariables[i])
        finalVariables[i] = gsub(".std",".StdDev",finalVariables[i])
        finalVariables[i] = gsub(".mean",".Mean",finalVariables[i])
        finalVariables[i] = gsub("^(f)","Freq",finalVariables[i])
        finalVariables[i] = gsub("^(t)","Time",finalVariables[i])
        finalVariables[i] = gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",
                                  finalVariables[i])
        finalVariables[i] = gsub("[Mm]ag","Magnitude",finalVariables[i])
};

##Update the variable names in the final data set to the cleaned up version
colnames(finalData) = finalVariables

# Step 5) from above: From the data set in step 4, creates a second, independent 
#                     tidy data set with the average of each variable for each 
#                     activity and each subject.

library(dplyr)
tidyData <- group_by(finalData,subjectID,activityID)
tidyData <- summarize_all(tidyData, mean)

#Create text file of data set created in step 5.
write.table(tidyData, file = "./tidyData.txt", row.names = FALSE)

## Please note when reading tidyData.txt into R, set parameter header = TRUE
