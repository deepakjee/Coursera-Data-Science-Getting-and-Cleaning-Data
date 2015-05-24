# Getting and Cleaning Data Course Project

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . 
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Aim of the projec is to create an R script called run_analysis.R that does the following; 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Repository Contents
1. run_analysis.R - script to process and tidy the data
2. tidy.txt - output from the script based on the sample data
3. CODEBOOK.md - reference to the data in tidy.txt
4. README.md

## run_analysis.R Overview
data.table - library used to process the large data sets

dplyr - library use to process data frame like objects

The scripts starts by loading all the respective data files into data frames (meta data, test data, training data)

The script then follows the steps outlined in the project, steps 1:5

1. rbind is used to join the associated data sets
2. 




