#Code Book#

##Variables##

###subject (factor) ###
    levels 1-30, identifying 30 unique subjects age 19-48 years
    

###activity (factor)###
Identifies the activity the subject was performing while the signal was being recorded by the smartphone     
    levels 
          1 WALKING  
          2 WALKING_UPSTAIRS  
          3 WALKING_DOWNSTAIRS  
          4 SITTING  
          5 STANDING  
          6 LAYING  
         
###features (numeric variables in columns 3-66 of the dataset)###   
In this tidy dataset, the measurement for each variable is the _mean_ value for that subject + activity. Each feature denotes the mean or the standard deviation of a signal (e.g. tBodyAcc, fBodyGyro). Several of the signals are also identified along a particular axis (X, Y, Z).      
          tBodyAcc-mean()-X  
          tBodyAcc-mean()-Y  
          tBodyAcc-mean()-Z    
          tBodyAcc-std()-X  
          tBodyAcc-std()-Y  
          tBodyAcc-std()-Z  
          tGravityAcc-mean()-X  
          tGravityAcc-mean()-Y  
          tGravityAcc-mean()-Z  
          tGravityAcc-std()-X  
          tGravityAcc-std()-Y  
    tGravityAcc-std()-Z  
    tBodyAccJerk-mean()-X  
    tBodyAccJerk-mean()-Y  
    tBodyAccJerk-mean()-Z  
    tBodyAccJerk-std()-X  
    tBodyAccJerk-std()-Y  
    tBodyAccJerk-std()-Z  
    tBodyGyro-mean()-X  
    tBodyGyro-mean()-Y  
    tBodyGyro-mean()-Z  
    tBodyGyro-std()-X  
    tBodyGyro-std()-Y  
    tBodyGyro-std()-Z  
    tBodyGyroJerk-mean()-X  
    tBodyGyroJerk-mean()-Y  
    tBodyGyroJerk-mean()-Z  
    tBodyGyroJerk-std()-X  
    tBodyGyroJerk-std()-Y  
    tBodyGyroJerk-std()-Z  
    tBodyAccMag-mean()  
    tBodyAccMag-std()  
    tGravityAccMag-mean()  
    tGravityAccMag-std()  
    tBodyAccJerkMag-mean()  
    tBodyAccJerkMag-std()  
    tBodyGyroMag-mean()  
    tBodyGyroMag-std()  
    tBodyGyroJerkMag-mean()  
    tBodyGyroJerkMag-std()  
    fBodyAcc-mean()-X  
    fBodyAcc-mean()-Y  
    fBodyAcc-mean()-Z  
    fBodyAcc-std()-X  
    fBodyAcc-std()-Y  
    fBodyAcc-std()-Z  
    fBodyAccJerk-mean()-X  
    fBodyAccJerk-mean()-Y  
    fBodyAccJerk-mean()-Z  
    fBodyAccJerk-std()-X  
    fBodyAccJerk-std()-Y  
    fBodyAccJerk-std()-Z  
    fBodyGyro-mean()-X  
    fBodyGyro-mean()-Y  
    fBodyGyro-mean()-Z  
    fBodyGyro-std()-X  
    fBodyGyro-std()-Y  
    fBodyGyro-std()-Z  
    fBodyAccMag-mean()  
    fBodyAccMag-std()  
    fBodyBodyAccJerkMag-mean()  
    fBodyBodyAccJerkMag-std()  
    fBodyBodyGyroMag-mean()  
    fBodyBodyGyroMag-std()  
    fBodyBodyGyroJerkMag-mean()  
    fBodyBodyGyroJerkMag-std()  
