
1. subject : 
	Subjects who carried the activities

2. activity : 
	Activities carried by Subject. Following are the activities and it's labels,
	1 WALKING
	2 WALKING_UPSTAIRS
	3 WALKING_DOWNSTAIRS
	4 SITTING
	5 STANDING
	6 LAYING

3. Following features are considered for calculating the mean for each subjects activity:

	tBodyAcc-mean()-X                                
	tBodyAcc-std()-Z                                 
	tGravityAcc-std()-Y                              
	tBodyAccJerk-std()-X                             
	tBodyGyro-mean()-Z                               
	tBodyGyroJerk-mean()-Y                           
	tBodyAccMag-mean()                               
	tBodyAccJerkMag-std()                            
	fBodyAcc-mean()-X                                
	fBodyAcc-std()-Z                                 
	fBodyAccJerk-mean()-Y                            
	fBodyAccJerk-meanFreq()-X                        
	fBodyGyro-mean()-Z                               
	fBodyGyro-meanFreq()-Y                           
	fBodyBodyAccJerkMag-mean()                       
	fBodyBodyGyroMag-meanFreq()            
	tBodyAcc-mean()-Y          
	tGravityAcc-mean()-X       
	tGravityAcc-std()-Z        
	tBodyAccJerk-std()-Y       
	tBodyGyro-std()-X          
	tBodyGyroJerk-mean()-Z     
	tBodyAccMag-std()          
	tBodyGyroMag-mean()        
	fBodyAcc-mean()-Y          
	fBodyAcc-meanFreq()-X      
	fBodyAccJerk-mean()-Z      
	fBodyAccJerk-meanFreq()-Y  
	fBodyGyro-std()-X          
	fBodyGyro-meanFreq()-Z     
	fBodyBodyAccJerkMag-std()  
	fBodyBodyGyroJerkMag-mean()
	tBodyAcc-mean()-Z             
	tGravityAcc-mean()-Y          
	tBodyAccJerk-mean()-X         
	tBodyAccJerk-std()-Z          
	tBodyGyro-std()-Y             
	tBodyGyroJerk-std()-X         
	tGravityAccMag-mean()         
	tBodyGyroMag-std()            
	fBodyAcc-mean()-Z             
	fBodyAcc-meanFreq()-Y         
	fBodyAccJerk-std()-X          
	fBodyAccJerk-meanFreq()-Z     
	fBodyGyro-std()-Y             
	fBodyAccMag-mean()            
	fBodyBodyAccJerkMag-meanFreq()
	fBodyBodyGyroJerkMag-std()    
	tBodyAcc-std()-X               
	tGravityAcc-mean()-Z           
	tBodyAccJerk-mean()-Y          
	tBodyGyro-mean()-X             
	tBodyGyro-std()-Z              
	tBodyGyroJerk-std()-Y          
	tGravityAccMag-std()           
	tBodyGyroJerkMag-mean()        
	fBodyAcc-std()-X               
	fBodyAcc-meanFreq()-Z          
	fBodyAccJerk-std()-Y           
	fBodyGyro-mean()-X             
	fBodyGyro-std()-Z              
	fBodyAccMag-std()              
	fBodyBodyGyroMag-mean()        
	fBodyBodyGyroJerkMag-meanFreq()
	tBodyAcc-std()-Y      
	tGravityAcc-std()-X   
	tBodyAccJerk-mean()-Z 
	tBodyGyro-mean()-Y    
	tBodyGyroJerk-mean()-X
	tBodyGyroJerk-std()-Z 
	tBodyAccJerkMag-mean()
	tBodyGyroJerkMag-std()
	fBodyAcc-std()-Y      
	fBodyAccJerk-mean()-X 
	fBodyAccJerk-std()-Z  
	fBodyGyro-mean()-Y    
	fBodyGyro-meanFreq()-X
	fBodyAccMag-meanFreq()
	fBodyBodyGyroMag-std()


4. Variables used in R Script and its explanation :

	4.1. fileURL  : URL that points to the dataset.
	4.2. filename : File name to be used for storing the downloaded dataset.
	4.3. activity : Contains activities labels
	4.4. features : Contains all the variables
	4.5. featuresFiltered : Contains variables that has either "mean" or "std" in the variable names
	4.6. testData : Contains the test data combined with its corresponding activities and subjects.
	4.7. trainData : Contains the train data combined with its corresponding activities and subjects.
	4.8. finalData : Contains both testData and trainData merged.
	4.9. avgData : Contains the mean for all the variables against each activites for subjects.

5. test and train dataset are filtered to calculate the mean only on the features mentioned above (3).
