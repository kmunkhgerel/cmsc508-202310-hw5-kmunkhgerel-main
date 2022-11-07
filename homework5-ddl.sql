-- homework5-ddl.sql

-- task 1
-- store your drop table statements in this block
    drop table if exists raw_country;

-- task 2 - Create "raw_country" table
-- label the columns using the following schema:
-- Assign appropriate data types.
-- Assign an appropriate primary key.
-- Set default value to country_count 1

    create table raw_country (
        country_code int NOT NULL,
        country_short_name varchar(255),
        country_full_name varchar(255),
        country_abbr varchar(255),
        country_region varchar(255),
        country_income_category varchar(255),
        country_wb_abbr varchar(255),
        country_count int, 
        primary key(country_code)
    );


-- task 3 - Insert records into raw_country table using data from CSV file
-- DATA PIPELINE TRICK:
--   - create the appropriate INSERT command header
--   - THEN, use a spreadsheet to turn each row of the CSV file into 
--     an appropriately formatted VALUES statement,
--   - THEN, copy and paste the ENTIRE block of values into the DDL file below.
--   - This trick works with just about ANY table!
--   - Watch out for single apostrophes, they need to be manually converted to ''
--     take advantage of the VSCODE colors.



-- task 4 - create COUNTRY table
-- After doing the first few tasks in the DML file, write a 
-- CREATE TABLE with INSERT command, filling only with real country data

