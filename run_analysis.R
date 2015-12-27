# To download datafile uncomment, please, download.file() and unzip() function on lines 16-17
# install.packages("dplyr")
library(dplyr)

# **************************************************************************************************
# common variables
data_url <-  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
data_zipfile <-  "UCI HAR Dataset.zip"
data_subdir <- sub("\\.zip$","",data_zipfile)   # Name of subdirectory to that unpacked file will be extracted
output_filename <- "tidy_data.txt" 

# proj.dir <- dirname(sys.frame(1)$ofile) 
proj.dir <-  getwd()
data.dir <- file.path(proj.dir,data_subdir)
# uncomment next 2 line to download datafiles
# download.file(data_url,data_zipfile)
# unzip("UCI HAR Dataset.zip")

# **************************************************************************************************
# read data description: feature and activity names

# auxiliary function correct_feature_names() replaces special characters
correct_feature_names <- 
  function (name)  gsub("-",".",     gsub("\\(\\)","",name)) 

# Character vector of activity labels WALKING, WALKING_UPSTAIRS and so on ... 
activity.labels <- read.table(file.path(data.dir,"activity_labels.txt"),header = FALSE,as.is=TRUE)[,2] # character vector of 
# activity labes (in 2nd column of file)
# select features which contain words "mean" and  "std" and replace special characters in feature names .
# using auxiliary function correct_feature_names()
relevant.features  <-   read.table(file.path(data.dir,"features.txt"),header=FALSE,col.names = c("num","name"),as.is=TRUE) %>%
  filter(grepl(pattern="\\Wmean\\W|\\Wstd\\W",name)) %>%
  transform(name=correct_feature_names(name))


# **************************************************************************************************
# declare function for loading data from several files in subdir into one dataframe (with transformations)
read_data_from_subdir <- function (subdir) {
  subdir.path <- file.path(data.dir,subdir)
  # read SubjectId
  file.name       <- Sys.glob(file.path(subdir.path, 'subject_*.txt'))[1]
  subject     <- read.table(file.name, col.names = c('SubjId'))
  
  # read X feature values
  file.name       <- Sys.glob(file.path(subdir.path, 'X_*.txt'))[1]
  feature     <- read.table(file.name) 
  # then select relevant columns and name they
  relevant.feature.values <- feature[relevant.features$num]
  colnames(relevant.feature.values) <- relevant.features$name
  
  # read Activity IDs
  file.name       <- Sys.glob(file.path(subdir.path, 'y_*.txt'))[1]
  activity_nums       <- read.table(file.name, col.names = c('ActivityID'))
  
  # map ActivityID into Activity (name).
  # from file activity_labels.txt 
  activity.factor     <- factor(activity_nums$ActivityID)
  levels(activity.factor) <- activity.labels
  
  # column merge data and assign proper names 
  dataf           <- cbind(subject, activity.factor, relevant.feature.values)
  colnames(dataf) <- c("Subject","Activity",relevant.features$name)
  
  dataf
}

# read and combine train and test data into one dataframe 
movement.data <-  rbind(
  read_data_from_subdir("train"),
  read_data_from_subdir("test"))

# new dataframe with average values for each combination of (Subject, Activity)

# sort data by activity and subject 
movement.data <-  arrange(movement.data,Activity,Subject)
# grouping data & summarise
movement.avg <- 
  movement.data %>% group_by(Activity, Subject) %>% summarise_each(funs(mean))

# write result to file 
file.name <-  file.path(data.dir,output_filename)
write.table(movement.avg, file.name, row.name=FALSE)
