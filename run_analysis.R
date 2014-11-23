#Sets directory
setwd("D:/Work/UCI HAR Dataset")

#Reads in data from all necessary files
features     <- read.table('./features.txt')
activities <- read.table('./activity_labels.txt')
subjectTrain <- read.table('./train/subject_train.txt')
xTrain       <- read.table('./train/x_train.txt')
yTrain       <- read.table('./train/y_train.txt')
subjectTest <- read.table('./test/subject_test.txt')
xTest       <- read.table('./test/x_test.txt')
yTest       <- read.table('./test/y_test.txt')

#Gives names to columns from imported data
colnames(activities) <- c("activityID", "activity")
colnames(xTrain) <- features[,2]
colnames(yTrain) <- ("activityID")
colnames(xTest) <- features[,2]
colnames(yTest) <- ("activityID")
colnames(subjectTrain) <- ("subjectID") 
colnames(subjectTest) <- ("subjectID")

#Merges the training and test data separately, then joins them
train <- cbind(yTrain, subjectTrain, xTrain)
test <- cbind(yTest, subjectTest, xTest)
data <- rbind(train, test)

#Selects mean and standard deviation columns, overwrites "data" with only these variables
cols <- grep("*activityID*|*subjectID*|*Mean*|std", ignore.case=TRUE, colnames(data))
data  <- data[,cols]

#adds in activity names
data <- merge(activities, data, by="activityID", all.x = TRUE)

#creates new variable with mean for each activity and subject
tidy <- aggregate(data, by=list(activity = data$activity, subject=data$subjectID), mean)
#drops messy columns
tidy[,2] <- NULL
tidy[,3] <- NULL
#writes table as a tab separated txt file
write.table(tidy, "tidy.txt", sep="\t", row.names = F)
