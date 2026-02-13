-- ==========================================================================================
-- DATA CLEANING PROJECT: Tech Layoffs (MySQL)
-- Goals: 
-- 1. Create Staging Table (to protect raw data)
-- 2. Identify and Remove Duplicates
-- 3. Standardize Data (Fix strings, formats, and dates)
-- 4. Handle Null/Blank values
-- 5. Finalize Schema by removing helper columns
-- ==========================================================================================

-- ------------------------------------------------------------------------------------------
-- STEP 0: INITIAL STAGING
-- ------------------------------------------------------------------------------------------

-- I'll start by viewing the raw data to understand the structure
SELECT * FROM layoffs;

-- I am creating a copy of the table structure to work on
-- This ensures the original raw data stays untouched
CREATE TABLE layoffs_staging LIKE layoffs;

-- I'll populate the staging table with all existing data
INSERT layoffs_staging
SELECT * FROM layoffs;


-- ------------------------------------------------------------------------------------------
-- STEP 1: REMOVE DUPLICATES
-- ------------------------------------------------------------------------------------------

-- I'm using ROW_NUMBER() to identify identical rows. 
-- If all core columns are the same, the row_num will be > 1.
WITH duplicate_cte AS (
    SELECT *,
    ROW_NUMBER() OVER(
        PARTITION BY company, location, industry, total_laid_off, 
                     percentage_laid_off, `date`, stage, country, funds_raised_millions
    ) AS row_num
    FROM layoffs_staging
)
SELECT * FROM duplicate_cte WHERE row_num > 1;

-- Since MySQL doesn't allow direct DELETE from a CTE, I'm creating 
-- a 'staging2' table that includes 'row_num' as a physical column.
CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- I'm inserting the data into the second staging table with the row numbers calculated
INSERT INTO layoffs_staging2
SELECT *,
ROW_NUMBER() OVER(
    PARTITION BY company, location, industry, total_laid_off, 
                 percentage_laid_off, `date`, stage, country, funds_raised_millions
) AS row_num
FROM layoffs_staging;

-- Now I can physically delete the duplicate rows
DELETE FROM layoffs_staging2
WHERE row_num > 1;


-- ------------------------------------------------------------------------------------------
-- STEP 2: STANDARDIZING DATA
-- ------------------------------------------------------------------------------------------

-- 1. I'll trim the whitespace from company names to ensure consistency
UPDATE layoffs_staging2
SET company = TRIM(company);

-- 2. I'm consolidating Industry names (e.g., merging all variations of 'Crypto' into one)
UPDATE layoffs_staging2
SET industry = 'Crypto'
WHERE industry LIKE 'Crypto%';

-- 3. I'm cleaning Country names by removing trailing periods (common in 'United States.')
UPDATE layoffs_staging2
SET country = TRIM(TRAILING '.' FROM country)
WHERE country LIKE 'United States%';

-- 4. I'm converting the 'Date' from a Text string to a proper MySQL Date format
-- First, I update the string format...
UPDATE layoffs_staging2
SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y');

-- ...then I alter the column type so MySQL recognizes it as a DATE type
ALTER TABLE layoffs_staging2
MODIFY COLUMN `date` DATE;


-- ------------------------------------------------------------------------------------------
-- STEP 3: HANDLING NULLS AND BLANKS
-- ------------------------------------------------------------------------------------------

-- I'll convert empty strings to NULLs so they are easier to handle in calculations
UPDATE layoffs_staging2
SET industry = NULL
WHERE industry = '';

-- I'm populating missing Industry values using a self-join. 
-- If a company has an industry in one row but NULL in another, I'll fill that gap.
UPDATE layoffs_staging2 t1
JOIN layoffs_staging2 t2
	ON t1.company = t2.company
SET t1.industry = t2.industry
WHERE t1.industry IS NULL
AND t2.industry IS NOT NULL;


-- ------------------------------------------------------------------------------------------
-- STEP 4: REMOVE UNNECESSARY ROWS AND COLUMNS
-- ------------------------------------------------------------------------------------------

-- I'll remove rows where both total_laid_off and percentage_laid_off are NULL, 
-- as they don't provide useful information for this analysis.
DELETE FROM layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;

-- I'm dropping the helper 'row_num' column now that de-duplication is complete
ALTER TABLE layoffs_staging2
DROP COLUMN row_num;

-- I'll do a final check of the cleaned data
SELECT * FROM layoffs_staging2;
