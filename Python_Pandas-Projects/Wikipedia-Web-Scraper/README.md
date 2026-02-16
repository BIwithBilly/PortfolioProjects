# 🌐 Wikipedia Corporate Data Scraper

This project demonstrates the extraction and transformation of unstructured HTML data into a clean, analysis-ready format. It specifically targets complex wiki-tables to identify and catalog the largest companies in the United States by revenue.

## 🌟 Star Features
* **DOM Traversal:** Utilizes `BeautifulSoup4` to navigate deep into Wikipedia's HTML structure, specifically targeting `table` tags with the `wikitable sortable` class.
* **Dynamic Header Extraction:** Automatically identifies and cleans table headers to ensure column names are formatted correctly for database ingestion.
* **Pandas Integration:** Implements a robust data cleaning pipeline to handle multi-index headers, remove unwanted characters, and standardize numerical data.
* **Automated Export:** Streamlines the end-to-end process from a live URL to a structured `Companies.csv` file, suitable for BI tools like Power BI or Tableau.

---

## 🛠️ Tech Stack & Libraries
- **Python 3.x**
- **BeautifulSoup4:** For HTML parsing and web scraping.
- **Pandas:** For data manipulation, cleaning, and CSV serialization.
- **Requests:** For handling HTTP GET requests to the Wikipedia servers.

---

## 🚀 Getting Started

### 1. Prerequisites
You will need to install the following dependencies:
```pip install requests beautifulsoup4 pandas```

### 2. Usage
The script is contained within the Jupyter Notebook. It follows a linear workflow:
1. **Request:** Fetches the Wikipedia page source.
2. **Scrape:** Locates the specific "Largest Companies" table.
3. **Transform:** Converts the HTML table into a Pandas DataFrame and cleans the index.
4. **Load:** Saves the final results to `Companies.csv`.

---

## 📉 Example Output
The scraper transforms raw Wikipedia tables into structured records:
| Rank | Name | Industry | Revenue (USD millions) |
| :--- | :--- | :--- | :--- |
| 1 | Walmart | Retail | 611,289 |
| 2 | Amazon | Retail & Cloud | 513,983 |

---

## ⚖️ Disclaimer
This project is for **educational purposes only**. When scraping Wikipedia, please adhere to their [Terms of Use](https://foundation.wikimedia.org/wiki/Policy:Terms_of_Use) and ensure you are not violating their `robots.txt` policy regarding crawl frequency.
