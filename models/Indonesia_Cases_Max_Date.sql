SELECT *
FROM
{{ ref('daily_cases') }}
WHERE location_iso_code='IDN'
AND date=
(
SELECT * FROM
{{ ref('max_date') }}
)