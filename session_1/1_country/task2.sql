-- Task 2

-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read task2.sql
-- 3. Exit SQLite: .exit


-- write your sql code here
SELECT Country from countries
Order by Population Desc
LIMIT 10;

SELECT Country from countries
Order by AREASQMI Asc
LIMIT 5;


SELECT Country from countries
Order by AREASQMI Desc
LIMIT 1;

SELECT Country from countries WHERE continent = 'Africa'
Order by AREASQMI ASC
LIMIT 3;

SELECT Country from countries 
Order by LITERACYPERCENT ASC
LIMIT 5; 

SELECT Country from countries where Country LIKE 'C%'
Order by GDPPERCAPITA Desc
Limit 3;

SELECT Country from countries WHERE INFANTMORTALITYPER1000 > 50
ORDER by LITERACYPERCENT Desc
Limit 1; 

SELECT Country from countries WHERE 