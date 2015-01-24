---
title: "TidyData Code Book"
author: "dwake95"
date: "Saturday, January 24, 2015"
output: html_document
---

The data in the TidyData.txt file was compiled based on the data available from the UCI HAR Data set at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The data set is provided with the following citation:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Descriptions of this data are included in the zip file, and they include a features_info.txt file which has a description of the specific measurements.  

This data was then manipulated as described in the read_me.md file, and the following variables produced, which are described below.

  Subject_ID - carried through from the previous study, numbers 1- 30.
                     
  Activity - Carried through from the previous study, but indicates what the subject was doing at the time of the measurement, including LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_uPSTAIRS.
                     
  avg_tBodyAcc.mean.X, avg_tBodyAcc.mean.Y, avg_tBodyAcc.mean.Z - This value provides the average value of the tBodyAcc-XYZ mean, from the UCI HAR features,  based on Activity and Subject. 

avg_tGravityAcc.mean.X, avg_tGravityAcc.mean.Y, avg_tGravityAcc.mean.Z - This value provides the average value of the tGravityAcc-XYZ mean, from the UCI HAR features, based on Activity and Subject. 

  avg_tBodyAccJerk.mean.X, avg_tBodyAccJerk.mean.Y, avg_tBodyAccJerk.mean.Z - This value provides the average value of the tBodyAccJerk-XYZ mean, from the UCI HAR features, based on Activity and Subject. 

  avg_tBodyGyro.mean.X, avg_tBodyGyro.mean.Y, avg_tBodyGyro.mean.Z - This value provides the average value of the tBodyGyro-XYZ mean, from the UCI HAR features, based on Activity and Subject. 

  avg_tBodyGyroJerk.mean.X, avg_tBodyGyroJerk.mean.Y, avg_tBodyGyroJerk.mean.Z - This value provides the average value of the tBodyGyroJerk-XYZ mean, from the UCI HAR features, based on Activity and Subject. 

  avg_tBodyAccMag.mean - This value provides the average value of the tBodyAccMag mean, from the UCI HAR features, based on Activity and Subject. 

  avg_tGravityAccMag.mean - This value provides the average value of the tGravityAccMag mean, from the UCI HAR features, based on Activity and Subject. 

  avg_tBodyAccJerkMag.mean - This value provides the average value of the tBodyAccJerkMag mean, from the UCI HAR features, based on Activity and Subject. 

  avg_tBodyGyroMag.mean - This value provides the average value of the fBodyGyroMag mean, from the UCI HAR features, based on Activity and Subject. 

  avg_tBodyGyroJerkMag.mean - This value provides the average value of the tBodyGyroJerkMag mean, from the UCI HAR features, based on Activity and Subject. 

  avg_fBodyAcc.mean.X, avg_fBodyAcc.mean.Y,avg_fBodyAcc.mean.Z - This value provides the average value of the fBodyAcc-XYZ mean, from the UCI HAR features, based on Activity and Subject. 

  avg_fBodyAccJerk.mean.X, avg_fBodyAccJerk.mean.Y, avg_fBodyAccJerk.mean.Z - This value provides the average value of the fBodyAccJerk-XYZ mean, from the UCI HAR features, based on Activity and Subject. 

  avg_fBodyGyro.mean.X, avg_fBodyGyro.mean.Y, avg_fBodyGyro.mean.Z - This value provides the average value of the fBodyGyro-XYZ mean, from the UCI HAR features, based on Activity and Subject. 

  avg_fBodyAccMag.mean  - This value provides the average value of the fBodyAccMag mean, from the UCI HAR features, based on Activity and Subject. 

  avg_fBodyBodyAccJerkMag.mean - This value provides the average value of the fBodyAccJerkMag mean, from the UCI HAR features, based on Activity and Subject. 

  avg_fBodyBodyGyroMag.mean  - This value provides the average value of the fBodyGyroMag mean, from the UCI HAR features, based on Activity and Subject. 

  avg_fBodyBodyGyroJerkMag.mean  - This value provides the average value of the fBodyGyroJerkMag mean, from the UCI HAR features, based on Activity and Subject. 

  avg_tBodyAcc.std.X, avg_tBodyAcc.std.Y, avg_tBodyAcc.std.Z  - This value provides the average value of the tBodyAcc-XYZ standard deviation, from the UCI HAR features, based on Activity and Subject. 

  avg_tGravityAcc.std.X, avg_tGravityAcc.std.Y, avg_tGravityAcc.std.Z - This value provides the average value of the tGravityAcc-XYZ standard deviation, from the UCI HAR features, based on Activity and Subject. 
 
  avg_tBodyAccJerk.std.X, avg_tBodyAccJerk.std.Y, avg_tBodyAccJerk.std.Z  - This value provides the average value of the tBodyAccJerk-XYZ standard deviation, from the UCI HAR features, based on Activity and Subject. 

  avg_tBodyGyro.std.X, avg_tBodyGyro.std.Y, avg_tBodyGyro.std.Z  - This value provides the average value of the tBodyGyro-XYZ standard deviation, from the UCI HAR features, based on Activity and Subject. 

  avg_tBodyGyroJerk.std.X, avg_tBodyGyroJerk.std.Y, avg_tBodyGyroJerk.std.Z  - This value provides the average value of the tBodyGyroJerk-XYZ standard deviation, from the UCI HAR features, based on Activity and Subject. 

  avg_tBodyAccMag.std - This value provides the average value of the tBodyAccMag standard deviation, from the UCI HAR features, based on Activity and Subject. 
  
  avg_tGravityAccMag.std - This value provides the average value of the tGravityAccMag standard deviation, from the UCI HAR features, based on Activity and Subject. 
  
  avg_tBodyAccJerkMag.std - This value provides the average value of the tBodyAccJerkMag standard deviation, from the UCI HAR features, based on Activity and Subject. 
  
  avg_tBodyGyroMag.std - This value provides the average value of the tBodyGyroMag standard deviation, from the UCI HAR features, based on Activity and Subject. 
  
  avg_tBodyGyroJerkMag.std - This value provides the average value of the tBodyGyroJerkMag standard deviation, from the UCI HAR features, based on Activity and Subject. 
  
  avg_fBodyAcc.std.X, avg_fBodyAcc.std.Y, avg_fBodyAcc.std.Z - This value provides the average value of the fBodyAcc-XYZ standard deviation, from the UCI HAR features, based on Activity and Subject. 
  
  avg_fBodyAccJerk.std.X, avg_fBodyAccJerk.std.Y, avg_fBodyAccJerk.std.Z - This value provides the average value of the fBodyAccJerk-XYZ standard deviation, from the UCI HAR features, based on Activity and Subject. 
  
  avg_fBodyGyro.std.X, avg_fBodyGyro.std.Y, avg_fBodyGyro.std.Z - This value provides the average value of the fBodyGyro-XYZ standard deviation, from the UCI HAR features, based on Activity and Subject. 
  
  avg_fBodyAccMag.std - This value provides the average value of the fBodyAccMag standard deviation, from the UCI HAR features, based on Activity and Subject. 
  
  avg_fBodyBodyAccJerkMag.std - This value provides the average value of the fBodyAccJerkMag standard deviation, from the UCI HAR features, based on Activity and Subject. 
  
  avg_fBodyBodyGyroMag.std - This value provides the average value of the fBodyGyroMag standard deviation, from the UCI HAR features, based on Activity and Subject. 
  
  avg_fBodyBodyGyroJerkMag.std - This value provides the average value of the fBodyGyroJerkMag standard deviation, from the UCI HAR features, based on Activity and Subject. 
  
