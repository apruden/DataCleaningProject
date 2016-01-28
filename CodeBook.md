## Code Book for UCI HAR Dataset

## Variables

The variables are derived from the signal measures in the data files. For an explanation of the different measures, read the file `UCI HAR Dataset/features_info.txt` inside the compressed data set file.

The following signals were measured:

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

  - <signal>Mean: Mean value
  - <signal>Std: Standard deviation

Two extra variables are added to the tidy data set:

  - Activity: The labeled activity name
  - Subject: The subject identifier.

In total there are 68 variables in the resulting tidy data set.

## Data Transformations

The following transformations were applied to the original dataset files:

  - The features, subject identifiers and activity labels were combined in a single dataset;
  - test and train datasets were merged together;
  - only mean and standard deviation of features were kept;
  - activity labels identifiers were replaced with human readable labels;
  - descriptive names were given to columns in the loaded data frame.
