# Prior to running this script, Utilize the downloadZip.R script to download
# and unzip the UCI HAR Dataset. 

# Below is one R script called run_analysis.R that does the following: 


# 1. Merges the training and the test sets to create one data set.

# 1.a  First create R objects out of the different data sets, and provide
# column labels based on the features as described in the features.txt file.

actLabels = read.table("./data/UCI HAR Dataset/activity_labels.txt", 
                       col.names=c("Activity_Label", "Activity"))
features = read.table("./data/UCI HAR Dataset/features.txt")

SubTest = read.table("./data/UCI HAR Dataset/test/subject_test.txt", 
                     col.names="Subject_ID")
XTest = read.table("./data/UCI HAR Dataset/test/X_test.txt", 
                   col.names=features[,2])
YTest = read.table("./data/UCI HAR Dataset/test/Y_test.txt", 
                   col.names="Activity_Label")
SubTrain = read.table("./data/UCI HAR Dataset/train/subject_train.txt", 
                      col.names="Subject_ID")
XTrain = read.table("./data/UCI HAR Dataset/train/X_train.txt", 
                    col.names=features[,2])
YTrain = read.table("./data/UCI HAR Dataset/train/Y_train.txt", 
                    col.names="Activity_Label")

# 1.b  Then create a single Data Frame for each of the Training Data 
# and the Test Data.

TestData = cbind(SubTest, YTest, XTest)
TrainData = cbind(SubTrain, YTrain, XTrain)

# 1.c  Now we need to combine the Test and Train data frames together.

TotalData = rbind(TestData, TrainData)

# 2. Extracts only the measurements on the mean and standard deviation for each 
# measurement. 
#
# There are other measurements that contain "mean", however the 
# angle() and meanFreq() which are not to be included in the data set based on
# the instructions.  

meanStdData <- select(TotalData, Subject_ID, Activity.Label, contains("mean"), 
        contains("std"), -contains("angle"), -contains("meanFreq"))
                      

# 3. Uses descriptive activity names to name the activities in the data set

# The actLabels object contains the descriptive variables for the activities in 
# the dataset, so this is used as a look-up table to modify the numeric values
# in the meanStdData object and modify them to descriptive activity names.

meanStdData[,2] <- actLabels[meanStdData[,2],2]

# 4. Appropriately labels the data set with descriptive variable names. 

# This step was partially accomplished under step 1 by adding the descriptive 
# variable names from the Features.txt and also providing the Subject_ID and 
# Activity.Label.  The following code renames the Activity.Label column to 
# Activity based on the change in the data in section 3 above and also fixes the
# names within the other columns by removing excess .'s.

