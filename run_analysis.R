## Merge the train and test data sets

## set wd
setwd("C:/Users/Christopher/Desktop/Coursera/course_project/aaa/yyy")

## read in raw data
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

## create 3 df

x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)

subj <- rbind(subject_train, subject_test)

## create names that make sense

names(subj) <- "subject"
names(y) <- "activity"

xnames <-  read.table("features.txt")
names(x) <- xnames[,2]

## combine 3 df from above in to one df

data1<-cbind(subj, y)
data1<-cbind(data1, x)

## Find columns having to do with the mean or sd 
sdmean<-xnames$V2[grep("mean\\(\\)|std\\(\\)", xnames$V2, )]
columns<-c("subject", "activity", as.character(sdmean) )

#subset the main df using only the mean and sd columns
data1<-subset(data1,select=columns)

# get activity labels
labels <- read.table("activity_labels.txt")

data1$activity <- factor(data1$activity, levels = labels[,1], labels = labels[,2])

# make variable labels
names(data1)<-gsub("^t", "time", names(data1))
names(data1)<-gsub("^f", "frequency", names(data1))
names(data1)<-gsub("Acc", "accelerometer", names(data1))
names(data1)<-gsub("Mag", "Magnitude", names(data1))
names(data1)<-gsub("BodyBody", "Body", names(data1))

# export tidy data with averages
data2 <- aggregate(. ~subject + activity, data1, mean)
write.table(data2, file = "tidydata2.txt",row.name=FALSE)