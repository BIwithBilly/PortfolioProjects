# Bike Sales Data Analysis Dashboard

## Project Objective
The goal of this project was to analyze customer data to identify trends and key drivers behind bike purchases. By cleaning and visualizing the data, I aimed to provide actionable insights into customer demographics and behavior.

## Dataset Features
* **Demographics:** Marital Status, Gender, Income, Education, and Occupation.
* **Geographics:** Region (Europe, North America, Pacific).
* **Behavioral:** Commute Distance, Home Owner status, and Number of Cars.

## Steps Taken
1. **Data Cleaning:** - Removed duplicates.
   - Standardized columns (e.g., converted 'M' to 'Married' and 'S' to 'Single').
   - Created **Age Brackets** using nested IF statements to categorize customers into Adolescent, Middle Age, and Old.
2. **Data Analysis:** Built Pivot Tables to compare average income per purchase and purchase counts based on commute distance and age.
3. **Data Visualization:** Developed an interactive dashboard with **Slicers** (Region, Education, Marital Status) to allow for dynamic filtering.

## Key Findings
* **Income Factor:** Customers who purchased bikes had a higher average income compared to those who did not.
* **Age Demographics:** The "Middle Age" bracket (31-54) showed the highest volume of bike purchases.
* **Commute Impact:** Customers with shorter commutes (0-1 miles) were more likely to purchase a bike than those with commutes over 10 miles.

![Bike Sales Dashboard](BikeSales-animated.gif)
