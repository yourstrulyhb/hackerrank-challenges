-- WITH
-- min_city (len) AS (  SELECT MIN(     LENGTH(CITY)     ) 
--                                     FROM STATION),
-- max_city (len) AS (  SELECT MAX(     LENGTH(CITY)  ) 
--                                     FROM STATION )
    
SELECT CITY AS shortest_city_name, LENGTH(CITY) AS length
FROM STATION 
WHERE LENGTH(CITY) = (  SELECT MIN(     LENGTH(CITY)     ) 
                                            FROM STATION    )
ORDER BY CITY
LIMIT 1;
                             
SELECT CITY AS longest_city_name, LENGTH(CITY) AS length
FROM STATION 
WHERE LENGTH(CITY) = (  SELECT MAX(     LENGTH(CITY)     ) 
                                            FROM STATION    )
ORDER BY CITY
LIMIT 1;
                             