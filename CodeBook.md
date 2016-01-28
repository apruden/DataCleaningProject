## Code Book for UCI HAR Dataset

## Variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

A full description of the measured signals is available at the original site: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The following signals were extracted from the original data:

  - tBodyAcc for axis X, Y and Z;
  - tGravityAcc for axis X, Y and Z;
  - tBodyAccJerk for axis X, Y and Z;
  - tBodyGyro for axis X, Y and Z;
  - tBodyGyroJerk for axis X, Y and Z;
  - tBodyAccMag
  - tGravityAccMag
  - tBodyAccJerkMag
  - tBodyGyroMag
  - tBodyGyroJerkMag
  - fBodyAcc for axis X, Y and Z;
  - fBodyAccJerk for axis X, Y and Z;
  - fBodyGyro for axis X, Y and Z;
  - fBodyAccMag
  - fBodyAccJerkMag
  - fBodyGyroMag
  - fBodyGyroJerkMag

For each of these features, the following variables are extracted from the data and present in the tidy data set:

  - <feature_name>Mean: Mean value
  - <feature_name>Std: Standard deviation

Two extra variables are added to the tidy data set:

  - Activity: The labeled activity name which can be: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING;
  - Subject: The subject identifier, which is an integer number between 1 to 30.

In total there are 68 variables in the resulting tidy data set.

## Data Transformations

The following transformations were applied to the original dataset files:

  - The features, subject identifiers and activity labels were combined in a single dataset;
  - test and train datasets were merged together;
  - only mean and standard deviation of features were kept;
  - activity labels identifiers were replaced with human readable labels;
  - descriptive names were given to columns in the loaded data frame.
