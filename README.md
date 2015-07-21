###Getting and Cleaning Data -- Course Project  
  
This repo contains my work for the Coursera Getting and Cleaning Course Project. It contains three files:   
1.  README.md         
2.  run_analysis.R  code that creates a tidy dataset summarizing training and test data from the UCI HAR data  
3.  codebook.md     code book for the tidy dataset created by run_analysis.R  

####Data  
The data for this project come from the UCI HAR dataset. The data are a set of measurements taken from smartphone accelerometers.  A description and the data are available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

####Script (run_analysis.R)
The run_analysis script:
  1. Downloads and extracts the needed data files. Data are contained in two sets: training and test.  The data contained in x_train and x_test text files. y_train and y_test files contain the activity levels for the data and the activity labels are in activity_labels.txt. The subjects are identified in the subject_train and subject_test files. 
  2. Assigns the activity labels to the activity levels, assigns the feature labels to the variables in x_train and x_test,  and joins the activity, subject, and data for each of the training and test datasets. 
  3. Merges the training and test data
  4. Subsets the joined data to include only mean and standard deviation variables
  5. Creates a tidy dataset in wide format that summarizes the data giving the mean of each variable grouped by suject and activity (30 subjects x 6 activity levels = 180 rows of data). 

####Codebook (codebook.md)
The codebook describes the variables in the tidy dataset. 
  
