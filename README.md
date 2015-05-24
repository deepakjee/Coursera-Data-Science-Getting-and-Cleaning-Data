# Getting and Cleaning Data Course Project

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . 
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Aim of the project is to create an R script called run_analysis.R that does the following;
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## A - Repository Contents
1. run_analysis.R - script to process and tidy the data
2. tidy.txt - output from the script based on the sample data
3. CODEBOOK.md - reference to the data in tidy.txt
4. README.md

## B- Overview run_analysis.R 
1. data.table - library used to process the large data sets
2. dplyr - library use to process data frame like objects
3. The scripts starts by loading all the respective data files into data frames (meta data, test data, training data)
4. The script then follows the steps outlined in the project, steps 1:5
5. rbind is used to combine the associated data sets and columns named
6. extract only the relevant columns using grep and append the activity and subject columns
7. lookup and map the column numerics to more readable activity names 
8. substitute labels with more readable versions
9. calculate the mean of each variable and write out the resultant file
