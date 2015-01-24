# GettingandCleaningData
Git Repo for the Getting and Cleaning Data Course Project

Prior to running run_analysis.R script, I Utilized the downloadZip.R script to download and unzip the UCI HAR Dataset. 

run_analysis.R is an R script that meets the objectives of the Getting and Cleaning Data Course Project objective.  

1. Merges the training and the test sets to create one data set.

In order to acheive this the script performs the following steps:

1.a  First create R objects out of the different data sets, and provide
column labels based on the features as described in the features.txt file.

1.b  Then create a single Data Frame for each of the Training Data and the Test Data.

1.c  Now combine the Test and Train data frames together.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

I utilized the dplyr:select function to subset the original data frame. There are other measurements that contain "mean", however the angle() and meanFreq() which are not to be included in the data set based on the instructions.  

3. Uses descriptive activity names to name the activities in the data set

The actLabels object contains the descriptive variables for the activities in  the dataset, so this is used as a look-up table to modify the numeric values in the meanStdData object and modify them to descriptive activity names.

4. Appropriately labels the data set with descriptive variable names. 

This step was partially accomplished under step 1 by adding the descriptive  variable names from the Features.txt and also providing the Subject_ID and   Activity.Label.  The following code renames the Activity.Label column to Activity based on the change in the data in section 3 above and also fixes the names within the other columns by removing excess .'s.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

5.a First group the data within the meanStdData by Activity then Subject_ID. 

5.b Then Summarize the data by taking the mean of each variable.

Finally, the script produces the TidyData.txt file.


Note:  These notes are also listed out in the run_analysis.R script as comments, and are also in the run_analysis.md file.

