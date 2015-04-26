# run_analysis.R
# 1. Merges the training and the test sets to create one data set
# 2. Extracts only the measurements on the mean and standard deviation for each measurement
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

# install packages for final step
install.packages("reshape2") 
library("reshape2") 

# According to instructions, all data files are assumed 
# to be located in current working directory
# ie. Same directory as run_analysis.R script file

# Read Training data 
training_x       <- read.table("X_train.txt") 
training_y       <- read.table("y_train.txt") 
training_subject <- read.table("subject_train.txt") 

# Read Test data 
test_x       <- read.table("X_test.txt") 
test_y       <- read.table("y_test.txt") 
test_subject <- read.table("subject_test.txt") 

# Merge All
X <- rbind(training_x, test_x) 
Y <- rbind(training_y, test_y) 
S <- rbind(training_subject, test_subject) 

# Load features to keep
features <- read.table("features.txt") 
features_to_keep <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X <- X[, features_to_keep]
names(X) <- features[features_to_keep, 2] 

# load activity names
activities <- read.table("activity_labels.txt") 
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2]))) 
Y[,1] = activities[Y[,1], 2] 

# Relabel variables
names(Y) <- "activity" 
names(S) <- "subject" 

# Full and Combined dataset
combined <- cbind(S, Y, X) 
# Optional for Testing : 
# write.csv(combined, "combined.csv", row.names=FALSE) 

# Final Step: Create independent tidy data set with 
# the average of each variable for each activity and each subject
melt_data <- melt(combined, id=c("subject","activity")) 
tidy <- dcast(melt_data, subject+activity ~ variable, mean) 

# write the tidy data set to a file 
# write.csv(tidy, "tidy.csv", row.names=FALSE) 
write.table(tidy, "tidy.txt", row.names=FALSE) 
