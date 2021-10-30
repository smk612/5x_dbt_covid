
SELECT
DATE(date) AS date,
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

FROM {{ ref('daily_cases') }} d
INNER JOIN
{{ ref('location_details') }} l
ON d.LOCATION_ISO_CODE = l.LOCATION_ISO_CODE
WHERE d.location_iso_code<>'IDN'