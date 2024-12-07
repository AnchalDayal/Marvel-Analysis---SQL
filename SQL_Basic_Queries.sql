-- BASIC QUESTIONS 
-- 1.Write a query to display Category, Year, and Worldwide Gross for all movies.
SELECT Category , Year, WorldwideGross 
FROM  marvel.marvelmovies;

-- 2.Write a query to find movies released after 2018.
SELECT MovieTitle , Year
FROM marvel.marvelmovies
WHERE Year > 2018;

-- 3.Write a query to sort the movies by their Worldwide Gross in descending order.
SELECT MovieTitle , Category 
FROM  marvel.marvelmovies
ORDER BY WorldwideGross DESC;

-- 4.How many movies are in the dataset?
SELECT COUNT(MovieTitle)
FROM  marvel.marvelmovies;

-- 5.Write a query to calculate the total Worldwide Gross for all movies.
SELECT SUM(WorldwideGross)
FROM  marvel.marvelmovies;

-- 6.Write a query to display movies with a Critics % Score greater than 90%.
SELECT MovieTitle, CriticsScore
FROM  marvel.marvelmovies
WHERE CriticsScore > 90;

-- 7.Group movies by Year and find the total Worldwide Gross for each year.
SELECT Year, SUM(WorldwideGross) AS TotalWorldwideGross
FROM  marvel.marvelmovies
GROUP BY Year
ORDER BY Year;

-- Additional Question
-- 8.Group movies by Category and find the total Worldwide Gross.
SELECT Category, SUM(WorldwideGross) AS TotalWorldwideGross
FROM  marvel.marvelmovies
GROUP BY Category;