meanStdData = rename(meanStdData, Activity = Activity.Label, 
                     tBodyAcc.mean.X = tBodyAcc.mean...X, 
                     tBodyAcc.mean.Y = tBodyAcc.mean...Y, 
                     tBodyAcc.mean.Z = tBodyAcc.mean...Z,
                     tGravityAcc.mean.X = tGravityAcc.mean...X,
                     tGravityAcc.mean.Y = tGravityAcc.mean...Y,
                     tGravityAcc.mean.Z = tGravityAcc.mean...Z,
                     tBodyAccJerk.mean.X = tBodyAccJerk.mean...X,
                     tBodyAccJerk.mean.Y = tBodyAccJerk.mean...Y,
                     tBodyAccJerk.mean.Z = tBodyAccJerk.mean...Z,
                     tBodyGyro.mean.X = tBodyGyro.mean...X,
                     tBodyGyro.mean.Y = tBodyGyro.mean...Y,
                     tBodyGyro.mean.Z = tBodyGyro.mean...Z,
                     tBodyGyroJerk.mean.X = tBodyGyroJerk.mean...X,
                     tBodyGyroJerk.mean.Y = tBodyGyroJerk.mean...Y,
                     tBodyGyroJerk.mean.Z = tBodyGyroJerk.mean...Z,
                     tBodyAccMag.mean = tBodyAccMag.mean..,
                     tGravityAccMag.mean = tGravityAccMag.mean..,
                     tBodyAccJerkMag.mean = tBodyAccJerkMag.mean..,
                     tBodyGyroMag.mean = tBodyGyroMag.mean..,     
                     tBodyGyroJerkMag.mean = tBodyGyroJerkMag.mean..,    
                     fBodyAcc.mean.X = fBodyAcc.mean...X,
                     fBodyAcc.mean.Y = fBodyAcc.mean...Y,          
                     fBodyAcc.mean.Z = fBodyAcc.mean...Z,
                     fBodyAccJerk.mean.X = fBodyAccJerk.mean...X,     
                     fBodyAccJerk.mean.Y = fBodyAccJerk.mean...Y,
                     fBodyAccJerk.mean.Z = fBodyAccJerk.mean...Z,      
                     fBodyGyro.mean.X = fBodyGyro.mean...X,
                     fBodyGyro.mean.Y = fBodyGyro.mean...Y,         
                     fBodyGyro.mean.Z = fBodyGyro.mean...Z,
                     fBodyAccMag.mean = fBodyAccMag.mean..,  
                     fBodyBodyAccJerkMag.mean = fBodyBodyAccJerkMag.mean..,
                     fBodyBodyGyroMag.mean = fBodyBodyGyroMag.mean..,
                     fBodyBodyGyroJerkMag.mean = fBodyBodyGyroJerkMag.mean..,
                     tBodyAcc.std.X = tBodyAcc.std...X,
                     tBodyAcc.std.Y = tBodyAcc.std...Y,
                     tBodyAcc.std.Z = tBodyAcc.std...Z,           
                     tGravityAcc.std.X = tGravityAcc.std...X,
                     tGravityAcc.std.Y = tGravityAcc.std...Y,        
                     tGravityAcc.std.Z = tGravityAcc.std...Z,
                     tBodyAccJerk.std.X = tBodyAccJerk.std...X,       
                     tBodyAccJerk.std.Y = tBodyAccJerk.std...Y,       
                     tBodyAccJerk.std.Z = tBodyAccJerk.std...Z,       
                     tBodyGyro.std.X = tBodyGyro.std...X,  
                     tBodyGyro.std.Y = tBodyGyro.std...Y,          
                     tBodyGyro.std.Z = tBodyGyro.std...Z,
                     tBodyGyroJerk.std.X = tBodyGyroJerk.std...X,     
                     tBodyGyroJerk.std.Y = tBodyGyroJerk.std...Y,
                     tBodyGyroJerk.std.Z = tBodyGyroJerk.std...Z,
                     tBodyAccMag.std = tBodyAccMag.std..,
                     tGravityAccMag.std = tGravityAccMag.std..,       
                     tBodyAccJerkMag.std = tBodyAccJerkMag.std..,
                     tBodyGyroMag.std = tBodyGyroMag.std..,
                     tBodyGyroJerkMag.std = tBodyGyroJerkMag.std..,
                     fBodyAcc.std.X = fBodyAcc.std...X,          
                     fBodyAcc.std.Y = fBodyAcc.std...Y,
                     fBodyAcc.std.Z = fBodyAcc.std...Z,  
                     fBodyAccJerk.std.X = fBodyAccJerk.std...X,
                     fBodyAccJerk.std.Y = fBodyAccJerk.std...Y,       
                     fBodyAccJerk.std.Z = fBodyAccJerk.std...Z,
                     fBodyGyro.std.X = fBodyGyro.std...X,         
                     fBodyGyro.std.Y = fBodyGyro.std...Y,
                     fBodyGyro.std.Z = fBodyGyro.std...Z,         
                     fBodyAccMag.std = fBodyAccMag.std..,
                     fBodyBodyAccJerkMag.std = fBodyBodyAccJerkMag.std..,
                     fBodyBodyGyroMag.std = fBodyBodyGyroMag.std..,
                     fBodyBodyGyroJerkMag.std = fBodyBodyGyroJerkMag.std..)


# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

# 5.a First group the data within the meanStdData by Activity then Subject_ID.

ASGData = group_by(meanStdData, Activity, Subject_ID)

# 5.b Then Summarize the data by taking the mean of each variable.

