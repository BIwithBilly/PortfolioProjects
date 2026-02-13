# Data Professional Survey Breakdown

This project transforms raw survey data from thousands of data professionals into an interactive executive dashboard. It highlights salary trends, job satisfaction, and the most popular programming languages across the industry.

## 🚀 The Dashboard in Action

![Main Dashboard Preview](./DataProfessionalSurveyBreakdown.png)

> [!IMPORTANT]
> **[Click here to watch the Interaction Demo](https://github.com/user-attachments/assets/d5bddd66-1949-4de6-9023-cda9817dedd6)** > *(Note: GitHub may require you to download or view the raw file to play the video depending on your browser settings.)*

---

## 🛠️ Data Transformation (The "Dirty" Work)
Before visualization, the raw survey data required significant cleaning in **Power Query**. This process ensured that messy, user-entered survey fields were standardized for accurate reporting.

**Key Cleaning Steps:**
* **Column Standardization:** Cleaned and categorized inconsistent job titles (e.g., merging "Data Scientist" and "Junior DS").
* **Salary Parsing:** Converted text-based salary ranges into numerical averages for calculation.
* **Filtering:** Removed null responses and "troll" entries to ensure data integrity.

### Power Query Transformation Steps:
![Data Cleansing Steps](./DPS-DataCleansing.png)

---

## 📊 Key Features & DAX
* **Dynamic Slicers:** Filter by Country, Education Level, and Programming Language.
* **Custom Tooltips:** Hover over charts to see detailed breakdowns without cluttering the main view.
* **Star Schema:** Optimized the data model for performance by separating Fact and Dimension tables.

## 📈 Insights Found
1. **Python vs R:** Python remains the dominant language, but specialized roles showing high R usage correlate with specific academic backgrounds.
2. **Work-Life Balance:** Correlation found between remote work flexibility and overall job satisfaction scores.
