{{ config(
    materialized='incremental'
) }}

SELECT *, REGEXP_EXTRACT(target, '[^-]+$') AS species
FROM "iris"."iris";