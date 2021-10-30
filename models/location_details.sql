/*Creating Location Table with only details related to location*/
{{ config(materialized='table') }}

    SELECT DISTINCT
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
    latitude

    FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_SOUMIK_DE