TidyData = summarize(ASGData, 
                     avg_tBodyAcc.mean.X = mean(tBodyAcc.mean.X),
                     avg_tBodyAcc.mean.Y = mean(tBodyAcc.mean.Z),
                     avg_tBodyAcc.mean.Z = mean(tBodyAcc.mean.Z),
                     avg_tGravityAcc.mean.X = mean(tGravityAcc.mean.X),
                     avg_tGravityAcc.mean.Y = mean(tGravityAcc.mean.Y),
                     avg_tGravityAcc.mean.Z = mean(tGravityAcc.mean.Z),
                     avg_tBodyAccJerk.mean.X = mean(tBodyAccJerk.mean.X),
                     avg_tBodyAccJerk.mean.Y = mean(tBodyAccJerk.mean.Y),
                     avg_tBodyAccJerk.mean.Z = mean(tBodyAccJerk.mean.Z),
                     avg_tBodyGyro.mean.X = mean(tBodyGyro.mean.X),
                     avg_tBodyGyro.mean.Y = mean(tBodyGyro.mean.Y),
                     avg_tBodyGyro.mean.Z = mean(tBodyGyro.mean.Z),
                     avg_tBodyGyroJerk.mean.X = mean(tBodyGyroJerk.mean.X),
                     avg_tBodyGyroJerk.mean.Y = mean(tBodyGyroJerk.mean.Y),
                     avg_tBodyGyroJerk.mean.Z = mean(tBodyGyroJerk.mean.Z),
                     avg_tBodyAccMag.mean = mean(tBodyAccMag.mean),
                     avg_tGravityAccMag.mean = mean(tGravityAccMag.mean),
                     avg_tBodyAccJerkMag.mean = mean(tBodyAccJerkMag.mean),
                     avg_tBodyGyroMag.mean = mean(tBodyGyroMag.mean),
                     avg_tBodyGyroJerkMag.mean = mean(tBodyGyroJerkMag.mean),
                     avg_fBodyAcc.mean.X = mean(fBodyAcc.mean.X),
                     avg_fBodyAcc.mean.Y = mean(fBodyAcc.mean.Y),
                     avg_fBodyAcc.mean.Z = mean(fBodyAcc.mean.Z),
                     avg_fBodyAccJerk.mean.X = mean(fBodyAccJerk.mean.X),
                     avg_fBodyAccJerk.mean.Y = mean(fBodyAccJerk.mean.Y),
                     avg_fBodyAccJerk.mean.Z = mean(fBodyAccJerk.mean.Z),
                     avg_fBodyGyro.mean.X = mean(fBodyGyro.mean.X),
                     avg_fBodyGyro.mean.Y = mean(fBodyGyro.mean.Y),
                     avg_fBodyGyro.mean.Z = mean(fBodyGyro.mean.Z),
                     avg_fBodyAccMag.mean = mean(fBodyAccMag.mean),
                     avg_fBodyBodyAccJerkMag.mean= mean(fBodyBodyAccJerkMag.mean),
                     avg_fBodyBodyGyroMag.mean = mean(fBodyBodyGyroMag.mean),
                     avg_fBodyBodyGyroJerkMag.mean = mean(fBodyBodyGyroJerkMag.mean),
                     avg_tBodyAcc.std.X = mean(tBodyAcc.std.X),
                     avg_tBodyAcc.std.Y = mean(tBodyAcc.std.Y),
                     avg_tBodyAcc.std.Z = mean(tBodyAcc.std.Z),
                     avg_tGravityAcc.std.X = mean(tGravityAcc.std.X),
                     avg_tGravityAcc.std.Y = mean(tGravityAcc.std.Y),
                     avg_tGravityAcc.std.Z = mean(tGravityAcc.std.Z),
                     avg_tBodyAccJerk.std.X = mean(tBodyAccJerk.std.X),
                     avg_tBodyAccJerk.std.Y = mean(tBodyAccJerk.std.Y),
                     avg_tBodyAccJerk.std.Z = mean(tBodyAccJerk.std.Z),
                     avg_tBodyGyro.std.X = mean(tBodyGyro.std.X),
                     avg_tBodyGyro.std.Y = mean(tBodyGyro.std.Y),
                     avg_tBodyGyro.std.Z = mean(tBodyGyro.std.Z),
                     avg_tBodyGyroJerk.std.X = mean(tBodyGyroJerk.std.X),
                     avg_tBodyGyroJerk.std.Y = mean(tBodyGyroJerk.std.Y),
                     avg_tBodyGyroJerk.std.Z = mean(tBodyGyroJerk.std.Z),
                     avg_tBodyAccMag.std = mean(tBodyAccMag.std),
                     avg_tGravityAccMag.std = mean(tGravityAccMag.std),
                     avg_tBodyAccJerkMag.std = mean(tBodyAccJerkMag.std),
                     avg_tBodyGyroMag.std = mean(tBodyGyroMag.std),
                     avg_tBodyGyroJerkMag.std = mean(tBodyGyroJerkMag.std),
                     avg_fBodyAcc.std.X = mean(fBodyAcc.std.X),
                     avg_fBodyAcc.std.Y = mean(fBodyAcc.std.Y),
                     avg_fBodyAcc.std.Z = mean(fBodyAcc.std.Z),
                     avg_fBodyAccJerk.std.X = mean(fBodyAccJerk.std.X),
                     avg_fBodyAccJerk.std.Y = mean(fBodyAccJerk.std.Y),
                     avg_fBodyAccJerk.std.Z = mean(fBodyAccJerk.std.Z),
                     avg_fBodyGyro.std.X = mean(fBodyGyro.std.X),
                     avg_fBodyGyro.std.Y = mean(fBodyGyro.std.Y),
                     avg_fBodyGyro.std.Z = mean(fBodyGyro.std.Z),
                     avg_fBodyAccMag.std = mean(fBodyAccMag.std),
                     avg_fBodyBodyAccJerkMag.std = mean(fBodyBodyAccJerkMag.std),
                     avg_fBodyBodyGyroMag.std = mean(fBodyBodyGyroMag.std),
                     avg_fBodyBodyGyroJerkMag.std = mean(fBodyBodyGyroJerkMag.std)
)

# Finally, view the TidyData

View(TidyData)