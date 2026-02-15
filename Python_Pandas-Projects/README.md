# Python & Pandas Data Engineering Projects

This directory contains projects focused on automated data collection (Web Scraping), ETL processes, and exploratory data analysis using Python and the Pandas library.

## 🐍 Projects

### 1. [Amazon Price Tracker & Web Scraper](https://github.com/BIwithBilly/PortfolioProjects/tree/main/Python_Pandas-Projects/Amazon-Web-Scraper)
*Automated Price Monitoring & Email Alerting System*

- **The Goal:** Build a tool to track price fluctuations for specific products on Amazon to identify the best time to buy.
- **Key Features:** - Automated HTML parsing using **BeautifulSoup**.
    - Data persistence in a structured CSV format for historical analysis.
    - Integration with **smtplib** to send real-time email notifications when prices hit a target threshold.
- **Tech Stack:** Python, Pandas, BeautifulSoup4, smtplib.

---

### 2. [Wikipedia Web Scraper](https://github.com/BIwithBilly/PortfolioProjects/tree/main/Python_Pandas-Projects/Wikipedia-Web-Scraper)
*Structured Data Extraction from Unstructured Web Tables*

- **The Goal:** Extract and clean data from complex Wikipedia HTML tables to create analysis-ready datasets.
- **Key Features:**
    - Targeted extraction of specific table elements.
    - Extensive data cleaning using **Pandas** to handle inconsistent naming conventions, missing values, and data type conversions.
    - Outputs clean, structured data in CSV format for use in BI tools like Power BI or Tableau.
- **Tech Stack:** Python, Pandas, BeautifulSoup4, Requests.

## 3. **World Population Exploratory Data Analysis (EDA)**
*Visualizing Global Growth Trends with Pandas*

- **The Goal:** Perform a deep dive into 50 years of population data to identify growth patterns and outliers across continents.
- **Key Features:**
    - **Data Aggregation:** Used `groupby` and `mean` to compare continental averages across multiple decades.
    - **Custom Visualization:** Integrated `matplotlib` to create time-series plots that highlight the divergence between high-growth regions (Asia) and others.
    - **Optimization:** Cleaned and reordered data columns to ensure a logical flow for visual reporting.
- **Tech Stack:** Python, Pandas, Matplotlib.

---

## 🛠️ Skills Demonstrated
- **Web Scraping:** Navigating DOM structures and handling HTML tags.
- **Data Wrangling:** Transforming messy web data into clean, normalized DataFrames.
- **Automation:** Setting up scripts that run and notify users based on specific logic.
