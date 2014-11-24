run_analysis <- function() {
	### 0. Read all the files!
	X_test <- read.table('./test/X_test.txt')
	y_test <- read.table('./test/y_test.txt')
	X_train <- read.table('./train/X_train.txt')
	y_train <- read.table('./train/y_train.txt')
	features <- read.table('features.txt')
	subject_test <- read.table('test/subject_test.txt')
	subject_train <- read.table('train/subject_train.txt')
	activity_labels <- read.table('activity_labels.txt')

	### 1. Captain, course on merged dataset!
	rbinded_X <- rbind(X_test,X_train)
	rbinded_y <- rbind(y_test,y_train)
	rbinded_subject <- rbind(subject_test,subject_train)
	cbinded <- cbind(rbinded_subject, rbinded_y, rbinded_X)

	### Set unambigous names for cbinded
	names(cbinded)[1] <- 'subject_id'
	names(cbinded)[2] <- 'activity_id'

	### 2. Extract measurements on the mean and standard deviation
	lookup <- c(grep('std', features$V2), grep('mean', features$V2))
	data <- cbinded[,c(1,2,lookup+2)]

	### 3. We need descriptive activity names, full throttle
	data$activity_id <- factor(data$activity_id, labels=activity_labels$V2)
	
	### 4. Maneuver for descriptive variable names
	for(i in 3:length(names(data))) {
		names(data)[i] <- as.character(features$V2[lookup][i-2])
	}

	### 5. Let's dig the tidy dataset
	tidy <- aggregate(data[[3]] ~ subject_id + activity_id, data=data, mean)
		for(i in 4:length(names(data))) {
			tidy <-cbind(tidy, aggregate(data[[i]] ~ subject_id + activity_id, data=data, mean)[3])
		}
		for(i in 3:length(names(tidy))) {
		        names(tidy)[i] <- as.character(features$V2[lookup][i-2])
	 	}
	write.table(tidy, 'tidy.txt', row.name=FALSE)
}
	


