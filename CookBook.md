Cook Book
==============

The results file contains the following columns:

**subject**: Volunteer ID

**activityName**: Activity, possible values are:

|Value|
|-----|
|WALKING
|WALKING_UPSTAIRS
|WALKING_DOWNSTAIRS
|SITTING
|STANDING
|LAYING


All other column names are built based on:

`Feature . Aggregate Type .. (.[XYZ])`

Where:

**Feature** is the Feature Name

**Aggregate Type**, possible values are:

|Value|Description         |
|-----|--------------------|
|mean | Average            |
|std  | Standard Deviation|


**(.[XYZ])** is optional and indicates the Axis (parenthesis only indicates that it is optional, the parenthesis will NEVER be included in the name)


Feature List:

|Feature      | Support XYZ|
|-------------|------------|
|tBodyAcc     | Yes |
|tGravityAcc  | Yes |
|tBodyAccJerk | Yes
|tBodyGyro    | Yes
|tBodyGyroJerk| Yes
|tBodyAccMag
|tGravityAccMag
|tBodyAccJerkMag
|tBodyGyroMag
|tBodyGyroJerkMag
|fBodyAcc|Yes
|fBodyAccJerk | Yes
|fBodyGyro    | Yes
|fBodyAccMag
|fBodyAccJerkMag
|fBodyGyroMag
|fBodyGyroJerkMag

The values of all these fields are AVERAGE values of each Activity recorded, in other words, the values of (for example) `tBodyAcc.std...Y` contains the AVERAGE/MEAN value of all the STANDARD DEVIATION measures recorded for the indicated ACTIVITY and SUBJECT.

*08-2015*
