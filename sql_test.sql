-- QUIZ 1
-- Question 1

SELECT * FROM country
LIMIT 5;

SELECT DISTINCT Continent
FROM country;

-- Question 2

SELECT * FROM city
WHERE CountryCode = 'KOR';

SELECT Name, Population FROM city
WHERE CountryCode = 'KOR'
AND Population > 1000000
ORDER BY Population DESC;

-- Question 3

SELECT Name, Population FROM city
WHERE Population > 8000000
AND Population < 10000000
ORDER BY Population DESC;

-- Question 4

SELECT * FROM country
LIMIT 20;

SELECT Code AS code,
CONCAT_WS('(', Name, IndepYear, REGEXP_REPLACE('\\D\\(', '\\(', '\\)')) AS Nameindep,
Continent AS continent,
Population AS population FROM country
WHERE IndepYear > 1940
AND IndepYear < 1950
ORDER BY IndepYear ASC;

-- Question 5

SELECT * FROM countrylanguage
LIMIT 10;

SELECT CountryCode AS countrycode,
Language AS LANGUAGE,
Percentage AS percentage FROM countrylanguage
WHERE Percentage >= 95 AND
Language = 'English' OR
Percentage >= 95 AND
Language = 'Korean' OR
Percentage >= 95 AND
Language = 'Spanish'
ORDER BY Percentage DESC;

-- Question 6

SELECT * FROM country
LIMIT 10;

SELECT Code AS code,
Name AS name,
Continent AS continent,
GovernmentForm AS governmentform,
Population AS population FROM country
WHERE Code

-- QUIZ 2
-- Question 1

SELECT COUNT(DISTINCT Continent) AS count
FROM country;
 
-- Question 2

SELECT Continent AS continent,
COUNT(*) AS count
FROM country
GROUP BY Continent
ORDER BY count DESC;

-- Question 3

SELECT CountryCode AS countrycode,
Population
FROM city
GROUP BY CountryCode
ORDER BY Population DESC;

SELECT * FROM city
WHERE CountryCode = 'CHN';




