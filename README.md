## SQL-Portfolio

This repo contains publicly available maize phenotypic data downloaded from [MaizeGDB](https://download.maizegdb.org/Maize_Domestication_Traits/), which I used to construct a small MySQL database to use for running example SQL scripts.

**NOTE:** I run this database locally using [MySQL Workbench](https://www.mysql.com/products/workbench/). However, for convenience, I've also included an SQL script for creating the db without needing the raw data files.

### data:
Contains the csv files used to populate the MySQL db.

### scripts:
**1_create_maize_example_datadb.sql:**<br> 
- Creates the db if it does not exist.<br>
**2_filter_populations_join.sql:**<br>
- Filters the data for populations 5-10 and performs a full outer join of the data.<br>
**3_categorize_top_bottom.sql:**<br>
- Filter for the top and bottom 10% of values from each table and return the result in 'long' format with top and bottom categories labeled.<br>
**4_categorize_top_bottom_by_pop.sql:**<br>
- For each population in each table, filter for the top and bottom 10% of values and return the result in 'long' format with top and bottom categories labeled.<br>

### results:
Contains output files (saved as .csv files) from SQL query and aggregation scripts. The names of the files correspond to the script used.