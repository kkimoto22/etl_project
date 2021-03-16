# etl_project

For our ETL project we did initial research on Kaggle.com relating to detail for the restaurant industry in Chicago. From looking at the available datasets, we utilized business licenses data and sidewalk cafe permits. This data was comprised from the city of Chicago’s website and verified frequently.

From this we took these two CSV’s and loaded them into a Jupyter Notebook to store them into data frames. We then dropped any duplicate legal names from these data frames. Going from the unique business name, we created unique columns for each data frame relating to the outputs we wanted to match together and trasnformed the data by renaming the column data sets to be lower case. We performed this in jupyter notebook so SQL could read the data columns properly otherwise these tables would not have been created due to the dataset having capital letters in the column name. 

After that point, we made our local connection utilizing Postgres to build our tables based on these outputs between the two data sets to run queries to join the data. Our primary key for this join was the account_number of the business as this was our best validation between the two data sets with our forgein keys being the doing_business_as_name for secondary validation along with seeing last payment date for sidewalk permits for a restaurant. 


Data Sources:
Chicago Sidewalk Cafe Permits: https://www.kaggle.com/chicago/chicago-sidewalk-cafe-permits
Chicago Business Licenses and Owners: https://www.kaggle.com/chicago/chicago-business-licenses-and-owners
