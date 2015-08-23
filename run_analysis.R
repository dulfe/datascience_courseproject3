# Load required libraries
library(dplyr)
library(reshape2)



runProject <- function () {
    # BEGIN - 'Private' functions declaration
    downloadData <- function() {
        fileName = "dataset.zip"
        if (!file.exists(fileName)) {
            download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", fileName)
        }
        unzip(fileName)
    }


    loadData <- function (type) {

        # Read feature column names
        featureNames <- read.table(paste0(dataFolder, "/features.txt"), header=FALSE )
        # Read Subject data
        subject <- read.table(paste0(dataFolder, "/", type, "/subject_", type, ".txt"),
                              header= FALSE,
                              col.names=c("subject"))
        # Read Features data with correct column names
        features <- read.table(paste0(dataFolder, "/", type, "/X_", type, ".txt"),
                               header = FALSE,
                               col.names = as.vector(featureNames[,2]))
        # Read Label data
        label <- read.table(paste0(dataFolder, "/", type, "/Y_", type, ".txt"),
                            header = FALSE,
                            col.names = c("label"))

        # Merge data
        full <- cbind(subject, label, features)

        # Return
        full
    }

    getFullData <- function () {
        # Load TRAINING data
        train <- loadData("train")
        # Load TEST data
        test <- loadData("test")

        # Merge and return data
        rbind(train, test)
    }

    # TODO: Use dplyr library and use MATCH to select the columns
    getOnlyFeaturesThatMatch <- function (matchPattern, data, includeBaseFeatures = TRUE) {
        fieldNames <- names(data)
        matchedFields = grep(matchPattern, fieldNames, value=T, ignore.case = T)

        if (includeBaseFeatures) {
            requiredFields = c('subject', 'label', matchedFields)
        }
        else {
            requiredFields = matchedFields
        }

        data[, requiredFields]
    }

    addDescriptiveActivityNames <- function(data) {
        activityNames = read.table(paste0(dataFolder, '/activity_labels.txt'), col.names = c('id', 'activityName'))
        merge(data, activityNames, by.x = "label", by.y = "id")
    }

    getTidyData <- function (data) {
        meltedData <- melt(data, id=c("label", "subject", "activityName"))
        dcast(meltedData, subject + activityName ~ variable, mean)
    }

    # END - 'Private' functions declaration

    # BEGIN - 'Main' code

    message('Checking Data Availability...')

    # Testing Data Availability
    dataFolder = "UCI HAR Dataset"
    testFile = "features.txt"

    if (!dir.exists(dataFolder)) {
        message("Data folder not found, downloading data if necessary and creating data folder...")
        downloadData();
    }

    if (!file.exists(paste0(dataFolder, "/", testFile))) {
        stop(paste("Data files could not be found in", dataFolder, ', if the file "dataset.zip" exists, please delete it and try again'))
    }

    # Step 1 and Step 4
    message('Loading and Merging Data...')
    data <- getFullData()

    # Step 2
    message('Filtering Columns...')
    filteredData = getOnlyFeaturesThatMatch('(\\.std\\.|\\.mean\\.)', data, TRUE)

    # Step 3
    message('Adding Activity Names...')
    dataWithActivityNames = addDescriptiveActivityNames(filteredData)

    # Step 5
    message('Generating results data...')
    tidyData <- getTidyData(dataWithActivityNames)

    message('Saving data...')
    write.table(tidyData, "results.txt", row.name=FALSE)

    message('Data saved as "results.txt"')

    # return data
    invisible(tidyData)
}

