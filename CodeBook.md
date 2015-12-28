# Codebook

The tidy data contains the aggregate averages of each of the mean() and
std() features present in the "corresponding HAR Dataset" (which includes both the "test"
and "train" data).  Each row averages the features over the subject and
activity combination.  


The data colums are as follows:

  SubjectId (integer): the subject id

  Activity (factor): the activity being performed, one of WALKING,

    WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING

     1	  tBodyAcc.mean.X (numeric): average of corresponding feature 

     2	  tBodyAcc.mean.Y (numeric): average of corresponding feature 

     3	  tBodyAcc.mean.Z (numeric): average of corresponding feature 

     4	  tGravityAcc.mean.X (numeric): average of corresponding feature 

     5	  tGravityAcc.mean.Y (numeric): average of corresponding feature 

     6	  tGravityAcc.mean.Z (numeric): average of corresponding feature 

     7	  tBodyAccJerk.mean.X (numeric): average of corresponding feature 

     8	  tBodyAccJerk.mean.Y (numeric): average of corresponding feature 

     9	  tBodyAccJerk.mean.Z (numeric): average of corresponding feature 

    10	  tBodyGyro.mean.X (numeric): average of corresponding feature 

    11	  tBodyGyro.mean.Y (numeric): average of corresponding feature 

    12	  tBodyGyro.mean.Z (numeric): average of corresponding feature 

    13	  tBodyGyroJerk.mean.X (numeric): average of corresponding feature 

    14	  tBodyGyroJerk.mean.Y (numeric): average of corresponding feature 

    15	  tBodyGyroJerk.mean.Z (numeric): average of corresponding feature 

    16	  tBodyAccMag.mean (numeric): average of corresponding feature 

    17	  tGravityAccMag.mean (numeric): average of corresponding feature 

    18	  tBodyAccJerkMag.mean (numeric): average of corresponding feature 

    19	  tBodyGyroMag.mean (numeric): average of corresponding feature 

    20	  tBodyGyroJerkMag.mean (numeric): average of corresponding feature 

    21	  fBodyAcc.mean.X (numeric): average of corresponding feature 

    22	  fBodyAcc.mean.Y (numeric): average of corresponding feature 

    23	  fBodyAcc.mean.Z (numeric): average of corresponding feature 

    24	  fBodyAccJerk.mean.X (numeric): average of corresponding feature 

    25	  fBodyAccJerk.mean.Y (numeric): average of corresponding feature 

    26	  fBodyAccJerk.mean.Z (numeric): average of corresponding feature 

    27	  fBodyGyro.mean.X (numeric): average of corresponding feature 

    28	  fBodyGyro.mean.Y (numeric): average of corresponding feature 

    29	  fBodyGyro.mean.Z (numeric): average of corresponding feature 

    30	  fBodyAccMag.mean (numeric): average of corresponding feature 

    31	  fBodyBodyAccJerkMag.mean (numeric): average of corresponding feature 

    32	  fBodyBodyGyroMag.mean (numeric): average of corresponding feature 

    33	  fBodyBodyGyroJerkMag.mean (numeric): average of corresponding feature 

    34	  tBodyAcc.std.X (numeric): average of corresponding feature 

    35	  tBodyAcc.std.Y (numeric): average of corresponding feature 

    36	  tBodyAcc.std.Z (numeric): average of corresponding feature 

    37	  tGravityAcc.std.X (numeric): average of corresponding feature 

    38	  tGravityAcc.std.Y (numeric): average of corresponding feature 

    39	  tGravityAcc.std.Z (numeric): average of corresponding feature 

    40	  tBodyAccJerk.std.X (numeric): average of corresponding feature 

    41	  tBodyAccJerk.std.Y (numeric): average of corresponding feature 

    42	  tBodyAccJerk.std.Z (numeric): average of corresponding feature 

    43	  tBodyGyro.std.X (numeric): average of corresponding feature 

    44	  tBodyGyro.std.Y (numeric): average of corresponding feature 

    45	  tBodyGyro.std.Z (numeric): average of corresponding feature 

    46	  tBodyGyroJerk.std.X (numeric): average of corresponding feature 

    47	  tBodyGyroJerk.std.Y (numeric): average of corresponding feature 

    48	  tBodyGyroJerk.std.Z (numeric): average of corresponding feature 

    49	  tBodyAccMag.std (numeric): average of corresponding feature 

    50	  tGravityAccMag.std (numeric): average of corresponding feature 

    51	  tBodyAccJerkMag.std (numeric): average of corresponding feature 

    52	  tBodyGyroMag.std (numeric): average of corresponding feature 

    53	  tBodyGyroJerkMag.std (numeric): average of corresponding feature 

    54	  fBodyAcc.std.X (numeric): average of corresponding feature 

    55	  fBodyAcc.std.Y (numeric): average of corresponding feature 

    56	  fBodyAcc.std.Z (numeric): average of corresponding feature 

    57	  fBodyAccJerk.std.X (numeric): average of corresponding feature 

    58	  fBodyAccJerk.std.Y (numeric): average of corresponding feature 

    59	  fBodyAccJerk.std.Z (numeric): average of corresponding feature 

    60	  fBodyGyro.std.X (numeric): average of corresponding feature 

    61	  fBodyGyro.std.Y (numeric): average of corresponding feature 

    62	  fBodyGyro.std.Z (numeric): average of corresponding feature 

    63	  fBodyAccMag.std (numeric): average of corresponding feature 

    64	  fBodyBodyAccJerkMag.std (numeric): average of corresponding feature 

    65	  fBodyBodyGyroMag.std (numeric): average of corresponding feature 

    66	  fBodyBodyGyroJerkMag.std (numeric): average of corresponding feature 

    67	 

## Notes on Feature Units

The units for the average features are the same as the corresponding feature data.
While the original data was recorded as raw sensor readingd (probably raw
ADC values), and converted to Gs (accelerometer) and radians/second
(gyro), the feature file (X\_\*.txt) values have been normalized into the
range [-1, 1].  This is documented in the README.txt file supplied with
the corresponding data set.

