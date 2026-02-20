# 📊 Atlas Labs HR Analytics Case Study

## 📌 Project Overview
This project focuses on HR Analytics for **Atlas Labs**, a technology company. The goal was to transition from reactive reporting to proactive talent management by monitoring key KPIs, understanding employee demographics, and analyzing attrition drivers.

## 🖼️ Dashboard Preview
Below is the main overview of the HR workforce. To see the full multi-page report, you can view the [Full Report PDF](./HR%20Case%20Study.pdf).

![Atlas Labs Overview](./Atlas%20Labs%20Overview.pdf)

## 📊 Key Insights Uncovered
* **Headcount Dynamics:** Atlas Labs has employed a total of **1,470 people**, with a current active workforce of **1,233 employees**.
* **Attrition Alert:** The current overall attrition rate stands at **16.1%**, with **237** total inactive employees.
* **Departmental Scale:** The **Technology** department is the largest by a significant margin, followed by Sales and HR.
* **Demographic Profile:**
    * The majority of the workforce falls within the **20-29 age bracket**.
    * The gender distribution is nearly balanced, though Atlas Labs currently employs **2.7% more women than men**.
    * Employees identifying as **Non-binary** represent **8.5%** of the total workforce.
* **Pay Equity Observations:**
    * Initial analysis shows that employees identifying as **White** have the highest average salary.
    * Those identifying as **'Mixed or multiple ethnic groups'** have one of the lowest average salaries, suggesting a need for a deeper compensation audit.

## 🛠️ Technical Implementation

### Data Modeling
I implemented a **Snowflake Schema** to ensure efficient data filtering and scalability. 
![Data Model](./HR%20Samantic%20Model.png)

* **Fact Table:** `FactPerformanceRating`
* **Dimension Tables:** `dimEmployee`, `dimDate`, `dimEducationLevel`, `dimRatingLevel`, and `dimSatisfiedLevel`.

### Power Query Transformations
I utilized Power Query to clean and enhance the raw HR data:
* **`FullName`**: A custom column merging first and last names for cleaner visuals.
* **`AgeBins`**: Created conditional grouping to categorize employees into specific age ranges (20-29, 30-39, etc.).
* **Date Table**: Generated a comprehensive calendar table to support Time Intelligence.

### DAX Measure Library
I developed a suite of measures to track performance and attrition:
* **`ActiveEmployees`**: `DISTINCTCOUNT(dimEmployee[EmployeeID])` (filtered for those without a termination date).
* **`% Attrition Rate`**: `[InactiveEmployees] / [TotalEmployees]`
* **`AverageSalary`**: Used to identify pay gaps across job roles and ethnicities.

## 📂 Repository Contents
* [**HR Case Study.pbix**](./HR%20Case%20Study.pbix) - The primary Power BI development file.
* [**HR Case Study.pdf**](./HR%20Case%20Study.pdf) - Full multi-page export of the dashboard.
* [**HR Semantic Model.png**](./HR%20Samantic%20Model.png) - Relationships and snowflake schema view.

---
_This project was completed as part of a Power BI Case Study to demonstrate end-to-end data modeling, DAX proficiency, and dashboard design._
