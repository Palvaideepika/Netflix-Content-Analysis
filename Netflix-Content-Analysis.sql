SHOW DATABASES;
USE ott_content_analysis;
SHOW TABLES;
SELECT *
FROM netflix_titles
LIMIT 10;
SELECT COUNT(*) AS total_titles
FROM netflix_titles;
SELECT 
    type,
    COUNT(*) AS total_count
FROM netflix_titles
GROUP BY type;
SELECT
    country,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE country IS NOT NULL
  AND country <> ''
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;
SELECT
    rating,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE rating IS NOT NULL
GROUP BY rating
ORDER BY total_titles DESC;
SELECT
    listed_in AS genre,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE listed_in IS NOT NULL
GROUP BY listed_in
ORDER BY total_titles DESC
LIMIT 10;
SELECT
    release_year,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE release_year IS NOT NULL
GROUP BY release_year
ORDER BY total_titles DESC
LIMIT 10;
SELECT
    title,
    duration,
    release_year
FROM netflix_titles
WHERE type = 'Movie'
  AND duration IS NOT NULL
ORDER BY CAST(
    REPLACE(duration, ' min', '') AS UNSIGNED
) DESC
LIMIT 10;
SELECT
    YEAR(STR_TO_DATE(date_added, '%M %d, %Y')) AS year_added,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE date_added IS NOT NULL
GROUP BY year_added
ORDER BY total_titles DESC;
SHOW COLUMNS FROM netflix_titles;

SELECT
    rating,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE rating IS NOT NULL
GROUP BY rating
ORDER BY total_titles DESC
LIMIT 10;

SELECT
    release_year,
    type,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE release_year IS NOT NULL
GROUP BY release_year, type
ORDER BY release_year DESC
LIMIT 20;

SELECT
    type,
    ROUND(AVG(release_year), 0) AS average_release_year
FROM netflix_titles
WHERE release_year IS NOT NULL
GROUP BY type;

SELECT
    MIN(release_year) AS oldest_release_year,
    MAX(release_year) AS newest_release_year
FROM netflix_titles;
SELECT
    type,
    rating,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE rating IS NOT NULL
GROUP BY type, rating
ORDER BY type, total_titles DESC;