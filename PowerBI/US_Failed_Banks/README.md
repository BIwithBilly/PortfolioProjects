# 🏦 US Bank Failures Analysis (2000 - Present)

## 📌 Project Overview
This Power BI dashboard visualizes the history of bank failures in the United States since the year 2000. Using data sourced from the [FDIC](https://www.fdic.gov/bank-failures), this report highlights the catastrophic impact of the 2008 financial crisis and tracks geographical trends in banking instability.

## 📊 Key Insights
* **The 2010 Peak:** A massive spike in failures occurred between 2008 and 2012, with 2010 reaching a record 157 bank closures.
* **Geographic Hotspots:** Georgia and Florida lead the nation in total bank failures over the 25-year period.
* **Economic Cycles:** The dashboard illustrates the stark contrast between the "zero-failure" years of 2021-2022 and the resurgence of high-profile failures in 2023.

## 🛠️ Technical Details
* **Data Source:** [FDIC Bank Failures List](https://www.fdic.gov/bank-failures)
* **Modeling:** Utilized a Star Schema with a dedicated **Dates Table** generated via `CALENDARAUTO()`.
* **Visuals:** Implemented a **Play Axis** animation to show the chronological spread of failures across the US map.
* **Transformations:** Performed data cleansing in Power Query to standardize city/state naming and parse date strings.

---
### 🎥 Animated Demo
![Bank Failure Animation](./FailedBanks_Animation.gif)
