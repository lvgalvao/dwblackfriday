WITH silver_typeform AS (
    SELECT *
    FROM {{ ref('bronze_typeform') }}
)

SELECT
    submitted_at,
    response_id
    
FROM silver_typeform
