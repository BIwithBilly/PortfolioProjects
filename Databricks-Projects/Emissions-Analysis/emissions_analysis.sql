-- PROJECT: United States Emissions Breakdown
-- SOURCE: EPA 2023 Greenhouse Gas Data

---------------------------------------------------------
-- 1. GLOBAL EMISSIONS BY LOCATION
-- Purpose: Powers the geospatial Mapbox visualization
---------------------------------------------------------

SELECT 
    latitude, 
    longitude, 
    `GHG emissions mtons CO2e` 
FROM emissions_data;

---------------------------------------------------------
-- 2. EMISSIONS PER PERSON
-- Purpose: Calculates efficiency metrics by population
---------------------------------------------------------

select county_state_name, 
       population, 
       cast(
        replace(`GHG emissions mtons CO2e`, ',', '')
        as double
        ) / nullif(
          cast(
            replace(population, ',', '')
            as double
          ), 0
         ) as emissions_per_person
from emissions_data
order by emissions_per_person desc;

---------------------------------------------------------
-- 3. STATE EMISSIONS OVERVIEW
-- Purpose: Provides high-level summary table
---------------------------------------------------------

select state_abbr, 
       sum(cast(
        replace(`GHG emissions mtons CO2e`, ',', '')
        as double
       )) as Total_Emissions
from emissions_data
group by state_abbr
order by Total_Emissions desc
limit 10;

---------------------------------------------------------
-- 4. STATE EMISSIONS OVERVIEW
-- Purpose: Provides the top 10 emissions states
---------------------------------------------------------

with state_emissions as (
  select state_abbr, 
         sum(cast(replace(`GHG emissions mtons CO2e`, ',', '') as double)) as Total_Emissions
  from emissions_data
  group by state_abbr
),
top_states as (
  select state_abbr, Total_Emissions
  from state_emissions
  order by Total_Emissions desc
  limit 10
),
national_total as (
  select sum(Total_Emissions) as National_Emissions
  from state_emissions
)
select 
  ts.state_abbr,
  ts.Total_Emissions,
  round(ts.Total_Emissions / nt.National_Emissions * 100, 2) as Emissions_Percentage
from top_states ts
cross join national_total nt
order by ts.Total_Emissions desc;

---------------------------------------------------------
-- 5. EMISSIONS BY COUNTY
-- Purpose: Provides the top 10 emissions county
---------------------------------------------------------

select county_state_name, 
       population, 
       cast(
        replace(`GHG emissions mtons CO2e`, ',', '')
        as double) as Total_Emissions
from emissions_data
order by total_emissions desc
limit 10