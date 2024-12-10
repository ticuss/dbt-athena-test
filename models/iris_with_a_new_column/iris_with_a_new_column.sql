{{ config(
    materialized='incremental',
    unique_key='unique_id'
) }}

with summary as (
    select
        *,
        REGEXP_EXTRACT(target, '[^-]+$') AS species
    from {{ ref('iris_with_unique_ids') }} 
)

select *
from summary

{% if is_incremental() %}
   -- Apply incremental filtering based on unique_id
   where unique_id > (select coalesce(max(unique_id), 0) from {{ this }})  -- Filter based on unique_id
{% endif %}
