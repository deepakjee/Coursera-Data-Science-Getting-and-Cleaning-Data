#CodeBook

[Original Data Source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

[Original Description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

##Raw Input Data Sets(Files)
- 'activity_labels.txt': Links the class labels with their activity name.
- 'features.txt': List of all features.
- 'train/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.

##Tidy Output Data Set
- File tidy.txt is a space separated data file, with a readable header row for the columns names. 
- The file contains the standard deviation and mean of the data from the input data files.

##Output Columns
- "Subject"
- "Activity"
- "TimeBodyAccelerometerMean()-X"
- "TimeBodyAccelerometerMean()-Y"
- "TimeBodyAccelerometerMean()-Z"
- "TimeBodyAccelerometerStd()-X"
- "TimeBodyAccelerometerStd()-Y"
- "TimeBodyAccelerometerStd()-Z"
- "TimeGravityAccelerometerMean()-X"
- "TimeGravityAccelerometerMean()-Y"
- "TimeGravityAccelerometerMean()-Z"
- "TimeGravityAccelerometerStd()-X"
- "TimeGravityAccelerometerStd()-Y"
- "TimeGravityAccelerometerStd()-Z"
- "TimeBodyAccelerometerJerkMean()-X"
- "TimeBodyAccelerometerJerkMean()-Y"
- "TimeBodyAccelerometerJerkMean()-Z"
- "TimeBodyAccelerometerJerkStd()-X"
- "TimeBodyAccelerometerJerkStd()-Y"
- "TimeBodyAccelerometerJerkStd()-Z"
- "TimeBodyGyroscopeMean()-X"
- "TimeBodyGyroscopeMean()-Y"
- "TimeBodyGyroscopeMean()-Z"
- "TimeBodyGyroscopeStd()-X"
- "TimeBodyGyroscopeStd()-Y"
- "TimeBodyGyroscopeStd()-Z"
- "TimeBodyGyroscopeJerkMean()-X"
- "TimeBodyGyroscopeJerkMean()-Y"
- "TimeBodyGyroscopeJerkMean()-Z"
- "TimeBodyGyroscopeJerkStd()-X"
- "TimeBodyGyroscopeJerkStd()-Y"
- "TimeBodyGyroscopeJerkStd()-Z"
- "TimeBodyAccelerometerMagnitudeMean()"
- "TimeBodyAccelerometerMagnitudeStd()"
- "TimeGravityAccelerometerMagnitudeMean()"
- "TimeGravityAccelerometerMagnitudeStd()"
- "TimeBodyAccelerometerJerkMagnitudeMean()"
- "TimeBodyAccelerometerJerkMagnitudeStd()"
- "TimeBodyGyroscopeMagnitudeMean()"
- "TimeBodyGyroscopeMagnitudeStd()"
- "TimeBodyGyroscopeJerkMagnitudeMean()"
- "TimeBodyGyroscopeJerkMagnitudeStd()"
- "FrequencyBodyAccelerometerMean()-X"
- "FrequencyBodyAccelerometerMean()-Y"
- "FrequencyBodyAccelerometerMean()-Z"
- "FrequencyBodyAccelerometerStd()-X"
- "FrequencyBodyAccelerometerStd()-Y"
- "FrequencyBodyAccelerometerStd()-Z"
- "FrequencyBodyAccelerometerMeanFreq()-X"
- "FrequencyBodyAccelerometerMeanFreq()-Y"
- "FrequencyBodyAccelerometerMeanFreq()-Z"
- "FrequencyBodyAccelerometerJerkMean()-X"
- "FrequencyBodyAccelerometerJerkMean()-Y"
- "FrequencyBodyAccelerometerJerkMean()-Z"
- "FrequencyBodyAccelerometerJerkStd()-X"
- "FrequencyBodyAccelerometerJerkStd()-Y"
- "FrequencyBodyAccelerometerJerkStd()-Z"
- "FrequencyBodyAccelerometerJerkMeanFreq()-X"
- "FrequencyBodyAccelerometerJerkMeanFreq()-Y"
- "FrequencyBodyAccelerometerJerkMeanFreq()-Z"
- "FrequencyBodyGyroscopeMean()-X"
- "FrequencyBodyGyroscopeMean()-Y"
- "FrequencyBodyGyroscopeMean()-Z"
- "FrequencyBodyGyroscopeStd()-X"
- "FrequencyBodyGyroscopeStd()-Y"
- "FrequencyBodyGyroscopeStd()-Z"
- "FrequencyBodyGyroscopeMeanFreq()-X"
- "FrequencyBodyGyroscopeMeanFreq()-Y"
- "FrequencyBodyGyroscopeMeanFreq()-Z"
- "FrequencyBodyAccelerometerMagnitudeMean()"
- "FrequencyBodyAccelerometerMagnitudeStd()"
- "FrequencyBodyAccelerometerMagnitudeMeanFreq()"
- "FrequencyBodyAccelerometerJerkMagnitudeMean()"
- "FrequencyBodyAccelerometerJerkMagnitudeStd()"
- "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()"
- "FrequencyBodyGyroscopeMagnitudeMean()"
- "FrequencyBodyGyroscopeMagnitudeStd()"
- "FrequencyBodyGyroscopeMagnitudeMeanFreq()"
- "FrequencyBodyGyroscopeJerkMagnitudeMean()"
- "FrequencyBodyGyroscopeJerkMagnitudeStd()"
- "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"
- "angle(TimeBodyAccelerometerMean,gravity)"
- "angle(TimeBodyAccelerometerJerkMean),gravityMean)"
- "angle(TimeBodyGyroscopeMean,gravityMean)"
- "angle(TimeBodyGyroscopeJerkMean,gravityMean)"
- "angle(X,gravityMean)"
- "angle(Y,gravityMean)"
- "angle(Z,gravityMean)"
