ActivityMeasures <- (function() {
     if (!file.exists('data.zip')) {
         message('Downloading compressed dataset ...')
         download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip', 'data.zip', method='curl')
         unzip('data.zip')
     }

     message('Transforming data ...')
     DATA_PATH <- 'UCI HAR Dataset'

     #Read activity labels
     activityLabels <- read.table(file.path(DATA_PATH, 'activity_labels.txt'), header=F)

     #Read features names and format them to use them as column names.
     feat <- read.table(file.path(DATA_PATH, 'features.txt'), header=F, fill=T)
     feat <- feat[grepl('(mean|std)\\(\\)', feat$V2),]
     feat <- transform(feat, V2 = gsub('-([ms])(ean|td)\\(\\)(-)?', '\\U\\1\\L\\2', V2, perl=T))

     # utility function to read measures.
     getDataset= function (datasetName) {
         getPath <- function(fname) {
             file.path(DATA_PATH, datasetName, fname)
         }

         measures <- read.table(getPath(paste0('X_', datasetName, '.txt')), header=F, fill=T)
         datasetLabels <- read.table(getPath(paste0('y_', datasetName, '.txt')), header=F)
         datasetSubjects <- read.table(getPath(paste0('subject_', datasetName, '.txt')), header=F)
         cbind(measures, datasetLabels, datasetSubjects)
     }

     test <- getDataset('test')
     train <- getDataset('train')

     # Merge train and test data
     ActivityMeasures <- rbind(test, train)

     # Select only mean and std measures
     ActivityMeasures <- ActivityMeasures[,c(feat$V1, ncol(ActivityMeasures) - 1, ncol(ActivityMeasures))]
     colnames(ActivityMeasures) <- c(feat$V2, 'Activity', 'Subject')

     # Activity labels with human readable names.
     transform(ActivityMeasures, Activity=activityLabels[Activity, 2])
})()

AggActivityMeasures <- aggregate(. ~ Activity + Subject, ActivityMeasures, mean)
write.table(AggActivityMeasures, 'AggActivityMeasures.txt', row.name=FALSE)
message('DONE')
