# 🧱 LEGO Set Finder Dashboard

## 📌 Project Overview
This project is an interactive Power BI tool designed for LEGO enthusiasts and collectors to explore over 4,000 sets. Inspired by the nostalgia of purchasing sets for my children—and the legendary Death Star with its massive minifigure count—this dashboard transitions from a simple list into a powerful search engine. It allows users to filter by theme, piece count, age range, and price to find the perfect next build.

## 🖼️ Dashboard Preview
Below is the primary interface for the LEGO Set Finder. You can view the full interactive experience in the [Lego Dashboard.pbix](Lego%20Dashboard.pbix).

![Lego Dashboard Preview](Lego%20Dashboard%20Screen%20Shot%201.png)

## 📊 Key Insights & Features
- **Comprehensive Database:** Explores 4,000+ sets across decades of LEGO history.
- **Deep-Dive Discovery:** Users can analyze sets based on the number of minifigures (perfect for finding sets like the Death Star), retail price, and piece count.
- **Visual Regression:** Includes a regression analysis to identify the relationship between set size and price, helping collectors spot "high-value" sets.
- **Nostalgia Factor:** Easy navigation through classic and modern themes to rediscover sets from years past.

## 🛠️ Technical Implementation

### Data Modeling
Following the principles in the [Advanced Power BI: LEGO Set Explorer](https://mavenanalytics.io/crash-courses/advanced-power-bi-lego-set-explorer) course, I implemented a streamlined data model to handle set details and pricing tiers.
- **Fact Table:** `FactLegoSets`
- **Dimension Tables:** `dimThemes`, `dimAgeRanges`, and `dimDate`.

### Power Query Transformations
Utilized Power Query to clean and structure the LEGO database:
- **Price Per Piece:** Created a calculated column to determine the value-for-money of different sets.
- **Minifig Density:** Developed logic to highlight sets with high minifigure counts.
- **Image Integration:** Cleaned URL paths to enable dynamic thumbnail rendering within the dashboard.

### Advanced Power BI Techniques
- **Numeric Range Parameters:** Allows users to dynamically filter sets by piece count or price range.
- **Custom Image Tooltips:** Hovering over a set name reveals a visual preview of the box art.
- **Decomposition Trees:** Used to break down set distributions by theme and sub-theme.
- **DAX Measures:** Developed measures for Average Price, Total Sets, and Total Minifigures, including `HASONEVALUE` logic to control visual interactions.

## 📈 Price vs. Piece Count Analysis
The regression chart below highlights how pricing trends across different set sizes.

![Lego Regression Chart](Lego%20Regression%20Chart.png)

## 📂 Repository Contents
- [Lego Dashboard.pbix](Lego%20Dashboard.pbix) - The primary Power BI development file.
- [Lego Regression Chart.png](Lego%20Regression%20Chart.png) - Analysis of price vs. piece count.
- [Lego Dashboard Screen Shot 1.png](Lego%20Dashboard%20Screen%20Shot%201.png) - Visual preview of the main report page.

*This project was completed to demonstrate advanced visualization techniques, bookmark actions, and the use of parameters in Power BI.*
