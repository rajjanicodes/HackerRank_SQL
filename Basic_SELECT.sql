/*


SQL Solutions by rajjanicodes

If you are new to SQL and want to read more about SQL REGEXP,
a good source is    https://dev.mysql.com/doc/refman/8.0/en/regexp.html

If you want to read about CASE function,
refer to            https://www.w3schools.com/sql/func_mysql_case.asp

Doing HackerRank and LeetCode is the best way to learn SQL, so keep practicing.
But refer to thee solutions only when you get stuck.


*/

--Revising the Select Query I
select * from CITY
where POPULATION > 100000 AND COUNTRYCODE = 'USA';

-- Revising the Select Query II
SELECT NAME FROM CITY
WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA';

-- Select All
SELECT * FROM CITY;

-- SELECT by ID
SELECT * FROM CITY
WHERE ID = 1661;

-- Japanese Cities' Attributes
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN';

-- Japanese Cities' Names
SELECT NAME FROM CITY
WHERE COUNTRYCODE = 'JPN';

-- Weather Observation Station 1
SELECT CITY, STATE FROM STATION;

-- Weather Observation Station 3
SELECT DISTINCT CITY FROM STATION
WHERE ID%2 = 0;

-- Weather Observation Station 4
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;

-- Weather Observation Station 5
SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY), CITY
LIMIT 1;

SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY
LIMIT 1;

-- Weather Observation Station 6
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[AEIOU]';

-- Weather Observation Station 7
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '[AEIOU]$';

-- Weather Observation Station 8
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[AEIOU].*[AEIOU]$';

-- Weather Observation Station 9
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^AEIOU]'

-- Weather Observation Station 10
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '[^AEIOU]$'

-- Weather Observation Station 11
SELECT DISTINCT CITY FROM STATION
WHERE (CITY REGEXP '^[^AEIOU]') OR (CITY REGEXP '[^AEIOU]$');

-- Weather Observation Station 12
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^AEIOU].*[^AEIOU]$';

-- Higher Than 75 Marks
SELECT Name FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME, 3), ID;

-- Employee Names
SELECT name FROM Employee
ORDER BY name ASC;

-- Employee Salaries
SELECT NAME FROM EMPLOYEE
WHERE (SALARY > 2000) AND (MONTHS < 10);

-- Type of Triangle
SELECT
CASE
    WHEN (A+B<=C) OR (B+C<=A) OR (A+C <=B) THEN 'Not A Triangle'
    WHEN (A=B) AND (B=C) THEN 'Equilateral'
    WHEN (A=B) OR (B=C) OR (C=A) THEN 'Isosceles'
    ELSE 'Scalene'
END
FROM TRIANGLES;
