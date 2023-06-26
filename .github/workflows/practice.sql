
-- hackerank long short city name
select city, length(city) from station order by length(city) asc, city limit 1;
select city, length(city) from station order by length(city) desc, city limit 1;

WITH SHORT AS( SELECT CITY, LENGTH(CITY) FROM STATION GROUP BY CITY ORDER BY LENGTH(CITY),CITY LIMIT 1), lONGEST AS(SELECT CITY, LENGTH(CITY) FROM STATION GROUP BY CITY ORDER BY lENGTH(CITY) DESC, CITY LIMIT 1) SELECT * FROM SHORT UNION ALL SELECT * FROM lONGEST


-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
select city from station where LEFT(city,1) IN ('i.e.', 'a', 'e','i', 'o', 'u');    

-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
select city from station where RIGHT(city, 1) IN ('i.e', 'a', 'e', 'i', 'o', 'u') group by city;

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
select city from station where left(city,1) IN('i.e.', 'a', 'e', 'i', 'o', 'u')and right (city,1) IN('i.e.', 'a', 'e', 'i', 'o', 'u') group by city

-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
select city from station where left(city, 1) not in ('a', 'e', 'i', 'o', 'u') group by city

-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
select city from station where right(city, 1) not in ('a', 'e', 'i', 'o', 'u') group by city

-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION WHERE LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') OR LOWER(SUBSTR(CITY, LENGTH(CITY),1)) NOT IN ('a','e','i','o','u');  -- substr(col, target, length)

-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
select city from station where left(city, 1) not in ('a', 'e', 'i', 'o', 'u') and right(city, 1) not in ('a', 'e', 'i', 'o', 'u') group by city

-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. 
-- If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
select name from students where marks > 75 order by right(name, 3) asc, id asc;
