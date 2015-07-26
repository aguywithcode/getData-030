#Description of run_Analysis.R
This script assumes that the dataset is available in the local directory under the name Archive.zip.

There are comments for every step but here is a summary.

1. Lines 2-6 open and read the test and training data, combining them into one dataframe (CombinedData)
2. Lines 9 -13 read the colum names from features.txt and map them to the combinedData columns
3. Lines 17 and 18 remove all the columns that aren't standard deviation or mean calculations (using grep to filter the columns we're looking for)
4. Lines 21-34 get the activity and subject data and merge them into the combinedData frame
5. The final lines merge the descriptive names into the table and finally uses the aggregate function to calculate the meaneans of the information and writes it to a local file.
