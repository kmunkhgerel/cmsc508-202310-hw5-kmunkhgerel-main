-- homework5-ddl.sql

-- task 1
-- How many records were loaded into the RAW_COUNTRY table?
-- (skills: select, aggregate)


-- task 2
-- write out the first 10 records and look at their columns
-- Do you see any blanks or missing data?
-- (skills: select, limit)


-- task 3
-- How many records are NOT for countries, that is
-- they're for regions or groups of countries.
-- How can you tell?  Then write a query to list all
-- the non-countries
-- (skills: select, where)


-- task 4
-- Now, go back to your DDL file (Task 4) and create a new table
-- using CREATE TABLE ... SELECT from WHERE syntax.
-- Finally, below write a query to return the number
-- of records in the new table.
-- "According to the World Bank, how many countries are in the world?"
-- (skills: select, aggregate)


-- task 5
-- Let's investigate the country_region field.
-- What is the domain of the country_region field? That is,
-- what are the unique values found there?
-- (there are several possible ways to code this in SQL)
-- (skills: select, aggregate, order by)


-- task 6
-- How many countries are in each region?
-- (skills: select, aggregate, group by, order by)


-- task 7
-- List the country full names and regions for all countries in north america
-- (skills: select, where, order by)


-- task 8
-- The World Cup soccer tournament starts November 20.  The host country is Qatar.
-- What region contains Qatar?  List the region, country short name and full name
-- (skills: select, where)


-- task 9
-- There are two abbreviation fields in the data country_abbr and country_wb_abbr.
-- List the country code, short name, abbr, wb_abbr and region for all the countries
-- where the abbr and wb_abbr are different.
-- (skills: select, where, order by)


-- task 10
-- Now, let's investigate the "income category" field.
-- List the income categories and the number of countries in each in 
-- descending order of most countries to least.
-- (skills: select, aggregate, group by, order by)


-- task 11
-- mystery task.  Looking at the table from Task 10, write the
-- next obvious query based on the results in the table.
-- At a minimum, your query should put country short name in the first column.
-- you will be scored on the number of records returned and the value(s) 
-- in the first column.


-- task 12
-- OK, this HAS to be an error. Let's make a assumption that the country 
-- in question, because they are oil-rich, are "high income".  
-- Write an update comment to correct the issue.
-- NOTE - if you get this wrong, all subsequent tables will be wrong!


-- task 13
-- Write a single query that shows each region and the number of countries in each
-- income category within the country.  Rather than use COUNT, use GROUP BY and SUM.
-- (skills: select, aggregate, group by, order by)


-- task 14
-- Examine the result from task 12. It would be really cool to
-- present the results of this table in a 2-D form, with 
-- columns for each income category (high, upper middle, lower middle, low, other)
-- regions down the side, and the pair-wise count inside each cell.
-- Using CASE statements, DO IT!  BE SURE to include the countries without
-- an income category.
-- HINT - your query should return 6 columns: the region name, one
-- column for each of the income categories (e.g., High, Upper middle, etc.)
-- and a column for the row totals.
-- (skills: select, aggregate, group by, nested query)


-- task 15
-- Wow! what a cool table!  It is very interesting to see where the money
-- sits around the world.  Using the general approach from Task 13 above
-- and write a query to return the single region with the most lower-income countries.
-- Your query should return 2 columns, the region name and the number of low-income countries
-- PUT THE NUMBER FIRST!
-- (skills: select, aggregate, group by, nested query, order by, limit)


-- task 16
-- Are you getting the hand of this? Good! We need to take a look at all
-- the countries in the same region and with the same income category as the Marshall Islands.
-- For each country that matches, print their country code, short name, region and 
-- income category, by order of their short name.  As a hint, the
-- country code for the Marshall Islands is MHL
-- (skills: select, where, subquery)


-- task 17
-- OK - let's raise the heat in the kitchen! Review the output from task 13.  You'll see
-- that some of the regions do not contain all of the income levels.  For example,
-- the Europe & Central Asia region does not have any low income countries.
--
-- If I need to compute the average number of countries in each region-income pair,
-- I need to make sure that I include the missing pairs, otherwise my denominator will 
-- be wrong and my average won't be accurate.
--
-- CHALLENGE - using a SINGLE SQL statement, write a table that contains every
-- combination of region and income category (including the missing '') value!
--
-- THEN add a WHERE clause to only show the values that were missing from the original pairings!
--
-- HINT - there should be AT MOST [# of regions]x[# of income cats] = 28 rows in your final table!
-- Review that Task 13 found all the non-zero pairs, and the answer is 22.  SO - this table result should have 6 rows!
-- (skills: select, where, subqueries, joins)


-- task 18
-- Hot enough, yet?  Let's go for ghost-pepper HOT!  Now let's build some
-- percentage tables.  For example, across the entire sample, what
-- is the percentage of total countries in each income category?
-- As a first step, build off the result from task 17 and create a table with
-- six columns (region, income cat, country count, sum of countries in region, sum of countries by income and total sum countries)
-- actually calculating percentages and print out a table will be a slam dunk after this!
-- (skills: select, where, subqueries, joins, aggregate functions)


-- task 19 
-- SLAM DUNK TIME!  Using the resulting table CTEs from Task 18, print out a table listing
-- the number, totals and percentage of countries by region.



-- task 20
-- SLAM DUNK TIME!  Using the resulting table CTEs from Task 18, print out a table listing
-- the number, totals and percentage of countries by income category


