Course Project
==============
Data Science - Getting and Cleaning Data
----------------------------------------

This repository contains the course project for ***Getting and Cleaning Data Course*** / Data Science Track in Coursera.

The CookBook can be found in CooBook.md, that file will describe all steps and the transformations applied to the source data.

The project has been structured as a single code file with one "*public*" function  which has multiple "*private/inner*" functions; The end-user only needs access to the public one, this function will call all the others.

Public Functions
----------------

**runProject**, the project asks for 5 steps, this function does all 5 steps plus some extra steps to download the data and save it. It mostly call all other "private" functions.

It will generate a file named "results.txt" and it return the same data to the user.

***The user MUST call this function.***

Private/Inner Functions
-----------------

**downloadData**: Checks if the COMPRESSED data file "*dataset.zip*" exists, if it does, un-compress it, if it does not, downloads it from remote server and then un-compress it.

**loadData**: There are 3 data files (*X_xxxx.txt, Y_xxxx.txt and subject_xxxx.txt*) which are located in 2 data folders (train and test), those files get loaded and the appropriate feature column names get applied based on the contents of feature.txt file.

**getFullData**: Merges TRAIN and TEST data by calling *loadData* twice with the appropriate folder names.

**getOnlyFeaturesThatMatch**: Extracts the base columns (label and subject) and all the columns which names match the parameter supplied. The project asks for "Standard Deviation" and "Mean" columns, since there are no more information about the column names, I just assumed it includes all column names that contains .std. and .mean.

**addDescriptiveActivityNames**: Adds a column with the correct Activity Names based on the data inside the file activity_labels.txt

**getTidyData**: Calculates the MEAN of all columns grouped by SUBJECT and ACTIVITYNAME.

*08-2015*


*08-2015*