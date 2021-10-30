/*Creating Daily Cases Table with Daily Case details related to each location*/
{{ config(materialized='table') }}
SELECT
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

FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_SOUMIK_DE