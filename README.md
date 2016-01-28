## Data Cleaning Project

### Instructions

Source the script `run_analysis.R` to process UCI HAR Dataset:
```
source('run_analysis.R')
```

This script will:

  - Download the `UCI HAR dataset.zip` file if not already present in the current working directory;
  - Extract all files in the compressed file;
  - Process the data to create a tidy data set named `ActivityMeasures`:
    - Merge train and test datasets;
    - Extract only mean and std measures;
    - Use human readable values for the activity labels;
    - Assign descriptive names to variables.
  - Create aggregated data set `AggActivityMeasures` with the aggreaged feature measures for each `Activity` and `Subject`.

After sourcing the script, a variable `ActivityMeasures` will be created in the workspace, that contains the tidy data set and `AggActivityMeasures` that contains the aggregated measures. Also the `AggActivityMeasures` data set is written to the text file `AggActivityMeasures.txt`.

Read the the file [CodeBook.md](CodeBook.md) to see the description of the variables in `ActivityMeasures`.
