Cook Book
==============

Please read README.md before this file, so you can understand was this project does and how the results are been structured.

The results file contains the following columns:

**subject**: Volunteer ID (number)

**activityName**: Activity, possible values are: (string)

|Value|
|-----|
|WALKING
|WALKING_UPSTAIRS
|WALKING_DOWNSTAIRS
|SITTING
|STANDING
|LAYING


All other column names are built based on: (number)

`Feature . Aggregate Type .. (.[XYZ])`

Where:

**Feature** is the Feature Name

**Aggregate Type**, possible values are:

|Value|Description         |
|-----|--------------------|
|mean | Average            |
|std  | Standard Deviation|


**(.[XYZ])** is optional and indicates the Axis (parenthesis only indicates that it is optional, the parenthesis will NEVER be included in the name)


**Feature List:**

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

The full list of columns are:
----------------------------

|Column Name|Data Type|
|-----------|---------|
|subject    | string  |
|activityName | string |
|tBodyAcc.mean...X | number |
|tBodyAcc.mean...Y | number |
|tBodyAcc.mean...Z | number |
|tBodyAcc.std...X | number |
|tBodyAcc.std...Y | number |
|tBodyAcc.std...Z | number |
|tGravityAcc.mean...X | number |
|tGravityAcc.mean...Y | number |
|tGravityAcc.mean...Z | number |
|tGravityAcc.std...X | number |
|tGravityAcc.std...Y | number |
|tGravityAcc.std...Z | number |
|tBodyAccJerk.mean...X | number |
|tBodyAccJerk.mean...Y | number |
|tBodyAccJerk.mean...Z | number |
|tBodyAccJerk.std...X | number |
|tBodyAccJerk.std...Y | number |
|tBodyAccJerk.std...Z | number |
|tBodyGyro.mean...X | number |
|tBodyGyro.mean...Y | number |
|tBodyGyro.mean...Z | number |
|tBodyGyro.std...X | number |
|tBodyGyro.std...Y | number |
|tBodyGyro.std...Z | number |
|tBodyGyroJerk.mean...X | number |
|tBodyGyroJerk.mean...Y | number |
|tBodyGyroJerk.mean...Z | number |
|tBodyGyroJerk.std...X | number |
|tBodyGyroJerk.std...Y | number |
|tBodyGyroJerk.std...Z | number |
|tBodyAccMag.mean.. | number |
|tBodyAccMag.std.. | number |
|tGravityAccMag.mean.. | number |
|tGravityAccMag.std.. | number |
|tBodyAccJerkMag.mean.. | number |
|tBodyAccJerkMag.std.. | number |
|tBodyGyroMag.mean.. | number |
|tBodyGyroMag.std.. | number |
|tBodyGyroJerkMag.mean.. | number |
|tBodyGyroJerkMag.std.. | number |
|fBodyAcc.mean...X | number |
|fBodyAcc.mean...Y | number |
|fBodyAcc.mean...Z | number |
|fBodyAcc.std...X | number |
|fBodyAcc.std...Y | number |
|fBodyAcc.std...Z | number |
|fBodyAccJerk.mean...X | number |
|fBodyAccJerk.mean...Y | number |
|fBodyAccJerk.mean...Z | number |
|fBodyAccJerk.std...X | number |
|fBodyAccJerk.std...Y | number |
|fBodyAccJerk.std...Z | number |
|fBodyGyro.mean...X | number |
|fBodyGyro.mean...Y | number |
|fBodyGyro.mean...Z | number |
|fBodyGyro.std...X | number |
|fBodyGyro.std...Y | number |
|fBodyGyro.std...Z | number |
|fBodyAccMag.mean.. | number |
|fBodyAccMag.std.. | number |
|fBodyBodyAccJerkMag.mean.. | number |
|fBodyBodyAccJerkMag.std.. | number |
|fBodyBodyGyroMag.mean.. | number |
|fBodyBodyGyroMag.std.. | number |
|fBodyBodyGyroJerkMag.mean.. | number |
|fBodyBodyGyroJerkMag.std.. | number |


*08-2015*
