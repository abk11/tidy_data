##After downloading the dataset and setting the working directory accordingly,
##Just follow these steps:

# (1.1) Read the dataset
activityTEST <- read.table("test/y_test.txt")
subjectsTEST <- read.table("test/subject_test.txt")
featuresTEST <- read.table("test/X_test.txt")
activityTRAIN <- read.table("train/y_train.txt")
subjectsTRAIN <- read.table("train/subject_train.txt")
featuresTRAIN <- read.table("train/X_train.txt")

# (1.2) Merge the tables
subject_data <- rbind(subjectsTRAIN, subjectsTEST)
activity_data<- rbind(activityTRAIN, activityTEST)
features_data<- rbind(featuresTRAIN, featuresTEST)

names(subject_data)<-c("Subject")
names(activity_data)<- c("Activity")
features_all <- read.table("features.txt")
names(features_data)<- features_all$V2

one <- cbind(subject_data, activity_data)
one <- cbind(one, features_data)

# (2.1) Extract the measurements on the MEAN and SD for each measurement
selected_features<-features_all$V2[grep("mean\\(\\)|std\\(\\)", features_all$V2)]

selectedNames<-c("Subject", "Activity", as.character(selected_features))
one_sub<-subset(one,select=selectedNames)

# (3.1) Replace activities' ID with their names
labels <- read.table("activity_labels.txt")
one_sub$Activity <- labels[one_sub$Activity, 2]

# (4.1) Make variable names more readable
names(one_sub)<-gsub("Acc", "Accelerometer", names(one_sub))
names(one_sub)<-gsub("Gyro", "Gyroscope", names(one_sub))
names(one_sub)<-gsub("Mag", "Magnitude", names(one_sub))
names(one_sub)<-gsub("^t", "time", names(one_sub))
names(one_sub)<-gsub("^f", "frequency", names(one_sub))
names(one_sub)<-gsub("mean()", "MEAN", names(one_sub))
names(one_sub)<-gsub("std()", "SD", names(one_sub))

# (5.1) Create final table
finale <- aggregate(one_sub[, 3:ncol(one_sub)],
                       by=list(Subject = one_sub$Subject, 
                               Activity = one_sub$Activity),
                       mean)
# (5.2) Generate file
write.table(finale, file = "tidydata.txt",row.name=FALSE)
