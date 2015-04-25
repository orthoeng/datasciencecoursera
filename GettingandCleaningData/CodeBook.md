Course Project Code Book
========================

# My Code Book for Getting and Cleaning Data Course - Peer Assessment

Source of the original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Original description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The attached R script (run_analysis.R) performs the following to clean up the data:


# Merges

* Merges the training and test sets to create one data set, namely X_test with X_train.txt, the result of which is a 10299 obs. x 561 variables data frame, as in the original description ("Number of Instances: 10299" and "Number of Attributes: 561"), subject_train with subject_test.txt, the result of which is a 10299x1 data frame with subject IDs, and y_train with y_test.txt, the result of which is also a 10299x1 data frame with activity IDs.


# Extracts

* Extracts only the measurements on the mean and standard deviation for each measurement.  

* The script also appropriately labels the data set with descriptive names: all feature names (attributes) and activity names. Then mean and STD was merges the 10299 obs. x 66 variable data frame containing features with 10299x1 data frames containing activity labels and subject IDs. The result was store name mean_STD_X, a 10299 obs x 66 data. The names of the attributes are has following:

	tBodyAcc-mean()-X
	tBodyAcc-mean()-Y
	tBodyAcc-mean()-Z
	tBodyAcc-std()-X
	tBodyAcc-std()-Y
	tBodyAcc-std()-Z

	tGravityAcc-mean()-X
	tGravityAcc-mean()-Y
	tGravityAcc-mean()-Z
	tGravityAcc-std()-X
	tGravityAcc-std()-Y
	tGravityAcc-std()-Z

	tBodyAccJerk-mean()-X
	tBodyAccJerk-mean()-Y
	tBodyAccJerk-mean()-Z
	tBodyAccJerk-std()-X
	tBodyAccJerk-std()-Y
	tBodyAccJerk-std()-Z

	tBodyGyro-mean()-X
	tBodyGyro-mean()-Y
	tBodyGyro-mean()-Z
	tBodyGyro-std()-X
	tBodyGyro-std()-Y
	tBodyGyro-std()-Z

	tBodyGyroJerk-mean()-X
	tBodyGyroJerk-mean()-Y
	tBodyGyroJerk-mean()-Z
	tBodyGyroJerk-std()-X
	tBodyGyroJerk-std()-Y
	tBodyGyroJerk-std()-Z

	tBodyAccMag-mean()
	tBodyAccMag-std()

	tGravityAccMag-mean()
	tGravityAccMag-std()

	tBodyAccJerkMag-mean()
	tBodyAccJerkMag-std()

	tBodyGyroMag-mean()
	tBodyGyroMag-std()

	fBodyAcc-mean()-X
	fBodyAcc-mean()-Y
	fBodyAcc-mean()-Z
	fBodyAcc-std()-X
	fBodyAcc-std()-Y
	fBodyAcc-std()-Z

	fBodyAcc-meanFreq()-X
	fBodyAcc-meanFreq()-Y
	fBodyAcc-meanFreq()-Z


	fBodyAccJerk-mean()-X
	fBodyAccJerk-mean()-Y
	fBodyAccJerk-mean()-Z
	fBodyAccJerk-std()-X
	fBodyAccJerk-std()-Y
	fBodyAccJerk-std()-Z

	fBodyAccJerk-meanFreq()-X
	fBodyAccJerk-meanFreq()-Y
	fBodyAccJerk-meanFreq()-Z

	fBodyGyro-mean()-X
	fBodyGyro-mean()-Y
	fBodyGyro-mean()-Z
	fBodyGyro-std()-X
	fBodyGyro-std()-Y
	fBodyGyro-std()-Z
	fBodyGyro-meanFreq()-X
	fBodyGyro-meanFreq()-Y
	fBodyGyro-meanFreq()-Z

	fBodyAccMag-mean()
	fBodyAccMag-std()

	fBodyBodyAccJerkMag-mean()
	fBodyBodyAccJerkMag-std()

	fBodyBodyGyroMag-mean()
	fBodyBodyGyroMag-std()

	fBodyBodyGyroJerkMag-mean()
	fBodyBodyGyroJerkMag-std()

	angle(tBodyAccMean,gravity)
	angle(tBodyAccJerkMean),gravityMean)
	angle(tBodyGyroMean,gravityMean)
	angle(tBodyGyroJerkMean,gravityMean)
	angle(X,gravityMean)
	angle(Y,gravityMean)
	angle(Z,gravityMean)


## Activity Names

* Reads activity_labels.txt and applies descriptive activity names to name the activities in the data set:
* insert activity_labels to the merge_ydata. Find location then insert activity labels.

        WALKING
        
        WALKING_UPSTAIRS
        
        WALKING_DOWNSTAIRS
        
        SITTING
        
        STANDING
        
        LAYING

## Descriptive Variable

* Appropriately labels the data set with descriptive variable names. 

* Add labels to rows and columns. Descriptive Variables create a Tidy dataset.

## Tidy Dataset

* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

* Finally, the script creates a 2nd, independent tidy data set with the average of each measurement for each activity and each subject. The result is saved as data_set_with_the_averages.txt, a 180x68 data frame, where as before, the first column contains subject IDs, the second column contains activity names (see below), and then the averages for each of the 66 attributes are in columns 3...68. There are 30 subjects and 6 activities, thus 180 rows in this data set with averages.