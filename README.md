# Netflix Content Analysis Using SQL

## Project Overview

This project analyzes Netflix content using MySQL to understand the distribution of movies and TV shows, content ratings, countries, genres, release years, and movie durations.

## Objectives

* Analyze the total number of titles.
* Compare Movies and TV Shows.
* Identify countries with the most Netflix content.
* Explore content ratings and genres.
* Analyze content by release year.
* Identify the longest movies.
* Compare Movies and TV Shows across release years and ratings.

## Tools Used

* MySQL
* MySQL Workbench
* SQL

## Dataset

The dataset contains Netflix titles with columns including:

* `show_id`
* `type`
* `title`
* `country`
* `release_year`
* `rating`
* `duration`
* `listed_in`

The dataset contains 4,537 records.

## SQL Analysis

The project includes queries for:

1. Total title count
2. Movies vs. TV Shows distribution
3. Top countries by title count
4. Content rating analysis
5. Most common genre entries
6. Titles by release year
7. Longest movies
8. Content added by year (not performed because the dataset has no `date_added` column)
9. Movies and TV Shows by release year
10. Average release year by content type
11. Oldest and newest release years
12. Content ratings by type

## Key Learnings

* Practiced SQL aggregate functions such as `COUNT()`, `AVG()`, `MIN()`, and `MAX()`.
* Used `GROUP BY` and `ORDER BY` to summarize and rank results.
* Applied filtering with `WHERE`.
* Used `LIMIT` to retrieve top results.
* Practiced data analysis using MySQL Workbench.

## Project Files

* `netflix_content_analysis.sql` — SQL queries used for analysis.

## Conclusion

This project demonstrates how SQL can be used to explore and summarize a content dataset. The analysis provides insights into Netflix titles, content types, ratings, genres, countries, and release years.

## Author

Deepika
