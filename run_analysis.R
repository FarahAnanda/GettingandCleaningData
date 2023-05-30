# Set the working directory to the folder containing the data files
setwd("/path/to/data/folder")

# Load necessary packages
library(data.table)
library(dplyr)

# Merge the train and test data sets
train_features <- fread("train/X_train.txt")
train_labels <- fread("train/y_train.txt")
test_features <- fread("test/X_test.txt")
test_labels <- fread("test/y_test.txt")
merged_data <- rbind(train_features, test_features)
merged_labels <- rbind(train_labels, test_labels)

# Extract mean and standard deviation measurements
feature_names <- fread("features.txt")[, V2]
mean_std_indices <- grepl("mean\\(\\)|std\\(\\)", feature_names)
mean_std_data <- merged_data[, mean_std_indices, with = FALSE]

# Use descriptive activity names
activity_labels <- fread("activity_labels.txt")
mean_std_data$activity <- activity_labels$V2[merged_labels$V1]

# Appropriately label the data set
feature_names <- gsub("^t", "time", feature_names)
feature_names <- gsub("^f", "frequency", feature_names)
feature_names <- gsub("\\(|\\)", "", feature_names)
feature_names <- gsub("-", "_", feature_names)
colnames(mean_std_data)[1:2] <- c("subject", "activity")

# Create an independent tidy data set with averages
colnames(mean_std_data)[67] <- "activity_label"  # Rename the duplicated column name

grouped_data <- mean_std_data %>% 
  group_by(subject, activity_label)
tidy_data <- grouped_data %>% 
  summarize(across(starts_with("mean_") | starts_with("std_"), mean))

# Save tidy_data as a text file
write.table(tidy_data, "tidy_data.txt", sep="\t", row.names=FALSE)
