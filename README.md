GettingDataProject
==================

Repo for the Project in the Johns Hopkins Getting Data course


Project Contents
----------------
Readme
[CodeBook.md](https://github.com/davejermy/GettingDataProject/blob/master/CodeBook.md)
run_analysis.R

Working Directory Setup
-----------------------
The script requires the Samsung data to be downloaded and included in your working directory.  Specifically, the "UCI HAR Dataset" folder should be in your working directory.

The Raw Data
------------
In the "UCI HAR Dataset" folder is a pair of reference data files.  The activity_labels files maps the activity ID used in the data sets to the activity label.  The features file contains the names of the 561 measurements in the data sets.

There are two sets of data within subfolders, one called test and the other called train.  The two sets of data files have the same structure as follows:

x_test contains 561 columns of measurements.  Each row is the summary of a set of measurements taken for an individual subject doing one of the activities.
y_test has the same number of rows as x_test and contains the activity ID that the corresponding measurements in x_test refer to.
subject_test has the same number of rows as x_test and contains the subject ID that the corresponding measurements in x_test refer to.


Running the Analysis
--------------------
Before you run the run_analysis script, ensure you have installed the reshape2 package, as the script uses it to recast the data while creating the tidy data set.

Running the script will do the following:
* Load the activity_labels and features files
* Load and join together the test data files
* Load and join together the train data files
* Join the test and train data frames together to produce a single data set
* Use recast to melt and cast the data frame into a long data set form (i.e. all the measures in a single column, with an additional column containing the name of each measure), taking the mean of each variable by subject and activity
* Remove all rows that do not relate to either a mean or std variable
* Tidy up the names of the variables and activities
* Export the resulting data set into a csv file in your working directory called "Tidy Dataset.csv"
