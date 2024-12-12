-- Advanced Questions

SELECT * FROM marvel.marvelmovies;


-- Window Functions
-- Write a query to calculate the rank of movies based on Worldwide Gross partitioned by Year.
SELECT 
    MovieTitle, 
    WorldwideGross, 
    Year, 
    RANK() OVER (PARTITION BY Year ORDER BY WorldwideGross DESC) AS MovieRank
FROM 
    marvel.marvelmovies;

-- Correlated Subqueries
-- Find movies whose Worldwide Gross  is greater than the average gross of movies released 
-- in the same year.
SELECT 
    MovieTitle,
    WorldwideGross,
    Year
FROM marvel.marvelmovies m1
WHERE WorldwideGross > (
    SELECT AVG(WorldwideGross)
    FROM marvel.marvelmovies m2
    WHERE m2.Year = m1.Year
);



-- CTEs (Common Table Expressions)
-- Write a CTE to calculate the percentage of the budget recovered (% Budget Recovered) 
-- for each movie and use it to display movies that recovered more than 400% of their budget.
WITH BudgetRecovery AS (
    SELECT 
        MovieTitle,
        Budget,
        WorldwideGross,
        (WorldwideGross / Budget) * 100 AS BudgetRecoveredPercentage
    FROM marvel.marvelmovies
)
SELECT 
    MovieTitle, 
    BudgetRecoveredPercentage
FROM BudgetRecovery
WHERE BudgetRecoveredPercentage > 400;



-- Dynamic Aggregation
-- Write a query to calculate the yearly total, average, minimum, and maximum Worldwide Gross .
SELECT 
    Year,
    SUM(WorldwideGross) AS TotalWorldwideGross,
    AVG(WorldwideGross) AS AverageWorldwideGross,
    MIN(WorldwideGross) AS MinWorldwideGross,
    MAX(WorldwideGross) AS MaxWorldwideGross
FROM marvel.marvelmovies
GROUP BY Year;

-- Nested Queries in FROM Clause
-- Write a query to find movies with a Worldwide Gross  greater than the median gross of all movies.
WITH MedianGross AS (
    SELECT 
        WorldwideGross
    FROM marvel.marvelmovies
    ORDER BY WorldwideGross
    LIMIT 1 OFFSET (SELECT COUNT(*) / 2 FROM marvel.marvelmovies)
)
SELECT 
    MovieTitle,
    WorldwideGross
FROM marvel.marvelmovies
WHERE WorldwideGross > (SELECT WorldwideGross FROM MedianGross);


-- Recursive CTEs
-- Write a recursive CTE to simulate year-over-year cumulative gross revenue for movies
-- released after 2010.

WITH RECURSIVE CumulativeGross AS (
    SELECT 
        Year,
        SUM(WorldwideGross) AS YearlyGross
    FROM marvel.marvelmovies
    WHERE Year > 2010
    GROUP BY Year
    HAVING Year = 2011
    UNION ALL
    SELECT 
        m.Year,
        cg.YearlyGross + m.WorldwideGross
    FROM marvel.marvelmovies m
    JOIN CumulativeGross cg ON m.Year = cg.Year + 1
    WHERE m.Year > 2011
)
SELECT 
    Year,
    YearlyGross
FROM CumulativeGross;


