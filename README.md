## SQL-Portfolio

This repo contains examples of using SQL to query and aggregate data. The data used are from publicly available maize phenotypes (traits), and are downloaded from [MaizeGDB](https://download.maizegdb.org/Maize_Domestication_Traits/). I used these data to construct a MySQL database for running the example SQL scripts.

**NOTE:** I run this database locally using [MySQL Workbench](https://www.mysql.com/products/workbench/). However, for convenience, I've also included an SQL script for creating the db without needing the raw data files.

### data:
Contains the raw data files used to populate the MySQL db.

### scripts:
**1_create_maize_example_datadb.sql:**<br> 
-Creates the db if it does not exist.<br>
**2_filter_populations_join.sql:**<br>
-Filters the data for populations 5-10 and performs a full outer join of the data.<br>
**3_categorize_top_bottom.sql:**<br>
-Filters for the top and bottom 10% of values from each table and returns the result in 'long' format with top and bottom categories labeled.<br>
**4_categorize_top_bottom_by_pop.sql:**<br>
-For each population in each table, filters for the top and bottom 10% of values and returns the result in 'long' format with top and bottom categories labeled.<br>
**5_summary_stats_by_pop.sql:**<br>
-Computes summary statistics (min/mean/max) of trait values for each population in each table.<br>

### results:
Contains output files (saved as .csv files) from the SQL scripts. The files are named based on the corresponding script used to generate the result.