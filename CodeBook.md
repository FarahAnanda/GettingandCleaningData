---
title: "Getting and Cleaning Data Course Project"
author: "Farah Ananda"
output: html_document
---


# Code Book

This code book provides an overview of the variables, units, and other relevant details of the tidy data set obtained from the Human Activity Recognition Analysis.

## Data Source

The data used in this analysis was obtained from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). It includes accelerometer and gyroscope measurements captured from a group of volunteers wearing a Samsung Galaxy S II smartphone on their waist.

## Tidy Data Set

The tidy data set contains the average of each variable for each activity and subject. It is stored in the [`tidy_data.txt`](tidy_data.txt) file.

## Variables

The tidy data set includes the following variables:

- `subject`: Identifier of the subject who performed the activity. Values range from 1 to 30.
- `activity`: Name of the activity performed by the subject. Possible values are:
    - WALKING
    - WALKING_UPSTAIRS
    - WALKING_DOWNSTAIRS
    - SITTING
    - STANDING
    - LAYING

Please refer to the [README](README.md) file for the detailed steps of the analysis performed and the transformations applied to the original data.

## Units

The units of the variables in the tidy data set vary depending on the original measurements. Please refer to the data source documentation for specific information about the units of each variable.

For any further details or questions regarding the data set, please refer to the original data source mentioned above.
