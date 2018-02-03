# Coursera Getting & Cleaning Data Assignment

This repo contains the assignment requirements for the Getting and Cleaning Data course offered by Coursera and Johns Hopkins. The purpose of the assignment is to demonstrate ability to collect, work with, and clean a data set.

### The Data

The data was collected from smartphones worn during experiments run on 30 test subjects performing six different activities.<sup>1</sup> The smartphone data was generated via the device's embedded accelerometer and gyroscope. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Detailed information about the data used in this assignment can be found in the [University of California Irvine (UCI) Machine Learning Repository.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) The actual data is [here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Project Objective

In addition to this README.md and the code book document, the goal of the project is to produce a script run_analysis.R which performs the following requirements:

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation for each measurement.
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names.
5.  From the data set in step 4, creates a second, independent tidy data set (tidyData.txt) with the average of each variable for each activity and each subject.

### Notes Regarding Script

Prior to running this script you must download the data from [HERE](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)and unzip the data to the working directory.
Once confirmed that the working directory contains the folder "UCI HAR Dataset" the above script shall complete the steps as required for the assignment.


## Footnote
1. Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.



