# coursera-getdata-project


Course project for the Coursera  Getting and Cleaning Data course (Data Science specialization).
This script **run\_analysis.R**  loads the "UCI HAR Dataset" and computes the aggregate average of
selected feature variables over all (SubjectId, Activity) combinations.

## Usage

The working directory should be set to the parent of the "UCI HAR Dataset"
directory (where script is located) . If data is not already present, then please uncomment 2 lines in run\_analysis.R script where functions *download.file()* and *unzip()* are calling.   j
  Run the run\_analysis.R script (e.g., ../run\_analysis.R).  The
output will be written to the "tidy\_data.txt" file in the current working
directory.  See CodeBook.md for a description of the contents of the
output data file.


## Intermediate Data Manipulation

A number of steps are applied to the "UCI HAR Dataset" as follows:

### Generating Metadata on Desired Features

The dataset has 561 feature variables, however we are only interested in
the 66 that represent the mean() and std() of observations.  The 
"UCI HAR Dataset/features.txt" file provides a listing of all 561 variables
along with the column index. 

To extract relevant names function grepl  was used:

> relevant.features  <-   read.table(file.path(data.dir,"features.txt"),header=FALSE,col.names = > c("num","name"),as.is=TRUE) %>%
>  filter(grepl(pattern="\\Wmean\\W|\\Wstd\\W",name)) %>%
>  transform(name=correct_feature_names(name))




The standard function  gsub()  was used to
corrent the variable names

> # auxiliary function correct_feature_names() replaces special characters
> correct_feature_names <- 
>  function (name)  gsub("-",".",     gsub("\\(\\)","",name)) 
So, for example, "tBodyGyro-mean()-X" becomes "tBodyGyro.mean.X".
  
  



The saved extractFeatures.txt is then read by the main R script in order
to subset the feature data and name the columns.

### Tidying UCI Data

Each individual data set is loaded and modified as follows:

 1. load the subject\_\*.txt file and name column "SubjectId"
 2. load the y\_\*.txt file. convert to factors. rename the values based
    upon the information provided in activity\_labels.txt, and name the
    column "Activity"
 3. load the X\_\*.txt file.  pass the data through a filtering function
    that extract only the mean() and std() variables and names the columns
    appropriately (see below).
 4. column merge the 3 data sets above in the order listed

### Extracting (Filtering)  Feature Variables

The extractFeatures.txt file (described above) was used to extract a
subset of the variables present in the UCI dataset.  Each row in the
extractFeatures.txt file has a column number and a variable name.  Each of
these columns was extracted from the UCI dataset features and the
corresponding variable name applied to the column.

### Merging the UCI Data

The "UCI HAR Dataset" provides two sets of data for training and testing
machine learning algorithms.  Each data set is loaded individually (see
Tidying UCI Data) and then they are row merged.

## Output Data

The output data provides a summary of the average values for the subsetted
features for each (subject, activity) pair.  So, we will have quantities
like avg(mean()) and avg(std()).  The output data is in a wide format,
where each row corresponds to a (subject, activity) pair and has 66
additional columns for the feature averages.  Refer to the Codebook for
further infomation.

Note: if the original dataset had N subjects, where data was available for
all activities (6 activities), the output data should have N\*6 rows.

