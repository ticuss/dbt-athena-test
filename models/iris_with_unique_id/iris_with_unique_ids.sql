{{ config(
    materialized='table'
) }}

WITH numbered_rows AS (
    SELECT
        ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS unique_id, 
        *
    FROM {{ ref('iris') }}  
)
SELECT *
FROM numbered_rows;
