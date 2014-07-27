##---------------
## Reference Data
##---------------

## Load "activity labels" and "features" files
  activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
  features<-read.table("./UCI HAR Dataset/features.txt")

##---------
##Test Data
##---------

## Load the "y_test", "subject_test" and "x_test" files
  y_test<-read.table("./UCI HAR Dataset/test/y_test.txt",sep = " ")
  subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
  x_test<-read.table("./UCI HAR Dataset/test/x_test.txt")

## Add activity labels
  y_test$activity<-activity_labels[match(y_test$V1,activity_labels$V1),2]

## Join Test Data together
  test_data<-cbind(y_test[2],x_test) ## Add Activity Label to start of x_test and create new data frame
  test_data<-cbind(subject_test,test_data) ## Add Subject ID to start of test_data

##--------------
## Training Data
##--------------

## Load the "y_train", "subject_train" and "x_train" files
  y_train<-read.table("./UCI HAR Dataset/train/y_train.txt",sep = " ")
  subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
  x_train<-read.table("./UCI HAR Dataset/train/x_train.txt")

## Add activity labels
  y_train$activity<-activity_labels[match(y_train$V1,activity_labels$V1),2]

## Join Train Data together
  train_data<-cbind(y_train[2],x_train) ## Add Activity Label to start of x_train and create new data frame
  train_data<-cbind(subject_train,train_data) ## Add Subject ID to start of train_data

##---------------
## Merge Datasets
##---------------

## Create new data frame with combined test and train data in it
  data <- rbind(test_data, train_data)

## Set the Column Names
  columns<-as.character(features[,2])      ## Create vector of the variable names
  columns<-c("subject","activity",columns) ## Add subject and activity headings
  colnames(data)<-columns                  ## Update the column names of data

##---------------------
## Create Tidy Data Set
##---------------------

library(reshape2)
## Reshape data into long data set
  tidydata<-recast(data,
                   subject+activity+variable~.,
                   fun.aggregate=mean,
                   id.var = 1:2)

## set the column names
  colnames(tidydata)<-c("subject","activity","variable","average")

## Limit tidydata to only the mean and std variables
  tidydata<- tidydata[grepl("mean\\(",tidydata$variable)|
                        grepl("std()",tidydata$variable),]

## Tidy up the variable names
  tidydata$variable<-sub("^t","Time",tidydata$variable) ## Replace initial "t" with "Time"
  tidydata$variable<-sub("^f","Freq",tidydata$variable) ## Replace initial "f" with "Freq"
  tidydata$variable<-sub("BodyBody","Body",tidydata$variable) ## Remove repetition of "Body"
  tidydata$variable<-gsub("-","",tidydata$variable) ## Remove "-"
  tidydata$variable<-sub("\\(\\)","",tidydata$variable)  ## Remove "()"
  tidydata$variable<-sub("mean","Mean",tidydata$variable) ## Replace "mean" with "Mean"
  tidydata$variable<-sub("std","Std",tidydata$variable) ## Replace "std" with "Std"

## Tidy up the activity names
  tidydata$activity <- tolower(tidydata$activity) ## Convert to lower case
  tidydata$activity<- sub("_"," ",tidydata$activity) ## Replace underscore
  tidydata$activity<- gsub("(^|[[:space:]])([[:alpha:]])",
                         "\\1\\U\\2",
                         tidydata$activity,
                         perl=TRUE) ##Make initial letter of each word upper case

##---------------------
## Export Tidy Data Set
##---------------------
  write.csv(tidydata,file = "Tidy Dataset.csv",row.names = F)
