
SELECT MAX(DATE(date))  AS max_date
FROM {{ ref('daily_cases') }}