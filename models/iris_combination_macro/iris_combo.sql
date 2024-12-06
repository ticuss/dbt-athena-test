{{ config(
    materialized='view'
) }}

with summary as (
    select
        target,
        {{ combination_of_two_macros('sepal_length') }},
        {{ combination_of_two_macros('sepal_width') }},
        {{ combination_of_two_macros('petal_length') }},
        {{ combination_of_two_macros('petal_width') }}
    from {{ ref('iris') }}
    group by target
)

select *
from summary;
