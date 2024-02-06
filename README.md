# Crowdfunding_ETL
The purpose of this project is to use extract and transform data, perform analysis on the data, and load the transformed data into a database with 4 connected tables. 

Tools used: 
- Python, including Pandas, NumPy & RegEx
- QuickDBD to create an Entity Relationship Diagram (ERD)
- PostGreSQL 

Specific steps taken: 
1. Extract data from crowdfunding.xlsx, transform data to create two seperate dataframes, "Category" and "SubCategory", including seperating existing data in "Category/SubCategory" column into two seperate variables, and creating new variables to number the categories and subcategories. Export both dataframes as CSVs. 
2. Transform data from crowdfunding.xlsx into a dataframe, including renaming, reordering, and dropping columns as well as converting existing data types to the appropriate data types. Merging the new dataframe with both dataframes created in the previous step so that all relevant data is present in dataframe. Export dataframe as CSV.
3. Extra data from contacts.xlsx and transofrm into a dataframe, using regex functions to split data from one massive column into four distinct columns for better readability and usage. Export dataframe to CSV.
4. Create an ERD for these 4 new CSV files in order to create a relational database. Using PostgreSQL, create the tables, specifying data types, primary keys, foreign keys and constraints. Import each CSV file into the corresponding SQL table and verify each table has correct data using a SELECT statement. 
