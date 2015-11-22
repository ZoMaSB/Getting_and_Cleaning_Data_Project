library(data.table)
# 1. Merges the training and the test sets to create one data set.
# Read activity labels and features
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt")[,2]
features<-read.table("UCI HAR Dataset/features.txt")[,2]
# Read test data
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
X_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
#Read train data
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
X_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
#Bind data
subject<-rbind(subject_test, subject_train)
# 3. Descriptive activity names to name the activities in the data set
#Rename added column V1 to Subject
names(subject)[names(subject)=="V1"]<-"Subject"
xcomb<-rbind(X_test, X_train)
ycomb<-rbind(y_test, y_train)
#Rename added column V1 to Acitvity
names(ycomb)[names(ycomb)=="V1"]<-"Activity"
#Assign column names from features
names(xcomb)<-features
#Bind data
combdata<-cbind(subject, xcomb, ycomb)
# 2. Extract only the measurements on the mean and standard deviation for each measurement
meanSTD<-combdata[grep("mean|std", names(combdata))]
# 4. Labels the data set with descriptive variable names
combdata[,563]<-factor(as.factor(combdata[,563]), labels=activity_labels)
#Temp remove column labels 1 and 563 (Subject and Activity)
labels <- colnames(combdata)[-c(1,563)]
# 5. Independent tidy data set with the average of each variable for each activity and each subject
tidydata <- lapply(X=labels, FUN=function(x) tapply(combdata[[x]], list(combdata$Activity, combdata$Subject), mean))
names(tidydata)<-labels
write.table(tidydata, file="tidydata.txt", row.names=F)

