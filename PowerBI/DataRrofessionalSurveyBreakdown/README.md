# Data Professional Survey Breakdown

This project transforms raw survey data from thousands of data professionals into an interactive executive dashboard. It highlights salary trends, job satisfaction, and the most popular programming languages across the industry.

## 🚀 The Dashboard in Action
[Watch the Interaction Demo](./DataProfessionalServeyInteraction.mp4)

## 🛠️ Data Transformation (The "Dirty" Work)
Before visualization, the raw survey data required significant cleaning in **Power Query**:
* **Column Standardization:** Cleaned and categorized inconsistent job titles (e.g., merging "Data Scientist" and "Junior DS").
* **Salary Parsing:** Converted text-based salary ranges into numerical averages for calculation.
* **Filtering:** Removed null responses and "troll" entries to ensure data integrity.

> **View Transformation:** [Link to Power Query Screenshot or list of steps]

## 📊 Key Features & DAX
* **Dynamic Slicers:** Filter by Country, Education Level, and Programming Language.
* **Custom Tooltips:** Hover over charts to see detailed breakdowns without cluttering the main view.
* **Star Schema:** Optimized the data model for performance by separating Fact and Dimension tables.

## 📈 Insights Found
1. **Python vs R:** Python remains the dominant language, but specialized roles showing high R usage correlate with specific academic backgrounds.
2. **Work-Life Balance:** Correlation found between remote work flexibility and overall job satisfaction scores.
