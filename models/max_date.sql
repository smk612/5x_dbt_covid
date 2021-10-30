
SELECT MAX(DATE(date))
FROM {{ ref('daily_cases') }}