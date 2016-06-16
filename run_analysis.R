
library(reshape2)
library(downloader)
library(plyr)

filename <- "UCI_HAR_Dataset.zip"

# Download dataset
if (!file.exists(filename)){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  require(downloader)
  download(fileUrl, filename, mode = "wb")
}  

# Unzip dataset
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# Load activity and features
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

featuresFiltered <- grep(".*mean.*|.*std.*", features[,2])
featuresFiltered.names <- features[featuresFiltered,2]
featuresFiltered.names = gsub('-mean', 'Mean', featuresFiltered.names)
featuresFiltered.names = gsub('-std', 'Std', featuresFiltered.names)
featuresFiltered.names <- gsub('[-()]', '', featuresFiltered.names)


# Load Test dataset
test <- read.table("./UCI HAR Dataset/test/X_test.txt")[featuresFiltered]
testactivity <- read.table("./UCI HAR Dataset/test/y_test.txt")
testsubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Bind activity and subject as columns to Test dataset
testData <- cbind(test, testactivity, testsubject)

# Assigning column names
colnames(testData) <- c(as.vector(featuresFiltered.names), "activity", "subject")

# Load Train dataset
train <- read.table("./UCI HAR Dataset/train/X_train.txt")[featuresFiltered]
trainactivity <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainsubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Bind activity and subject as columns to Train dataset
trainData <- cbind(train, trainactivity, trainsubject)

# Assigning column names
colnames(trainData) <- c(as.vector(featuresFiltered.names), "activity", "subject")

# Merging the data
finalData <- rbind(testData, trainData)

# descriptive names for activity
finalData$activity <- factor(finalData$activity, levels = activity[,1], labels = activity[,2])
finalData$subject <- as.factor(finalData$subject)

# finalData.melted <- melt(finalData, id = c("subject", "activity"))
# finalData.mean <- dcast(finalData.melted, subject + activity ~ variable, mean)

avgData = ddply(finalData, c("subject","activity"), numcolwise(mean))

write.table(avgData, "subject_activity.txt", row.names = FALSE, quote = FALSE)
