# World Layoffs Data Cleaning & Analysis

## Project Overview
In this project, I utilized **MySQL** to take a raw dataset of global tech layoffs and transform it into an analysis-ready format before performing Exploratory Data Analysis (EDA). This project demonstrates my ability to handle large datasets, implement complex data cleaning techniques, and extract meaningful business insights using SQL.

## 🛠 Data Cleaning Steps
The cleaning process was performed in [layoffs_cleaning.sql](Layoffs_Project/layoffs_cleaning.sql) and involved several critical phases:
1. **Staging:** Created a staging table to preserve the original raw data.
2. **De-duplication:** Identified and removed duplicate records using the `ROW_NUMBER()` window function.
3. **Standardization:** - Trimmed whitespace from company names.
   - Standardized industry categories (e.g., merging 'CryptoCurrency' into 'Crypto').
   - Cleaned country names (removing trailing punctuation).
4. **Formatting:** Converted the `date` column from a text string to a proper MySQL `DATE` format.
5. **Null Management:** Handled null and blank values by populating missing industry data using self-joins.
6. **Finalization:** Removed unnecessary columns and rows that lacked critical layoff data.

## 📊 Exploratory Data Analysis (EDA)
With the data cleaned, I performed an analysis in [layoffs_eda.sql](Layoffs_Project/layoffs_eda.sql) to uncover trends:
- **Maximums:** Identified the largest single-day layoffs and companies that laid off 100% of their staff.
- **Aggregations:** Summarized total layoffs by company, industry, and country.
- **Time-Series:** Created a rolling total of layoffs by month to visualize the pace of layoffs over time.
- **Ranking:** Used multiple Common Table Expressions (CTEs) to rank the top 5 companies with the highest layoffs for each year.

## 💡 Key Insights
- **Tech Giants:** Large-cap tech companies accounted for the highest volume of total layoffs, though many startups saw 100% workforce reductions.
- **Timeline:** The data reveals specific "peak" months where layoffs spiked globally.
- **Industry Impact:** Certain sectors, such as Consumer and Retail, were hit harder in specific years compared to others.

## Tools Used
* **Database:** MySQL
* **Techniques:** Window Functions (ROW_NUMBER, DENSE_RANK), CTEs, Joins, Date Manipulation, String Functions.

