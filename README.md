### Overview
This code part of the course 
## https://class.coursera.org/getdata-009

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The working directory (for setwd command) should contain activity_labels.txt, features_info.txt, features.txt, README.md, README.txt, test and train when extracted from data zip above.

### Recipe
in R: source('/path/to/run_analysis.R'), than setwd('/working/dir/with/Samsungdata'), run_analysis()

### Codebook
The tidy dataset in tidy.txt includes:
	subject_id: identification number of test subject
	activity_id: label of activity undertaken by subject while collecting data
	variables including 'mean' and 'std':  means of variables described in features_info.txt that included keywords 'mean' or 'std', which stands for mean and standart deviation
