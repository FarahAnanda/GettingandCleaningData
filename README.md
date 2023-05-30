---
title: "Getting and Cleaning Data Course Project"
author: "Author : Farah Ananda"
output: html_document
---

# README

This project aims to demonstrate the ability to collect, work with, and clean a data set.

## Files Included

- [`run_analysis.R`](run_analysis.R): R script that performs the data collection, preprocessing, feature extraction, and analysis.
- [`tidy_data.txt`](tidy_data.txt): The tidy data set obtained from the analysis, containing the average of each variable for each activity and subject.
- [`CodeBook.md`](CodeBook.md): Detailed information about the variables, summaries, and other relevant details of the tidy data set.

## Data Source

The data used in this analysis was obtained from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). It includes accelerometer and gyroscope measurements captured from a group of volunteers wearing a Samsung Galaxy S II smartphone on their waist.

## How to Run

To replicate the analysis performed in this project, follow these steps:

1. Make sure you have R and the required packages installed (see [`run_analysis.R`](run_analysis.R) for package dependencies).
2. Download or clone this repository to your local machine.
3. Set the working directory to the project directory.
4. Run the [`run_analysis.R`](run_analysis.R) script in R. The script performs the following steps:
   - Step 1: Merging the training and test data sets.
   - Step 2: Extracting only the measurements on the mean and standard deviation.
   - Step 3: Using descriptive activity names to label the activities.
   - Step 4: Appropriately labeling the data set with descriptive variable names.
   - Step 5: Creating a second, independent tidy data set with the average of each variable for each activity and subject.
5. After running the script, you will find the resulting tidy data set in the [`tidy_data.txt`](tidy_data.txt) file.

## Code Book

Please refer to the [`CodeBook.md`](CodeBook.md) file for detailed information about the variables, summaries, units, and other relevant details of the tidy data set.
