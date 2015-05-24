#
# Load libraries
#
        if (!require("data.table")) {
                install.packages("data.table")
        }
        library(data.table)

        if (!require("dplyr")) {
                install.packages("dplyr")
        }
	library(dplyr)

#
# Load Meta-data
#
	activity_labels <- read.table("./activity_labels.txt", header = FALSE)
	feature_names <- read.table("./features.txt")

#
# Load test data
#
	subject_test <- read.table("./test/subject_test.txt", header = FALSE)
	X_test <- read.table("./test/X_test.txt", header = FALSE)
	y_test <- read.table("./test/y_test.txt", header = FALSE)

#
# Load train data
#
	subject_train <- read.table("./train/subject_train.txt", header = FALSE)
	X_train <- read.table("./train/X_train.txt", header = FALSE)
	y_train <- read.table("./train/y_train.txt", header = FALSE)

#
# 1 - Merges the training and the test sets to create one data set.
#
	subject  <- rbind(subject_train, subject_test)
	activity <- rbind(y_train, y_test)
	features <- rbind(X_train, X_test)

	colnames(subject)  <- "Subject"
	colnames(features) <- t(feature_names[2])
	colnames(activity) <- "Activity"
        
	data <- cbind(features,activity,subject)

#
# 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
#
	extract_cols <- grep("mean|std", names(data), ignore.case=TRUE)
	required_cols <- c(extract_cols, 562, 563) # adding column for activity & subject
	extracted_data <- data[,required_cols]

#
# 3 - Uses descriptive activity names to name the activities in the data set
#
        num_of_labels<-nrow(activity_labels)
        extracted_data$Activity <- as.character(extracted_data$Activity)
        for (i in 1:num_of_labels) {
                extracted_data$Activity[extracted_data$Activity == i] <- as.character(activity_labels[i,2])
        }
	extracted_data$Activity <- as.factor(extracted_data$Activity)

#
#Part 4 - Appropriately labels the data set with descriptive variable names. 
#
	names(extracted_data)
	names(extracted_data)<-gsub("-freq()", "Frequency",     names(extracted_data), ignore.case = TRUE)
	names(extracted_data)<-gsub("-mean()", "Mean",          names(extracted_data), ignore.case = TRUE)
	names(extracted_data)<-gsub("-std()",  "Std",           names(extracted_data), ignore.case = TRUE)
	names(extracted_data)<-gsub("Acc",     "Accelerometer", names(extracted_data), ignore.case = TRUE)
	names(extracted_data)<-gsub("BodyBody","Body",          names(extracted_data), ignore.case = TRUE)
	names(extracted_data)<-gsub("Gyro",    "Gyroscope",     names(extracted_data), ignore.case = TRUE)
	names(extracted_data)<-gsub("Mag",     "Magnitude",     names(extracted_data), ignore.case = TRUE)
	names(extracted_data)<-gsub("^f",      "Frequency",     names(extracted_data), ignore.case = TRUE)
	names(extracted_data)<-gsub("^t",      "Time",          names(extracted_data), ignore.case = TRUE)
	names(extracted_data)<-gsub("tBody",   "TimeBody",      names(extracted_data), ignore.case = TRUE)

#
#Part 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#
	extracted_data$Subject <- as.factor(extracted_data$Subject)
	extracted_data <- data.table(extracted_data)
	tidy_data <- aggregate(. ~Subject + Activity, extracted_data, mean)
	tidy_data <- tidy_data[order(tidy_data$Subject,tidy_data$Activity),]

	write.table(tidy_data, file = "tidy.txt", row.names = FALSE)
