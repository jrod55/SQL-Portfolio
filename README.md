## SQL-Portfolio

This repo contains publicly available maize phenotypic data downloaded from [MaizeGDB] (https://download.maizegdb.org/Maize_Domestication_Traits/), which I used to construct a small MySQL database to use for running example SQL scripts.

**NOTE:** I run this database locally using [MySQL Workbench] (https://www.mysql.com/products/workbench/). However, for convenience, I've also included an SQL script for creating the db without needing the raw data files.

### data:
Contains the csv files used to populate the MySQL db.

### scripts:
1_create_maize_example_datadb.sql - Creates the db if it does not exist.


### results:
Contains output files (saved as .csv files) from SQL query and aggregation scripts.