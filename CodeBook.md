# Tidy Dataset Code Book
This describes the columns in the Tidy Dataset that is created by the run_analysis.R script

###Subject
Integer column  
Identifies the person the measurements apply to.  
Can have values from 1 to 30

###Activity
Character column of length 18  
Contains the activity the subject was doing when the measurements making up the average were taken.  
One of six possible values:
* Laying
* Sitting
* Standing
* Walking
* Walking Downstairs
* Walking Upstairs

###Variable
Character column of length 23  
Contains the name of the measurement.  
The table below shows how the variable names have been altered from those used in the raw data.  

Tidy Dataset Variable Name|Raw Data Feature Name
---|---
TimeBodyAccMeanX|tBodyAcc-mean()-X
TimeBodyAccMeanY|tBodyAcc-mean()-Y
TimeBodyAccMeanZ|tBodyAcc-mean()-Z
TimeBodyAccStdX|tBodyAcc-std()-X
TimeBodyAccStdY|tBodyAcc-std()-Y
TimeBodyAccStdZ|tBodyAcc-std()-Z
TimeGravityAccMeanX|tGravityAcc-mean()-X
TimeGravityAccMeanY|tGravityAcc-mean()-Y
TimeGravityAccMeanZ|tGravityAcc-mean()-Z
TimeGravityAccStdX|tGravityAcc-std()-X
TimeGravityAccStdY|tGravityAcc-std()-Y
TimeGravityAccStdZ|tGravityAcc-std()-Z
TimeBodyAccJerkMeanX|tBodyAccJerk-mean()-X
TimeBodyAccJerkMeanY|tBodyAccJerk-mean()-Y
TimeBodyAccJerkMeanZ|tBodyAccJerk-mean()-Z
TimeBodyAccJerkStdX|tBodyAccJerk-std()-X
TimeBodyAccJerkStdY|tBodyAccJerk-std()-Y
TimeBodyAccJerkStdZ|tBodyAccJerk-std()-Z
TimeBodyGyroMeanX|tBodyGyro-mean()-X
TimeBodyGyroMeanY|tBodyGyro-mean()-Y
TimeBodyGyroMeanZ|tBodyGyro-mean()-Z
TimeBodyGyroStdX|tBodyGyro-std()-X
TimeBodyGyroStdY|tBodyGyro-std()-Y
TimeBodyGyroStdZ|tBodyGyro-std()-Z
TimeBodyGyroJerkMeanX|tBodyGyroJerk-mean()-X
TimeBodyGyroJerkMeanY|tBodyGyroJerk-mean()-Y
TimeBodyGyroJerkMeanZ|tBodyGyroJerk-mean()-Z
TimeBodyGyroJerkStdX|tBodyGyroJerk-std()-X
TimeBodyGyroJerkStdY|tBodyGyroJerk-std()-Y
TimeBodyGyroJerkStdZ|tBodyGyroJerk-std()-Z
TimeBodyAccMagMean|tBodyAccMag-mean()
TimeBodyAccMagStd|tBodyAccMag-std()
TimeGravityAccMagMean|tGravityAccMag-mean()
TimeGravityAccMagStd|tGravityAccMag-std()
TimeBodyAccJerkMagMean|tBodyAccJerkMag-mean()
TimeBodyAccJerkMagStd|tBodyAccJerkMag-std()
TimeBodyGyroMagMean|tBodyGyroMag-mean()
TimeBodyGyroMagStd|tBodyGyroMag-std()
TimeBodyGyroJerkMagMean|tBodyGyroJerkMag-mean()
TimeBodyGyroJerkMagStd|tBodyGyroJerkMag-std()
FreqBodyAccMeanX|fBodyAcc-mean()-X
FreqBodyAccMeanY|fBodyAcc-mean()-Y
FreqBodyAccMeanZ|fBodyAcc-mean()-Z
FreqBodyAccStdX|fBodyAcc-std()-X
FreqBodyAccStdY|fBodyAcc-std()-Y
FreqBodyAccStdZ|fBodyAcc-std()-Z
FreqBodyAccJerkMeanX|fBodyAccJerk-mean()-X
FreqBodyAccJerkMeanY|fBodyAccJerk-mean()-Y
FreqBodyAccJerkMeanZ|fBodyAccJerk-mean()-Z
FreqBodyAccJerkStdX|fBodyAccJerk-std()-X
FreqBodyAccJerkStdY|fBodyAccJerk-std()-Y
FreqBodyAccJerkStdZ|fBodyAccJerk-std()-Z
FreqBodyGyroMeanX|fBodyGyro-mean()-X
FreqBodyGyroMeanY|fBodyGyro-mean()-Y
FreqBodyGyroMeanZ|fBodyGyro-mean()-Z
FreqBodyGyroStdX|fBodyGyro-std()-X
FreqBodyGyroStdY|fBodyGyro-std()-Y
FreqBodyGyroStdZ|fBodyGyro-std()-Z
FreqBodyAccMagMean|fBodyAccMag-mean()
FreqBodyAccMagStd|fBodyAccMag-std()
FreqBodyAccJerkMagMean|fBodyBodyAccJerkMag-mean()
FreqBodyAccJerkMagStd|fBodyBodyAccJerkMag-std()
FreqBodyGyroMagMean|fBodyBodyGyroMag-mean()
FreqBodyGyroMagStd|fBodyBodyGyroMag-std()
FreqBodyGyroJerkMagMean|fBodyBodyGyroJerkMag-mean()
FreqBodyGyroJerkMagStd|fBodyBodyGyroJerkMag-std()

###Average 
Numeric column  

In generating the final data set, the mean of each measurement is taken by subject and activity and the result ends up in the average column.  
The measurements in the raw data are normalised [-1,1], so the average column is also normalised [-1,1]