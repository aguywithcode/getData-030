---
title: "getData-030 Final Project"
author: "Michael Brown"
date: "Sunday July 26, 2015"
output:
  html_document:
    keep_md: yes
---

## Project Description
The goal of this project was to clean data and present it in a more refined form

##Study design and data processing

###Collection of the raw data
The data was collected as described in feature.txt and feature_info.txt in the downloaded archive

###Notes on the original (raw) data 
The original data normalized the raw measurements, thus units of measure are not available

##Creating the tidy datafile

###Guide to create the tidy data file
Download the archive and place it in Archive.zip with the run_analysis.R file.


##Description of the variables in the tiny_data.txt file
Here are the general variables within the output file
The data provides, the mean and standard deviation of the variables as well as in some cases, the axis on which the variable (X,Y,Z) is measured. They are grouped by subject number (Group.1), and activity (Group.2)

| Variable Name | Axis dependent? | Description|
| ------	| -----	|
| tbodyAcc	| yes| 
| tGravityAcc	| yes|
| tBodyAccJerk	| yes|
| tBodyGyro	| yes|
| tBodyGyroJerk	| yes|
| tBodyAccMag	| no |
| tGravityAccMag| no |
| tBodyAccJerkMag| no |
| tBodyGyroMag| no |
| tBodyGyroJerkMag| no |
| fBodyAcc	| yes|
| fBodyAccJerk	| yes|
| fBodyGyro	| yes|
| fBodyAccMag	| no|
| fBodyAccJerkMag	| no|
| fBodyGyroMag	| no|
| fBodyGyroJerkMag	| no|

