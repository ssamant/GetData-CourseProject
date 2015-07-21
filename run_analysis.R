##this script does the following:
##	1.	Merges the training and the test sets to create one data set.
##	2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
##	3.	Uses descriptive activity names to name the activities in the data set
##	4.	Appropriately labels the data set with descriptive variable names. 
##	5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for 	each activity and each subject. 




library(reshape2)

##download , unzip data
download.file(fileURL, destfile = "./UCI_HAR.zip", method = "curl")
unzip("./UCI_HAR.zip")

##read features in as character variable; select needed column for feature labels
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
featurelabels <- features[,2]

##read activity labels in as character variable
activity <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)

##read training data, subjects and activity data, join into one training dataset
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
colnames(x_train) <- featurelabels
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", colClasses = "factor", col.names = "activity") 
levels(y_train$activity) <- activity[,2]
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", colClasses = "factor", col.names = "subject")  
train <- cbind(subject_train, y_train, x_train)

## read test data, subjects and activity data, join into one test dataset
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt") 
colnames(x_test) <- feature.names
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", colClasses = "factor", col.names = "activity")
levels(y_test$activity) <- activity[,2]
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", colClasses = "factor", col.names = "subject")  
test <- cbind(subject_test, y_test, x_test)

##join training and test datasets
data <- rbind(train, test)

## subset data to include only means and std of features
dataMS <- data[,c("subject", "activity", colnames(data)[grep("(mean|std)\\(", colnames(data))])]

## create second, independent tidy data set with the average of each variable for each activity and each subject.
##melt into narrow dataset
melted <- melt(dataMS, id = c("subject", "activity")))

##cast data into wide format
tidy <- dcast(melted, subject + activity ~ variable, mean)

write.table(tidy, file="tidy.txt", row.names=FALSE, quote=FALSE)




