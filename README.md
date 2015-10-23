#Introduction

This repository contains project work for the Coursera course "Getting and Cleaning Data".
Much of this info was provided as part of the course project instructions.

#Data

The features are found in the x_---.txt files. 
The activity labels are in the y_---.txt files. 
The test subjects are in the subject_---.txt files.

Data provided for project is found at[UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

#run_analysis.R 
merge the test and training sets together as instructed in the project. creating a tidy dataset

For the script to work the data has to be downloaded and placed in the working directory.
The beggining of the script has code to change the working directory, this will need to be modified based on the 
computer in use.

## Data Set Information
A group of 30 volunteers each  performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## Attribute Information
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Merge the training and the test sets to create one tidy data set.
Data was downloaded as the following text files:
- features.txt
- activity_labels.txt
- subject_train.txt
- x_train.txt
- y_train.txt
- subject_test.txt
- x_test.txt
- y_test.txt

These tables were investigated and joined to create one useable dataframe

## Mean and Standard Dev
The dataframe was then further disected to create a subset of columns that described the mean or standard deviation of an attribute

## Naming
More descriptive / worthwhile column names were created to help the data be easier to read.
The same approach was used to create names for the activities

## Output
The output was a second tidy data set providing the average values for each variable.
