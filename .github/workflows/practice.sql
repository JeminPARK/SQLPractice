
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
