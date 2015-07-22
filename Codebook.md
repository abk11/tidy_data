## This is the list of the variables in the table "tinydata.txt"
# For each activity and each subject, the R script calculates the average of the variable.

[1] "Subject"                                            "Activity"                                          
 [3] "timeBodyAccelerometer-MEAN()-X"                     "timeBodyAccelerometer-MEAN()-Y"                    
 [5] "timeBodyAccelerometer-MEAN()-Z"                     "timeBodyAccelerometer-SD()-X"                      
 [7] "timeBodyAccelerometer-SD()-Y"                       "timeBodyAccelerometer-SD()-Z"                      
 [9] "timeGravityAccelerometer-MEAN()-X"                  "timeGravityAccelerometer-MEAN()-Y"                 
[11] "timeGravityAccelerometer-MEAN()-Z"                  "timeGravityAccelerometer-SD()-X"                   
[13] "timeGravityAccelerometer-SD()-Y"                    "timeGravityAccelerometer-SD()-Z"                   
[15] "timeBodyAccelerometerJerk-MEAN()-X"                 "timeBodyAccelerometerJerk-MEAN()-Y"                
[17] "timeBodyAccelerometerJerk-MEAN()-Z"                 "timeBodyAccelerometerJerk-SD()-X"                  
[19] "timeBodyAccelerometerJerk-SD()-Y"                   "timeBodyAccelerometerJerk-SD()-Z"                  
[21] "timeBodyGyroscope-MEAN()-X"                         "timeBodyGyroscope-MEAN()-Y"                        
[23] "timeBodyGyroscope-MEAN()-Z"                         "timeBodyGyroscope-SD()-X"                          
[25] "timeBodyGyroscope-SD()-Y"                           "timeBodyGyroscope-SD()-Z"                          
[27] "timeBodyGyroscopeJerk-MEAN()-X"                     "timeBodyGyroscopeJerk-MEAN()-Y"                    
[29] "timeBodyGyroscopeJerk-MEAN()-Z"                     "timeBodyGyroscopeJerk-SD()-X"                      
[31] "timeBodyGyroscopeJerk-SD()-Y"                       "timeBodyGyroscopeJerk-SD()-Z"                      
[33] "timeBodyAccelerometerMagnitude-MEAN()"              "timeBodyAccelerometerMagnitude-SD()"               
[35] "timeGravityAccelerometerMagnitude-MEAN()"           "timeGravityAccelerometerMagnitude-SD()"            
[37] "timeBodyAccelerometerJerkMagnitude-MEAN()"          "timeBodyAccelerometerJerkMagnitude-SD()"           
[39] "timeBodyGyroscopeMagnitude-MEAN()"                  "timeBodyGyroscopeMagnitude-SD()"                   
[41] "timeBodyGyroscopeJerkMagnitude-MEAN()"              "timeBodyGyroscopeJerkMagnitude-SD()"               
[43] "frequencyBodyAccelerometer-MEAN()-X"                "frequencyBodyAccelerometer-MEAN()-Y"               
[45] "frequencyBodyAccelerometer-MEAN()-Z"                "frequencyBodyAccelerometer-SD()-X"                 
[47] "frequencyBodyAccelerometer-SD()-Y"                  "frequencyBodyAccelerometer-SD()-Z"                 
[49] "frequencyBodyAccelerometerJerk-MEAN()-X"            "frequencyBodyAccelerometerJerk-MEAN()-Y"           
[51] "frequencyBodyAccelerometerJerk-MEAN()-Z"            "frequencyBodyAccelerometerJerk-SD()-X"             
[53] "frequencyBodyAccelerometerJerk-SD()-Y"              "frequencyBodyAccelerometerJerk-SD()-Z"             
[55] "frequencyBodyGyroscope-MEAN()-X"                    "frequencyBodyGyroscope-MEAN()-Y"                   
[57] "frequencyBodyGyroscope-MEAN()-Z"                    "frequencyBodyGyroscope-SD()-X"                     
[59] "frequencyBodyGyroscope-SD()-Y"                      "frequencyBodyGyroscope-SD()-Z"                     
[61] "frequencyBodyAccelerometerMagnitude-MEAN()"         "frequencyBodyAccelerometerMagnitude-SD()"          
[63] "frequencyBodyBodyAccelerometerJerkMagnitude-MEAN()" "frequencyBodyBodyAccelerometerJerkMagnitude-SD()"  
[65] "frequencyBodyBodyGyroscopeMagnitude-MEAN()"         "frequencyBodyBodyGyroscopeMagnitude-SD()"          
[67] "frequencyBodyBodyGyroscopeJerkMagnitude-MEAN()"     "frequencyBodyBodyGyroscopeJerkMagnitude-SD()"

## General Description
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

Finally a Fast Fourier Transform (FFT) was applied to some of these signals.

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.