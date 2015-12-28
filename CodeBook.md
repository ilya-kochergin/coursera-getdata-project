# Codebook

The tidy data contains the aggregate averages of each of the mean() and
std() features present in the "corresponding HAR Dataset" (which includes both the "test"
and "train" data).  Each row averages the features over the subject and
activity combination.  


The data colums are as follows:

     1	  SubjectId (integer): the subject id 

     2	  Activity (factor): the activity being performed, one of WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING 

     3	  tBodyAcc.mean.X (numeric): average of corresponding feature 

     4	  tBodyAcc.mean.Y (numeric): average of corresponding feature 

     5	  tBodyAcc.mean.Z (numeric): average of corresponding feature 

     6	  tGravityAcc.mean.X (numeric): average of corresponding feature 

     7	  tGravityAcc.mean.Y (numeric): average of corresponding feature 

     8	  tGravityAcc.mean.Z (numeric): average of corresponding feature 

     9	  tBodyAccJerk.mean.X (numeric): average of corresponding feature 

    10	  tBodyAccJerk.mean.Y (numeric): average of corresponding feature 

    11	  tBodyAccJerk.mean.Z (numeric): average of corresponding feature 

    12	  tBodyGyro.mean.X (numeric): average of corresponding feature 

    13	  tBodyGyro.mean.Y (numeric): average of corresponding feature 

    14	  tBodyGyro.mean.Z (numeric): average of corresponding feature 

    15	  tBodyGyroJerk.mean.X (numeric): average of corresponding feature 

    16	  tBodyGyroJerk.mean.Y (numeric): average of corresponding feature 

    17	  tBodyGyroJerk.mean.Z (numeric): average of corresponding feature 

    18	  tBodyAccMag.mean (numeric): average of corresponding feature 

    19	  tGravityAccMag.mean (numeric): average of corresponding feature 

    20	  tBodyAccJerkMag.mean (numeric): average of corresponding feature 

    21	  tBodyGyroMag.mean (numeric): average of corresponding feature 

    22	  tBodyGyroJerkMag.mean (numeric): average of corresponding feature 

    23	  fBodyAcc.mean.X (numeric): average of corresponding feature 

    24	  fBodyAcc.mean.Y (numeric): average of corresponding feature 

    25	  fBodyAcc.mean.Z (numeric): average of corresponding feature 

    26	  fBodyAccJerk.mean.X (numeric): average of corresponding feature 

    27	  fBodyAccJerk.mean.Y (numeric): average of corresponding feature 

    28	  fBodyAccJerk.mean.Z (numeric): average of corresponding feature 

    29	  fBodyGyro.mean.X (numeric): average of corresponding feature 

    30	  fBodyGyro.mean.Y (numeric): average of corresponding feature 

    31	  fBodyGyro.mean.Z (numeric): average of corresponding feature 

    32	  fBodyAccMag.mean (numeric): average of corresponding feature 

    33	  fBodyBodyAccJerkMag.mean (numeric): average of corresponding feature 

    34	  fBodyBodyGyroMag.mean (numeric): average of corresponding feature 

    35	  fBodyBodyGyroJerkMag.mean (numeric): average of corresponding feature 

    36	  tBodyAcc.std.X (numeric): average of corresponding feature 

    37	  tBodyAcc.std.Y (numeric): average of corresponding feature 

    38	  tBodyAcc.std.Z (numeric): average of corresponding feature 

    39	  tGravityAcc.std.X (numeric): average of corresponding feature 

    40	  tGravityAcc.std.Y (numeric): average of corresponding feature 

    41	  tGravityAcc.std.Z (numeric): average of corresponding feature 

    42	  tBodyAccJerk.std.X (numeric): average of corresponding feature 

    43	  tBodyAccJerk.std.Y (numeric): average of corresponding feature 

    44	  tBodyAccJerk.std.Z (numeric): average of corresponding feature 

    45	  tBodyGyro.std.X (numeric): average of corresponding feature 

    46	  tBodyGyro.std.Y (numeric): average of corresponding feature 

    47	  tBodyGyro.std.Z (numeric): average of corresponding feature 

    48	  tBodyGyroJerk.std.X (numeric): average of corresponding feature 

    49	  tBodyGyroJerk.std.Y (numeric): average of corresponding feature 

    50	  tBodyGyroJerk.std.Z (numeric): average of corresponding feature 

    51	  tBodyAccMag.std (numeric): average of corresponding feature 

    52	  tGravityAccMag.std (numeric): average of corresponding feature 

    53	  tBodyAccJerkMag.std (numeric): average of corresponding feature 

    54	  tBodyGyroMag.std (numeric): average of corresponding feature 

    55	  tBodyGyroJerkMag.std (numeric): average of corresponding feature 

    56	  fBodyAcc.std.X (numeric): average of corresponding feature 

    57	  fBodyAcc.std.Y (numeric): average of corresponding feature 

    58	  fBodyAcc.std.Z (numeric): average of corresponding feature 

    59	  fBodyAccJerk.std.X (numeric): average of corresponding feature 

    60	  fBodyAccJerk.std.Y (numeric): average of corresponding feature 

    61	  fBodyAccJerk.std.Z (numeric): average of corresponding feature 

    62	  fBodyGyro.std.X (numeric): average of corresponding feature 

    63	  fBodyGyro.std.Y (numeric): average of corresponding feature 

    64	  fBodyGyro.std.Z (numeric): average of corresponding feature 

    65	  fBodyAccMag.std (numeric): average of corresponding feature 

    66	  fBodyBodyAccJerkMag.std (numeric): average of corresponding feature 

    67	  fBodyBodyGyroMag.std (numeric): average of corresponding feature 

    68	  fBodyBodyGyroJerkMag.std (numeric): average of corresponding feature 


## Notes on Feature Units

The units for the average features are the same as the corresponding feature data.
While the original data was recorded as raw sensor readingd (probably raw
ADC values), and converted to Gs (accelerometer) and radians/second
(gyro), the feature file (X\_\*.txt) values have been normalized into the
range [-1, 1].  This is documented in the README.txt file supplied with
the corresponding data set.

