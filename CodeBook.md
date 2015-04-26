<h1> Code Book </h1>
This code book describes the data and process used in this course project.
<h2> Objective </h2>
The objective for this course project is to use data collected from the accelerometers from Samsung Galaxy S smartphones for a variety of activities across various subjects. 
A full description is available at the site where the data was obtained from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Data used for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The assignment calls for the following tasks to be accomplished:

Created one R script called run_analysis.R that does the following.
<li>1. Merges the training and the test sets to create one data set.
<li>2. Extracts only the measurements on the mean and standard deviation for each measurement.
<li>3. Uses descriptive activity names to name the activities in the data set
<li>4. Appropriately labels the data set with descriptive variable names.
<li>5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

<h2> Key Data Files: </h2>
<li>	activity_labels.txt: Names and IDs for activities
<li>	features.txt: Names of features
<li>	X_train.txt: Activity observations with features for subjects/volunteers
<li>	subject_train.txt: Subject/volunteer ID’s mapping to X_train.txt
<li>	y_train.txt: Activity ID mapping to X_train.txt
<li>	X_test.txt: Test data for activity observations
<li>	subject_test.txt: Subject/volunteer ID’s mapping to X_test.txt
<li>	y_test.txt: Activity ID mapping to X_test.txt

<h2> R Script Processing: </h2>
1.	# Install packages for final step
2.	# According to instructions, all data files are assumed to be located in current working directory (ie. Same directory as       run_analysis.R script file)
3.	# Read Training data 
4.	# Read Test data 
5.	# Merge All (Training and Test datasets)
6.	# Load features to keep
7.	# load activity names
8.	# Relabel variables
9.	# Full and Combined dataset
10.	# Final Step: Create independent tidy data set with 
11.	# the average of each variable for each activity and each subject
12.	# Write the tidy data set to a file 
