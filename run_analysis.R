#Read Test and Train data in
con<-unz("Archive.zip","test/X_test.txt")
testData<-read.table(con)
con<-unz("Archive.zip","train/X_train.txt")
trainData<-read.table(con)
combinedData<-rbind(testData,trainData)

#Read column names in
con<-unz("Archive.zip", "features.txt")
features<-read.table(con)

#Map column names to test data
colnames(combinedData)<-features[,2]


#Pull out std and mean columns into data frame
stdMeanColumns<-grep("std|mean[^meanFreq]",features[,2], fixed = FALSE)
combinedData<-combinedData[,stdMeanColumns]

#Create columns for subject and activity
con<-unz("Archive.zip", "test/y_test.txt")
testActivities <- read.table(con)
con<-unz("Archive.zip", "train/y_train.txt")
trainActivities <- read.table(con)
combinedActivities <-rbind(testActivities,trainActivities)
con<-unz("Archive.zip","test/subject_test.txt")
testSubjects<-read.table(con)
con<-unz("Archive.zip","train/subject_train.txt")
trainSubjects<-read.table(con)
combinedSubjects<-rbind(testSubjects,trainSubjects)
combinedSubjects <- cbind(combinedSubjects,combinedActivities)
colnames(combinedSubjects)<-c("Subject", "Activity")

combinedData<-cbind(combinedSubjects,combinedData)

con<-unz("Archive.zip", "activity_labels.txt")
labels<-read.table(con)
colnames(labels)<-c("Id","Activity")
mergedData=merge(labels,combinedData, by.x="Id", by.y="Activity")
mergedData <- mergedData[,2:69]

tidy=aggregate(mergedData[,4:69], list(mergedData$Subject,mergedData$Activity), mean)
write.table(tidy, "output.txt", row.name=FALSE)