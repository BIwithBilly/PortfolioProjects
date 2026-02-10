# United States Emissions Analysis (Databricks SQL)

## Project Overview
This project leverages **Databricks SQL** to analyze large-scale greenhouse gas (GHG) emissions data across the United States. It demonstrates the ability to transform "dirty" source data into actionable business intelligence through a series of automated queries and interactive dashboards.

## Key Technical Skills Demonstrated
* **Data Engineering & Transformation:** Cleaned raw data by using `REPLACE()` and `CAST()` functions to convert formatted string values (with commas) into `DOUBLE` types for mathematical analysis.
* **Aggregated Analytics:** Developed complex SQL logic to calculate "Emissions per Person" and identify the highest-contributing regions.
* **Geospatial Visualization:** Formatted latitude and longitude data to power a Mapbox-driven dashboard, providing a visual heat map of emissions density.

## Data Logic
The analysis is driven by the five core queries found in [emissions_analysis.sql](emissions_analysis.sql):

* **Emissions by County:** A drill-down into granular regional data.
* **Global Emissions by Location:** Geospatial coordinates for mapping.
* **Emissions per Person:** Efficiency metrics normalized by population.
* **State Emissions Overview:** High-level executive reporting.
* **Top 10 State Emissions:** Identification of primary contributors.

## Key Insights
* **Maricopa County, AZ** and **Harris County, TX** were identified as the highest emitters, each producing over 9.6 million metric tons of CO2e.
* The analysis highlights a direct correlation between industrial density and total emissions, rather than just population size.

## Visualizations
[View Full Dashboard Screenshot](Emissions%20Dashboard%20Screenshot.png)
