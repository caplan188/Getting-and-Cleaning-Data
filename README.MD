##Introduction
The script "run_analysis.R" is used to clean and process a set of data collected from Samsung Galaxy S accellerometers while participants perform various activities.

##Source
The data set is available here http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and was downloaded 11/22/14.

##Data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

##Observations
For each record the following information is available:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

##Files Used

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

##Script information
The script works in several steps.
1) Sets the working directory to download location
2) Opens all necessary files (see above)
3) Assigns names to columns for easier reading and, later, merging
4) Merges test and train data
5) Selects only columns with observations of mean or std
6) Adds in activity names as a column, matching on activity_ids
7) Creates tidy data set with average values for each activity and subject
8) Drops redundant columns
9) Writes data to .txt filez

##Source(s)
Provided README file

