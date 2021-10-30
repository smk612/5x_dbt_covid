
SELECT *
FROM
{{ ref('daily_cases') }}
WHERE location_iso_code<>'IDN'