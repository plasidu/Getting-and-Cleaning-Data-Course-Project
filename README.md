### Overview
This code is part of the course project at
## https://class.coursera.org/getdata-009

A full description is available at the [site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was obtained.
Here are the data for the project: [data.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The working directory (for setwd command) should contain activity_labels.txt, features_info.txt, features.txt, README.md, README.txt, test and train when extracted from data zip above.

### Recipe
in R: 
	*	\> source('/path/to/run_analysis.R')
	*	\> setwd('/working/dir/with/samsungdata')
	*	\> run_analysis()

where /path/to/run_analysis.R is your path to the file from this repo,
	and
/working/dir/samsung_data path to directory, where downloaded zip archive was extracted.

### Codebook
The tidy dataset in tidy.txt includes:
 * subject_id: identification number of test subject
 * activity_id: label of activity undertaken by subject while collecting data
 * variables including 'mean' and 'std':  means of variables described in features_info.txt that included keywords 'mean' or 'std', which stands for mean and standart deviation
