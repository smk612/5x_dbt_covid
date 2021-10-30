/*
location_iso_code,
    location,
    location_level,
    province,
    country,
    continent,
    island,
    time_zone,
    special_status,
    total_regencies,
    total_cities,
    total_urban_villages,
    total_rural_villages,
    area_km_2_,
    population,
    population_density,
    longitude,
    latitude,
    date,
location_iso_code,
new_cases,
new_deaths,
new_recovered,
new_active_cases,
total_cases,
total_deaths,
total_recovered,
total_active_cases,
new_cases_per_million,
total_cases_per_million,
new_deaths_per_million,
total_deaths_per_million,
case_fatality_rate,
case_recovered_rate,
growth_factor_of_new_cases,
growth_factor_of_new_deaths
*/
SELECT
DATE(date),
d.location_iso_code,
location,
island,
population_density,
/*
Was thinking of capturing how much is the district urban/rural but didn't find a conclusive evidence
total_urban_villages+total_cities+total_urban_villages as urban_perc*/
new_cases_per_million,
total_cases_per_million,
new_deaths_per_million,
total_deaths_per_million,
case_fatality_rate,
case_recovered_rate,
growth_factor_of_new_cases,
growth_factor_of_new_deaths

FROM INTERVIEW_DB.PLAYGROUND_SOUMIK_DE.DAILY_CASES d
INNER JOIN
INTERVIEW_DB.PLAYGROUND_SOUMIK_DE.LOCATION_DETAILS l
ON d.LOCATION_ISO_CODE = l.LOCATION_ISO_CODE
WHERE d.location_iso_code<>'IDN'