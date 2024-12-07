-- Intermediate Questions

-- 1.Write a query to find movies where the Audience vs Critics % Deviance is greater than 10% and 
-- the Worldwide Gross ($m) exceeds 1000.
SELECT MovieTitle, AudienceScore, CriticsScore, WorldwideGross
FROM marvel.marvelmovies
WHERE ABS(AudienceScore - CriticsScore) > 10
AND WorldwideGross > 1000;
 
-- 2.Write a query to find pairs of movies released in the same year, where the first movie (Movie1)
-- has a higher Worldwide Gross ($m) than the second movie (Movie2)..
SELECT M1.MovieTitle AS Movie1, M2.MovieTitle AS Movie2, M1.WorldwideGross AS Gross1, M2.WorldwideGross AS Gross2, M1.Year
FROM marvel.marvelmovies M1, marvel.marvelmovies M2
WHERE M1.Year = M2.Year
AND M1.WorldwideGross > M2.WorldwideGross;

-- 3.Write a query to calculate the percentage of the Worldwide Gross that comes from the Domestic Gross
-- for each movie.
SELECT MovieTitle, (DomesticGross / WorldwideGross) * 100 AS DomesticGrossPercentage
FROM marvel.marvelmovies;

-- 4.Write a query to find the average Budget ($m) for movies with a Critics % Score below 80%.
SELECT AVG(Budget) AS AverageBudget
FROM marvel.marvelmovies
WHERE CriticsScore < 80;

-- 5.Write a query to find movies whose Worldwide Gross is higher than the average gross of all movies.
SELECT MovieTitle, WorldwideGross
FROM marvel.marvelmovies
WHERE WorldwideGross > (SELECT AVG(WorldwideGross) FROM marvel.marvelmovies);

-- 6.Find movies released after 2015 with an opening weekend revenue of more than $100 million 
-- or a second weekend drop-off less than 50%.
SELECT MovieTitle, Year, OpeningWeekendGross, SecondWeekendGross, WeekendDropOffPercentage
FROM marvel.marvelmovies
WHERE Year > 2015
AND (OpeningWeekendGross > 100 OR WeekendDropOffPercentage < 50);


-- 7.Write a query to create a column labeled Performance that categorizes movies as:
    -- "Blockbuster" if Worldwide Gross ($m) > 1000.
    -- "Hit" if between 500 and 1000.
	-- "Average" otherwise.
SELECT MovieTitle, WorldwideGross,
       CASE 
           WHEN WorldwideGross > 1000 THEN 'Blockbuster'
           WHEN WorldwideGross BETWEEN 500 AND 1000 THEN 'Hit'
           ELSE 'Average' 
       END AS Performance
FROM marvel.marvelmovies;

