-- ==========================================================================================
-- EXPLORATORY DATA ANALYSIS (EDA): Tech Layoffs
-- Goals: 
-- 1. Explore high-level trends and maximums.
-- 2. Aggregate data by Company, Industry, and Country.
-- 3. Analyze time-series data (Rolling Totals and Yearly Rankings).
-- ==========================================================================================

-- I'll start by taking a final look at the cleaned data
SELECT *
FROM layoffs_staging2;

-- ------------------------------------------------------------------------------------------
-- 1. KEY METRICS & OUTLIERS
-- ------------------------------------------------------------------------------------------

-- I want to see the biggest single-day layoff and the highest percentage of a company let go
SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_staging2;

-- I'm looking at companies that went completely under (100% layoff) 
-- Ordered by funds raised to see how much capital was lost
SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;

-- ------------------------------------------------------------------------------------------
-- 2. AGGREGATED ANALYSIS
-- ------------------------------------------------------------------------------------------

-- I'm identifying which companies have laid off the most employees in total
SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;

-- I want to check the date range of the data to understand the time period covered
SELECT MIN(`date`), MAX(`date`)
FROM layoffs_staging2;

-- I'm aggregating layoffs by country to see the geographical impact
SELECT country, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY country
ORDER BY 2 DESC;

-- I'm looking at layoffs by year to see if there is a specific peak period
SELECT YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY YEAR(`date`)
ORDER BY 1 DESC;

-- I'm checking which funding stages (Series A, Post-IPO, etc.) experienced the most layoffs
SELECT stage, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY stage
ORDER BY 2 DESC;

-- ------------------------------------------------------------------------------------------
-- 3. TIME-SERIES & ROLLING TOTALS
-- ------------------------------------------------------------------------------------------

-- I'm calculating the total layoffs per month to prepare for a rolling total
SELECT SUBSTRING(`date`, 1, 7) AS `Month`, SUM(total_laid_off)
FROM layoffs_staging2
WHERE SUBSTRING(`date`, 1, 7) IS NOT NULL
GROUP BY `Month`
ORDER BY 1 ASC;

-- I'm using a CTE to calculate a rolling total of layoffs across months
-- This helps visualize the cumulative impact over time
WITH rolling_total AS (
    SELECT SUBSTRING(`date`, 1, 7) AS `Month`, SUM(total_laid_off) AS TLO
    FROM layoffs_staging2
    WHERE SUBSTRING(`date`, 1, 7) IS NOT NULL
    GROUP BY `Month`
    ORDER BY 1 ASC
)
SELECT `Month`, TLO, 
SUM(TLO) OVER(ORDER BY `Month`) AS Rolling_Total
FROM rolling_total;

-- ------------------------------------------------------------------------------------------
-- 4. COMPLEX RANKING (Top 5 Companies Per Year)
-- ------------------------------------------------------------------------------------------

-- I'm creating a ranking to see which top 5 companies laid off the most people 
-- for each individual year. I'm using two CTEs to keep the logic readable.
WITH company_year (company, years, total_laid_off) AS (
    SELECT company, YEAR(`date`), SUM(total_laid_off)
    FROM layoffs_staging2
    GROUP BY company, YEAR(`date`)
), 
company_year_rank AS (
    SELECT *, 
    DENSE_RANK() OVER (PARTITION BY years ORDER BY total_laid_off DESC) AS Ranking
    FROM company_year
    WHERE years IS NOT NULL
)
SELECT * FROM company_year_rank
WHERE Ranking <= 5;
