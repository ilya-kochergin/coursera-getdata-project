# Codebook

The tidy data contains the aggregate averages of each of the mean() and
std() features present in the "UCI HAR Dataset" (which includes both the "test"
and "train" data).  Each row averages the features over the subject and
activity combination.  


The data colums are as follows:

 1. SubjectId (integer): the subject id
 1. Activity (factor): the activity being performed, one of WALKING,
    WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING
 1. tBodyAcc.mean.X (numeric): average of UCI feature
 1. tBodyAcc.mean.Y (numeric): average of UCI feature
 1. tBodyAcc.mean.Z (numeric): average of UCI feature
 1. tGravityAcc.mean.X (numeric): average of UCI feature
 1. tGravityAcc.mean.Y (numeric): average of UCI feature
 1. tGravityAcc.mean.Z (numeric): average of UCI feature
 1. tBodyAccJerk.mean.X (numeric): average of UCI feature
 1. tBodyAccJerk.mean.Y (numeric): average of UCI feature
 1. tBodyAccJerk.mean.Z (numeric): average of UCI feature
 1. tBodyGyro.mean.X (numeric): average of UCI feature
 1. tBodyGyro.mean.Y (numeric): average of UCI feature
 1. tBodyGyro.mean.Z (numeric): average of UCI feature
 1. tBodyGyroJerk.mean.X (numeric): average of UCI feature
 1. tBodyGyroJerk.mean.Y (numeric): average of UCI feature
 1. tBodyGyroJerk.mean.Z (numeric): average of UCI feature
 1. tBodyAccMag.mean (numeric): average of UCI feature
 1. tGravityAccMag.mean (numeric): average of UCI feature
 1. tBodyAccJerkMag.mean (numeric): average of UCI feature
 1. tBodyGyroMag.mean (numeric): average of UCI feature
 1. tBodyGyroJerkMag.mean (numeric): average of UCI feature
 1. fBodyAcc.mean.X (numeric): average of UCI feature
 1. fBodyAcc.mean.Y (numeric): average of UCI feature
 1. fBodyAcc.mean.Z (numeric): average of UCI feature
 1. fBodyAccJerk.mean.X (numeric): average of UCI feature
 1. fBodyAccJerk.mean.Y (numeric): average of UCI feature
 1. fBodyAccJerk.mean.Z (numeric): average of UCI feature
 1. fBodyGyro.mean.X (numeric): average of UCI feature
 1. fBodyGyro.mean.Y (numeric): average of UCI feature
 1. fBodyGyro.mean.Z (numeric): average of UCI feature
 1. fBodyAccMag.mean (numeric): average of UCI feature
 1. fBodyBodyAccJerkMag.mean (numeric): average of UCI feature
 1. fBodyBodyGyroMag.mean (numeric): average of UCI feature
 1. fBodyBodyGyroJerkMag.mean (numeric): average of UCI feature
 1. tBodyAcc.std.X (numeric): average of UCI feature
 1. tBodyAcc.std.Y (numeric): average of UCI feature
 1. tBodyAcc.std.Z (numeric): average of UCI feature
 1. tGravityAcc.std.X (numeric): average of UCI feature
 1. tGravityAcc.std.Y (numeric): average of UCI feature
 1. tGravityAcc.std.Z (numeric): average of UCI feature
 1. tBodyAccJerk.std.X (numeric): average of UCI feature
 1. tBodyAccJerk.std.Y (numeric): average of UCI feature
 1. tBodyAccJerk.std.Z (numeric): average of UCI feature
 1. tBodyGyro.std.X (numeric): average of UCI feature
 1. tBodyGyro.std.Y (numeric): average of UCI feature
 1. tBodyGyro.std.Z (numeric): average of UCI feature
 1. tBodyGyroJerk.std.X (numeric): average of UCI feature
 1. tBodyGyroJerk.std.Y (numeric): average of UCI feature
 1. tBodyGyroJerk.std.Z (numeric): average of UCI feature
 1. tBodyAccMag.std (numeric): average of UCI feature
 1. tGravityAccMag.std (numeric): average of UCI feature
 1. tBodyAccJerkMag.std (numeric): average of UCI feature
 1. tBodyGyroMag.std (numeric): average of UCI feature
 1. tBodyGyroJerkMag.std (numeric): average of UCI feature
 1. fBodyAcc.std.X (numeric): average of UCI feature
 1. fBodyAcc.std.Y (numeric): average of UCI feature
 1. fBodyAcc.std.Z (numeric): average of UCI feature
 1. fBodyAccJerk.std.X (numeric): average of UCI feature
 1. fBodyAccJerk.std.Y (numeric): average of UCI feature
 1. fBodyAccJerk.std.Z (numeric): average of UCI feature
 1. fBodyGyro.std.X (numeric): average of UCI feature
 1. fBodyGyro.std.Y (numeric): average of UCI feature
 1. fBodyGyro.std.Z (numeric): average of UCI feature
 1. fBodyAccMag.std (numeric): average of UCI feature
 1. fBodyBodyAccJerkMag.std (numeric): average of UCI feature
 1. fBodyBodyGyroMag.std (numeric): average of UCI feature
 1. fBodyBodyGyroJerkMag.std (numeric): average of UCI feature

## Notes on Feature Units

The units for the average features are the same as the UCI feature data.
While the original data was recorded as raw sensor readingd (probably raw
ADC values), and converted to Gs (accelerometer) and radians/second
(gyro), the feature file (X\_\*.txt) values have been normalized into the
range [-1, 1].  This is documented in the README.txt file supplied with
the UCI data set.

