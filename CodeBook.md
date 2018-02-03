#**Getting and Cleaning Data Assignment**

##Code Book

##Data Set Information
####As described on the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##Variable Information

For each record in the original dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

For each record in the tidy dataset produced by run_analysis.R:
- The subject ID and activity labels were concatenated with the 561-feature vector
- The training and test data were combined into a single data set
- The data set was pared down to 66 of the 561 variables representing those variables measuring the mean and standard deviation of signals recorded during the experiment. Refer to table below of final variables.
- The mean of observations summarized by subject-activity pairs is recorded in the tidy dataset with a total of 180 observations.


|Variable Name	|	Variable Label|
|---|---|

subjectID	|	Identifier for volunteer performing the activity. Values 1-30.
activityID	|	Identifies which of six activities were performed for the observation. Values 1-6. Created by indexing activity_labels.txt file available in source data
TimeBodyAcc.Mean.X	|	Mean of body acceleration signal in X direction
TimeBodyAcc.Mean.Y	|	Mean of body acceleration signal in Y direction
TimeBodyAcc.Mean.Z	|	Mean of body acceleration signal in Z direction
TimeBodyAcc.StdDev.X	|	Standard deviation of body acceleration signal in X direction
TimeBodyAcc.StdDev.Y	|	Standard deviation of body acceleration signal in Y direction
TimeBodyAcc.StdDev.Z	|	Standard deviation of body acceleration signal in Z direction
TimeGravityAcc.Mean.X	|	Mean of gravity acceleration signal in X direction
TimeGravityAcc.Mean.Y	|	Mean of gravity acceleration signal in Y direction
TimeGravityAcc.Mean.Z	|	Mean of gravity acceleration signal in Z direction
TimeGravityAcc.StdDev.X	|	Standard deviation of gravity acceleration signal in X direction
TimeGravityAcc.StdDev.Y	|	Standard deviation of gravity acceleration signal in Y direction
TimeGravityAcc.StdDev.Z	|	Standard deviation of gravity acceleration signal in Z direction
TimeBodyAccJerk.Mean.X	|	Mean of body linear acceleration signal in X direction
TimeBodyAccJerk.Mean.Y	|	Mean of body linear acceleration signal in Y direction
TimeBodyAccJerk.Mean.Z	|	Mean of body linear acceleration signal in Z direction
TimeBodyAccJerk.StdDev.X	|	Standard deviation of body linear acceleration signal in X direction
TimeBodyAccJerk.StdDev.Y	|	Standard deviation of body linear acceleration signal in Y direction
TimeBodyAccJerk.StdDev.Z	|	Standard deviation of body linear acceleration signal in Z direction
TimeBodyGyro.Mean.X	|	Mean of body angular velocity signal average in sample window in X direction
TimeBodyGyro.Mean.Y	|	Mean of body angular velocity signal average in sample window in Y direction
TimeBodyGyro.Mean.Z	|	Mean of body angular velocity signal average in sample window in Z direction
TimeBodyGyro.StdDev.X	|	Standard deviation of body angular velocity signal average in sample window in X direction
TimeBodyGyro.StdDev.Y	|	Standard deviation of body angular velocity signal average in sample window in Y direction
TimeBodyGyro.StdDev.Z	|	Standard deviation of body angular velocity signal average in sample window in Z direction
TimeBodyGyroJerk.Mean.X	|	Mean of body angular velocity signal in X direction
TimeBodyGyroJerk.Mean.Y	|	Mean of body angular velocity signal in Y direction
TimeBodyGyroJerk.Mean.Z	|	Mean of body angular velocity signal in Z direction
TimeBodyGyroJerk.StdDev.X	|	Standard deviation of body angular velocity signal in X direction
TimeBodyGyroJerk.StdDev.Y	|	Standard deviation of body angular velocity signal in Y direction
TimeBodyGyroJerk.StdDev.Z	|	Standard deviation of body angular velocity signal in Z direction
TimeBodyAccMagnitude.Mean	|	Mean of magnitude of three-dimensional signals calculated using the Euclidean norm
TimeBodyAccMagnitude.StdDev	|	Standard deviation of magnitude of three-dimensional signals calculated using the Euclidean norm
TimeGravityAccMagnitude.Mean	|	Mean of magnitude of three-dimensional signals calculated using the Euclidean norm
TimeGravityAccMagnitude.StdDev	|	Standard deviation of magnitude of three-dimensional signals calculated using the Euclidean norm
TimeBodyAccJerkMagnitude.Mean	|	Mean of magnitude of three-dimensional signals calculated using the Euclidean norm
TimeBodyAccJerkMagnitude.StdDev	|	Standard deviation of magnitude of three-dimensional signals calculated using the Euclidean norm
TimeBodyGyroMagnitude.Mean	|	Mean of magnitude of three-dimensional signals calculated using the Euclidean norm
TimeBodyGyroMagnitude.StdDev	|	Standard deviation of magnitude of three-dimensional signals calculated using the Euclidean norm
TimeBodyGyroJerkMagnitude.Mean	|	Mean of magnitude of three-dimensional signals calculated using the Euclidean norm
TimeBodyGyroJerkMagnitude.StdDev	|Standard deviation of magnitude of three-dimensional signals calculated using the Euclidean norm
FreqBodyAcc.Mean.X	|	Mean of Fast Fourier Transformed signal in X direction
FreqBodyAcc.Mean.Y	|	Mean of Fast Fourier Transformed signal in Y direction
FreqBodyAcc.Mean.Z	|	Mean of Fast Fourier Transformed signal in Z direction
FreqBodyAcc.StdDev.X	|	Standard deviation of Fast Fourier Transformed signal in X direction
FreqBodyAcc.StdDev.Y	|	Standard deviation of Fast Fourier Transformed signal in Y direction
FreqBodyAcc.StdDev.Z	|	Standard deviation of Fast Fourier Transformed signal in Z direction
FreqBodyAccJerk.Mean.X	|	Mean of Fast Fourier Transformed signal in X direction
FreqBodyAccJerk.Mean.Y	|	Mean of Fast Fourier Transformed signal in Y direction
FreqBodyAccJerk.Mean.Z	|	Mean of Fast Fourier Transformed signal in Z direction
FreqBodyAccJerk.StdDev.X	|	Standard deviation of Fast Fourier Transformed signal in X direction
FreqBodyAccJerk.StdDev.Y	|	Standard deviation of Fast Fourier Transformed signal in Y direction
FreqBodyAccJerk.StdDev.Z	|	Standard deviation of Fast Fourier Transformed signal in Z direction
FreqBodyGyro.Mean.X	|	Mean of Fast Fourier Transformed signal in X direction
FreqBodyGyro.Mean.Y	|	Mean of Fast Fourier Transformed signal in Y direction
FreqBodyGyro.Mean.Z	|	Mean of Fast Fourier Transformed signal in Z direction
FreqBodyGyro.StdDev.X	|	Standard deviation of Fast Fourier Transformed signal in X direction
FreqBodyGyro.StdDev.Y	|	Standard deviation of Fast Fourier Transformed signal in Y direction
FreqBodyGyro.StdDev.Z	|	Standard deviation of Fast Fourier Transformed signal in Z direction
FreqBodyAccMagnitude.Mean	|	Mean of magnitude of Fast Fourier Transformed signal calculated using the Euclidean norm
FreqBodyAccMagnitude.StdDev	|	Standard deviation of magnitude of Fast Fourier Transformed signal calculated using the Euclidean norm
FreqBodyAccJerkMagnitude.Mean	|	Mean of magnitude of Fast Fourier Transformed signal calculated using the Euclidean norm
FreqBodyAccJerkMagnitude.StdDev	|	Standard deviation of magnitude of Fast Fourier Transformed signal calculated using the Euclidean norm
FreqBodyGyroMagnitude.Mean	|	Mean of magnitude of Fast Fourier Transformed signal calculated using the Euclidean norm
FreqBodyGyroMagnitude.StdDev	|	Standard deviation of magnitude of Fast Fourier Transformed signal calculated using the Euclidean norm
FreqBodyGyroJerkMagnitude.Mean	|	Mean of magnitude of Fast Fourier Transformed signal calculated using the Euclidean norm
FreqBodyGyroJerkMagnitude.StdDev	|	Standard deviation of magnitude of Fast Fourier Transformed signal calculated using the Euclidean norm
